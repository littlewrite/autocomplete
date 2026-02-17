// AI-generated from TypeScript source: src/graphcdn.ts
import 'package:autocomplete/src/spec.dart';

final FigOption helpOption = FigOption(
  name: ['--help', '-h'],
);

final FigSpec graphcdnSpec = FigSpec(
  name: 'graphcdn',
  description: 'GraphCDN CLI',
  subcommands: [
    FigSubcommand(
      name: 'login',
      description: 'Authenticate the CLI',
      options: [
        FigOption(
          name: ['--token'],
          args: [
            FigArg(
              name: 'token',
            ),
          ],
        ),
        helpOption,
      ],
    ),
    FigSubcommand(
      name: 'init',
      description: 'Create a new GraphCDN service',
      options: [
        FigOption(
          name: ['-y', '--yes'],
          description: 'Skip all the questions and just init',
        ),
        helpOption,
      ],
    ),
    FigSubcommand(
      name: 'pull',
      description: 'Pull the latest service configuration',
      options: [
        FigOption(
          name: ['--service'],
          description:
              'Name of the service to pull from (only required without graphcdn.yml)',
          args: [
            FigArg(
              name: 'service',
              description: 'Name of the environment to pull from',
            ),
          ],
        ),
        FigOption(
          name: ['--env'],
          args: [
            FigArg(
              name: 'env',
            ),
          ],
        ),
        helpOption,
      ],
    ),
    FigSubcommand(
      name: 'push',
      description: 'Push and deploy the latest app configuration',
      options: [
        FigOption(
          name: ['--env'],
          args: [
            FigArg(
              name: 'env',
            ),
          ],
        ),
        helpOption,
      ],
      args: [
        FigArg(
          name: 'field',
          isOptional: true,
          suggestions: ['schema', 'rules'],
        ),
      ],
    ),
  ],
  options: [helpOption],
);
