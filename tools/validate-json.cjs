#!/usr/bin/env node

// Validate generated JSON artifacts without loading or executing handlers.
const fs = require('fs');
const path = require('path');

const root = path.resolve(process.argv[2] || 'json/specs');
const handlersPath = path.resolve(
  process.argv[3] || path.join(root, 'manual-handlers.json'),
);
const errors = [];
const referencedHandlers = [];
const readJson = (file) => {
  try {
    return JSON.parse(fs.readFileSync(file, 'utf8'));
  } catch (error) {
    errors.push(`${path.relative(root, file)}: invalid JSON (${error.message})`);
    return null;
  }
};
const safeRelative = (file) => file && !file.startsWith('/') && !file.split('/').includes('..');
const collectHandlerReferences = (value, file, jsonPath = '$') => {
  if (Array.isArray(value)) {
    value.forEach((item, index) => collectHandlerReferences(item, file, `${jsonPath}[${index}]`));
    return;
  }
  if (!value || typeof value !== 'object') return;
  if (typeof value.handler === 'string') referencedHandlers.push({ id: value.handler, file, path: jsonPath });
  for (const [key, child] of Object.entries(value)) {
    collectHandlerReferences(child, file, `${jsonPath}.${key}`);
  }
};

const index = readJson(path.join(root, 'index.json'));
if (!index || index.schemaVersion !== 1 || !index.commands || typeof index.commands !== 'object') {
  errors.push('index.json: expected schemaVersion 1 and commands object');
}

const seenFiles = new Set();
if (index && index.commands && typeof index.commands === 'object') {
  for (const [name, entry] of Object.entries(index.commands)) {
    if (!entry || typeof entry.file !== 'string' || !safeRelative(entry.file)) {
      errors.push(`index.json: invalid file for command ${name}`);
      continue;
    }
    if (seenFiles.has(entry.file) && !entry.aliasOf) {
      errors.push(`index.json: duplicate file ${entry.file}`);
    }
    seenFiles.add(entry.file);
    const file = path.join(root, entry.file);
    if (!fs.existsSync(file)) {
      errors.push(`index.json: missing file ${entry.file}`);
      continue;
    }
    const spec = readJson(file);
    if (!spec) continue;
    collectHandlerReferences(spec, entry.file);
    if (spec.schemaVersion !== 1) errors.push(`${entry.file}: schemaVersion must be 1`);
    if (entry.aliasOf) {
      if (typeof entry.aliasOf !== 'string' || spec.name !== entry.aliasOf) {
        errors.push(`${entry.file}: name ${JSON.stringify(spec.name)} != aliasOf ${JSON.stringify(entry.aliasOf)}`);
      }
    } else if (spec.name !== name) {
      errors.push(`${entry.file}: name ${JSON.stringify(spec.name)} != index key ${JSON.stringify(name)}`);
    }
  }
}

// Also parse non-indexed collision documents. Both exporter output and package
// assets are supported: the former has commands/<initial>/..., while the
// latter stores documents directly under <initial>/....
const stack = [root];
while (stack.length) {
  const dir = stack.pop();
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const file = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      stack.push(file);
    } else if (entry.name.endsWith('.json') && file !== path.join(root, 'index.json') &&
        file !== path.join(root, 'manual-handlers.json') &&
        file !== path.join(root, 'conversion-manifest.json')) {
      const relative = path.relative(root, file).split(path.sep).join('/');
      const spec = readJson(file);
      if (spec) {
        if (spec.schemaVersion !== 1) errors.push(`${relative}: schemaVersion must be 1`);
        collectHandlerReferences(spec, relative);
      }
    }
  }
}

const handlers = readJson(handlersPath);
if (handlers) {
  if (handlers.schemaVersion !== 1 || !Array.isArray(handlers.handlers)) {
    errors.push('manual-handlers.json: expected schemaVersion 1 and handlers array');
  } else {
    const ids = new Set();
    for (const handler of handlers.handlers) {
      if (!handler || typeof handler.id !== 'string' || ids.has(handler.id)) {
        errors.push('manual-handlers.json: duplicate or invalid handler ID');
      }
      if (!handler || typeof handler.sourceFile !== 'string' ||
          typeof handler.path !== 'string' || typeof handler.source !== 'string') {
        errors.push(`manual-handlers.json: incomplete source record for ${handler?.id || '<unknown>'}`);
      }
      ids.add(handler && handler.id);
    }
    for (const reference of referencedHandlers) {
      if (!ids.has(reference.id)) {
        errors.push(`${reference.file}${reference.path}: missing handler ${reference.id}`);
      }
    }
  }
}

const manifestFile = path.join(root, 'conversion-manifest.json');
const manifest = fs.existsSync(manifestFile) ? readJson(manifestFile) : null;
if (manifest && Array.isArray(manifest.collisions)) {
  const outputs = new Set();
  for (const collision of manifest.collisions) {
    if (collision.outputFile && outputs.has(collision.outputFile)) {
      errors.push(`conversion-manifest.json: duplicate collision output ${collision.outputFile}`);
    }
    if (collision.outputFile) outputs.add(collision.outputFile);
  }
}

if (errors.length) {
  console.error(errors.map((error) => `ERROR ${error}`).join('\n'));
  process.exitCode = 1;
} else {
  console.log(JSON.stringify({ root, commands: index ? Object.keys(index.commands).length : 0, handlers: handlers?.handlers?.length || 0, valid: true }, null, 2));
}
