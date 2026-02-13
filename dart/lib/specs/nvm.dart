// AI-generated from TypeScript source: nvm.ts
// Converted to Dart completion spec.

import 'package:autocomplete/src/spec.dart';

// args
final Arg versionArg = Arg(
  name: 'version',
  description: 'Node version',
  suggestions: const [
    FigSuggestion(
      name: 'node',
      description: 'The latest version of node',
    ),
    FigSuggestion(
      name: 'iojs',
      description: 'The latest version of io.js',
    ),
    FigSuggestion(
      name: 'system',
      description: 'System-installed version of node',
    ),
  ],
);

final Arg versionOptionalArg = Arg(
  name: 'version',
  description: 'Node version',
  suggestions: versionArg.suggestions,
  isOptional: true,
);

final Arg commandArg = Arg(
  name: 'command',
  isVariadic: true,
);

final Arg argsArg = Arg(
  name: 'args',
  isVariadic: true,
);

final Arg nameArg = Arg(name: 'name');

final Arg ltsNameArg = Arg(name: 'LTS name');

final Arg colorCodesArg = Arg(
  name: 'color codes',
  description: 'Using format "yMeBg"',
);

// options
final Option noColorsOption = Option(
  name: '--no-colors',
  description: 'Suppress colored output',
);

final Option noAliasOption = Option(
  name: '--no-alias',
  description: 'Suppress `nvm alias` output',
);

final Option silentOption = Option(
  name: '--silent',
  description: 'Silences stdout/stderr output',
);

final Option ltsOption = Option(
  name: '--lts',
  description:
      'Uses automatic LTS (long-term support) alias `lts/*`, if available',
);

final Option ltsWithNameOption = Option(
  name: '--lts',
  description: 'Uses automatic alias for provided LTS line, if available',
  args: [ltsNameArg],
);

