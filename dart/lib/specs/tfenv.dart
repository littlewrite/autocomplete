// AI-generated from TypeScript source: tfenv.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator installedVersions = FigGenerator(
  script: ['tfenv', 'list'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((tfversion) => FigSuggestion(name: tfversion, description: 'Version')).toList();
  },
);

final FigGenerator allVersions = FigGenerator(
  script: ['tfenv', 'list-remote'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((line) => FigSuggestion(name: line, type: SuggestionType.option)).toList();
  },
);

final FigSpec tfenvSpec = FigSpec(
  name: 'tfenv',
  description: 'Terraform version manager',
  subcommands: [
    FigSubcommand(
      name: 'install',
      description: 'Install a specific version of Terraform',
      args: [
        FigArg(
          name: 'version',
          description: 'Possible Terraform Version',
          suggestions: [
            FigSuggestion(name: 'latest'),
            FigSuggestion(name: 'min-required'),
          ],
          generators: [allVersions],
        ),
      ],
    ),
    FigSubcommand(
      name: 'use',
      description: 'Switch to a version to use',
      args: [
        FigArg(
          name: 'version',
          description: 'Installed Terraform Version',
          generators: [installedVersions],
        ),
      ],
    ),
    FigSubcommand(
      name: 'uninstall',
      description: 'Uninstall a specific version of Terraform',
      args: [
        FigArg(
          name: 'version',
          description: 'Installed Terraform Version',
          generators: [installedVersions],
        ),
      ],
    ),
    FigSubcommand(
      name: 'list',
      description: 'List all installed versions',
    ),
    FigSubcommand(
      name: 'list-remote',
      description: 'List all installable versions',
    ),
    FigSubcommand(
      name: 'version-name',
      description: 'Print current version',
    ),
    FigSubcommand(
      name: 'init',
      description: 'Update environment to use tfenv correctly',
    ),
  ],
  options: [
    FigOption(
      name: ['-v', '--version'],
      description: 'View your current tfenv version',
    ),
    FigOption(
      name: ['--help'],
      description: 'View commands',
    ),
  ],
);
