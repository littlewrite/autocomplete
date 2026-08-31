#!/usr/bin/env node

/**
 * Export Fig TypeScript/JavaScript specs to JSON without executing source code.
 *
 * This is deliberately conservative. Literal values are exported; functions
 * and unknown expressions become handler records in manual-handlers.json.
 * No unsupported value is silently discarded.
 */

const fs = require("fs");
const path = require("path");
const { TsToDartConverter } = require("./converter-engine.cjs");

const ROOT = path.resolve(__dirname, "..");

function usage() {
  console.log(`Usage: node tools/ts-to-json.cjs [options]

Options:
  --src <dir>       Source directory (default: src)
  --out <dir>       JSON output directory (default: json/specs)
  --clean          Remove previous generated command JSON before exporting
  --file <path>     Export one source file (repeatable)
  --jobs <n>        Process files in parallel (default: 1)
  --file-timeout-ms <n>
                   Isolate a slow file (default: 30000)
  --limit <n>       Process only the first n sorted files (smoke tests)
  --report <file>   Conversion manifest path (default: <out>/conversion-manifest.json)
  --report-only     Analyze files without writing JSON
  --strict          Exit non-zero when any file needs manual work
  --help            Show this help`);
}

function parseArgs(argv) {
  const options = { files: [] };
  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i];
    if (arg === "--help") options.help = true;
    else if (arg === "--report-only") options.reportOnly = true;
    else if (arg === "--strict") options.strict = true;
    else if (arg === "--clean") options.clean = true;
    else if (arg === "--jobs") options.jobs = Math.max(1, Number(argv[++i]));
    else if (arg === "--file-timeout-ms") options.fileTimeoutMs = Math.max(1, Number(argv[++i]));
    else if (arg === "--limit") options.limit = Math.max(1, Number(argv[++i]));
    else if (arg === "--report") options.report = path.resolve(ROOT, argv[++i]);
    else if (arg === "--src") options.src = argv[++i];
    else if (arg === "--out") options.out = argv[++i];
    else if (arg === "--file") options.files.push(argv[++i]);
    else throw new Error(`Unknown argument: ${arg}`);
  }
  options.src = path.resolve(ROOT, options.src || "src");
  options.out = path.resolve(ROOT, options.out || "json/specs");
  options.jobs = Number.isFinite(options.jobs) && options.jobs > 0 ? Math.floor(options.jobs) : 1;
  options.fileTimeoutMs = Number.isFinite(options.fileTimeoutMs) && options.fileTimeoutMs > 0 ? Math.floor(options.fileTimeoutMs) : 30000;
  options.limit = Number.isFinite(options.limit) && options.limit > 0 ? Math.floor(options.limit) : null;
  options.report = options.report || path.join(options.out, "conversion-manifest.json");
  return options;
}

function walk(dir) {
  const result = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) result.push(...walk(full));
    else if (/\.(?:ts|js|mjs|cjs)$/.test(entry.name)) result.push(full);
  }
  return result;
}

function splitTopLevel(source) {
  const values = [];
  let start = 0;
  let brace = 0;
  let bracket = 0;
  let paren = 0;
  let quote = null;
  let template = false;
  for (let i = 0; i < source.length; i++) {
    const c = source[i];
    const prev = source[i - 1];
    if (quote || template) {
      if (c === "\\") {
        i++;
        continue;
      }
      if (quote && c === quote) quote = null;
      else if (template && c === "`") template = false;
      continue;
    }
    if (c === "'" || c === '"') quote = c;
    else if (c === "`") template = true;
    else if (c === "{") brace++;
    else if (c === "}") brace--;
    else if (c === "[") bracket++;
    else if (c === "]") bracket--;
    else if (c === "(") paren++;
    else if (c === ")") paren--;
    else if (c === "," && brace === 0 && bracket === 0 && paren === 0) {
      if (source.slice(start, i).trim()) values.push(source.slice(start, i).trim());
      start = i + 1;
    }
  }
  if (source.slice(start).trim()) values.push(source.slice(start).trim());
  return values;
}

