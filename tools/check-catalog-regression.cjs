#!/usr/bin/env node

// Prevent a new bulk conversion from silently removing a command that is
// already addressable in the staged catalog. Run this before materializing a
// candidate directory into dart/assets/specs.
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const args = process.argv.slice(2);
if (args.includes('--help') || args.includes('-h') || args.length < 2) {
  console.log('Usage: node tools/check-catalog-regression.cjs <baseline-specs-dir> <candidate-specs-dir>');
  process.exit(args.length < 2 && !args.includes('--help') && !args.includes('-h') ? 64 : 0);
}

function commands(directory) {
  const indexPath = path.join(path.resolve(root, directory), 'index.json');
  const value = JSON.parse(fs.readFileSync(indexPath, 'utf8'));
  if (value.schemaVersion !== 1 || !value.commands || typeof value.commands !== 'object') {
    throw new Error(`invalid index: ${indexPath}`);
  }
  return Object.keys(value.commands).sort();
}

try {
  const baseline = commands(args[0]);
  const candidate = new Set(commands(args[1]));
  const removed = baseline.filter((command) => !candidate.has(command));
  const report = {
    baselineCommands: baseline.length,
    candidateCommands: candidate.size,
    removed,
  };
  if (removed.length) {
    console.error(`ERROR candidate catalog removes ${removed.length} existing command(s): ${removed.join(', ')}`);
    console.error(JSON.stringify(report, null, 2));
    process.exitCode = 1;
  } else {
    console.log(JSON.stringify({ ...report, valid: true }, null, 2));
  }
} catch (error) {
  console.error(`ERROR ${error.message}`);
  process.exitCode = 1;
}
