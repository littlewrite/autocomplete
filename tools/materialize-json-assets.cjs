#!/usr/bin/env node

// Materialize the publishable JSON catalog from exporter output. The exporter
// keeps diagnostics and collision records in json/specs; this tool writes only
// addressable runtime assets in the package layout.

const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const sourceRoot = path.resolve(root, process.argv[2] || 'json/specs');
const assetRoot = path.resolve(root, process.argv[3] || 'dart/assets/specs');

function fail(message) {
  console.error(`ERROR ${message}`);
  process.exitCode = 1;
}

function safeRelative(value) {
  return typeof value === 'string' &&
      !path.isAbsolute(value) &&
      !value.split('/').includes('..');
}

function assetPathFor(stagingPath) {
  const segments = stagingPath.split('/');
  if (segments[0] !== 'commands' || segments.length < 3) {
    throw new Error(`expected commands/<initial>/... path, got ${stagingPath}`);
  }
  return segments.slice(1).join('/');
}

function collectLoadSpecs(value, output) {
  if (Array.isArray(value)) {
    value.forEach((item) => collectLoadSpecs(item, output));
    return;
  }
  if (!value || typeof value !== 'object') return;
  if (typeof value.loadSpec === 'string') output.add(value.loadSpec);
  Object.values(value).forEach((item) => collectLoadSpecs(item, output));
}

// Resolve a logical loadSpec name (aws/account, az/2.53.0/account) to its
// physical asset. Prefer the DISTINCT namespaced doc (a true collision or
// versioned variant now stored under a namespace directory), then fall back to
// the flat command doc that the namespace aliases. Order matters: a namespaced
// command and a flat command with the same leaf are often two different docs.
function resolveNamespacedAsset(target, assetRoot) {
  const parts = target.split('/');
  if (parts.length < 2) return null;
  const namespaced = `${parts[0][0].toLowerCase()}/${target}.json`;
  if (fs.existsSync(path.join(assetRoot, namespaced))) return namespaced;
  const leaf = parts[parts.length - 1];
  const flat = `${leaf[0].toLowerCase()}/${leaf}.json`;
  if (fs.existsSync(path.join(assetRoot, flat))) return flat;
  return null;
}

// The exporter names a losing collision doc `<command>--<sanitized source>`
// where the source's '/' became '_' (e.g. amplify--aws_amplify.json). Decode it
// back to the logical namespace path so the physical tree mirrors structure.
// Safe here: no namespace segment in the catalog contains a literal '_'.
function logicalPathForMangled(relative) {
  const leaf = relative.split('/').pop().replace(/\.json$/, '');
  const sep = leaf.indexOf('--');
  const command = leaf.slice(0, sep);
  const suffix = leaf.slice(sep + 2).replace(/_/g, '/');
  return suffix.includes('/') ? suffix : `${command}/${suffix}`;
}

// Move every mangled collision/versioned doc under its namespace directory
// (a/amplify--aws_amplify.json -> a/aws/amplify.json) and report old->new paths.
function relayoutMangledAssets(assetRoot) {
  const mangled = [];
  for (const entry of fs.readdirSync(assetRoot, { withFileTypes: true })) {
    if (!entry.isDirectory()) {
      if (entry.name.includes('--') && entry.name.endsWith('.json')) {
        mangled.push(entry.name);
      }
      continue;
    }
    for (const f of fs.readdirSync(path.join(assetRoot, entry.name))) {
      if (f.includes('--') && f.endsWith('.json')) mangled.push(`${entry.name}/${f}`);
    }
  }
  const moves = new Map();
  for (const rel of mangled) {
    const logical = logicalPathForMangled(rel);
    const target = `${logical[0].toLowerCase()}/${logical}.json`;
    const source = path.join(assetRoot, rel);
    const destination = path.join(assetRoot, target);
    fs.mkdirSync(path.dirname(destination), { recursive: true });
    fs.renameSync(source, destination);
    moves.set(rel, target);
    console.error(`relayout ${rel} -> ${target}`);
  }
  return moves;
}

