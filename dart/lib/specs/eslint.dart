// AI-generated from TypeScript source: eslint.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec eslintSpec = FigSpec(
  name: 'eslint',
  description: 'Pluggable JavaScript linter',
  options: [
    FigOption(
      name: '--no-eslintrc',
      description: 'Disable use of configuration from .eslintrc.*',
    ),
    FigOption(
      name: ['-c', '--config'],
      description:
          'Use this configuration, overriding .eslintrc.* config options if present',
      args: FigArg(
        template: 'filepaths',
      ),
    ),
    FigOption(
      name: '--env',
      description: 'Specify environments',
      args: FigArg(
        generators: [
          FigGenerator(
            getQueryTerm: ',',
            trigger: ',',
            custom: [
              'browser',
              'node',
              'commonjs',
              'shared-node-browser',
              'es6',
              'ecmaVersion',
              'es2017',
              'es2020',
              'es2021',
              'worker',
              'amd',
              'mocha',
              'jasmine',
              'jest',
              'phantomjs',
              'protractor',
              'qunit',
              'jquery',
              'prototypejs',
              'shelljs',
              'meteor',
              'mongo',
              'applescript',
              'nashorn',
              'servicerworker',
              'atomtest',
              'embertest',
              'webextensions',
              'greasemonkey'
            ].map((s) => FigSuggestion(name: s)).toList(),
          ),
        ],
      ),
    ),
    FigOption(
      name: '--ext',
      description: 'Specify JavaScript file extensions',
      args: FigArg(
        name: 'Extension',
        defaultValue: '.js',
      ),
    ),
    FigOption(
      name: '--global',
      description: 'Define global variables',
      args: FigArg(
        name: 'Variables',
      ),
    ),
    FigOption(
      name: '--parser',
      description: 'Specify the parser to be used',
      args: FigArg(),
    ),
    FigOption(
      name: '--parser-options',
      description: 'Specify parser options',
      args: FigArg(),
    ),
    FigOption(
      name: '--resolve-plugins-relative-to',
      description: 'A folder where plugins should be resolved from',
      args: FigArg(
        template: 'folders',
        defaultValue: 'CWD',
      ),
    ),
    FigOption(
      name: '--rulesdir',
      description: 'Use additional rules from this directory',
      args: FigArg(
        template: 'folders',
      ),
    ),
    FigOption(
      name: '--plugin',
      description: 'Specify plugins',
      args: FigArg(
        name: 'Plugin',
        generators: [
          FigGenerator(
            script: [
              'bash',
              '-c',
              '{ ls node_modules ; ls \$(npm root -g) ; ls \$(yarn global dir)/node_modules/ ; } | cat'
            ],
            postProcess: (String out, [List<String>? tokens]) {
              return out
                  .split('\n')
                  .where((dir) => dir.startsWith('eslint-plugin'))
                  .map((dir) {
                    final parts = dir.split(' ');
                    // name: dir.split(" ")[0].slice(14)
                    // "eslint-plugin-".length is 14
                    final name = parts[0].length > 14
                        ? parts[0].substring(14)
                        : parts[0];
                    return FigSuggestion(name: name);
                  })
                  .toList();
            },
          ),
        ],
      ),
    ),
    FigOption(
      name: '--rule',
      description: 'Specify rules',
      args: FigArg(),
    ),
    FigOption(
      name: '--fix',
      description: 'Automatically fix problems',
    ),
    FigOption(
      name: '--fix-dry-run',
      description:
          'Automatically fix problems without saving the changes to the file system',
    ),
    FigOption(
      name: '--fix-type',
      description: 'Specify the types of fixes to apply',
      dependsOn: ['--fix', '--fix-dry-run'],
      args: FigArg(
        suggestions: ['problem', 'suggestion', 'layout'],
      ),
    ),
    FigOption(
      name: '--ignore-path',
      description: 'Specify path of ignore file',
      args: FigArg(
        template: 'filepaths',
      ),
    ),
    FigOption(
      name: '--no-ignore',
      description: 'Disable use of ignore files and patterns',
    ),
    FigOption(
      name: '--ignore-pattern',
      description:
          'Pattern of files to ignore (in addition to those in .eslintignore)',
      args: FigArg(),
    ),
    FigOption(
      name: '--stdin',
      description: 'Lint code provided on <STDIN>',
    ),
    FigOption(
      name: '--stdin-filename',
      description: 'Specify filename to process STDIN as',
      args: FigArg(
        template: 'filepaths',
      ),
    ),
    FigOption(
      name: '--quiet',
      description: 'Report errors only',
    ),
    FigOption(
      name: '--max-warnings',
      description: 'Number of warnings to trigger nonzero exit code',
      args: FigArg(
        defaultValue: '-1',
      ),
    ),
    FigOption(
      name: ['-o', '--output-file'],
      description: 'Specify file to write report to',
      args: FigArg(
        template: 'filepaths',
      ),
    ),
    FigOption(
      name: ['-f', '--format'],
      description: 'Use a specific output format',
      args: FigArg(
        defaultValue: 'stylish',
        suggestions: [
          'checkstyle',
          'codeframe',
          'compact',
          'html',
          'jslint-xml',
          'json',
          'junit',
          'stylish',
          'table',
          'tap',
          'unix',
          'visualstudio'
        ],
      ),
    ),
    FigOption(
      name: '--color',
      description: 'Force enabling of color',
      exclusiveOn: ['--no-color'],
    ),
    FigOption(
      name: '--no-color',
      description: 'Force disabling of color',
      exclusiveOn: ['--color'],
    ),
    FigOption(
      name: '--no-inline-config',
      description: 'Prevent comments from changing config or rules',
    ),
    FigOption(
      name: '--report-unused-disable-directives',
      description: 'Adds reported errors for unused eslint-disable-directives',
    ),
    FigOption(
      name: '--cache',
      description: 'Only check changed files',
    ),
    FigOption(
      name: '--cache-location',
      description: 'Path to the cache file or directory',
      args: FigArg(
        template: ['filepaths', 'folders'],
      ),
    ),
    FigOption(
      name: '--cache-strategy',
      description: 'Strategy to use for detecting changed files',
      args: FigArg(
        suggestions: ['metadata', 'content'],
        defaultValue: 'metadata',
      ),
    ),
    FigOption(
      name: '--init',
      description: 'Run config initialization wizard',
    ),
    FigOption(
      name: '--env-info',
      description: 'Output execution environment information',
    ),
    FigOption(
      name: '--no-error-on-unmatched-pattern',
      description: 'Prevent errors when pattern is unmatched',
    ),
    FigOption(
      name: '--debug',
      description: 'Output debugging information',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Output the version number',
    ),
    FigOption(
      name: '--print-config',
      description: 'Print the configuration for the give file',
      args: FigArg(
        template: 'filepaths',
      ),
    ),
  ],
  args: FigArg(
    name: 'file|dir|glob',
    description: 'File(s) to lint',
    template: ['filepaths', 'folders'],
    isVariadic: true,
  ),
);
