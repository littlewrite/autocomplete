// AI-generated from TypeScript source: bundle.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final FigGenerator gemfileGemsGenerator = FigGenerator(
  script: ['bundle', 'list', '--name-only'],
  postProcess: (out, [tokens]) {
    return out
        .split('\n')
        .where((s) => s.isNotEmpty)
        .map((gem) => FigSuggestion(
              name: gem,
              icon: '📦',
              description: 'Gem',
            ))
        .toList();
  },
);

/// Completion spec for `bundle` CLI
final FigSpec bundleSpec = FigSpec(
    name: 'bundle',
    description: 'Ruby Dependency Management',
    subcommands: [
      FigSubcommand(
          name: 'install',
          description:
              'Install the gems specified by the Gemfile or Gemfile.lock',
          options: [
            FigOption(
                name: '--binstubs',
                args: [FigArg(template: 'folder')],
                description: 'Create binstubs in dir'),
            FigOption(
                name: '--clean',
                description: 'Remove unused gems after install'),
            FigOption(
                name: '--deployment', description: 'For Production and CI use'),
            FigOption(
                name: ['--force', '--redownload'],
                description: 'Redownload all gems'),
            FigOption(
                name: '--frozen',
                description: 'Do not allow lock file to update'),
            FigOption(
                name: '--full-index',
                description: 'Cache the full index locally'),
            FigOption(
                name: '--gemfile',
                args: [FigArg(template: 'filepath')],
                description: 'The gemfile to use'),
            FigOption(
                name: '--jobs',
                args: [FigArg()],
                description: 'Maximum number of parallel installs'),
            FigOption(
                name: '--local',
                description: 'Use only gems already downloaded or cached'),
            FigOption(
                name: '--no-cache', description: 'Do not use vendor/cache'),
            FigOption(
                name: '--no-prune', description: 'Do not remove stale gems'),
            FigOption(
                name: '--path',
                args: [FigArg(template: 'folder')],
                description: 'Path the install gems too'),
            FigOption(name: '--quiet', description: 'Do not print to stdout'),
            FigOption(
                name: '--retry',
                args: [FigArg()],
                description: 'Retry failed network requests N times'),
            FigOption(
                name: '--shebang',
                args: [FigArg()],
                description: 'Uses the specified ruby executable for binstubs'),
            FigOption(
                name: '--standalone',
                args: [FigArg()],
                description:
                    'Makes a bundle that can work without depending on Rubygems or Bundler at runtime'),
            FigOption(
                name: '--system', description: 'Use system Rubygems location'),
            FigOption(
                name: '--trust-policy',
                args: [FigArg()],
                description: 'Apply the Rubygems security policy'),
            FigOption(
                name: '--with',
                args: [FigArg()],
                description: 'Groups to install'),
            FigOption(
                name: '--without',
                args: [FigArg()],
                description: 'Groups to NOT install')
          ]),
      FigSubcommand(
          name: 'update',
          description: 'Update dependencies to their latest versions',
          args: [
            FigArg(
                name: 'gem',
                generators: [gemfileGemsGenerator],
                isOptional: true)
          ],
          options: [
            FigOption(
                name: '--all',
                description: 'Update all gems specified in Gemfile'),
            FigOption(
                name: ['--group', '-g'],
                description: 'Only update the gems in the specified group',
                args: [FigArg()]),
            FigOption(
                name: '--source',
                description:
                    'The name of a :git or :path source used in the Gemfile',
                args: [FigArg()]),
            FigOption(
                name: '--local',
                description: 'Use only gems already downloaded or cached'),
            FigOption(
                name: '--ruby',
                description:
                    'Update the locked version of Ruby to the current version of Ruby'),
            FigOption(
                name: '--bundler',
                description:
                    'Update the locked version of bundler to the invoked bundler version'),
            FigOption(
                name: '--full-index',
                description:
                    'Fall back to using the single-file index of all gems'),
            FigOption(
                name: ['--jobs', '-j'],
                description:
                    'Specify the number of jobs to run in parallel. The default is 1',
                args: [FigArg()]),
            FigOption(
                name: '--retry',
                description:
                    'Retry failed network or git requests for number times',
                args: [FigArg()]),
            FigOption(
                name: '--quiet',
                description: 'Only output warnings and errors'),
            FigOption(
                name: ['--force', '--redownload'],
                description: 'Force downloading every gem'),
            FigOption(
                name: '--patch',
                description: 'Prefer updating only to next patch version'),
            FigOption(
                name: '--minor',
                description: 'Prefer updating only to next minor version'),
            FigOption(
                name: '--major',
                description: 'Prefer updating to next major version (default)'),
            FigOption(
                name: '--strict',
                description:
                    'Do not allow any gem to be updated past latest --patch | --minor | --major'),
            FigOption(
                name: '--conservative',
                description: 'Do not allow shared dependencies to be updated')
          ]),
      FigSubcommand(
          name: 'package',
          description:
              'Package the .gem files required by your application into the vendor/cache directory'),
      FigSubcommand(
          name: 'exec',
          description: 'Execute a command in the context of the bundle',
          options: [
            FigOption(
                name: '--keep-file-descriptors',
                description: 'Pass all file descriptors to the new process')
          ],
          args: [
            FigArg(isCommand: true)
          ]),
      FigSubcommand(name: 'config', args: [FigArg()]),
      FigSubcommand(name: 'help'),
      FigSubcommand(
          name: 'add',
          description: 'Add gem to the Gemfile and run bundle install',
          args: [
            FigArg()
          ],
          options: [
            FigOption(
                name: ['--version', '-v'],
                description: 'Specify version requirements'),
            FigOption(
                name: ['--group', '-g'],
                description: 'Specify the group(s) for the added gem'),
            FigOption(
                name: ['--source', '-s'], description: 'Specify the source'),
            FigOption(
                name: '--skip-install',
                description:
                    'Adds the gem to the Gemfile but does not install it'),
            FigOption(
                name: '--optimistic',
                description: 'Adds optimistic declaration of version'),
            FigOption(
                name: '--strict',
                description: 'Adds strict declaration of version')
          ]),
      FigSubcommand(
          name: 'binstubs',
          description: 'Install the binstubs of the listed gems',
          args: [
            FigArg()
          ],
          options: [
            FigOption(
                name: '--force', description: 'Overwrite existing binstubs'),
            FigOption(
                name: '--path',
                description:
                    'The location to install the specified binstubs to'),
            FigOption(
                name: '--standalone',
                description:
                    'Makes binstubs that can work without depending on Rubygems or Bundler at runtime'),
            FigOption(
                name: '--shebang',
                description:
                    'Specify a different shebang executable name than the default')
          ]),
      FigSubcommand(
          name: 'check',
          description:
              'Determine whether the requirements for your application are installed and available to Bundler',
          options: [
            FigOption(
                name: '--dry-run',
                description: 'Locks the Gemfile before running the command'),
            FigOption(
                name: '--gemfile',
                description:
                    'Use the specified gemfile instead of the Gemfile'),
            FigOption(
                name: '--path',
                description: 'Specify a different path than the system default')
          ]),
      FigSubcommand(
          name: 'show',
          description:
              'Show the source location of a particular gem in the bundle',
          args: [
            FigArg(
                name: 'gem',
                generators: [gemfileGemsGenerator],
                isOptional: true)
          ],
          options: [
            FigOption(
                name: '--paths',
                description:
                    'List the paths of all gems that are required by your Gemfile')
          ]),
      FigSubcommand(
          name: 'outdated',
          description: 'Show all of the outdated gems in the current bundle',
          options: [
            FigOption(
                name: '--local',
                description:
                    'Do not attempt to fetch gems remotely and use the gem cache instead'),
            FigOption(
                name: '--pre', description: 'Check for newer pre-release gems'),
            FigOption(
                name: '--source',
                description: 'Check against a specific source'),
            FigOption(
                name: '--strict',
                description:
                    'Only list newer versions allowed by your Gemfile requirements'),
            FigOption(name: [
              '--parseable',
              '--porcelain'
            ], description: 'Use minimal formatting for more parseable output'),
            FigOption(
                name: '--group',
                description: 'List gems from a specific group'),
            FigOption(
                name: '--groups', description: 'List gems organized by groups'),
            FigOption(
                name: '--update-strict',
                description:
                    'Strict conservative resolution, do not allow any gem to be updated past latest --patch | --minor| --major'),
            FigOption(
                name: '--minor',
                description: 'Prefer updating only to next minor version'),
            FigOption(
                name: '--major',
                description: 'Prefer updating to next major version (default)'),
            FigOption(
                name: '--patch',
                description: 'Prefer updating only to next patch version'),
            FigOption(
                name: '--filter-major',
                description: 'Only list major newer versions'),
            FigOption(
                name: '--filter-minor',
                description: 'Only list minor newer versions'),
            FigOption(
                name: '--filter-patch',
                description: 'Only list patch newer versions'),
            FigOption(
                name: '--only-explicit',
                description:
                    'Only list gems specified in your Gemfile, not their dependencies')
          ]),
      FigSubcommand(
          name: 'console',
          description: 'Start an IRB session in the current bundle'),
      FigSubcommand(
          name: 'open',
          description: 'Open an installed gem in the editor',
          args: [
            FigArg(name: 'gem', generators: [gemfileGemsGenerator])
          ]),
      FigSubcommand(
          name: 'lock',
          description: 'Generate a lockfile for your dependencies',
          options: [
            FigOption(
                name: '--update',
                description: 'Ignores the existing lockfile',
                args: [FigArg()]),
            FigOption(
                name: '--local',
                description: 'Do not attempt to connect to rubygems.org'),
            FigOption(
                name: '--print',
                description:
                    'Prints the lockfile to STDOUT instead of writing to the file\n system'),
            FigOption(
                name: '--lockfile',
                description: 'The path where the lockfile should be written to',
                args: [FigArg(name: 'pat')]),
            FigOption(
                name: '--full-index',
                description:
                    'Fall back to using the single-file index of all gems'),
            FigOption(
                name: '--add-platform',
                description:
                    'Add a new platform to the lockfile, re-resolving for the addi-\n tion of that platform'),
            FigOption(
                name: '--remove-platform',
                description: 'Remove a platform from the lockfile'),
            FigOption(
                name: '--patch',
                description:
                    'If updating, prefer updating only to next patch version'),
            FigOption(
                name: '--minor',
                description:
                    'If updating, prefer updating only to next minor version'),
            FigOption(
                name: '--major',
                description:
                    'If updating, prefer updating to next major version (default)'),
            FigOption(
                name: '--strict',
                description:
                    'If updating, do not allow any gem to be updated past latest --patch | --minor | --major'),
            FigOption(
                name: '--conservative',
                description:
                    'If updating, use bundle install conservative update behavior and do not allow shared dependencies to be updated')
          ]),
      FigSubcommand(
          name: 'viz',
          description: 'Generate a visual representation of your dependencies',
          options: [
            FigOption(
                name: ['--file', '-f'],
                description:
                    'The name to use for the generated file. See --format option'),
            FigOption(
                name: ['--format', '-F'],
                description: 'This is output format option'),
            FigOption(
                name: ['--requirements', '-R'],
                description:
                    'Set to show the version of each required dependency'),
            FigOption(
                name: ['--version', '-v'],
                description: 'Set to show each gem version'),
            FigOption(
                name: ['--without', '-W'],
                description:
                    'Exclude gems that are part of the specified named group')
          ]),
      FigSubcommand(
          name: 'init',
          description:
              'Generate a simple Gemfile, placed in the current directory',
          options: [
            FigOption(
                name: '--gemspec',
                description: 'Use the specified .gemspec to create the Gemfile')
          ]),
      FigSubcommand(
          name: 'gem',
          description:
              'Create a simple gem, suitable for development with Bundler',
          options: [
            FigOption(
                name: ['--exe', '-b', '--bin'],
                description:
                    'Specify that Bundler should create a binary executable'),
            FigOption(name: '--no-exe', description: 'Do not create a binary'),
            FigOption(
                name: '--coc',
                description:
                    'Add a CODE_OF_CONDUCT.md file to the root of the generated project'),
            FigOption(
                name: '--no-coc',
                description: 'Do not create a CODE_OF_CONDUCT.md'),
            FigOption(
                name: '--ext',
                description:
                    'Add boilerplate for C extension code to the generated project'),
            FigOption(
                name: '--no-ext', description: 'Do not add C extension code'),
            FigOption(name: '--mit', description: 'Add an MIT license'),
            FigOption(
                name: '--no-mit', description: 'Do not create a LICENSE.txt'),
            FigOption(
                name: ['-t', '--test'],
                description:
                    'Specify the test framework that Bundler should use',
                args: [FigArg()]),
            FigOption(
                name: ['-e', '--edit'],
                description: 'Open the resulting gemspec in EDITOR',
                args: [FigArg()])
          ]),
      FigSubcommand(
          name: 'platform',
          description: 'Display platform compatibility information',
          options: [
            FigOption(
                name: '--ruby',
                description:
                    'It will display the ruby directive information so you don\'t have to parse it from the Gemfile')
          ]),
      FigSubcommand(
          name: 'clean',
          description: 'Clean up unused gems in your Bundler directory',
          options: [
            FigOption(
                name: '--dry-run',
                description:
                    'Print the changes, but do not clean the unused gems'),
            FigOption(
                name: '--force',
                description: 'Force a clean even if --path is not set')
          ]),
      FigSubcommand(
          name: 'doctor',
          description: 'Display warnings about common problems',
          options: [
            FigOption(
                name: '--quiet',
                description: 'Only output warnings and errors'),
            FigOption(
                name: '--gemfile',
                description:
                    'The location of the Gemfile which Bundler should use',
                args: [FigArg()])
          ])
    ],
    options: [
      FigOption(
          name: '--no-color', description: 'Print all output without color'),
      FigOption(
          name: ['--retry', '-r'],
          description:
              'Specify the number of times you wish to attempt network commands'),
      FigOption(
          name: ['--verbose', '-V'],
          description: 'Print out additional logging information')
    ]);
