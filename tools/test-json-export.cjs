#!/usr/bin/env node

// Regression checks for the JSON exporter. These use only Node's standard
// library so they can run in a clean checkout without installing test deps.
const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { spawnSync } = require('node:child_process');

const root = path.resolve(__dirname, '..');
const temp = fs.mkdtempSync(path.join(os.tmpdir(), 'autocomplete-json-export-'));

function exportFiles(relativeSources, label) {
  const output = path.join(temp, label);
  const report = path.join(output, 'report.json');
  const result = spawnSync(process.execPath, [
    path.join(root, 'tools/ts-to-json.cjs'),
    ...relativeSources.flatMap((source) => ['--file', source]),
    '--out', output,
    '--report', report,
  ], { cwd: root, encoding: 'utf8' });
  assert.equal(result.status, 0, `${relativeSources.join(', ')} export failed:\n${result.stdout}\n${result.stderr}`);
  const commandFiles = [];
  const walk = (dir) => {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const file = path.join(dir, entry.name);
      if (entry.isDirectory()) walk(file);
      else if (entry.name.endsWith('.json') && !entry.name.includes('index') && !entry.name.includes('manual') && !entry.name.includes('report')) commandFiles.push(file);
    }
  };
  walk(output);
  return {
    specs: commandFiles.map((file) => ({
      file: path.relative(output, file).split(path.sep).join('/'),
      spec: JSON.parse(fs.readFileSync(file, 'utf8')),
    })),
    index: JSON.parse(fs.readFileSync(path.join(output, 'index.json'), 'utf8')),
    handlers: JSON.parse(fs.readFileSync(path.join(output, 'manual-handlers.json'), 'utf8')).handlers,
  };
}

function exportFile(relativeSource) {
  const result = exportFiles(
    [relativeSource],
    path.basename(relativeSource, path.extname(relativeSource)),
  );
  assert.equal(result.specs.length, 1, `${relativeSource} should produce one command JSON`);
  return { ...result, spec: result.specs[0].spec };
}

const git = exportFile('src/git.ts');
assert.equal(git.spec.name, 'git');
assert.ok(git.spec.args, 'git root args must not be truncated');
assert.ok(Array.isArray(git.spec.options) && git.spec.options.length > 0, 'git options must be exported');
assert.ok(Array.isArray(git.spec.subcommands) && git.spec.subcommands.length > 0, 'git subcommands must be exported');
assert.ok(git.spec.generateSpec && git.spec.generateSpec.handler, 'git generateSpec must be a handler reference');
assert.ok(git.handlers.some((handler) => handler.path === 'spec.generateSpec'));
assert.ok(git.handlers.some((handler) => handler.path === 'spec.args.parserDirectives.alias'));

// Template text and `${...}` expressions must not terminate the surrounding
// object early. Both files contain those forms in real static/dynamic specs.
const bun = exportFile('src/bun.ts');
assert.equal(bun.spec.name, 'bun');
assert.ok(Array.isArray(bun.spec.subcommands) && bun.spec.subcommands.length > 0);
const echo = exportFile('src/echo.ts');
assert.equal(echo.spec.name, 'echo');
assert.ok(echo.handlers.some((handler) => handler.kind === 'custom'));

const cd = exportFile('src/cd.ts');
assert.equal(cd.spec.name, 'cd');
assert.equal(cd.spec.args.generators.template, 'folders');

// A callback factory is dynamic even though its value is a call expression.
// It must be a handler reference, never an omitted `custom` field.
const npm = exportFile('src/npm.ts');
assert.equal(npm.spec.name, 'npm');
const npmInstall = npm.spec.subcommands.find((item) =>
  Array.isArray(item.name) && item.name.includes('install'));
assert.ok(npmInstall.args.generators.custom?.handler,
  'npm callback factory must become a custom handler reference');
assert.ok(npm.handlers.some((handler) =>
  handler.id === npmInstall.args.generators.custom.handler &&
  handler.kind === 'custom'));

// Field position decides a callback contract. A function-valued trigger must
// not become the ambiguous legacy `function` work-item kind.
const apt = exportFile('src/apt.ts');
const aptTrigger = apt.handlers.find((handler) =>
  handler.kind === 'trigger' && handler.path.endsWith('.trigger'));
assert.ok(aptTrigger, 'apt must retain a dynamic trigger');
assert.equal(aptTrigger.kind, 'trigger');

