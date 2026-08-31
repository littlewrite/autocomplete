#!/usr/bin/env node

// Build a migration report from the exporter manifest without re-exporting TS.
// The report is intentionally derived from checked-in JSON and Dart sources so
// it is fast enough to run before every handler migration.
const fs = require('fs');
const path = require('path');

const repo = path.resolve(__dirname, '..');
const manifestPath = path.join(repo, 'json/specs/manual-handlers.json');
const handlerRoot = path.join(repo, 'dart/lib');
const assetRoot = path.join(repo, 'dart/assets/specs');
const outputPath = path.join(repo, 'docs/dynamic-handler-todo.md');
const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
const records = manifest.handlers || [];

function dartFiles(dir) {
  const result = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const file = path.join(dir, entry.name);
    if (entry.isDirectory()) result.push(...dartFiles(file));
    else if (entry.name.endsWith('.dart')) result.push(file);
  }
  return result;
}

function jsonFiles(dir) {
  const result = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const file = path.join(dir, entry.name);
    if (entry.isDirectory()) result.push(...jsonFiles(file));
    else if (entry.name.endsWith('.json')) result.push(file);
  }
  return result;
}

const dartSource = dartFiles(handlerRoot)
  .map((file) => fs.readFileSync(file, 'utf8'))
  .join('\n');
const implemented = new Set(
  [...dartSource.matchAll(/['"](manual\.[^'"]+)['"]/g)].map((match) => match[1]),
);

// Handlers still referenced by a shipped JSON asset are runtime dependencies;
// every other manifest handler was inlined by the exporter into static data.
const shippedRefs = new Set();
function collectRefs(node) {
  if (!node || typeof node !== 'object') return;
  if (Array.isArray(node)) {
    node.forEach(collectRefs);
    return;
  }
  if (typeof node.handler === 'string') {
    shippedRefs.add(node.handler);
    return;
  }
  for (const value of Object.values(node)) collectRefs(value);
}
for (const file of jsonFiles(assetRoot)) {
  let data;
  try {
    data = JSON.parse(fs.readFileSync(file, 'utf8'));
  } catch (_) {
    continue;
  }
  collectRefs(data);
}

const statusOf = (id) =>
  implemented.has(id)
    ? 'implemented'
    : shippedRefs.has(id)
      ? 'todo'
      : 'inlined';

const unique = new Map();
for (const record of records) {
  if (!unique.has(record.id)) unique.set(record.id, record);
}

const groups = new Map();
for (const record of unique.values()) {
  const status = statusOf(record.id);
  const key = `${record.sourceFile}\t${record.kind}\t${status}`;
  const group = groups.get(key) || {
    sourceFile: record.sourceFile,
    kind: record.kind,
    status,
    count: 0,
    ids: [],
  };
  group.count += 1;
  group.ids.push(record.id);
  groups.set(key, group);
}

const sorted = [...groups.values()].sort((a, b) =>
  b.count - a.count || a.sourceFile.localeCompare(b.sourceFile) ||
  a.kind.localeCompare(b.kind) || a.status.localeCompare(b.status));
const todo = sorted.filter((group) => group.status === 'todo');
const done = sorted.filter((group) => group.status === 'implemented');
const inlined = sorted.filter((group) => group.status === 'inlined');
const count = (items) => items.reduce((sum, item) => sum + item.count, 0);

const lines = [
  '# Dynamic Handler TODO',
  '',
  `Generated from \`json/specs/manual-handlers.json\` on ${new Date().toISOString().slice(0, 10)}.`,
  'This report does not run the exporter; rerun the exporter only when the TS source changes.',
  '',
  `Unique handler IDs: **${unique.size}**. Implemented IDs: **${count(done)}**. TODO IDs: **${count(todo)}**. Inlined (resolved by the exporter, not shipped): **${count(inlined)}**.`,
  '',
  '## Remaining TODO',
  '',
  '| Source file | Kind | IDs |',
  '| --- | --- | ---: |',
];
for (const group of todo) {
  lines.push(`| \`${group.sourceFile}\` | \`${group.kind}\` | ${group.count} |`);
}
if (todo.length === 0) lines.push('| None | | 0 |');
lines.push('', '## Completed', '', '| Source file | Kind | IDs |', '| --- | --- | ---: |');
for (const group of done) {
  lines.push(`| \`${group.sourceFile}\` | \`${group.kind}\` | ${group.count} |`);
}
if (done.length === 0) lines.push('| None | | 0 |');
lines.push('', '## Inlined (resolved by exporter, not shipped)', '', '| Source file | Kind | IDs |', '| --- | --- | ---: |');
for (const group of inlined) {
  lines.push(`| \`${group.sourceFile}\` | \`${group.kind}\` | ${group.count} |`);
}
if (inlined.length === 0) lines.push('| None | | 0 |');
lines.push('', '## Handler Kinds', '', '| Kind | TODO IDs | Implemented IDs | Inlined IDs |', '| --- | ---: | ---: | ---: |');
const kinds = new Set(sorted.map((group) => group.kind));
for (const kind of [...kinds].sort()) {
  const matching = sorted.filter((group) => group.kind === kind);
  lines.push(`| \`${kind}\` | ${count(matching.filter((g) => g.status === 'todo'))} | ${count(matching.filter((g) => g.status === 'implemented'))} | ${count(matching.filter((g) => g.status === 'inlined'))} |`);
}

fs.writeFileSync(outputPath, `${lines.join('\n')}\n`);
console.log(JSON.stringify({
  output: path.relative(repo, outputPath),
  uniqueHandlers: unique.size,
  implemented: count(done),
  todo: count(todo),
  inlined: count(inlined),
}, null, 2));
