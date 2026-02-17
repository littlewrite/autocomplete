#!/usr/bin/env node

/**
 * 从大 TS 文件（如 lib/src/git.ts）中提取并转换指定类型的变量为 Dart 片段
 *
 * 支持的提取模式：
 *   - const name: Fig.Suggestion[] = [ ... ]
 *   - const name: Fig.Option[] = [ ... ]
 *   - const name: Fig.Subcommand[] = [ ... ]
 *   - const name: Fig.Spec = { ... }
 *
 * 用法（在项目根目录）：
 *   # 提取并转换 git.ts 中所有上述变量，输出到 tools/snippet-output/
 *   node tools/extract-and-convert-snippets.cjs lib/src/git.ts
 *
 *   # 只提取并转换指定变量名（多个用逗号分隔）
 *   node tools/extract-and-convert-snippets.cjs lib/src/git.ts --only configSuggestions,completionSpec
 *
 *   # 只列出会被提取的变量名，不转换
 *   node tools/extract-and-convert-snippets.cjs lib/src/git.ts --list
 *
 * 输出：每个变量生成 tools/snippet-output/<varname>.dart，便于你拼回主 dart 文件。
 */

const fs = require("fs");
const path = require("path");
const { TsToDartConverter, convertTsToDart } = require("./converter-engine.cjs");

const ROOT = path.resolve(__dirname, "..");
const SNIPPET_OUTPUT_DIR = path.join(__dirname, "snippet-output");

function extractBalancedBracketArray(code, startIndex) {
  if (code[startIndex] !== "[") return null;
  let depth = 0;
  let inString = false;
  let stringChar = "";
  for (let i = startIndex; i < code.length; i++) {
    const c = code[i];
    const prev = i > 0 ? code[i - 1] : "";
    if (!inString) {
      if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
        inString = true;
        stringChar = c;
      } else if (c === "[") depth++;
      else if (c === "]") {
        depth--;
        if (depth === 0) return code.slice(startIndex, i + 1);
      }
    } else if (c === stringChar && prev !== "\\") inString = false;
  }
  return null;
}

function extractBalancedBraceObject(code, startIndex) {
  if (code[startIndex] !== "{") return null;
  let depth = 0;
  let inString = false;
  let stringChar = "";
  for (let i = startIndex; i < code.length; i++) {
    const c = code[i];
    const prev = i > 0 ? code[i - 1] : "";
    if (!inString) {
      if ((c === '"' || c === "'" || c === "`") && prev !== "\\") {
        inString = true;
        stringChar = c;
      } else if (c === "{") depth++;
      else if (c === "}") {
        depth--;
        if (depth === 0) return code.slice(startIndex, i + 1);
      }
    } else if (c === stringChar && prev !== "\\") inString = false;
  }
  return null;
}

/**
 * 从 code 中提取所有 const name: Fig.Suggestion[] = [ ... ] 等，返回 { varName, fullDeclaration, kind }[]
 */