// Version detection may use an expression-bodied arrow function. It must
// retain the existing stable ID and produce a version selector, not a plain
// `az` document.
const az = exportFiles(['src/az/index.ts', 'src/az/2.53.0.ts'], 'az-versioned');
const azSelector = az.specs.find((entry) => entry.file === 'commands/a/az.json').spec;
assert.equal(azSelector.versionedSpec.getVersion.handler,
  'manual.src_az.index.getversioncommand');
assert.deepEqual(az.index.commands['az/2.53.0'], {
  file: 'commands/a/az--2.53.0.json',
  aliasOf: 'az',
});

// A version document can use an internal root name different from the shell
// command. The selector command remains the root after loading the variant.
const sdc = exportFiles(['src/@usermn/sdc/index.ts', 'src/@usermn/sdc/0.0.0.ts'], 'sdc-versioned');
const sdcVariant = sdc.specs.find((entry) => entry.file === 'commands/_/_usermn/sdc--0.0.0.json').spec;
assert.equal(sdcVariant.name, '@usermn/sdc');
assert.deepEqual(sdc.index.commands['@usermn/sdc/0.0.0'], {
  file: 'commands/_/_usermn/sdc--0.0.0.json',
  aliasOf: '@usermn/sdc',
});

// A `createVersionedSpec` root is data that selects a version document. The
// version files may export `Fig.Subcommand`; those documents must be promoted
// to ordinary root specs for the command, not nested under `1.0.0` / `2.0.0`.
const fig = exportFiles(
  ['src/fig/index.ts', 'src/fig/1.0.0.ts', 'src/fig/2.0.0.ts'],
  'fig-versioned',
);
assert.deepEqual(fig.index.commands.fig, { file: 'commands/f/fig.json' });
assert.deepEqual(fig.index.commands['fig/1.0.0'], {
  file: 'commands/f/fig--1.0.0.json', aliasOf: 'fig',
});
assert.deepEqual(fig.index.commands['fig/2.0.0'], {
  file: 'commands/f/fig--2.0.0.json', aliasOf: 'fig',
});
const figSelector = fig.specs.find((entry) => entry.file === 'commands/f/fig.json').spec;
assert.equal(figSelector.versionedSpec.getVersion.handler,
  'manual.src_fig.index.getversioncommand');
assert.deepEqual(figSelector.versionedSpec.versions.map((entry) => entry.loadSpec),
  ['fig/1.0.0', 'fig/2.0.0']);
for (const version of ['1.0.0', '2.0.0']) {
  const spec = fig.specs.find((entry) => entry.file === `commands/f/fig--${version}.json`).spec;
  assert.equal(spec.name, 'fig');
  assert.ok(Array.isArray(spec.subcommands) && spec.subcommands.length > 0);
}
assert.ok(fig.handlers.some((handler) => handler.kind === 'version' &&
  handler.id === 'manual.src_fig.index.getversioncommand'));

// Imported generator objects are dynamic values too. They must become one
// stable handler reference instead of being dropped as an unsupported name.
const heroku = exportFile('src/heroku/8.0.0.ts');
const herokuAppHandler =
  'manual.src_heroku_8.0.0.generator.getappgenerator';
assert.ok(heroku.handlers.some((handler) => handler.id === herokuAppHandler &&
  handler.kind === 'custom'));
const containsHandler = (value, handler) => {
  if (Array.isArray(value)) return value.some((item) => containsHandler(item, handler));
  if (!value || typeof value !== 'object') return false;
  if (value.handler === handler) return true;
  return Object.values(value).some((item) => containsHandler(item, handler));
};
assert.ok(containsHandler(heroku.spec, herokuAppHandler));

// A local generator may be expanded at several JSON paths, but its callback
// remains one source behavior and therefore one handler work item.
const sharedGenerator = exportFile('tools/fixtures/shared-generator.ts');
const sharedHandler =
  'manual.tools_fixtures_shared-generator.definition.bucketgenerator.postprocess';
assert.equal(sharedGenerator.handlers.filter((handler) =>
  handler.id === sharedHandler).length, 1);
assert.equal(
  sharedGenerator.spec.subcommands[0].args.generators.postProcess.handler,
  sharedHandler,
);
assert.equal(
  sharedGenerator.spec.subcommands[1].args.generators.postProcess.handler,
  sharedHandler,
);

console.log(JSON.stringify({ valid: true, commands: 7, gitHandlers: git.handlers.length }, null, 2));
