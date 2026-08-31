#!/usr/bin/env node

// Verify that conversion work is explicit. Normal mode checks manifest
// integrity; --release is the intentional gate for a catalog where no source
// diagnostic or unported handler remains.
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const options = { release: false, catalog: 'json/specs' };
const args = process.argv.slice(2);
for (let index = 0; index < args.length; index++) {
  const arg = args[index];
  if (arg === '--release') options.release = true;
  else if (arg === '--catalog') options.catalog = args[++index];
  else if (arg === '--help' || arg === '-h') {
    console.log('Usage: node tools/check-conversion-completeness.cjs [--catalog <specs-dir>] [--release]');
    process.exit(0);
  } else throw new Error(`Unknown argument: ${arg}`);
}

const catalog = path.resolve(root, options.catalog);
const manifest = JSON.parse(fs.readFileSync(path.join(catalog, 'conversion-manifest.json'), 'utf8'));
const handlers = JSON.parse(fs.readFileSync(path.join(catalog, 'manual-handlers.json'), 'utf8')).handlers || [];
const errors = [];
const sourceFiles = new Map((manifest.files || []).map((file) => [file.sourceFile, file]));
const ids = new Set();
let diagnostics = 0;

for (const file of manifest.files || []) {
  if (!file.sourceFile || !fs.existsSync(path.join(root, file.sourceFile))) {
    errors.push(`missing source file record: ${file.sourceFile || '<unknown>'}`);
  }
  if (!['complete', 'needs-manual'].includes(file.status)) {
    errors.push(`invalid conversion status for ${file.sourceFile}: ${file.status}`);
  }
  if (!Array.isArray(file.diagnostics)) {
    errors.push(`missing diagnostics array for ${file.sourceFile}`);
    continue;
  }
  diagnostics += file.diagnostics.length;
  for (const diagnostic of file.diagnostics) {
    if (!diagnostic || typeof diagnostic.reason !== 'string' || !diagnostic.reason) {
      errors.push(`invalid diagnostic in ${file.sourceFile}`);
    }
  }
}

for (const handler of handlers) {
  if (!handler || typeof handler.id !== 'string' || ids.has(handler.id)) {
    errors.push(`duplicate or invalid handler: ${handler?.id || '<unknown>'}`);
    continue;
  }
  ids.add(handler.id);
  for (const key of ['kind', 'sourceFile', 'path', 'source']) {
    if (typeof handler[key] !== 'string' || !handler[key]) {
      errors.push(`incomplete handler ${handler.id}: ${key}`);
    }
  }
  if (!sourceFiles.has(handler.sourceFile)) {
    errors.push(`handler ${handler.id} has no conversion file record`);
  }
}

const dartRoot = path.join(root, 'dart/lib/src/spec_handlers');
const dartSource = fs.existsSync(dartRoot)
  ? fs.readdirSync(dartRoot, { recursive: true })
    .filter((file) => file.endsWith('.dart'))
    .map((file) => fs.readFileSync(path.join(dartRoot, file), 'utf8')).join('\n')
  : '';
const implemented = new Set([...dartSource.matchAll(/['"](manual\.[^'"]+)['"]/g)].map((match) => match[1]));
const todo = handlers.filter((handler) => !implemented.has(handler.id)).length;

if (options.release && diagnostics > 0) {
  errors.push(`release gate: ${diagnostics} unresolved conversion diagnostics`);
}
if (options.release && todo > 0) {
  errors.push(`release gate: ${todo} unported handlers`);
}

const report = {
  valid: errors.length === 0,
  releaseReady: diagnostics === 0 && todo === 0,
  files: (manifest.files || []).length,
  diagnostics,
  handlers: handlers.length,
  implemented: handlers.length - todo,
  todo,
};
if (errors.length) {
  console.error(errors.map((error) => `ERROR ${error}`).join('\n'));
  console.error(JSON.stringify(report, null, 2));
  process.exitCode = 1;
} else {
  console.log(JSON.stringify(report, null, 2));
}
