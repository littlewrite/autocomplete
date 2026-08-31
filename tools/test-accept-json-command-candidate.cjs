#!/usr/bin/env node

const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { spawnSync } = require('node:child_process');

const root = path.resolve(__dirname, '..');
const temp = fs.mkdtempSync(path.join(os.tmpdir(), 'autocomplete-accept-'));
const catalog = path.join(temp, 'catalog');
const candidate = path.join(temp, 'candidate');

for (const directory of [catalog, candidate]) {
  fs.mkdirSync(path.join(directory, 'commands', 'b'), { recursive: true });
}

const index = { schemaVersion: 1, commands: { brew: { file: 'commands/b/brew.json' } } };
fs.writeFileSync(path.join(catalog, 'index.json'), JSON.stringify(index));
fs.writeFileSync(path.join(candidate, 'index.json'), JSON.stringify(index));
fs.writeFileSync(path.join(catalog, 'commands', 'b', 'brew.json'),
  JSON.stringify({ schemaVersion: 1, name: 'brew', description: 'old' }));
fs.writeFileSync(path.join(candidate, 'commands', 'b', 'brew.json'),
  JSON.stringify({ schemaVersion: 1, name: 'brew', description: 'new' }));
fs.writeFileSync(path.join(catalog, 'manual-handlers.json'), JSON.stringify({
  schemaVersion: 1,
  handlers: [
    { id: 'manual.src_brew.old', kind: 'custom', sourceFile: 'src/brew.ts', path: 'old', source: 'old' },
    { id: 'manual.src_cut.keep', kind: 'custom', sourceFile: 'src/cut.ts', path: 'keep', source: 'keep' },
  ],
}));
fs.writeFileSync(path.join(candidate, 'manual-handlers.json'), JSON.stringify({
  schemaVersion: 1,
  handlers: [
    { id: 'manual.src_brew.new', kind: 'custom', sourceFile: 'src/brew.ts', path: 'new', source: 'new' },
  ],
}));
fs.writeFileSync(path.join(candidate, 'conversion-manifest.json'), JSON.stringify({
  files: [{ sourceFile: 'src/brew.ts', command: 'brew', outputFile: 'commands/b/brew.json' }],
}));

const result = spawnSync(process.execPath, [
  path.join(root, 'tools/accept-json-command-candidate.cjs'),
  '--catalog', catalog,
  '--candidate', candidate,
  '--command', 'brew',
], { cwd: root, encoding: 'utf8' });
assert.equal(result.status, 0, result.stderr);
assert.equal(JSON.parse(fs.readFileSync(path.join(catalog, 'commands/b/brew.json'))).description, 'new');
assert.deepEqual(
  JSON.parse(fs.readFileSync(path.join(catalog, 'manual-handlers.json'))).handlers.map((item) => item.id),
  ['manual.src_brew.new', 'manual.src_cut.keep'],
);

console.log(JSON.stringify({ valid: true }, null, 2));