function stripComments(source) {
  return source
    .replace(/\/\*[\s\S]*?\*\//g, "")
    .replace(/(^|\s)\/\/.*$/gm, "$1");
}

function decodeString(raw) {
  const value = raw.trim();
  if (value[0] === '"') {
    try {
      return JSON.parse(value);
    } catch (_) {
      return null;
    }
  }
  if (value[0] === "'" || value[0] === "`") {
    if (value[0] === "`" && value.includes("${")) return null;
    const body = value.slice(1, -1);
    let out = "";
    for (let i = 0; i < body.length; i++) {
      if (body[i] !== "\\" || i + 1 >= body.length) {
        out += body[i];
        continue;
      }
      const next = body[++i];
      const escapes = { n: "\n", r: "\r", t: "\t", b: "\b", f: "\f", v: "\v", "\\": "\\", "'": "'", '"': '"', "`": "`" };
      if (escapes[next] !== undefined) out += escapes[next];
      else if (next === "x" && /^[0-9a-f]{2}$/i.test(body.slice(i + 1, i + 3))) {
        out += String.fromCharCode(parseInt(body.slice(i + 1, i + 3), 16));
        i += 2;
      } else if (next === "u" && /^[0-9a-f]{4}$/i.test(body.slice(i + 1, i + 5))) {
        out += String.fromCharCode(parseInt(body.slice(i + 1, i + 5), 16));
        i += 4;
      } else out += next;
    }
    return out;
  }
  return null;
}

function sanitize(value) {
  return String(value).replace(/[^a-zA-Z0-9_.-]+/g, "_").replace(/^\.+/, "_");
}

function sourceLine(source, value) {
  let index = source.indexOf(value);
  if (index < 0) {
    const firstLine = value.trim().split("\n")[0].trim();
    index = firstLine ? source.indexOf(firstLine) : -1;
  }
  return index < 0 ? null : source.slice(0, index).split("\n").length;
}

function expressionEnd(source, start) {
  let brace = 0;
  let bracket = 0;
  let paren = 0;
  let quote = null;
  for (let i = start; i < source.length; i++) {
    const c = source[i];
    if (quote) {
      if (c === "\\") {
        i++;
        continue;
      }
      if (c === quote) quote = null;
      continue;
    }
    if (c === "'" || c === '"' || c === "`") quote = c;
    else if (c === "{") brace++;
    else if (c === "}") brace--;
    else if (c === "[") bracket++;
    else if (c === "]") bracket--;
    else if (c === "(") paren++;
    else if (c === ")") paren--;
    else if (c === ";" && brace === 0 && bracket === 0 && paren === 0) return i + 1;
  }
  return source.length;
}

// `createVersionedSpec("tool", ["1.0.0"])` is source metadata, not a
// normal Fig.Spec object. Keep this recognition deliberately narrow: unknown
// expressions remain manual work instead of being guessed at runtime.
function versionedRootInfo(file, source) {
  if (!source.includes("createVersionedSpec")) return null;
  const call = source.match(
    /export\s+default\s+createVersionedSpec\s*\(\s*(["'])([^"']+)\1\s*,\s*([A-Za-z_$][\w$]*)\s*\)/,
  );
  if (!call) return null;

  const versionFilesName = call[3];
  const declaration = new RegExp(
    `(?:const|let)\\s+${versionFilesName}\\s*=\\s*\\[([\\s\\S]*?)\\]`,
  ).exec(source);
  if (!declaration) return null;
  const versions = splitTopLevel(declaration[1])
    .map(decodeString)
    .filter((value) => typeof value === "string" && value.length > 0);
  if (!versions.length) return null;

  const functionMatch = /export\s+const\s+getVersionCommand\b[\s\S]*?=>\s*/.exec(source);
  if (!functionMatch) return null;
  const expressionStart = functionMatch.index + functionMatch[0].length;
  let end;
  if (source[expressionStart] === "{") {
    const converter = new TsToDartConverter(file, source);
    const body = converter.extractBalancedBraceObject(source, expressionStart);
    if (!body) return null;
    end = expressionStart + body.length;
  } else {
    end = expressionEnd(source, expressionStart);
  }
  const sourceKey = path.relative(ROOT, file)
    .split(path.sep).join("/")
    .replace(/^src\//, "src_")
    .replace(/\.[^.\/]+$/, "")
    .replace(/\//g, ".");
  const handlerId = `manual.${sanitize(sourceKey)}.getversioncommand`.toLowerCase();
  const handlerSource = source.slice(functionMatch.index, end);
  return {
    command: call[2],
    versions,
    handler: {
      id: handlerId,
      kind: "version",
      sourceFile: path.relative(ROOT, file).split(path.sep).join("/"),
      line: sourceLine(source, handlerSource),
      path: "getVersionCommand",
      source: handlerSource.trim(),
    },
  };
}

class Exporter {
  constructor(file, source, globalManifest) {
    this.file = file;
    this.source = source;
    this.converter = new TsToDartConverter(file, source);
    this.globalManifest = globalManifest;
    this.diagnostics = [];
    this.handlers = [];
    this.variables = new Map();
    this.stack = [];
    this.extractVariables();
  }

  extractVariables() {
    const code = stripComments(this.source);
    const declaration = /(?:export\s+)?const\s+([A-Za-z_$][\w$]*)\s*(?::[^=;]+)?=\s*([\[{])/g;
    let match;
    while ((match = declaration.exec(code))) {
      const start = match.index + match[0].length - 1;
      const value = match[2] === "{" ? this.converter.extractBalancedBraceObject(code, start) : this.converter.extractBalancedBracketArray(code, start);
      if (value) {
        this.variables.set(match[1], {
          raw: value,
          // Reused declarations have one source-level dynamic behavior even
          // when expansion places them at many JSON paths.
          stablePath: `definition.${match[1]}`,
        });
      }
    }
  }

  rootObject() {
    const object = this.converter.extractSpecObjectByBalancedBraces();
    if (object) return object;
    const subcommand = this.converter.extractSubcommandRootByBalancedBraces();
    if (subcommand) {
      return `{ name: ${JSON.stringify(path.basename(this.file, path.extname(this.file)))}, subcommands: [${subcommand.obj}] }`;
    }
    return null;
  }

  extractTopLevelFunctions() {
    const patterns = [
      /(?:export\s+)?const\s+([A-Za-z_$][\w$]*)\s*(?::[^=;]+)?=\s*(?:async\s*)?(?:\([^)]*\)|[A-Za-z_$][\w$]*)\s*=>\s*\{/g,
      /(?:export\s+)?function\s+([A-Za-z_$][\w$]*)\s*\([^)]*\)\s*\{/g,
    ];
    for (const pattern of patterns) {
      let match;
      while ((match = pattern.exec(this.source))) {
        const brace = this.source.indexOf("{", match.index + match[0].length - 1);
        const body = this.converter.extractBalancedBraceObject(this.source, brace);
        if (!body) continue;
        const declaration = this.source.slice(match.index, brace + body.length);
        this.dynamic("function-definition", declaration, `function.${match[1]}`);
      }
    }
  }

  dynamic(kind, raw, jsonPath, stablePath = jsonPath) {
    const sourceKey = path.relative(ROOT, this.file)
      .split(path.sep).join("/")
      .replace(/\.[^.\/]+$/, "");
    const id = `manual.${sanitize(sourceKey)}.${sanitize(stablePath)}`.toLowerCase();
    const record = {
      id,
      kind,
      sourceFile: path.relative(ROOT, this.file).split(path.sep).join("/"),
      line: sourceLine(this.source, raw),
      path: jsonPath,
      source: raw.trim(),
    };
    if (!this.handlers.some((item) => item.id === id)) this.handlers.push(record);
    return { handler: id, version: 1 };
  }

  unsupported(raw, jsonPath, reason) {
    this.diagnostics.push({ path: jsonPath, reason, source: raw.trim() });
    return undefined;
  }

  filepathsTemplate(raw, jsonPath) {
    const match = raw.match(/^filepaths\s*\((?:\s*([\s\S]*?)\s*)?\)$/);
    if (!match) return null;
    const options = match[1];
    if (!options) return { template: "filepaths" };
    const normalized = stripComments(options).trim();
    if (!normalized.startsWith("{") || !normalized.endsWith("}")) {
      return this.unsupported(raw, jsonPath, "unsupported filepaths arguments");
    }
    const descriptor = { name: "filepaths" };
    const showFolders = normalized.match(/\bshowFolders\s*:\s*["']([^"']+)["']/);
    if (showFolders && showFolders[1] === "only") return { template: "folders" };

    const extensions = normalized.match(/\bextensions\s*:\s*(\[[\s\S]*?\]|["'][^"']+["'])/);
    if (extensions) {
      const value = this.value(extensions[1], `${jsonPath}.extensions`);
      if (typeof value === "string" || Array.isArray(value)) descriptor.extensions = value;
    }
    const equals = normalized.match(/\bequals\s*:\s*(["'][^"']+["'])/);
    if (equals) descriptor.equals = decodeString(equals[1]);
    const matches = normalized.match(/\bmatches\s*:\s*\/((?:\\.|[^/])*)\/([a-z]*)/i);
    if (matches) {
      descriptor.matches = matches[1];
      if (matches[2]) descriptor.matchFlags = matches[2];
    }
    return { template: Object.keys(descriptor).length === 1 ? "filepaths" : descriptor };
  }

  // The JSON field, rather than the spelling of the source expression,
  // defines the callback contract. Keeping this mapping here prevents a
  // future port from having to infer a generic `function` record by hand.
  handlerKindForPath(jsonPath) {
    if (/\.postProcess$/.test(jsonPath)) return "postProcess";
    if (/\.custom$/.test(jsonPath)) return "custom";
    if (/\.trigger$/.test(jsonPath)) return "trigger";
    if (/\.script$/.test(jsonPath)) return "script";
    if (/\.filterTemplateSuggestions$/.test(jsonPath)) {
      return "filterTemplateSuggestions";
    }
    if (/\.parserDirectives\.alias$/.test(jsonPath)) return "alias";
    if (/\.generateSpec$/.test(jsonPath)) {
      return /\.subcommands\[\d+\]\./.test(jsonPath)
        ? "generateSubcommand"
        : "generateSpec";
    }
    // Fig represents function-valued suggestions and bare generators with
    // the same custom-generator contract in the Dart runtime.
    if (/\.(?:suggestions|generators)$/.test(jsonPath)) return "custom";
    return null;
  }

  value(raw, jsonPath, dynamicKind = null, stablePath = jsonPath) {
    const value = stripComments(raw).trim().replace(/;$/, "").trim();
    if (!value) return this.unsupported(raw, jsonPath, "empty expression");
    const stringValue = decodeString(value);
    if (stringValue !== null) return stringValue;
    if (value === "true" || value === "false") return value === "true";
    if (value === "null") return null;
    if (/^-?(?:\d+|\d+\.\d+)$/.test(value)) return Number(value);
    if (/^\{/.test(value) && value.endsWith("}")) {
      return this.object(value, jsonPath, stablePath);
    }
    if (/^\[/.test(value) && value.endsWith("]")) {
      return this.array(value, jsonPath, stablePath);
    }
    const filepaths = this.filepathsTemplate(value, jsonPath);
    if (filepaths != null) return filepaths;
    if (/^(?:async\s+)?function\b|=>/.test(value)) {
      return this.dynamic(dynamicKind || this.handlerKindForPath(jsonPath) || "function", value, jsonPath, stablePath);
    }
    if (/^\.\.\./.test(value)) {
      const ref = value.slice(3).trim();
      const variable = this.variables.get(ref);
      if (variable) {
        return this.value(variable.raw, jsonPath, dynamicKind, variable.stablePath);
      }
      return this.unsupported(value, jsonPath, "unresolved spread");
    }
    if (/^[A-Za-z_$][\w$]*$/.test(value) && this.variables.has(value)) {
      const variable = this.variables.get(value);
      return this.value(variable.raw, jsonPath, dynamicKind, variable.stablePath);
    }
    return this.unsupported(value, jsonPath, "unsupported expression");
  }

  array(raw, jsonPath, stablePath = jsonPath) {
    const inner = raw.trim().slice(1, -1);
    const output = [];
    for (const [index, item] of splitTopLevel(inner).entries()) {
      const itemPath = `${jsonPath}[${index}]`;
      const value = this.value(
        item,
        itemPath,
        this.handlerKindForPath(itemPath),
        `${stablePath}[${index}]`,
      );
      if (value !== undefined) {
        if (item.trim().startsWith("...") && Array.isArray(value)) output.push(...value);
        else output.push(value);
      }
    }
    return output;
  }

  object(raw, jsonPath, stablePath = jsonPath) {
    const inner = raw.trim().slice(1, -1);
    const output = {};
    // parseProperties intentionally ignores spread entries. Resolve object
    // spreads first so a literal override that follows retains TS semantics.
    for (const item of splitTopLevel(inner)) {
      const trimmed = item.trim();
      if (!trimmed.startsWith("...")) continue;
      const spread = this.value(trimmed, jsonPath, null, stablePath);
      if (spread === undefined) continue;
      if (spread === null || Array.isArray(spread) || typeof spread !== "object") {
        this.unsupported(trimmed, jsonPath, "spread is not a static object");
        continue;
      }
      Object.assign(output, spread);
    }
    for (const property of this.converter.parseProperties(inner)) {
      const key = property.key.replace(/^['"]|['"]$/g, "");
      const childPath = `${jsonPath}.${key}`;
      const childStablePath = `${stablePath}.${key}`;
      const kind = this.handlerKindForPath(childPath);
      const propertyValue = property.value.trim();
      // `filepaths(...)` is declarative data even though it has a call-like
      // spelling. Detect it before treating generator calls as callback
      // factories.
      const declarativeGenerator = this.filepathsTemplate(propertyValue, childPath);
      // Callback factories such as `custom: createNpmSearchHandler()` are as
      // dynamic as inline callbacks. They used to be diagnosed and then
      // omitted, which made the command JSON silently lose behavior. Keep a
      // stable handler reference at every callback boundary instead.
      const callbackExpression = /function\b|=>/.test(propertyValue) ||
        (/^[A-Za-z_$][\w$]*$/.test(propertyValue) && !this.variables.has(propertyValue)) ||
        /^[A-Za-z_$][\w$]*(?:\s*<[^>]+>)?\s*\(/.test(propertyValue) ||
        /^\([^)]*\)\s*(?:=>|\{)/.test(propertyValue);
      // A direct generator value commonly comes from an import, for example
      // `generators: getAppGenerator`. It has executable behavior and cannot
      // be omitted just because this file does not define the identifier.
      // Use one stable handler ID per source symbol, while the first JSON path
      // remains in the manifest as the representative call site.
      const directGeneratorReference = key === "generators" &&
        /^[A-Za-z_$][\w$]*(?:\.[A-Za-z_$][\w$]*)*$/.test(propertyValue) &&
        !this.variables.has(propertyValue);
      const structuredValue = /^\s*[\[{]/.test(propertyValue);
      const value = directGeneratorReference
        ? this.dynamic("custom", propertyValue, childPath, `generator.${propertyValue}`)
        : kind && callbackExpression && !structuredValue && declarativeGenerator == null
          ? this.dynamic(kind, propertyValue, childPath, childStablePath)
          : declarativeGenerator != null
            ? declarativeGenerator
            : this.value(propertyValue, childPath, kind, childStablePath);
      if (value !== undefined) output[key] = value;
    }
    return output;
  }

  export() {
    const root = this.rootObject();
    if (!root) {
      this.diagnostics.push({ reason: "no statically extractable Fig.Spec root" });
      return null;
    }
    const nameMatch = root.match(/(?:^|[,\n])\s*name\s*:\s*["']([^"']+)["']/);
    this.commandName = nameMatch ? nameMatch[1] : null;
    const raw = this.object(root, "spec");
    this.commandName = typeof raw.name === "string" ? raw.name : this.commandName;
    if (!this.commandName) {
      this.diagnostics.push({ reason: "root name is dynamic or missing" });
      return null;
    }
    this.extractTopLevelFunctions();
    raw.schemaVersion = 1;
    // Keep schemaVersion first in generated output for stable diffs.
    const spec = { schemaVersion: 1 };
    for (const [key, value] of Object.entries(raw)) if (key !== "schemaVersion") spec[key] = value;
    this.globalManifest.handlers.push(...this.handlers);
    return { name: this.commandName, spec, diagnostics: this.diagnostics, handlers: this.handlers };
  }
}

function outputPath(outDir, commandName) {
  const parts = commandName.split("/").filter(Boolean).map(sanitize);
  const leaf = parts.pop() || "unknown";
  const first = sanitize((parts[0] || leaf)[0] || "_").toLowerCase();
  return path.join(outDir, "commands", first, ...parts, `${leaf}.json`);
}

// A losing collision doc is stored under the losing source's namespace path so
// the physical tree mirrors logical structure (src/aws/amplify.ts -> aws/amplify
// -> commands/a/aws/amplify.json) instead of a mangled filename.
function collisionOutputPath(outDir, commandName, sourceFile) {
  const relative = sourceFile.replace(/^src\//, "").replace(/\.[^.]+$/, "");
  const logical = path.posix.join(path.posix.dirname(relative), commandName);
  return outputPath(outDir, logical);
}

function versionedOutputPath(outDir, commandName, version) {
  return outputPath(outDir, `${commandName}/${version}`);
}

function normalizeVersionedVariant(spec, commandName) {
  // Some version files export Fig.Subcommand rather than Fig.Spec. The old
  // exporter wrapped that subcommand under the version filename. A JSON
  // version document must instead be a normal root spec for the command.
  const candidate = Array.isArray(spec.subcommands) && spec.subcommands.length === 1
    ? spec.subcommands[0]
    : null;
  const source = candidate && candidate.name === commandName ? candidate : spec;
  const normalized = { schemaVersion: 1, name: commandName };
  for (const [key, value] of Object.entries(source)) {
    if (key !== "name" && key !== "schemaVersion") normalized[key] = value;
  }
  return normalized;
}

function handlerScaffoldPath(handlersOut, sourceFile) {
  const relative = sourceFile.replace(/^src\//, "");
  return path.join(
    handlersOut,
    relative.replace(/\.(?:ts|js|mjs|cjs)$/, ".dart"),
  );
}

function renderHandlerScaffold(sourceFile, handlers) {
  const lines = [
    "// Generated handler scaffold. Implement TODOs and keep handler IDs stable.",
    `// Source: ${sourceFile}`,
    "// This file is intentionally not a generated conversion of TypeScript.",
    "",
    "import 'package:autocomplete/autocomplete.dart';",
    "",
  ];
  const functionName = `register${sanitize(sourceFile).replace(/[^a-zA-Z0-9]/g, "_")}Handlers`;
  lines.push(`void ${functionName}(JsonHandlerRegistry registry) {`);
  for (const handler of handlers) {
    lines.push(`  // TODO(${handler.kind}): port the implementation below.`);
    if (handler.kind === "postProcess") {
      lines.push(`  registry.registerPostProcess('${handler.id}', (output, [tokens]) {`);
      lines.push("    // TODO: return mapped FigSuggestion values.");
      lines.push("    return <FigSuggestion>[];");
      lines.push("  });");
    } else if (handler.kind === "custom") {
      lines.push(`  registry.registerCustom('${handler.id}', (tokens, executeCommand, context) async {`);
      lines.push("    // TODO: implement the context-aware generator.");
      lines.push("    return <FigSuggestion>[];");
      lines.push("  });");
    } else if (handler.kind === "generateSpec") {
      lines.push(`  registry.registerGenerateSpec('${handler.id}', (tokens, executeCommand) async {`);
      lines.push("    // TODO: return a generated FigSpec or null.");
      lines.push("    return null;");
      lines.push("  });");
    } else if (handler.kind === "generateSubcommand") {
      lines.push(`  registry.registerGenerateSubcommand('${handler.id}', (tokens, executeCommand) async {`);
      lines.push("    // TODO: return a generated FigSubcommand or null.");
      lines.push("    return null;");
      lines.push("  });");
    } else if (handler.kind === "function-definition") {
      lines.push(`  // Function definition '${handler.id}' is catalogued for manual porting.`);
    }
    lines.push("");
  }
  lines.push("}", "", "/*", "Dynamic source records:");
  for (const handler of handlers) {
    // Dart block comments terminate on the literal */ sequence; regexes in
    // JavaScript handlers commonly contain it (for example /.*\/).
    const safeSource = handler.source
      .replace(/\/\*/g, "/ *")
      .replace(/\*\//g, "* /");
    lines.push(`\n--- ${handler.id} (${handler.kind}) ---\n`, safeSource, "\n");
  }
  lines.push("*/", "");
  return lines.join("\n");
}

function writeHandlerScaffolds(handlersOut, handlers, overwriteGenerated) {
  const grouped = new Map();
  for (const handler of handlers) {
    const list = grouped.get(handler.sourceFile) || [];
    list.push(handler);
    grouped.set(handler.sourceFile, list);
  }
  let written = 0;
  let skipped = 0;
  for (const [sourceFile, sourceHandlers] of grouped) {
    const target = handlerScaffoldPath(handlersOut, sourceFile);
    if (fs.existsSync(target)) {
      const existing = fs.readFileSync(target, "utf8");
      if (!overwriteGenerated || !existing.startsWith("// Generated handler scaffold.")) {
        skipped++;
        continue;
      }
    }
    fs.mkdirSync(path.dirname(target), { recursive: true });
    fs.writeFileSync(target, renderHandlerScaffold(sourceFile, sourceHandlers));
    written++;
  }
  return { written, skipped };
}

function cleanGeneratedJson(outDir) {
  const commandDir = path.join(outDir, "commands");
  if (!fs.existsSync(commandDir)) return 0;
  let removed = 0;
  const stack = [commandDir];
  while (stack.length) {
    const dir = stack.pop();
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const target = path.join(dir, entry.name);
      if (entry.isDirectory()) stack.push(target);
      else if (entry.name.endsWith(".json")) {
        fs.unlinkSync(target);
        removed++;
      }
    }
  }
  return removed;
}

function processFile(file) {
  const source = fs.readFileSync(file, "utf8");
  const versioned = versionedRootInfo(file, source);
  if (versioned) {
    return {
      file,
      result: {
        name: versioned.command,
        spec: {
          schemaVersion: 1,
          name: versioned.command,
          versionedSpec: {
            cacheKey: versioned.command,
            getVersion: { handler: versioned.handler.id, version: 1 },
            versions: versioned.versions.map((version) => ({
              version,
              loadSpec: `${versioned.command}/${version}`,
            })),
          },
        },
        versionedRoot: versioned,
      },
      diagnostics: [],
      handlers: [versioned.handler],
    };
  }
  const localManifest = { handlers: [] };
  const exporter = new Exporter(file, source, localManifest);
  let result;
  try {
    result = exporter.export();
  } catch (error) {
    exporter.diagnostics.push({ reason: `export error: ${error.message}` });
    result = null;
  }
  return {
    file,
    result: result
      ? {
          name: result.name,
          spec: result.spec,
          versionedRoot: result.versionedRoot,
        }
      : null,
    diagnostics: exporter.diagnostics,
    handlers: exporter.handlers,
  };
}

function runParallel(files, jobs, fileTimeoutMs) {
  return new Promise((resolve, reject) => {
    const results = new Array(files.length);
    const workerCount = Math.min(jobs, files.length);
    let next = 0;
    let finished = 0;
    let failed = false;

    const startWorker = () => {
      const worker = require("child_process").fork(__filename, ["--worker"], {
        stdio: ["ignore", "ignore", "ignore", "ipc"],
      });
      let activeIndex = null;
      let timeout = null;
      let stopping = false;
      const finishOne = (index, result) => {
        if (index == null || results[index]) return false;
        results[index] = result;
        finished++;
        return true;
      };
      const restartAfterFailure = (result) => {
        const index = activeIndex;
        activeIndex = null;
        if (timeout) clearTimeout(timeout);
        if (index != null) finishOne(index, result);
        if (finished === files.length) {
          if (!failed) resolve(results);
          return;
        }
        startWorker();
      };
      const dispatch = () => {
        if (next >= files.length) {
          stopping = true;
          worker.disconnect();
          return;
        }
        activeIndex = next++;
        worker.send({ index: activeIndex, file: files[activeIndex] });
        timeout = setTimeout(() => {
          if (activeIndex == null) return;
          const index = activeIndex;
          activeIndex = null;
          finishOne(index, {
            file: files[index],
            result: null,
            diagnostics: [{ reason: `file timeout after ${fileTimeoutMs}ms` }],
            handlers: [],
          });
          worker.kill();
          if (finished === files.length) {
            if (!failed) resolve(results);
          } else {
            startWorker();
          }
        }, fileTimeoutMs);
      };
      worker.on("error", (error) => {
        if (!failed) {
          failed = true;
          reject(error);
        }
      });
      worker.on("exit", (code, signal) => {
        if (stopping || activeIndex == null || failed) return;
        restartAfterFailure({
          file: files[activeIndex],
          result: null,
          diagnostics: [{ reason: `worker exited${signal ? ` with ${signal}` : ` with code ${code}`} before completing file` }],
          handlers: [],
        });
      });
      worker.on("message", (message) => {
        if (activeIndex == null) return;
        clearTimeout(timeout);
        activeIndex = null;
        finishOne(message.index, message.result);
        dispatch();
        if (finished === files.length && !failed) resolve(results);
      });
      dispatch();
    };

    for (let i = 0; i < workerCount; i++) startWorker();
  });
}

async function main() {
  const options = parseArgs(process.argv.slice(2));
  if (options.help) return usage();
  const files = options.files.length
    ? options.files.map((file) => path.resolve(ROOT, file))
    : walk(options.src);
  const manifest = {
    schemaVersion: 1,
    generatedBy: "tools/ts-to-json.cjs",
    commands: {},
    handlers: [],
    files: [],
    collisions: [],
    handlerCollisions: [],
  };
  const commandSources = new Map();
  const outputSources = new Map();
  const sortedFiles = files.sort();
  if (options.limit != null) sortedFiles.splice(options.limit);
  if (options.clean && !options.reportOnly) cleanGeneratedJson(options.out);
  const processed = options.jobs > 1
    ? await runParallel(sortedFiles, options.jobs, options.fileTimeoutMs)
    : sortedFiles.map(processFile);
  const versionedVariants = new Map();
  for (const item of processed) {
    const root = item.result?.versionedRoot;
    if (!root) continue;
    const directory = path.dirname(item.file);
    for (const version of root.versions) {
      for (const extension of [".ts", ".js", ".mjs", ".cjs"]) {
        versionedVariants.set(path.join(directory, `${version}${extension}`), {
          command: root.command,
          version,
        });
      }
    }
  }
  let needsManual = 0;
  for (let i = 0; i < processed.length; i++) {
    const item = processed[i];
    const result = item.result;
    const diagnostics = item.diagnostics;
    const handlers = item.handlers;
    for (const handler of handlers) {
      const existingHandler = manifest.handlers.find((candidate) => candidate.id === handler.id);
      if (existingHandler && (existingHandler.sourceFile !== handler.sourceFile || existingHandler.path !== handler.path)) {
        manifest.handlerCollisions.push({
          id: handler.id,
          handlers: [
            { sourceFile: existingHandler.sourceFile, path: existingHandler.path },
            { sourceFile: handler.sourceFile, path: handler.path },
          ],
        });
      }
      manifest.handlers.push(handler);
    }
    const file = item.file;
    const relative = path.relative(ROOT, file).split(path.sep).join("/");
    const fileRecord = { sourceFile: relative, status: result && diagnostics.length === 0 && handlers.length === 0 ? "complete" : "needs-manual", diagnostics };
    if (result) {
      const versionedVariant = versionedVariants.get(file);
      if (versionedVariant) {
        result.name = versionedVariant.command;
        result.spec = normalizeVersionedVariant(
          result.spec,
          versionedVariant.command,
        );
        fileRecord.command = result.name;
        const writeTarget = versionedOutputPath(
          options.out,
          versionedVariant.command,
          versionedVariant.version,
        );
        fileRecord.outputFile = path.relative(options.out, writeTarget)
          .split(path.sep).join("/");
        manifest.commands[`${versionedVariant.command}/${versionedVariant.version}`] = {
          file: fileRecord.outputFile,
          aliasOf: versionedVariant.command,
        };
        if (!options.reportOnly) {
          fs.mkdirSync(path.dirname(writeTarget), { recursive: true });
          fs.writeFileSync(writeTarget, `${JSON.stringify(result.spec, null, 2)}\n`);
        }
        if (fileRecord.status === "needs-manual") needsManual++;
        manifest.files.push(fileRecord);
        console.error(`[${i + 1}/${processed.length}] ${relative} -> ${fileRecord.status}`);
        continue;
      }
      fileRecord.command = result.name;
      fileRecord.outputFile = path.relative(options.out, outputPath(options.out, result.name)).split(path.sep).join("/");
      let writeTarget = outputPath(options.out, result.name);
      const previous = manifest.commands[result.name];
      const previousSource = commandSources.get(result.name);
      const previousOutputSource = outputSources.get(fileRecord.outputFile);
      if (previous && previous.file !== fileRecord.outputFile) {
        writeTarget = collisionOutputPath(options.out, result.name, relative);
        fileRecord.outputFile = path.relative(options.out, writeTarget).split(path.sep).join("/");
        const collision = {
          command: result.name,
          files: [previousSource, relative],
          outputFiles: [previous.file, fileRecord.outputFile],
        };
        manifest.collisions.push(collision);
        diagnostics.push({
          path: "name",
          reason: "duplicate command name",
          source: `also declared by ${previousSource}`,
        });
      } else if (previousOutputSource && previousOutputSource !== relative) {
        writeTarget = collisionOutputPath(options.out, result.name, relative);
        fileRecord.outputFile = path.relative(options.out, writeTarget).split(path.sep).join("/");
        manifest.collisions.push({
          outputFile: fileRecord.outputFile,
          files: [previousOutputSource, relative],
        });
        diagnostics.push({
          path: "name",
          reason: "output path collision",
          source: `also emitted by ${previousOutputSource}`,
        });
      } else {
        manifest.commands[result.name] = { file: fileRecord.outputFile };
        commandSources.set(result.name, relative);
        outputSources.set(fileRecord.outputFile, relative);
      }
      if (!options.reportOnly) {
        fs.mkdirSync(path.dirname(writeTarget), { recursive: true });
        fs.writeFileSync(writeTarget, `${JSON.stringify(result.spec, null, 2)}\n`);
      }
    }
    if (fileRecord.status === "needs-manual") needsManual++;
    manifest.files.push(fileRecord);
    console.error(`[${i + 1}/${processed.length}] ${relative} -> ${fileRecord.status}`);
  }
  manifest.handlers = [...new Map(manifest.handlers.map((handler) => [handler.id, handler])).values()];
  if (!options.reportOnly) {
    fs.mkdirSync(options.out, { recursive: true });
    fs.writeFileSync(path.join(options.out, "index.json"), `${JSON.stringify({ schemaVersion: 1, commands: manifest.commands }, null, 2)}\n`);
    fs.writeFileSync(path.join(options.out, "manual-handlers.json"), `${JSON.stringify({ schemaVersion: 1, handlers: manifest.handlers }, null, 2)}\n`);
  }
  fs.mkdirSync(path.dirname(options.report), { recursive: true });
  fs.writeFileSync(options.report, `${JSON.stringify(manifest, null, 2)}\n`);
  console.log(JSON.stringify({ files: files.length, commands: Object.keys(manifest.commands).length, needsManual, handlers: manifest.handlers.length, collisions: manifest.collisions.length, handlerCollisions: manifest.handlerCollisions.length, report: path.relative(ROOT, options.report) }, null, 2));
  if (options.strict && (needsManual > 0 || manifest.collisions.length > 0 || manifest.handlerCollisions.length > 0)) process.exitCode = 2;
}

if (process.argv[2] === "--worker") {
  process.on("message", (message) => {
    process.send({ index: message.index, result: processFile(message.file) });
  });
} else {
  main().catch((error) => {
    console.error(error.message);
    usage();
    process.exitCode = 1;
  });
}
