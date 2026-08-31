#!/usr/bin/env node

// Build a disposable catalog and apply the migration gates. This command must
// never update json/specs or dart/assets/specs; materialization is an explicit,
// reviewed follow-up after this command succeeds.
const childProcess = require('node:child_process');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const args = process.argv.slice(2);
// Large generated specs are CPU-intensive. Four workers avoid the timeout
// churn observed when eight heavyweight parsers compete on one workstation.
const options = { keep: false, jobs: 4, fileTimeoutMs: 300000 };

for (let index = 0; index < args.length; index++) {
  const arg = args[index];
  if (arg === '--keep') options.keep = true;
  else if (arg === '--jobs') options.jobs = Math.max(1, Number(args[++index]));
  else if (arg === '--file-timeout-ms') {
    options.fileTimeoutMs = Math.max(1, Number(args[++index]));
  } else if (arg === '--help' || arg === '-h') {
    console.log(`Usage: node tools/verify-json-candidate.cjs [options]

Exports src/ to a disposable directory, then validates the candidate without
changing json/specs or dart/assets/specs.

Options:
  --jobs <n>                Export parallelism (default: 4)
  --file-timeout-ms <n>     Per-file export timeout (default: 300000)
  --keep                    Keep the candidate directory and print its path
  --help, -h                Show this help`);
    process.exit(0);
  } else {
    throw new Error(`Unknown argument: ${arg}`);
  }
}

options.jobs = Number.isFinite(options.jobs) ? Math.floor(options.jobs) : 4;
options.fileTimeoutMs = Number.isFinite(options.fileTimeoutMs)
  ? Math.floor(options.fileTimeoutMs)
  : 300000;

const candidate = fs.mkdtempSync(path.join(os.tmpdir(), 'autocomplete-json-candidate-'));

function run(tool, toolArgs) {
  const result = childProcess.spawnSync(process.execPath, [
    path.join(root, 'tools', tool),
    ...toolArgs,
  ], {
    cwd: root,
    encoding: 'utf8',
    stdio: 'pipe',
  });
  if (result.stdout) process.stdout.write(result.stdout);
  if (result.stderr) process.stderr.write(result.stderr);
  if (result.error) throw result.error;
  if (result.status !== 0) {
    throw new Error(`${tool} failed with exit code ${result.status}`);
  }
}

try {
  run('ts-to-json.cjs', [
    '--src', 'src',
    '--out', candidate,
    '--clean',
    '--jobs', String(options.jobs),
    '--file-timeout-ms', String(options.fileTimeoutMs),
  ]);
  run('validate-json.cjs', [candidate]);
  run('check-conversion-completeness.cjs', ['--catalog', candidate]);
  run('check-catalog-regression.cjs', ['json/specs', candidate]);
  console.log(`Candidate verified: ${candidate}`);
} catch (error) {
  process.exitCode = 1;
  console.error(`ERROR ${error.message}`);
} finally {
  if (!options.keep) fs.rmSync(candidate, { recursive: true, force: true });
  else console.log(`Candidate retained: ${candidate}`);
}