function main() {
  const indexPath = path.join(sourceRoot, 'index.json');
  if (!fs.existsSync(indexPath)) {
    fail(`missing source index: ${indexPath}`);
    return;
  }

  const sourceIndex = JSON.parse(fs.readFileSync(indexPath, 'utf8'));
  if (sourceIndex.schemaVersion !== 1 ||
      !sourceIndex.commands || typeof sourceIndex.commands !== 'object') {
    fail('source index must contain schemaVersion 1 and a commands object');
    return;
  }

  const outputIndex = { schemaVersion: 1, commands: {} };
  const seenOutput = new Set();
  const entries = Object.entries(sourceIndex.commands).sort(([left], [right]) =>
    left.localeCompare(right));

  fs.rmSync(assetRoot, { recursive: true, force: true });
  fs.mkdirSync(assetRoot, { recursive: true });

  for (const [command, entry] of entries) {
    if (!entry || !safeRelative(entry.file)) {
      throw new Error(`invalid index entry for ${command}`);
    }
    const destinationRelative = assetPathFor(entry.file);
    if (seenOutput.has(destinationRelative)) {
      throw new Error(`duplicate package asset path: ${destinationRelative}`);
    }
    seenOutput.add(destinationRelative);

    const source = path.join(sourceRoot, entry.file);
    const destination = path.join(assetRoot, destinationRelative);
    if (!fs.existsSync(source)) {
      throw new Error(`missing source command document: ${entry.file}`);
    }
    const spec = JSON.parse(fs.readFileSync(source, 'utf8'));
    const expectedName = entry.aliasOf || command;
    if (spec.schemaVersion !== 1 || spec.name !== expectedName) {
      throw new Error(`source command document does not match index: ${entry.file}`);
    }
    fs.mkdirSync(path.dirname(destination), { recursive: true });
    fs.copyFileSync(source, destination);
    outputIndex.commands[command] = {
      ...entry,
      file: destinationRelative,
    };
  }

  // Collision documents are not primary command names, but namespaced
  // loadSpec links (notably az/<version>/...) may point to them. Keep those
  // JSON files in the package even though they are not direct index entries.
  const copyAll = (dir) => {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const source = path.join(dir, entry.name);
      if (entry.isDirectory()) {
        copyAll(source);
        continue;
      }
      if (!entry.name.endsWith('.json')) continue;
      const relative = path.relative(sourceRoot, source).split(path.sep).join('/');
      if (relative === 'index.json' || relative === 'manual-handlers.json' ||
          relative === 'conversion-manifest.json' || !relative.startsWith('commands/')) continue;
      const destinationRelative = assetPathFor(relative);
      const destination = path.join(assetRoot, destinationRelative);
      if (!fs.existsSync(destination)) {
        fs.mkdirSync(path.dirname(destination), { recursive: true });
        fs.copyFileSync(source, destination);
      }
    }
  };
  copyAll(path.join(sourceRoot, 'commands'));

  // Namespaced collision/versioned docs were copied under mangled names
  // (a/amplify--aws_amplify.json); move them under their namespace directory
  // (a/aws/amplify.json) so the physical tree mirrors logical structure.
  const moves = relayoutMangledAssets(assetRoot);
  for (const entry of Object.values(outputIndex.commands)) {
    const moved = moves.get(entry.file);
    if (moved) entry.file = moved;
  }

  // Keep logical loadSpec names (aws/foo, az/2.53.0/foo) addressable even
  // though command documents are stored in a flat first-letter namespace.
  // Aliases may intentionally point at an existing physical JSON document.
  const loadSpecs = new Set();
  for (const entry of Object.values(outputIndex.commands)) {
    collectLoadSpecs(
        JSON.parse(fs.readFileSync(path.join(assetRoot, entry.file), 'utf8')),
        loadSpecs);
  }
  for (const target of [...loadSpecs].sort()) {
    if (outputIndex.commands[target]) continue;
    const file = resolveNamespacedAsset(target, assetRoot);
    if (!file) continue;
    const spec = JSON.parse(fs.readFileSync(path.join(assetRoot, file), 'utf8'));
    outputIndex.commands[target] = { file, aliasOf: spec.name };
  }

  // Every index entry must resolve to a physical file — a missing file is a
  // materialize bug (copy or relayout error).
  for (const [name, entry] of Object.entries(outputIndex.commands)) {
    if (!fs.existsSync(path.join(assetRoot, entry.file))) {
      fail(`index entry ${name} -> ${entry.file} is missing`);
    }
  }
  // A loadSpec that resolves to nothing is a pre-existing catalog gap (the
  // sub-spec source is absent), not a relayout failure. Warn so the count is
  // visible instead of silently degrading completions.
  let unresolvable = 0;
  for (const target of [...loadSpecs].sort()) {
    if (!outputIndex.commands[target]) {
      unresolvable++;
      console.error(`warn: loadSpec ${target} has no asset`);
    }
  }
  if (unresolvable) {
    console.error(`warn: ${unresolvable} loadSpecs have no asset (pre-existing gaps)`);
  }

  fs.writeFileSync(
    path.join(assetRoot, 'index.json'),
    `${JSON.stringify(outputIndex, null, 2)}\n`,
  );
  console.log(JSON.stringify({
    sourceRoot: path.relative(root, sourceRoot),
    assetRoot: path.relative(root, assetRoot),
    commands: entries.length,
  }, null, 2));
}

try {
  main();
} catch (error) {
  fail(error.message);
}
