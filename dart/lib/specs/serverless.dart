// AI-generated from TypeScript source: serverless.ts
import 'package:autocomplete/src/spec.dart';

final FigOption awsProfileOption = FigOption(
  name: ['--aws-profile'],
  description: 'AWS profile to use with the command',
  args: [
    FigArg(name: 'profile name'),
  ],
);

final FigOption functionOption = FigOption(
  name: ['--function', '-f'],
  description: 'Name of the function',
  args: [
    FigArg(name: 'function'),
  ],
);

final FigOption functionOptionRequired = FigOption(
  name: ['--function', '-f'],
  description: 'Name of the function',
  isRequired: true,
  args: [
    FigArg(name: 'function'),
  ],
);

final FigOption regionOption = FigOption(
  name: ['--region', '-r'],
  description: 'Region of the service',
  args: [
    FigArg(
      name: 'region',
      suggestions: [
        'us-east-2',
        'us-east-1',
        'us-west-1',
        'us-west-2',
        'af-south-1',
        'ap-east-1',
        'ap-south-1',
        'ap-northeast-3',
        'ap-northeast-2',
        'ap-southeast-1',
        'ap-southeast-2',
        'ap-northeast-1',
        'ca-central-1',
        'cn-north-1',
        'cn-northwest-1',
        'eu-central-1',
        'eu-west-1',
        'eu-west-2',
        'eu-south-1',
        'eu-west-3',
        'eu-north-1',
        'me-south-1',
        'sa-east-1',
        'us-gov-east-1',
        'us-gov-west-1',
      ].map((e) => FigSuggestion(name: e)).toList(),
    ),
  ],
);

final FigOption useLocalCredentialsOption = FigOption(
  name: ['--use-local-credentials'],
  description: 'Rely on locally resolved AWS credentials instead of loading them from Dashboard provider settings (applies only to services integrated with Dashboard)',
);

final FigOption configOption = FigOption(
  name: ['--config', '-c'],
  description: 'Path to serverless config file',
  args: [
    FigArg(
      name: '.yml file',
      template: 'filepaths',
    ),
  ],
);

final FigOption appOption = FigOption(
  name: ['--app'],
  description: 'Dashboard app',
  args: [
    FigArg(name: 'app'),
  ],
);

final FigOption orgOption = FigOption(
  name: ['--org'],
  description: 'Dashboard org',
  args: [
    FigArg(name: 'org'),
  ],
);

final FigOption helpOption = FigOption(
  name: ['--help', '-h'],
  description: 'Show help',
);

final FigOption versionOption = FigOption(
  name: ['--version'],
  description: 'Show version info',
);

final FigOption stageOption = FigOption(
  name: ['--stage', '-s'],
  description: 'Stage of the service',
  args: [
    FigArg(name: 'stage'),
  ],
);

final FigOption verboseOption = FigOption(
  name: ['--verbose', '-v'],
  description: 'Show all stack events during deployment',
  args: [
    FigArg(name: 'production'),
  ],
);

final FigOption packageOption = FigOption(
  name: ['--package', '-p'],
  description: 'Path of the deployment package',
  args: [
    FigArg(
      name: 'package',
      template: 'folders',
    ),
  ],
);

final FigOption concealOption = FigOption(
  name: ['--conceal'],
  description: 'Hide secrets from the output (e.g. API Gateway key values)',
);

final FigOption qualifierOption = FigOption(
  name: ['--qualifier', '-q'],
  description: 'Version number or alias to invoke',
  args: [
    FigArg(name: 'qualifier'),
  ],
);

final FigOption pathOption = FigOption(
  name: ['--path', '-p'],
  description: 'Path to JSON or YAML file holding input data',
  args: [
    FigArg(
      name: 'path',
      template: 'filepaths',
    ),
  ],
);

final FigOption typeOption = FigOption(
  name: ['--type', '-t'],
  description: 'Type of invocation',
  args: [
    FigArg(name: 'type'),
  ],
);

final FigOption logOption = FigOption(
  name: ['--log', '-l'],
  description: 'Trigger logging data output',
);

final FigOption dataOption = FigOption(
  name: ['--data', '-d'],
  description: 'Input data',
  args: [
    FigArg(name: 'input'),
  ],
);

final FigOption rawOption = FigOption(
  name: ['--raw'],
  description: 'Flag to pass input data as a raw string',
);

final FigOption contextOption = FigOption(
  name: ['--context'],
  description: 'Context of the service',
  args: [
    FigArg(name: 'package'),
  ],
);

final FigOption contextPathOption = FigOption(
  name: ['--contextPath'],
  description: 'Path to JSON or YAML file holding context data',
  args: [
    FigArg(
      name: 'path',
      template: 'filepaths',
    ),
  ],
);

final FigOption envOption = FigOption(
  name: ['--env', '-e'],
  description: 'Override environment variables. e.g. --env VAR1=val1 --env VAR2=val2',
  args: [
    FigArg(name: '--env VAR1=val1 --env VAR2=val2'),
  ],
);

