// AI-generated from TypeScript source: n.ts
import 'package:autocomplete/src/spec.dart';
import 'node.dart';

final FigArg versionArg = FigArg(
  name: 'version',
  suggestions: [
    FigSuggestion(
      name: ['latest', 'current'],
      description: 'Newest official release',
    ),
    FigSuggestion(
      name: ['lts'],
      description: 'Newest Long Term Support official release',
    ),
    FigSuggestion(
      name: ['auto'],
      description:
          'Read version from file: .n-node-version, .node-version, .nvmrc, or package.json',
    ),
    FigSuggestion(
      name: ['engine'],
      description: 'Read version from package.json',
    ),
  ],
  generators: [
    FigGenerator(
      script: ['n', 'lsr', '--all'],
      postProcess: (out, [tokens]) {
        final set = <String>{};
        final versions = out.split('\n').skip(1);
        for (final version in versions) {
          if (version.trim().isEmpty) continue;
          set.add(version);
          final split = version.split('.');
          if (split.length >= 2) set.add('${split[0]}.${split[1]}');
          if (split.isNotEmpty) set.add(split[0]);
        }
        return set
            .map((version) => FigSuggestion(
                  name: [version, 'v$version'],
                  description: 'Node.js $version',
                ))
            .toList();
      },
    ),
  ],
  isOptional: false,
);

final FigArg optionalVersionArg = FigArg(
  name: versionArg.name,
  suggestions: versionArg.suggestions,
  generators: versionArg.generators,
  isOptional: true,
);

final FigArg variadicVersionArg = FigArg(
  name: versionArg.name,
  suggestions: versionArg.suggestions,
  generators: versionArg.generators,
  isVariadic: true,
  isOptional: false,
);

final FigSpec nSpec = FigSpec(
  name: 'n',
  description: 'Node version management',
  subcommands: [
    FigSubcommand(
      name: ['i', 'install'],
      description: 'Install a Node.js version',
      args: [versionArg],
    ),
    FigSubcommand(
      name: ['rm', '–'],
      description: 'Remove a Node.js version',
      args: [variadicVersionArg],
    ),
    FigSubcommand(
      name: ['prune'],
      description:
          'Remove all cached Node.js versions except the installed version',
    ),
    FigSubcommand(
      name: ['doctor'],
      description: 'Display diagnostics to help resolve problems',
    ),
    FigSubcommand(
      name: ['uninstall'],
      description: 'Remove the installed Node.js',
    ),
    FigSubcommand(
      name: ['ls', 'list'],
      description: 'Output downloaded versions',
    ),
    FigSubcommand(
      name: ['lsr', 'ls-remote', 'list-remote'],
      description: 'Output matching versions available for download',
      args: [versionArg],
      options: [
        FigOption(
          name: ['--all'],
          description: 'Ls-remote displays all matches instead of last 20',
        ),
      ],
    ),
    FigSubcommand(
      name: ['which', 'bin'],
      description: 'Output path for downloaded node version',
      args: [versionArg],
    ),
    FigSubcommand(
      name: ['run', 'use', 'as'],
      description: 'Execute downloaded Node.js version with args',
      args: [
        versionArg,
        ...(nodeSpec.args ?? []),
      ],
      subcommands: nodeSpec.subcommands,
      options: nodeSpec.options,
    ),
    FigSubcommand(
      name: ['exec'],
      description:
          'Execute command with modified PATH, so downloaded node version and npm first',
      args: [
        versionArg,
        FigArg(
          name: 'cmd',
          isCommand: true,
        ),
        FigArg(
          name: 'args',
          isVariadic: true,
        ),
      ],
    ),
  ],
  args: [optionalVersionArg],
  options: [
    FigOption(
      name: ['-V', '--version'],
      description: 'Output version of n',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Display help information',
    ),
    FigOption(
      name: ['-p', '--preserve'],
      description: 'Preserve npm and npx during install of Node.js',
    ),
    FigOption(
      name: ['--no-preserve'],
      description: 'Do not preserve npm and npx during install of Node.js',
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description:
          'Disable curl output. Disable log messages processing "auto" and "engine" labels',
    ),
    FigOption(
      name: ['-d', '--download'],
      description: 'Download only',
    ),
    FigOption(
      name: ['-a', '--arch'],
      description: 'Override system architecture',
      args: [
        FigArg(
          name: 'Architecture',
          suggestions: [
            FigSuggestion(name: ['x64', 'x86_64']),
            FigSuggestion(name: ['arm64', 'aarch64', 'armv8l']),
            FigSuggestion(name: ['x86', 'i386', 'i686']),
            FigSuggestion(name: ['armv6l', 'armv7l']),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--insecure'],
      description:
          'Turn off certificate checking for https requests (may be needed from behind a proxy server)',
      isDangerous: true,
    ),
    FigOption(
      name: ['--use-xz'],
      description:
          'Override automatic detection of xz support and enable use of xz compressed node downloads',
      exclusiveOn: ['--no-use-xz'],
    ),
    FigOption(
      name: ['--no-use-xz'],
      description:
          'Override automatic detection of xz support and disable use of xz compressed node downloads',
      exclusiveOn: ['--use-xz'],
    ),
  ],
);
