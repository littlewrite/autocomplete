// AI-generated from TypeScript source: softwareupdate.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator updatesGenerator = FigGenerator(
  script: ['softwareupdate', '--list'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.startsWith('* Label: '))
        .map((line) {
      final name = line.substring(9);
      return FigSuggestion(
        name: name,
        insertValue: '"$name"',
        description: 'Available update',
      );
    }).toList();
  },
  scriptTimeout: 20000,
  // Cache strategy not explicitly supported in Dart FigGenerator yet, but can be added if supported
);

final FigSpec softwareupdateSpec = FigSpec(
  name: 'softwareupdate',
  description:
      'Software Update checks for new and updated versions of your software based on information about your computer and current software',
  subcommands: [
    FigSubcommand(
      name: ['-l', '--list'],
      description: 'List all appropriate update labels',
    ),
    FigSubcommand(
      name: ['-d', '--download'],
      description: 'Download Only',
    ),
    FigSubcommand(
      name: ['-i', '--install'],
      description: 'Install',
      args: [
        FigArg(
          name: 'label',
          isVariadic: true,
          isOptional: true,
          generators: [updatesGenerator],
        ),
      ],
      options: [
        FigOption(
          name: ['-a', '--all'],
          description: 'All appropriate updates',
          exclusiveOn: ['-r', '--recommended'],
        ),
        FigOption(
          name: ['-R', '--restart'],
          description:
              'Automatically restart (or shut down) if required to complete installation',
        ),
        FigOption(
          name: ['-r', '--recommended'],
          description: 'Only recommended updates',
          exclusiveOn: ['-a', '--all'],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--list-full-installers'],
      description: 'List the available macOS Installers',
    ),
    FigSubcommand(
      name: ['--fetch-full-installer'],
      description: 'Install the latest recommended macOS Installer',
    ),
    FigSubcommand(
      name: ['--full-installer-version'],
      description: 'The version of macOS to install',
      args: [
        FigArg(name: 'version'),
      ],
    ),
    FigSubcommand(
      name: ['--install-rosetta'],
      description: 'Install Rosetta 2',
    ),
    FigSubcommand(
      name: ['--background'],
      description: 'Trigger a background scan and update operation',
    ),
    FigSubcommand(
      name: ['--dump-state'],
      description:
          'Log the internal state of the SU daemon to /var/log/install.log',
    ),
    FigSubcommand(
      name: ['--evaluate-products'],
      description:
          'Evaluate a list of product keys specified by the --products option',
    ),
    FigSubcommand(
      name: ['--history'],
      description:
          'Show the install history.  By default, only displays updates installed by softwareupdate',
      options: [
        FigOption(
          name: ['--all'],
          description:
              'Include all processes in history (including App installs)',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--no-scan'],
      description:
          'Do not scan when listing or installing updates (use available updates previously scanned)',
      isPersistent: true,
    ),
    FigOption(
      name: ['--product-types'],
      description:
          'Limit a scan to a particular product type only - ignoring all others',
      args: [
        FigArg(name: 'type'),
      ],
      isPersistent: true,
    ),
    FigOption(
      name: ['--products'],
      description:
          'A comma-separated (no spaces) list of product keys to operate on',
      isPersistent: true,
    ),
    FigOption(
      name: ['--force'],
      description:
          'Force an operation to complete.  Use with --background to trigger a background scan regardless of "Automatically check" pref',
      isDangerous: true,
      isPersistent: true,
    ),
    FigOption(
      name: ['--agree-to-license'],
      description:
          'Agree to the software license agreement without user interaction',
      isPersistent: true,
    ),
    FigOption(
      name: ['--verbose'],
      description: 'Enable verbose output',
      isPersistent: true,
    ),
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for softwareupdate',
    ),
  ],
);
