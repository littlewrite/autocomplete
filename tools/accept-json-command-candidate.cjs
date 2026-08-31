#!/usr/bin/env node

// Accept one reviewed focused-export candidate without replacing the whole
// catalog. This is intentionally separate from the full-catalog gate.

const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const args = process.argv.slice(2);
const options = { catalog: 'json/specs', candidate: null, command: null };

for (let index = 0; index < args.length; index += 1) {
  const arg = args[index];
  if (arg === '--catalog') options.catalog = args[++index];
  else if (arg === '--candidate') options.candidate = args[++index];
  else if (arg === '--command') options.command = args[++index];
  else if (arg === '--help' || arg === '-h') {
    console.log(`Usage: node tools/accept-json-command-candidate.cjs \\
  --candidate <specs-dir> --command <root-command> [--catalog <specs-dir>]

Copies exactly one reviewed focused-export command document and replaces the
handler-manifest records owned by its source file. It does not materialize
package assets; run tools/materialize-json-assets.cjs after validation.`);
    process.exit(0);
  } else {
    throw new Error(`Unknown argument: ${arg}`);
  }
}

if (!options.candidate || !options.command) {
  throw new Error('--candidate and --command are required');
}

function readJson(file) {
  return JSON.parse(fs.readFileSync(file, 'utf8'));
}

function writeJsonAtomic(file, value) {
  const temp = `${file}.tmp-${process.pid}`;
  fs.writeFileSync(temp, `${JSON.stringify(value, null, 2)}\n`);
  fs.renameSync(temp, file);
}

function commandRecord(catalog, command) {
  const index = readJson(path.join(catalog, 'index.json'));
  const entry = index.commands?.[command];
  if (!entry || typeof entry.file !== 'string') {
    throw new Error(`command ${command} is not a primary catalog entry`);
  }
  return { index, entry };
}

function main() {
  const catalog = path.resolve(root, options.catalog);
  const candidate = path.resolve(options.candidate);
  const current = commandRecord(catalog, options.command);
  const proposed = commandRecord(candidate, options.command);
  if (current.entry.file !== proposed.entry.file) {
    throw new Error(
      `candidate changes output path for ${options.command}: ` +
      `${current.entry.file} -> ${proposed.entry.file}`,
    );
  }

  const candidateManifest = readJson(
    path.join(candidate, 'conversion-manifest.json'),
  );
  const sourceRecord = (candidateManifest.files || []).find(
    (record) => record.command === options.command &&
      record.outputFile === proposed.entry.file,
  );
  if (!sourceRecord?.sourceFile) {
    throw new Error(`candidate has no source record for ${options.command}`);
  }

  const sourceFile = sourceRecord.sourceFile;
  const candidateHandlers = readJson(
    path.join(candidate, 'manual-handlers.json'),
  );
  const replacementHandlers = (candidateHandlers.handlers || []).filter(
    (handler) => handler.sourceFile === sourceFile,
  );
  const targetDocument = readJson(path.join(candidate, proposed.entry.file));
  if (targetDocument.name !== options.command) {
    throw new Error(`candidate document name does not match ${options.command}`);
  }

  const currentHandlersPath = path.join(catalog, 'manual-handlers.json');
  const currentHandlers = readJson(currentHandlersPath);
  const keptHandlers = (currentHandlers.handlers || []).filter(
    (handler) => handler.sourceFile !== sourceFile,
  );
  const mergedHandlers = [...keptHandlers, ...replacementHandlers]
    .sort((left, right) => left.id.localeCompare(right.id));
  const ids = new Set();
  for (const handler of mergedHandlers) {
    if (ids.has(handler.id)) throw new Error(`duplicate handler ID ${handler.id}`);
    ids.add(handler.id);
  }

  writeJsonAtomic(path.join(catalog, current.entry.file), targetDocument);
  writeJsonAtomic(currentHandlersPath, {
    ...currentHandlers,
    schemaVersion: 1,
    handlers: mergedHandlers,
  });
  console.log(JSON.stringify({
    catalog: path.relative(root, catalog),
    command: options.command,
    sourceFile,
    document: current.entry.file,
    replacedHandlers: replacementHandlers.length,
  }, null, 2));
}

main();