function extractListVariables(code) {
  const results = [];
  const patterns = [
    { kind: "suggestions", regex: /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Suggestion\[\]\s*=\s*\[/g },
    { kind: "options", regex: /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Option\[\]\s*=\s*\[/g },
    { kind: "subcommands", regex: /const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Subcommand\[\]\s*=\s*\[/g },
  ];
  for (const { kind, regex } of patterns) {
    let m;
    while ((m = regex.exec(code)) !== null) {
      const varName = m[1];
      const startBracket = m.index + m[0].length - 1;
      const arrSrc = extractBalancedBracketArray(code, startBracket);
      if (!arrSrc) continue;
      const fullDeclaration = code.slice(m.index, startBracket + arrSrc.length);
      results.push({ varName, fullDeclaration, kind });
    }
  }
  return results;
}

/**
 * 从 code 中提取所有 const name: Fig.Spec = { ... }，返回 { varName, fullDeclaration }[]
 */
function extractSpecVariables(code) {
  const results = [];
  const regex = /(?:export\s+)?const\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*:\s*Fig\.Spec\s*=[\s\n]*\{/g;
  let m;
  while ((m = regex.exec(code)) !== null) {
    const varName = m[1];
    const braceStart = m.index + m[0].length - 1;
    const objSrc = extractBalancedBraceObject(code, braceStart);
    if (!objSrc) continue;
    const fullDeclaration = code.slice(m.index, braceStart + objSrc.length);
    results.push({ varName, fullDeclaration });
  }
  return results;
}

/**
 * 为「仅含数组」的 snippet 造一个最小 Fig.Spec，以便 converter 不报错
 */
function makeDummySpecExport(specVarName = "_spec") {
  return `const ${specVarName}: Fig.Spec = { name: "_", options: [] };\nexport default ${specVarName};`;
}

/**
 * 从完整 Dart 输出中截取指定变量对应的 Dart 声明（单段，到分号或下一个 top-level 声明）
 */
function extractDartDeclaration(dartCode, varName, isSpec) {
  if (isSpec) {
    const specRegex = new RegExp(
      `(final\\s+FigSpec\\s+${varName}\\s*=\\s*FigSpec\\([\\s\\S]*?\\);)`,
      "m"
    );
    const m = dartCode.match(specRegex);
    return m ? m[1].trim() : null;
  }
  const listRegex = new RegExp(
    `(final\\s+List<\\w+>\\s+${varName}\\s*=[\\s\\S]*?];)`,
    "m"
  );
  const m = dartCode.match(listRegex);
  return m ? m[1].trim() : null;
}

function main() {
  const args = process.argv.slice(2);
  const onlyList = args.includes("--list");
  const onlyFilter = args.find((a) => a.startsWith("--only="));
  const onlyNames = onlyFilter
    ? new Set(onlyFilter.replace("--only=", "").split(",").map((s) => s.trim()).filter(Boolean))
    : null;

  const tsRel = args.find((a) => !a.startsWith("--") && a.endsWith(".ts"));
  if (!tsRel) {
    console.error("Usage: node tools/extract-and-convert-snippets.cjs <path/to/file.ts> [--list] [--only=name1,name2]");
    process.exit(1);
  }

  const tsPath = path.isAbsolute(tsRel) ? tsRel : path.join(ROOT, tsRel);
  if (!fs.existsSync(tsPath)) {
    console.error("File not found:", tsPath);
    process.exit(1);
  }

  const code = fs.readFileSync(tsPath, "utf8");
  const listVars = extractListVariables(code);
  const specVars = extractSpecVariables(code);

  const allList = listVars.map((v) => v.varName);
  const allSpec = specVars.map((v) => v.varName);
  const allNames = [...new Set([...allList, ...allSpec])];

  let toProcess = allNames;
  if (onlyNames && onlyNames.size > 0) {
    toProcess = allNames.filter((n) => onlyNames.has(n));
    const missing = [...onlyNames].filter((n) => !allNames.includes(n));
    if (missing.length) console.warn("Not found in file:", missing);
  }

  if (onlyList) {
    console.log("Variables that can be extracted and converted:");
    console.log("  List (Suggestion[] / Option[] / Subcommand[]):", allList.join(", ") || "(none)");
    console.log("  Spec (Fig.Spec):", allSpec.join(", ") || "(none)");
    return;
  }

  if (toProcess.length === 0) {
    console.log("No variables to process.");
    return;
  }

  fs.mkdirSync(SNIPPET_OUTPUT_DIR, { recursive: true });
  const baseName = path.basename(tsPath, ".ts");

  for (const varName of toProcess) {
    const listInfo = listVars.find((v) => v.varName === varName);
    const specInfo = specVars.find((v) => v.varName === varName);

    let snippetTs;
    let isSpec = false;

    if (specInfo) {
      isSpec = true;
      snippetTs = specInfo.fullDeclaration + ";\nexport default " + varName + ";";
    } else if (listInfo) {
      snippetTs = listInfo.fullDeclaration + ";\n" + makeDummySpecExport();
    } else {
      continue;
    }

    const snippetPath = path.join(__dirname, ".snippets", `${baseName}-${varName}.ts`);
    fs.mkdirSync(path.dirname(snippetPath), { recursive: true });
    fs.writeFileSync(snippetPath, snippetTs, "utf8");

    let dartFull;
    try {
      dartFull = convertTsToDart(snippetPath, snippetTs, { commentFallback: true });
    } catch (e) {
      console.error(`Convert failed for ${varName}:`, e.message);
      continue;
    }

    const dartDeclaration = extractDartDeclaration(dartFull, varName, isSpec);
    if (!dartDeclaration) {
      console.warn(`Could not extract Dart declaration for ${varName} from converter output.`);
      continue;
    }

    const outPath = path.join(SNIPPET_OUTPUT_DIR, `${varName}.dart`);
    const outContent = `// Snippet from ${path.basename(tsPath)} (${varName})\n// Paste into your main Dart file as needed.\n\n${dartDeclaration}\n`;
    fs.writeFileSync(outPath, outContent, "utf8");
    console.log("Wrote", outPath);
  }

  console.log("\nDone. Merge snippets from tools/snippet-output/ into your main Dart file.");
}

main();
