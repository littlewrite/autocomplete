// Auto-generated from TypeScript source: cliff-jumper.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cliff-jumper` CLI
final FigSpec cliffJumperSpec = FigSpec(
  name: 'cliff-jumper',
  description: 'A small CLI tool to create a semantic release and git-cliff powered Changelog',
  options: [

    Option(
      name: ['--help', '-h'],
      priority: 10,
      description: 'Display help for command',
      isPersistent: true
    ),
    Option(
      name: ['--name', '-n'],
      priority: 100,
      description: 'The package name to release',
      isPersistent: true,
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: ['--package-path', '-p'],
      priority: 90,
      description: 'The path to the current package. For non-monorepos this is just "."',
      isPersistent: true,
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--dry-run',
      description: 'Whether the package should be bumped or not. When this is set no actions will be taken and only the release strategy will be logged'
    ),
    Option(
      name: '--first-release',
      description: 'Whether this is the first release (skips bumping the version)\''
    ),
    Option(
      name: '--mono-repo'
    ),
    Option(
      name: '--no-mono-repo'
    ),
    Option(
      name: ['--org', '-o'],
      description: 'The NPM org scope that should be used. This should be WITHOUT "@" sign or trailing "/"',
      args: [
        Arg(
        name: 'organisation'
      )
      ]
    ),
    Option(
      name: '--preid',
      description: 'The "prerelease identifier" to use as a prefix for the "prerelease" part of a semver',
      args: [
        Arg(
        name: 'id'
      )
      ]
    ),
    Option(
      name: ['--commit-message-template', '-c'],
      description: [

        'A custom commit message template to use.',
        'Defaults to "chore({{name}}): release {{full-name}}@{{new-version}}"',
        'You can use "{{new-version}}" in your template which will be dynamically replaced with whatever the new version is that will be published.',
        'You can use "{{name}}" in your template, this will be replaced with the name provided through "-n", "--name" or the same value set in your config file.',
        'You can use "{{full-name}}" in your template, this will be replaced "{{name}}" (when "org" is not provided), or "@{{org}}/{{name}}" (when "org" is provided).'
      ],
      args: [
        Arg(
        name: 'template'
      )
      ]
    ),
    Option(
      name: '--tag-template',
      description: [

        'A custom tag template to use.',
        'When "org" is provided this will default to "@{{org}}/{{name}}@{{new-version}}", for example "@favware/cliff-jumper@1.0.0"',
        'When "org" is not provided this will default to "v{{new-version}}", for example "v1.0.0"',
        'You can use "{{new-version}}" in your template which will be dynamically replaced with whatever the new version is that will be published.',
        'You can use "{{org}}" in your template, this will be replaced with the org provided through "-o", "--org" or the same value set in your config file.',
        'You can use "{{name}}" in your template, this will be replaced with the name provided through "-n", "--name" or the same value set in your config file.',
        'You can use "{{full-name}}" in your template, this will be replaced "{{name}}" (when "org" is not provided), or "@{{org}}/{{name}}" (when "org" is provided).'
      ],
      args: [
        Arg(
        name: 'template'
      )
      ]
    ),
    Option(
      name: ['--install', '-i'],
      description: 'Whether to run npm install (or your package manager\'s equivalent) after bumping the version but before committing and creating a git tag. This is useful when you have a mono repo where bumping one package would then cause the lockfile to be out of date'
    ),
    Option(
      name: '--skip-changelog'
    ),
    Option(
      name: '--no-skip-changelog'
    ),
    Option(
      name: ['--skip-tag', '-t']
    ),
    Option(
      name: '--no-skip-tag'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Whether to print verbose information'
    ),
    Option(
      name: ['--version', '-V'],
      priority: 1,
      description: 'Output the version number'
    )
  ]
);
