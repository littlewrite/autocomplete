// AI-generated from TypeScript source: pyenv.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator versionList = FigGenerator(
  script: ['pyenv', 'install', '-l'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .sublist(1)
        .map((name) => FigSuggestion(
              name: name.trim(),
              icon: '🐍',
            ))
        .toList();
  },
);

final FigGenerator globalList = FigGenerator(
  script: ['pyenv', 'versions'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.trim().split('\n').map((l) {
      final sel = RegExp(r'\s*\*').hasMatch(l);
      final name = sel ? l.replaceAll('*', '').trim() : l.trim();
      final icon = sel ? '🌟' : '🐍';
      return FigSuggestion(name: name, icon: icon);
    }).toList();
  },
);

final FigSpec pyenvSpec = FigSpec(
  name: 'pyenv',
  description: 'Pyenv',
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Output usage information',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: ['commands'],
      description: 'Lists all available pyenv commands',
    ),
    FigSubcommand(
      name: ['local'],
      description: 'Sets a local application-specific Python version',
      args: [
        FigArg(
          name: 'python version',
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['--unset'],
        ),
      ],
    ),
    FigSubcommand(
      name: ['global'],
      description: 'Sets the global version of Python to be used in all shells',
      args: [
        FigArg(
          name: 'python version',
          generators: [globalList],
        ),
      ],
    ),
    FigSubcommand(
      name: ['shell'],
      description: 'Sets a shell-specific Python version',
      args: [
        FigArg(
          name: 'python version',
        ),
      ],
      options: [
        FigOption(
          name: ['--unset'],
        ),
      ],
    ),
    FigSubcommand(
      name: ['install'],
      description: 'Install a Python version',
      args: [
        FigArg(
          name: 'python version',
          generators: [versionList],
        ),
      ],
      options: [
        FigOption(
          name: ['-l', '--list'],
          description: 'List all available versions',
        ),
        FigOption(
          name: ['-f', '--force'],
          description:
              'Install even if the version appears to be installed already',
        ),
        FigOption(
          name: ['-s', '--skip-existing'],
          description:
              'Skip the installation if the version appears to be installed already',
        ),
        FigOption(
          name: ['-k', '--keep'],
          description:
              'Keep source tree in \$PYENV_BUILD_ROOT after installation',
        ),
        FigOption(
          name: ['-v', '--verbose'],
          description: 'Verbose mode: print compilation status to stdout',
        ),
        FigOption(
          name: ['-p', '--patch'],
          description: 'Apply a patch from stdin before building',
        ),
        FigOption(
          name: ['-g', '--debug'],
          description: 'Build a debug version',
        ),
      ],
    ),
    FigSubcommand(
      name: ['uninstall'],
      description: 'Performs a deployment (default)',
      args: [
        FigArg(
          name: 'version',
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--force'],
          description:
              'Attempt to remove the specified version without prompting for confirmation',
        ),
      ],
    ),
    FigSubcommand(
      name: ['rehash'],
      description: 'Performs a deployment (default)',
    ),
    FigSubcommand(
      name: ['version'],
      description:
          'Displays the currently active Python version, along with information on how it was set',
    ),
    FigSubcommand(
      name: ['versions'],
      description:
          'Lists all Python versions known to pyenv, and shows an asterisk next to the currently active version',
      options: [
        FigOption(
          name: ['--bare'],
          description: 'Print only the version names, one per line',
        ),
        FigOption(
          name: ['--skip-aliases'],
          description: 'Skip printing aliases',
        ),
      ],
    ),
    FigSubcommand(
      name: ['which'],
      description:
          'Displays the full path to the executable that pyenv will invoke when you run the given command',
      args: [
        FigArg(
          name: 'command',
        ),
      ],
    ),
    FigSubcommand(
      name: ['whence'],
      description:
          'Lists all Python versions with the given command installed',
      args: [
        FigArg(
          name: 'command',
        ),
      ],
    ),
  ],
);