/// Completion spec for `nvm` CLI
final FigSpec nvmSpec = FigSpec(
  name: 'nvm',
  description: 'Node Package Manager',
  subcommands: [
    Subcommand(
      name: 'install',
      description:
          'Download and install a <version>. Uses .nvmrc if available and version is omitted',
      args: [versionOptionalArg],
      options: [
        Option(
          name: '-s',
          description: 'Skip binary download, install from source only',
        ),
        Option(
          name: '--reinstall-packages-from',
          description:
              'When installing, reinstall packages installed in <version>',
          args: [versionArg],
        ),
        Option(
          name: '--lts',
          description:
              'When installing, only select from LTS (long-term support) versions',
        ),
        Option(
          name: '--lts',
          description:
              'When installing, only select from versions for a specific LTS line',
          args: [ltsNameArg],
        ),
        Option(
          name: '--skip-default-packages',
          description:
              'When installing, skip the default-packages file if it exists',
        ),
        Option(
          name: '--latest-npm',
          description:
              'After installing, attempt to upgrade to the latest working npm on the given node version',
        ),
        Option(
          name: '--no-progress',
          description: 'Disable the progress bar on any downloads',
        ),
        Option(
          name: '--alias',
          description:
              'After installing, set the alias specified to the version specified. (same as: nvm alias <name> <version>)',
          args: [nameArg],
        ),
        Option(
          name: '--default',
          description:
              'After installing, set default alias to the version specified. (same as: nvm alias default <version>)',
        ),
      ],
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall a version',
      args: [versionArg],
      options: [
        Option(
          name: '--lts',
          description:
              'Uninstall using automatic LTS (long-term support) alias `lts/*`, if available',
        ),
        Option(
          name: '--lts',
          description:
              'Uninstall using automatic alias for provided LTS line, if available',
          args: [ltsNameArg],
        ),
      ],
    ),
    Subcommand(
      name: 'use',
      description:
          'Modify PATH to use <version>. Uses .nvmrc if available and version is omitted',
      args: [versionOptionalArg],
      options: [silentOption, ltsOption, ltsWithNameOption],
    ),
    Subcommand(
      name: 'exec',
      description:
          'Run <command> on <version>. Uses .nvmrc if available and version is omitted',
      args: [versionOptionalArg, commandArg],
      options: [silentOption, ltsOption, ltsWithNameOption],
    ),
    Subcommand(
      name: 'run',
      description:
          'Run `node` on <version> with <args> as arguments. Uses .nvmrc if available and version is omitted',
      args: [versionOptionalArg, argsArg],
      options: [silentOption, ltsOption, ltsWithNameOption],
    ),
    Subcommand(
      name: 'current',
      description: 'Display currently activated version of Node',
    ),
    Subcommand(
      name: 'ls',
      description:
          'List installed versions, matching a given <version> if provided',
      args: [versionArg],
      options: [noColorsOption, noAliasOption],
    ),
    Subcommand(
      name: 'ls-remote',
      description:
          'List remote versions available for install, matching a given <version> if provided',
      args: [versionArg],
      options: [
        Option(
          name: '--lts',
          description:
              'When listing, only show LTS (long-term support) versions',
        ),
        Option(
          name: '--lts',
          description:
              'When listing, only show versions for a specific LTS line',
          args: [ltsNameArg],
        ),
        noColorsOption,
      ],
    ),
    Subcommand(
      name: 'version',
      description: 'Resolve the given description to a single local version',
      args: [versionArg],
    ),
    Subcommand(
      name: 'version-remote',
      description: 'Resolve the given description to a single remote version',
      args: [versionArg],
      options: [
        Option(
          name: '--lts',
          description:
              'When listing, only show LTS (long-term support) versions',
        ),
        Option(
          name: '--lts',
          description:
              'When listing, only show versions for a specific LTS line',
          args: [ltsNameArg],
        ),
      ],
    ),
    Subcommand(
      name: 'deactivate',
      description: 'Undo effects of `nvm` on current shell',
      options: [silentOption],
    ),
    Subcommand(
      name: 'alias',
      description:
          'Show all aliases beginning with <pattern> or Set an alias named <name> pointing to <version>',
      args: [
        Arg(
          name: 'pattern or name',
          description: 'Pattern or name',
        ),
        Arg(name: 'version', isOptional: true),
      ],
    ),
    Subcommand(
      name: 'unalias',
      description: 'Deletes the alias named <name>',
      args: [nameArg],
    ),
    Subcommand(
      name: 'install-latest-npm',
      description:
          'Attempt to upgrade to the latest working `npm` on the current node version',
    ),
    Subcommand(
      name: 'reinstall-packages',
      description:
          'Reinstall global `npm` packages contained in <version> to current version',
      args: [versionArg],
    ),
    Subcommand(
      name: 'unload',
      description: 'Unload `nvm` from shell',
    ),
    Subcommand(
      name: 'which',
      description:
          'Display path to installed node version. Uses .nvmrc if available and version is omitted',
      args: [versionOptionalArg],
      subcommands: [
        Subcommand(name: 'current'),
      ],
      options: [
        Option(
          name: '--silent',
          description:
              'Silences stdout/stderr output when a version is omitted',
        ),
      ],
    ),
    Subcommand(
      name: 'cache',
      args: [
        Arg(
          suggestions: const [
            FigSuggestion(
              name: 'dir',
              description: 'Display path to the cache directory for nvm',
              type: SuggestionType.subcommand,
            ),
            FigSuggestion(
              name: 'clear',
              description: 'Empty cache directory for nvm',
              type: SuggestionType.subcommand,
            ),
          ],
        ),
      ],
    ),
    Subcommand(
      name: 'set-colors',
      description:
          'Set five text colors using format "yMeBg". Available when supported',
      args: [colorCodesArg],
    ),
  ],
  options: [
    Option(
      name: '--help',
      description: 'Show help page',
    ),
    Option(
      name: '--version',
      description: 'Print out the installed version of nvm',
    ),
    noColorsOption,
  ],
);
