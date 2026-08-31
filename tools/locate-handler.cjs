#!/usr/bin/env node

// Look up one manual-port work item without making a caller read the full TS
// spec. The manifest is created during conversion and stores the exact dynamic
// expression, so this tool opens only the requested source file when details
// are requested.
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const defaultManifest = path.join(root, 'json/specs/manual-handlers.json');
const dartRoot = path.join(root, 'dart/lib/src/spec_handlers');

function usage() {
  console.log(`Usage:
  node tools/locate-handler.cjs --id <handler-id> [--context <lines>] [--json]
  node tools/locate-handler.cjs --source <src/file.ts> [--kind <kind>] [--status <todo|implemented>] [--limit <n>] [--json]

The list form is compact and excludes source code. The --id form returns the
captured expression plus only imports and local definitions it appears to use.`);
}

function parseArgs(argv) {
  const options = { context: 2, limit: 20, json: false };
  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i];
    if (arg === '--help' || arg === '-h') options.help = true;
    else if (arg === '--id') options.id = argv[++i];
    else if (arg === '--source') options.source = argv[++i];
    else if (arg === '--kind') options.kind = argv[++i];
    else if (arg === '--status') options.status = argv[++i];
    else if (arg === '--context') options.context = Math.max(0, Number(argv[++i]) || 0);
    else if (arg === '--limit') options.limit = Math.max(1, Number(argv[++i]) || 20);
    else if (arg === '--json') options.json = true;
    else throw new Error(`Unknown argument: ${arg}`);
  }
  return options;
}

function dartFiles(dir) {
  if (!fs.existsSync(dir)) return [];
  const files = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const file = path.join(dir, entry.name);
    if (entry.isDirectory()) files.push(...dartFiles(file));
    else if (entry.name.endsWith('.dart')) files.push(file);
  }
  return files;
}

const implementedIds = new Set(
  dartFiles(dartRoot)
    .map((file) => fs.readFileSync(file, 'utf8'))
    .join('\n')
    .matchAll(/['"](manual\.[^'"]+)['"]/g),
);

function isImplemented(id) {
  for (const match of implementedIds) if (match[1] === id) return true;
  return false;
}

function lineNumber(source, offset) {
  return source.slice(0, offset).split('\n').length;
}

function compactWithOffsets(source) {
  let compact = '';
  const offsets = [];
  let quote = null;
  for (let i = 0; i < source.length; i++) {
    const char = source[i];
    if (quote) {
      if (char === '\\') {
        compact += char;
        offsets.push(i);
        if (i + 1 < source.length) {
          compact += source[++i];
          offsets.push(i);
        }
        continue;
      }
      compact += char;
      offsets.push(i);
      if (char === quote) quote = null;
      continue;
    }
    if (char === '"' || char === "'" || char === '`') {
      quote = char;
      compact += char;
      offsets.push(i);
      continue;
    }
    if (char === '/' && source[i + 1] === '/') {
      i = source.indexOf('\n', i + 2);
      if (i < 0) break;
      continue;
    }
    if (char === '/' && source[i + 1] === '*') {
      const end = source.indexOf('*/', i + 2);
      i = end < 0 ? source.length : end + 1;
      continue;
    }
    if (/\s/.test(char)) continue;
    compact += char;
    offsets.push(i);
  }
  return { compact, offsets };
}

function rangeFor(record, source) {
  const matches = [];
  let offset = source.indexOf(record.source);
  while (offset >= 0) {
    matches.push({ start: offset, end: offset + record.source.length });
    offset = source.indexOf(record.source, offset + 1);
  }
  if (!matches.length) {
    const haystack = compactWithOffsets(source);
    const needle = compactWithOffsets(record.source).compact;
    let compactOffset = haystack.compact.indexOf(needle);
    while (compactOffset >= 0) {
      matches.push({
        start: haystack.offsets[compactOffset],
        end: haystack.offsets[compactOffset + needle.length - 1] + 1,
      });
      compactOffset = haystack.compact.indexOf(needle, compactOffset + 1);
    }
  }
  if (!matches.length) return null;
  const preferred = Number.isInteger(record.line) ? record.line : 1;
  const match = matches.reduce((closest, candidate) =>
    Math.abs(lineNumber(source, candidate.start) - preferred) <
        Math.abs(lineNumber(source, closest.start) - preferred)
      ? candidate
      : closest,
  matches[0]);
  return {
    startLine: lineNumber(source, match.start),
    endLine: lineNumber(source, match.end),
    startOffset: match.start,
    endOffset: match.end,
  };
}

function words(source) {
  return new Set((source.match(/[A-Za-z_$][\w$]*/g) || []));
}

