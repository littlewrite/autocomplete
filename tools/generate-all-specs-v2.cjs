#!/usr/bin/env node
/**
 * generate-all-specs-v2.cjs
 *
 * 扫描 dart/lib/specs/ 下所有 .dart 文件（与 generate-all-specs.cjs 相同），
 * 生成 all_specs_v2.dart：使用 deferred import + switch 实现按需加载。
 *
 * 用法（在项目根目录）:
 *   node tools/generate-all-specs-v2.cjs
 *
 * 输出: dart/lib/specs/all_specs_v2.dart
 *
 * 参见: dart/docs/specs-v2-deferred-loading.md
 */

const fs = require("fs");
const path = require("path");

const PROJECT_ROOT = path.resolve(__dirname, "..");
const SPECS_DIR = path.join(PROJECT_ROOT, "dart", "lib", "specs");
const OUTPUT_FILE = "all_specs_v2.dart";
const OUTPUT_PATH = path.join(SPECS_DIR, OUTPUT_FILE);

const PACKAGE_SPECS_PREFIX = "package:autocomplete/specs/";

// 匹配两种写法: final FigSpec xxx = 或 final xxx = FigSpec(
const SPEC_VAR_REGEX_TYPED =
  /(?:final|const)\s+(?:FigSpec|CompletionSpec)\s+(\w+)\s*=/;
