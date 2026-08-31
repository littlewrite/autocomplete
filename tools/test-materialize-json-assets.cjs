#!/usr/bin/env node

const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { spawnSync } = require('node:child_process');

const root = path.resolve(__dirname, '..');
const temp = fs.mkdtempSync(path.join(os.tmpdir(), 'autocomplete-assets-'));
const source = path.join(temp, 'source');
const output = path.join(temp, 'assets');

fs.mkdirSync(path.join(source, 'commands', 'c'), { recursive: true });
fs.mkdirSync(path.join(source, 'commands', 'a'), { recursive: true });
fs.mkdirSync(path.join(source, 'commands', 'd'), { recursive: true });
fs.writeFileSync(path.join(source, 'commands', 'c', 'cut.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'cut',
}));
fs.writeFileSync(path.join(source, 'commands', 'a', 'aws.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'aws',
  subcommands: [{ name: 'account', loadSpec: 'aws/account' }],
}));
fs.writeFileSync(path.join(source, 'commands', 'a', 'az.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'az',
  subcommands: [{ name: 'account', loadSpec: 'az/2.53.0/account' }],
}));
fs.writeFileSync(path.join(source, 'commands', 'd', 'dotnet.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'dotnet',
  subcommands: [{ name: 'new', loadSpec: 'dotnet/dotnet-new' }],
}));
fs.writeFileSync(path.join(source, 'commands', 'a', 'account.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'account',
}));
fs.writeFileSync(path.join(source, 'commands', 'a', 'account--az_2.53.0_account.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'account',
  description: 'Azure account',
}));
fs.writeFileSync(path.join(source, 'index.json'), JSON.stringify({
  schemaVersion: 1,
  commands: {
    cut: { file: 'commands/c/cut.json' },
    aws: { file: 'commands/a/aws.json' },
    az: { file: 'commands/a/az.json' },
    dotnet: { file: 'commands/d/dotnet.json' },
    account: { file: 'commands/a/account.json' },
    new: { file: 'commands/n/new.json' },
  },
}));
fs.mkdirSync(path.join(source, 'commands', 'n'), { recursive: true });
fs.writeFileSync(path.join(source, 'commands', 'n', 'new.json'), JSON.stringify({
  schemaVersion: 1,
  name: 'new',
}));

const result = spawnSync(process.execPath, [
  path.join(root, 'tools/materialize-json-assets.cjs'),
  source,
  output,
], { cwd: root, encoding: 'utf8' });
assert.equal(result.status, 0, result.stderr);
assert.ok(fs.existsSync(path.join(output, 'c', 'cut.json')));
assert.ok(!fs.existsSync(path.join(output, 'commands')));
const index = JSON.parse(fs.readFileSync(path.join(output, 'index.json'), 'utf8'));
assert.equal(index.commands.cut.file, 'c/cut.json');
assert.equal(index.commands['aws/account'].file, 'a/account.json');
assert.equal(index.commands['aws/account'].aliasOf, 'account');
assert.equal(index.commands['az/2.53.0/account'].file,
  'a/account--az_2.53.0_account.json');
assert.equal(index.commands['az/2.53.0/account'].aliasOf, 'account');
assert.equal(index.commands['dotnet/dotnet-new'].file, 'n/new.json');
assert.equal(index.commands['dotnet/dotnet-new'].aliasOf, 'new');
assert.ok(fs.existsSync(path.join(output, 'a', 'account--az_2.53.0_account.json')));

console.log(JSON.stringify({ valid: true, commands: 6, aliases: 3 }, null, 2));
