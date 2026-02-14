// AI-generated from TypeScript source: src/coda.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator formulaNames = FigGenerator(
  script: [
    'bash',
    '-c',
    'grep -A5 --include=*.ts --exclude-dir=node_modules -r \'addFormula\\|addSyncTable\\|makeFormula\\|makeSyncTable\' . | grep -A3 -i formula | grep name: | grep -oE "[\'\\"]\\w*[\'\\"]"',
  ],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.trim().isEmpty) {
      return [];
    }
    return output.split('\n').map((formulaName) {
      return FigSuggestion(
        name: formulaName.replaceAll(RegExp("['\"]"), '').trim(),
        description: 'Execute $formulaName',
      );
    }).toList();
  },
);

final FigArg pathToPackArg = FigArg(
  name: 'path/to/pack.ts',
  description: 'The path to the pack.ts file. E.g. src/pack.ts',
  generators: const [FigGenerator(template: 'filepaths')],
);

final FigArg urlOrPackIdArg = FigArg(
  name: 'urlOrPackId',
  description:
      'The URL or ID of the Pack. E.g. https://coda.io/p/123456 or 123456',
);

final FigSpec codaSpec = FigSpec(
  name: 'coda',
  description:
      'Coda Local development CLI tool. It comes bundled with the Pack SDK and makes it easy to build and manage Packs from the CLI',
  subcommands: [
    FigSubcommand(
      name: 'init',
      description:
          'Initialize an empty project with the recommended settings and dependencies',
    ),
    FigSubcommand(
      name: 'execute',
      description: 'Execute the formula and print the output to the terminal',
      args: [
        pathToPackArg,
        FigArg(
          name: 'formula',
          description: 'Formula name to execute',
          generators: [formulaNames],
        ),
        FigArg(
          name: 'params',
          description: 'Arguments to pass to the formula',
          isVariadic: true,
          isOptional: true,
        ),
      ],
      options: [
        FigOption(
          name: '--dynamicUrl',
          description:
              'To run a sync for a dynamic sync table, use this parameter to specify which URL to sync from',
          args: [
            FigArg(
              name: 'url',
              description: 'The URL to sync from',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'auth',
      description:
          'Set up authentication in your development environment so that you can execute Pack formulas with authentication applied to them',
      args: [pathToPackArg],
    ),
    FigSubcommand(
      name: 'register',
      description:
          'Create a new API token or register an existing one to be used with future commands',
      args: [
        FigArg(
          name: 'apiToken',
          description: 'The API token to register',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'create',
      description:
          'Create a new Pack on Coda’s servers and get assigned a Pack ID. Run this command just once for each Pack you create',
      args: [pathToPackArg],
      options: [
        FigOption(
          name: '--name',
          description:
              'Specify a name for the Pack. You can always set or update the name in the Pack management UI later',
          args: [
            FigArg(
              name: 'name',
              description: 'The desired Pack name',
            ),
          ],
        ),
        FigOption(
          name: '--description',
          description:
              'Specify a description for the Pack. You can always set or update the description in the Pack management UI later',
          args: [
            FigArg(
              name: 'description',
              description: 'The Pack description',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'upload',
      description:
          'Use this command to upload a new version of your Pack based on your latest code',
      args: [pathToPackArg],
    ),
    FigSubcommand(
      name: 'release',
      description: 'Release a Pack version and make it live for your users',
      args: [
        pathToPackArg,
        FigArg(
          name: 'version',
          description:
              'The release version. Must always be greater than that of any of your previous releases',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'clone',
      description:
          'Migrate the development of a Pack from the Pack Studio to a new local CLI Pack development',
      args: [urlOrPackIdArg],
    ),
    FigSubcommand(
      name: 'link',
      description:
          'Link the development of a Pack from the Pack studio to an existing local CLI Pack development',
      args: [pathToPackArg, urlOrPackIdArg],
    ),
    FigSubcommand(
      name: 'whoami',
      description:
          'Looks up information about the API token that is registered in this environment',
      args: [
        FigArg(
          name: 'apiToken',
          description: 'The API token to look up',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'build',
      description: 'Generate a bundle for your Pack',
      args: [pathToPackArg],
    ),
    FigSubcommand(
      name: 'validate',
      description: 'Validate your Pack definition',
      args: [pathToPackArg],
    ),
    FigSubcommand(
      name: 'setOption',
      description:
          'Set a persistent build option for the Pack. This will be used for all builds of the Pack',
      args: [
        pathToPackArg,
        FigArg(
          name: 'option',
          description: "Currently the only supported option is 'timerStrategy'",
          suggestions: ['timerStrategy'],
        ),
        FigArg(
          name: 'value',
          description: 'Value to set for the option',
          suggestions: ['none', 'error', 'fake'],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: '--version',
      description: 'Show version number',
      priority: 1,
      isPersistent: true,
    ),
    FigOption(
      name: '--help',
      description: 'Show help',
      priority: 2,
      isPersistent: true,
    ),
  ],
);