function relevantImports(source, expression) {
  const used = words(expression);
  const imports = [];
  const pattern = /import\s+([\s\S]*?)\s+from\s+["']([^"']+)["']\s*;?/g;
  let match;
  while ((match = pattern.exec(source))) {
    const clause = match[1];
    const locals = [];
    const defaultName = clause.match(/^\s*([A-Za-z_$][\w$]*)/);
    if (defaultName) locals.push(defaultName[1]);
    const namespace = clause.match(/\*\s+as\s+([A-Za-z_$][\w$]*)/);
    if (namespace) locals.push(namespace[1]);
    const named = clause.match(/\{([\s\S]*?)\}/);
    if (named) {
      for (const item of named[1].split(',')) {
        const local = item.trim().split(/\s+as\s+/).pop().trim();
        if (/^[A-Za-z_$][\w$]*$/.test(local)) locals.push(local);
      }
    }
    const usedLocals = locals.filter((local) => used.has(local));
    if (usedLocals.length) imports.push({ module: match[2], locals: usedLocals });
  }
  return imports;
}

function relevantLocalDefinitions(source, expression, range) {
  const used = words(expression);
  const definitions = [];
  const pattern = /(?:export\s+)?(?:const|let|function|class)\s+([A-Za-z_$][\w$]*)\b/g;
  let match;
  while ((match = pattern.exec(source))) {
    const name = match[1];
    const line = lineNumber(source, match.index);
    if (!used.has(name) || (range && line >= range.startLine && line <= range.endLine)) continue;
    definitions.push({ name, line });
  }
  return definitions;
}

function compact(record) {
  return {
    id: record.id,
    kind: record.kind,
    sourceFile: record.sourceFile,
    line: record.line,
    jsonPath: record.path,
    status: isImplemented(record.id) ? 'implemented' : 'todo',
  };
}

function print(value, options) {
  if (options.json) {
    console.log(JSON.stringify(value, null, 2));
    return;
  }
  if (Array.isArray(value)) {
    for (const item of value) {
      console.log(`${item.status}\t${item.kind}\t${item.sourceFile}:${item.line || '?'}\t${item.id}`);
    }
    return;
  }
  console.log(`${value.status} ${value.kind}: ${value.id}`);
  console.log(`source: ${value.sourceFile}:${value.sourceRange?.startLine || value.line || '?'}`);
  console.log(`json: ${value.jsonPath}`);
  if (value.imports.length) console.log(`imports: ${value.imports.map((item) => `${item.module} (${item.locals.join(', ')})`).join('; ')}`);
  if (value.localDefinitions.length) console.log(`locals: ${value.localDefinitions.map((item) => `${item.name}:${item.line}`).join(', ')}`);
  console.log('\n' + value.source);
  if (value.context) console.log('\nContext:\n' + value.context);
}

function main() {
  const options = parseArgs(process.argv.slice(2));
  if (options.help || (!options.id && !options.source)) {
    usage();
    process.exitCode = options.help ? 0 : 64;
    return;
  }
  if (options.status && !['todo', 'implemented'].includes(options.status)) {
    throw new Error('--status must be todo or implemented');
  }
  const manifest = JSON.parse(fs.readFileSync(defaultManifest, 'utf8'));
  const records = manifest.handlers || [];
  if (!options.id) {
    const items = records
      .filter((record) => record.sourceFile === options.source)
      .filter((record) => !options.kind || record.kind === options.kind)
      .map(compact)
      .filter((record) => !options.status || record.status === options.status)
      .sort((left, right) => (left.line || 0) - (right.line || 0) || left.id.localeCompare(right.id))
      .slice(0, options.limit);
    print(items, options);
    return;
  }
  const record = records.find((item) => item.id === options.id);
  if (!record) throw new Error(`Unknown handler ID: ${options.id}`);
  const file = path.join(root, record.sourceFile);
  const sourceFile = fs.readFileSync(file, 'utf8');
  const sourceRange = rangeFor(record, sourceFile);
  const lines = sourceFile.split('\n');
  const context = sourceRange
    ? lines.slice(Math.max(0, sourceRange.startLine - 1 - options.context),
      Math.min(lines.length, sourceRange.endLine + options.context)).join('\n')
    : null;
  print({
    ...compact(record),
    source: record.source,
    sourceRange,
    imports: relevantImports(sourceFile, record.source),
    localDefinitions: relevantLocalDefinitions(sourceFile, record.source, sourceRange),
    context,
  }, options);
}

try {
  main();
} catch (error) {
  console.error(`ERROR ${error.message}`);
  process.exitCode = 1;
}