final FigSpec serverlessSpec = FigSpec(
  name: 'serverless',
  description: 'Zero-friction serverless development',
  options: [
    FigOption(
      name: ['--help'],
      description: 'Show help',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: ['deploy'],
      description: 'Deploy a Serverless service',
      subcommands: [
        FigSubcommand(
          name: ['function'],
          options: [
            appOption,
            awsProfileOption,
            configOption,
            functionOption,
            helpOption,
            orgOption,
            regionOption,
            stageOption,
            useLocalCredentialsOption,
            versionOption,
            FigOption(
              name: ['--force'],
              description: 'Forces a deployment to take place',
            ),
            FigOption(
              name: ['--update-config', '-u'],
              description: 'Updates function configuration, e.g. Timeout or Memory Size without deploying code',
              args: [
                FigArg(name: 'config'),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: ['list'],
          subcommands: [
            FigSubcommand(
              name: ['functions'],
              options: [
                regionOption,
                awsProfileOption,
                appOption,
                orgOption,
                useLocalCredentialsOption,
                configOption,
                stageOption,
                helpOption,
                versionOption,
              ],
            ),
          ],
          options: [
            regionOption,
            awsProfileOption,
            appOption,
            orgOption,
            useLocalCredentialsOption,
            configOption,
            stageOption,
            helpOption,
            versionOption,
          ],
        ),
      ],
      options: [
        concealOption,
        packageOption,
        verboseOption,
        FigOption(
          name: ['--force'],
          description: 'Forces a deployment to take place',
        ),
        functionOption,
        FigOption(
          name: ['--aws-s3-accelerate'],
          description: 'Enables S3 Transfer Acceleration making uploading artifacts much faster',
        ),
        regionOption,
        awsProfileOption,
        appOption,
        orgOption,
        useLocalCredentialsOption,
        configOption,
        stageOption,
        helpOption,
        versionOption,
      ],
    ),
    FigSubcommand(
      name: ['info'],
      description: 'Display information about the service',
      options: [
        concealOption,
        regionOption,
        awsProfileOption,
        appOption,
        orgOption,
        useLocalCredentialsOption,
        configOption,
        stageOption,
        helpOption,
        versionOption,
      ],
    ),
    FigSubcommand(
      name: ['invoke'],
      description: 'Invoke a deployed function',
      options: [
        functionOptionRequired,
        pathOption,
        dataOption,
        rawOption,
        contextOption,
        contextPathOption,
        regionOption,
        awsProfileOption,
        appOption,
        orgOption,
        useLocalCredentialsOption,
        configOption,
        stageOption,
        helpOption,
        versionOption,
      ],
      subcommands: [
        FigSubcommand(
          name: ['local'],
          options: [
            functionOptionRequired,
            pathOption,
            dataOption,
            rawOption,
            contextOption,
            contextPathOption,
            envOption,
            regionOption,
            awsProfileOption,
            appOption,
            orgOption,
            useLocalCredentialsOption,
            configOption,
            stageOption,
            helpOption,
            versionOption,
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: ['logs'],
      description: 'Output the logs of a deployed function',
    ),
    FigSubcommand(
      name: ['metrics'],
      description: 'Show metrics for a specific function',
    ),
    FigSubcommand(
      name: ['remove'],
      description: 'Remove Serverless service and all resources',
    ),
    FigSubcommand(
      name: ['rollback'],
      description: 'Rollback the Serverless service to a specific deployment',
    ),
    FigSubcommand(
      name: ['studio'],
      description: 'Develop a Serverless application in the cloud',
    ),
    FigSubcommand(
      name: ['test'],
      description: 'Run HTTP tests',
    ),
    FigSubcommand(
      name: ['package'],
      description: 'Package a Serverless service',
    ),
    FigSubcommand(
      name: ['plugin'],
      description: 'Handle plugins',
    ),
    FigSubcommand(
      name: ['print'],
      description: 'Print your compiled and resolved config file',
    ),
    FigSubcommand(
      name: ['create'],
      description: 'Create new Serverless service',
    ),
    FigSubcommand(
      name: ['dashboard'],
      description: 'Open the Serverless dashboard',
    ),
    FigSubcommand(
      name: ['generate-event'],
      description: 'Generate event',
    ),
    FigSubcommand(
      name: ['install'],
      description: 'Install a Serverless service from GitHub or a plugin from the Serverless registry',
    ),
    FigSubcommand(
      name: ['login'],
      description: 'Login or sign up for Serverless',
    ),
    FigSubcommand(
      name: ['logout'],
      description: 'Logout from Serverless',
    ),
    FigSubcommand(
      name: ['output'],
      description: 'Get/list value of dashboard deployment profile parameter',
    ),
    FigSubcommand(
      name: ['param'],
      description: 'Get/list value of dashboard service output',
    ),
    FigSubcommand(
      name: ['slstats'],
      description: 'Enable or disable stats',
    ),
  ],
  // generateSpec not fully supported in Dart spec yet
);