const SPEC_VAR_REGEX_UNTYPED =
  /(?:final|const)\s+(\w+)\s*=\s*[\s\n]*FigSpec\s*\(/;

/**
 * 从某段内容中解析第一个 name: '...' 或 name: "..." 作为命令名
 * @param {string} content - 整文件内容
 * @param {number} [startIndex] - 若提供，则从 content.slice(startIndex) 里找 name；否则先找 FigSpec( 再找 name
 */
function parseSpecName(content, startIndex) {
  const slice =
    startIndex != null ? content.slice(startIndex) : content;
  const figSpecIdx = slice.indexOf("FigSpec(");
  const searchFrom = startIndex == null ? (figSpecIdx === -1 ? 0 : figSpecIdx) : 0;
  const after = slice.slice(searchFrom);
  const match = after.match(/name:\s*['"]([^'"]+)['"]/);
  return match ? match[1] : null;
}

/**
 * 递归收集 specs 目录下所有 .dart 文件相对路径（不含 all_specs.dart / all_specs_v2.dart）
 */
function collectDartFiles(dir, baseDir, list) {
  let entries;
  try {
    entries = fs.readdirSync(dir, { withFileTypes: true });
  } catch (err) {
    console.warn("Warning: cannot read dir " + dir + ": " + err.message);
    return;
  }
  for (const e of entries) {
    const full = path.join(dir, e.name);
    const rel = path.relative(baseDir, full);
    const relNormalized = rel.split(path.sep).join("/");

    if (e.isDirectory()) {
      collectDartFiles(full, baseDir, list);
    } else if (e.isFile() && e.name.endsWith(".dart")) {
      if (relNormalized === "all_specs.dart" || relNormalized === OUTPUT_FILE)
        continue;
      list.push(relNormalized);
    }
  }
}

/**
 * 从 Dart 文件内容中解析 spec 变量名与命令名
 * 优先匹配 FigSpec/CompletionSpec 声明；若无则从文件末尾往上找 FigSubcommand( 或 Subcommand(，再取前面的 final/const var =
 */
function parseSpecFile(content) {
  let specVar = null;
  let nameSearchStart = null; // 若设，则 parseSpecName(content, nameSearchStart) 从该位置起找 name

  const typedMatch = content.match(SPEC_VAR_REGEX_TYPED);
  if (typedMatch) {
    specVar = typedMatch[1];
    nameSearchStart = null; // 用整文件，parseSpecName 会先找 FigSpec(
  } else {
    const untypedMatch = content.match(SPEC_VAR_REGEX_UNTYPED);
    if (untypedMatch) {
      specVar = untypedMatch[1];
      nameSearchStart = null;
    }
  }

  if (!specVar) {
    // 备选：从下往上找 FigSubcommand( 或 Subcommand(，再取前面最近的 final/const xxx =
    const figSubIdx = content.lastIndexOf("FigSubcommand(");
    const subIdx = content.lastIndexOf("Subcommand(");
    const targetIdx = figSubIdx >= 0 ? figSubIdx : subIdx;
    if (targetIdx >= 0) {
      const before = content.slice(0, targetIdx);
      const varMatches = [...before.matchAll(/(?:final|const)\s+(\w+)\s*=/g)];
      if (varMatches.length > 0) {
        specVar = varMatches[varMatches.length - 1][1];
        nameSearchStart = targetIdx;
      }
    }
  }

  if (!specVar) return null;
  const commandName = parseSpecName(content, nameSearchStart);
  if (!commandName) return null;
  return { specVar, commandName };
}

/**
 * 为 deferred import 生成 Dart 合法 prefix（每个文件一个，用于 deferred as spec_xxx）
 */
function importPathToPrefix(importPath) {
  const withoutExt = importPath.replace(/\.dart$/, "");
  let s = withoutExt
    .replace(/[@/.-]+/g, "_")
    .replace(/_+/g, "_")
    .replace(/^_|_$/g, "");
  if (!/^[a-zA-Z_]/.test(s)) s = "p_" + s;
  return "spec_" + (s.replace(/[^a-zA-Z0-9_]/g, "_") || "spec");
}

function main() {
  if (!fs.existsSync(SPECS_DIR)) {
    console.error("Specs directory not found: " + SPECS_DIR);
    process.exit(1);
  }

  const dartFiles = [];
  collectDartFiles(SPECS_DIR, SPECS_DIR, dartFiles);
  dartFiles.sort();

  const entries = [];
  const skipped = [];
  const errors = [];

  for (const rel of dartFiles) {
    const fullPath = path.join(SPECS_DIR, rel);
    let content;
    try {
      content = fs.readFileSync(fullPath, "utf8");
    } catch (err) {
      errors.push(rel + ": " + err.message);
      continue;
    }

    const parsed = parseSpecFile(content);
    if (!parsed) {
      skipped.push(rel);
      continue;
    }

    const packagePath = PACKAGE_SPECS_PREFIX + rel;
    let prefix = importPathToPrefix(rel);
    const existing = entries.find((e) => e.prefix === prefix);
    if (existing) {
      let n = 0;
      while (entries.some((e) => e.prefix === prefix)) {
        prefix = importPathToPrefix(rel) + "_" + (++n);
      }
    }

    entries.push({
      importPath: rel,
      packagePath,
      specVar: parsed.specVar,
      commandName: parsed.commandName,
      prefix,
    });
  }

  if (errors.length) {
    console.error("Errors reading files:");
    errors.forEach((e) => console.error("  " + e));
  }
  if (skipped.length) {
    console.warn("Skipped (no spec var or name): " + skipped.length);
    if (skipped.length <= 10) skipped.forEach((s) => console.warn("  " + s));
    else console.warn("  (first 10) " + skipped.slice(0, 10).join(", "));
  }

  const dart = generateV2Dart(entries);
  fs.writeFileSync(OUTPUT_PATH, dart, "utf8");
  console.log("Written: " + path.relative(PROJECT_ROOT, OUTPUT_PATH));
  console.log("Total specs: " + entries.length);
}

/**
 * 生成 all_specs_v2.dart 内容：deferred import + v2SpecNamesByFirstChar + ensureSpecLoadedV2 switch
 */
function generateV2Dart(entries) {
  const lines = [
    "// Specs v2: deferred load — only load a spec when first needed (by command name).",
    "// Generated by tools/generate-all-specs-v2.cjs — do not edit by hand.",
    "// Use registerBuiltinSpecsV2() and getSuggestions(..., ensureSpecLoaded: ensureSpecLoadedV2).",
    "",
    "import 'package:autocomplete/src/registry.dart';",
    "",
    "// Deferred imports: must be at top level; path is compile-time constant.",
  ];

  for (const e of entries) {
    lines.push(
      "import '" + e.packagePath + "' deferred as " + e.prefix + ";"
    );
  }

  // Group command names by first character (lowercase) so one bucket per char; each bucket = separate const list.
  const byFirstChar = new Map();
  for (const e of entries) {
    const name = e.commandName;
    const first = name.length ? name[0] : "";
    const key = first >= "A" && first <= "Z" ? first.toLowerCase() : first;
    if (!byFirstChar.has(key)) byFirstChar.set(key, new Set());
    byFirstChar.get(key).add(name);
  }
  const sortedKeys = [...byFirstChar.keys()].sort();
  function varSuffix(k) {
    if (k === "-") return "minus";
    if (k === "@") return "at";
    return k;
  }
  lines.push("");
  lines.push(
    "/// Command names by first character (lowercase). One const list per char; lookup via [getV2SpecNamesForFirstChar]."
  );
  for (const k of sortedKeys) {
    const names = [...byFirstChar.get(k)].sort();
    const list = names.map((n) => `'${n.replace(/'/g, "\\'")}'`).join(", ");
    lines.push("const List<String> v2SpecNamesFirstChar_" + varSuffix(k) + " = [" + list + "];");
  }
  lines.push("");
  lines.push(
    "/// Returns the list of v2 command names whose first character (ignoring case) equals [firstChar]."
  );
  lines.push("List<String> getV2SpecNamesForFirstChar(String firstChar) {");
  lines.push("  if (firstChar.isEmpty) return const [];");
  lines.push("  final c = firstChar.length == 1 ? firstChar.toLowerCase() : firstChar[0].toLowerCase();");
  lines.push("  switch (c) {");
  for (const k of sortedKeys) {
    lines.push("    case '" + (k === "'" ? "\\'" : k) + "': return v2SpecNamesFirstChar_" + varSuffix(k) + ";");
  }
  lines.push("    default: return const [];");
  lines.push("  }");
  lines.push("}");
  lines.push("");
  lines.push(
    "/// One-time setup: register v2 spec-names getter; no specs loaded yet."
  );
  lines.push("void registerBuiltinSpecsV2() {");
  lines.push("  registerV2SpecNamesGetter(getV2SpecNamesForFirstChar);");
  lines.push("}");
  lines.push("");
  lines.push(
    "/// Load the spec for [command] if not already loaded, and register it. Call before getSpec(command) when using v2."
  );
  lines.push("Future<void> ensureSpecLoadedV2(String command) async {");
  lines.push("  if (hasSpec(command)) return;");
  lines.push("  switch (command) {");

  // 同一 commandName 可能对应多个 spec（不同 prefix），一个 case 内 load + register 该 name 对应的所有 spec
  const byCommand = new Map();
  for (const e of entries) {
    if (!byCommand.has(e.commandName)) byCommand.set(e.commandName, []);
    byCommand.get(e.commandName).push(e);
  }
  const sortedCommands = [...byCommand.keys()].sort();
  for (const cmd of sortedCommands) {
    const list = byCommand.get(cmd);
    lines.push("    case '" + cmd.replace(/'/g, "\\'") + "':");
    for (const e of list) {
      lines.push("      await " + e.prefix + ".loadLibrary();");
      const ref = e.prefix + "." + e.specVar;
      lines.push("      registerSpec(" + ref + ".name, () => " + ref + ");");
    }
    lines.push("      break;");
  }
  lines.push("    default:");
  lines.push("      break;");
  lines.push("  }");
  lines.push("}");

  return lines.join("\n") + "\n";
}

main();
