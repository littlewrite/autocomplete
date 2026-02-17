// AI-generated from TypeScript source: copilot.ts
import 'package:autocomplete/src/spec.dart';
import 'package:yaml/yaml.dart';

final FigGenerator applicationName = FigGenerator(
  script: ['cat', 'copilot/.workspace'],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.trim().isEmpty) return [];
    try {
      final yaml = loadYaml(output);
      if (yaml is YamlMap && yaml.containsKey('application')) {
        return [
          FigSuggestion(
            name: yaml['application'].toString(),
            icon: 'fig://icon?type=aws',
          )
        ];
      }
    } catch (e) {
      // ignore
    }
    return [];
  },
);

final FigOption appOptionGenerated = FigOption(
  name: ['--app', '-a'],
  description: 'Name of the application',
  args: [
    FigArg(name: 'name', generators: [applicationName]),
  ],
);

final FigOption envNameOptionGenerated = FigOption(
  name: ['--name', '-n'],
  description: 'Name of the environment',
  args: [FigArg(name: 'name')],
);

final FigOption svcNameOptionGenerated = FigOption(
  name: ['--name', '-n'],
  description: 'Name of the service',
  args: [FigArg(name: 'name')],
);

final FigOption helpOption = FigOption(
  name: ['--help', '-h'],
  description: 'Help for command',
);

final FigOption jsonOption = FigOption(
  name: '--json',
  description: 'Outputs in JSON format',
);

final FigOption yesOption = FigOption(
  name: '--yes',
  description: 'Skips confirmation prompt',
);

final FigSpec copilotSpec = FigSpec(
  name: 'copilot',
  description: '👩‍✈️ Launch and manage containerized applications on AWS',
  subcommands: [
    FigSubcommand(
      name: 'init',
      description: 'Create a new ECS or App Runner application',
      options: [
        FigOption(
          name: ['--app', '-a'],
          description: 'Name of the application',
          args: [FigArg(name: 'app')], // new app name
        ),
        FigOption(
          name: '--deploy',
          description: 'Deploy your service or job to a "test" environment',
        ),
        FigOption(
          name: ['--dockerfile', '-d'],
          description: 'Path to the Dockerfile',
          args: [FigArg(name: 'dockerfile')],
          exclusiveOn: ['--image', '-i'],
        ),
        FigOption(
          name: ['--image', '-i'],
          description: 'The location of an existing Docker image',
          args: [FigArg(name: 'image')],
          exclusiveOn: ['--dockerfile', '-d'],
        ),
        FigOption(
          name: ['--name', '-n'],
          description: 'Name of the service or job',
          args: [FigArg(name: 'name')],
        ),
        FigOption(
          name: '--port',
          description: 'The port on which your service listens',
          args: [FigArg(name: 'port', defaultValue: '0')],
        ),
        FigOption(
          name: '--retries',
          description:
              'Optional. The number of times to try restarting the job on a failure',
          args: [FigArg(name: 'retries', defaultValue: '0')],
        ),
        FigOption(
          name: '--schedule',
          description:
              'The schedule on which to run this job. Accepts cron expressions...',
          args: [FigArg(name: 'schedule')],
        ),
        FigOption(
          name: '--tag',
          description: 'Optional. The container image tag',
          args: [FigArg(name: 'tag')],
        ),
        FigOption(
          name: '--timeout',
          description:
              'Optional. The total execution time for the task, including retries.',
          args: [FigArg(name: 'timeout')],
        ),
        FigOption(
          name: ['--type', '-t'],
          description: 'Type of job or svc to create',
          args: [
            FigArg(
              name: 'type',
              suggestions: const [
                FigSuggestion(name: 'Request-Driven Web Service'),
                FigSuggestion(name: 'Load Balanced Web Service'),
                FigSuggestion(name: 'Backend Service'),
                FigSuggestion(name: 'Worker Service'),
                FigSuggestion(name: 'Scheduled Job'),
              ],
            ),
          ],
        ),
        helpOption,
      ],
    ),
    FigSubcommand(
      name: 'docs',
      description: 'Open the copilot docs',
      options: [helpOption],
    ),
    FigSubcommand(
      name: 'app',
      description:
          'Commands for applications. Applications are a collection of services and environments',
      subcommands: [
        FigSubcommand(
          name: 'init',
          description: 'Creates a new empty application',
          options: [
            FigOption(
              name: '--domain',
              description: 'Optional. Your existing custom domain name',
              args: [FigArg(name: 'domain')],
            ),
            FigOption(
              name: '--resource-tags',
              description:
                  'Optional. Labels with a key and value separated by commas.',
              args: [FigArg(name: 'resource-tags')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'ls',
          description: 'Lists all the applications in your account',
          options: [helpOption],
        ),
        FigSubcommand(
          name: 'show',
          description: 'Shows info about an application',
          options: [
            jsonOption,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the application',
              args: [FigArg(name: 'name')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'delete',
          description: 'Delete all resources associated with the application',
          options: [
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the application',
              args: [FigArg(name: 'name')],
            ),
            yesOption,
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'upgrade',
          description:
              'Upgrades the template of an application to the latest version',
          options: [
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the application',
              args: [FigArg(name: 'name')],
            ),
            helpOption,
          ],
        ),
      ],
      options: [helpOption],
    ),
    FigSubcommand(
      name: 'env',
      description:
          'Commands for environments. Environments are deployment stages shared between services',
      subcommands: [
        FigSubcommand(
          name: 'init',
          description: 'Creates a new environment in your application',
          options: [
            appOptionGenerated,
            FigOption(
              name: '--aws-access-key-id',
              description: 'Optional. An AWS access key',
              args: [FigArg(name: 'aws-access-key-id')],
            ),
            FigOption(
              name: '--aws-secret-access-key',
              description: 'Optional. An AWS secret access key',
              args: [FigArg(name: 'aws-secret-access-key')],
            ),
            FigOption(
              name: '--aws-session-token',
              description:
                  'Optional. An AWS session token for temporary credentials',
              args: [FigArg(name: 'aws-session-token')],
            ),
            FigOption(
              name: '--default-config',
              description:
                  'Optional. Skip prompting and use default environment configuration',
            ),
            FigOption(
              name: '--import-private-subnets',
              description: 'Optional. Use existing private subnet IDs',
              args: [FigArg(name: 'import-private-subnets')],
            ),
            FigOption(
              name: '--import-public-subnets',
              description: 'Optional. Use existing public subnet IDs',
              args: [FigArg(name: 'import-public-subnets')],
            ),
            FigOption(
              name: '--import-vpc-id',
              description: 'Optional. Use an existing VPC ID',
              args: [FigArg(name: 'import-vpc-id')],
            ),
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--override-az-names',
              description:
                  'Optional. Availability Zone names. (default 2 random AZs)',
              args: [FigArg(name: 'override-az-names')],
            ),
            FigOption(
              name: '--override-private-cidrs',
              description:
                  'Optional. CIDR to use for private subnets. (default 10.0.2.0/24,10.0.3.0/24)',
              args: [FigArg(name: 'override-private-cidrs')],
            ),
            FigOption(
              name: '--override-public-cidrs',
              description:
                  'Optional. CIDR to use for public subnets. (default 10.0.0.0/24,10.0.1.0/24)',
              args: [FigArg(name: 'override-public-cidrs')],
            ),
            FigOption(
              name: '--override-vpc-cidr',
              description:
                  'Optional. Global CIDR to use for VPC. (default 10.0.0.0/16)',
              args: [FigArg(name: 'override-vpc-cidr', defaultValue: '<nil>')],
            ),
            FigOption(
              name: '--prod',
              description: 'If the environment contains production services',
            ),
            FigOption(
              name: '--profile',
              description: 'Name of the profile',
              args: [FigArg(name: 'profile')],
            ),
            FigOption(
              name: '--region',
              description:
                  'Optional. An AWS region where the environment will be created',
              args: [FigArg(name: 'region')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'ls',
          description: 'Lists all the environments in an application',
          options: [appOptionGenerated, jsonOption, helpOption],
        ),
        FigSubcommand(
          name: 'delete',
          description: 'Deletes an environment from your application',
          options: [
            appOptionGenerated,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [FigArg(name: 'name')],
            ),
            yesOption,
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'show',
          description: 'Shows info about a deployed environment',
          options: [
            appOptionGenerated,
            jsonOption,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--resources',
              description: 'Optional. Show the resources in your environment',
            ),
            helpOption,
          ],
        ),
      ],
      options: [helpOption],
    ),
    FigSubcommand(
      name: 'svc',
      description:
          'Commands for services. Services are long-running ECS or App Runner services',
      subcommands: [
        FigSubcommand(
          name: 'init',
          description: 'Creates a new service in an application',
          options: [
            appOptionGenerated,
            FigOption(
              name: ['--dockerfile', '-d'],
              description: 'Path to the Dockerfile',
              args: [FigArg(name: 'dockerfile')],
              exclusiveOn: ['--image', '-i'],
            ),
            FigOption(
              name: ['--image', '-i'],
              description: 'The location of an existing Docker image',
              args: [FigArg(name: 'image')],
              exclusiveOn: ['--dockerfile', '-d'],
            ),
            svcNameOptionGenerated,
            FigOption(
              name: '--no-subscribe',
              description:
                  'Optional. Turn off selection for adding subscriptions for worker services',
            ),
            FigOption(
              name: '--port',
              description: 'The port on which your service listens',
              args: [FigArg(name: 'port', defaultValue: '0')],
            ),
            FigOption(
              name: '--subscribe-topics',
              description: 'Optional. SNS Topics to subscribe to...',
              isRepeatable: true,
              args: [FigArg(name: 'subscribe-topics')],
            ),
            FigOption(
              name: ['--svc-type', '-t'],
              description: 'Type of service to create',
              args: [
                FigArg(
                  name: 'svc-type',
                  suggestions: const [
                    FigSuggestion(name: 'Request-Driven Web Service'),
                    FigSuggestion(name: 'Load Balanced Web Service'),
                    FigSuggestion(name: 'Backend Service'),
                    FigSuggestion(name: 'Worker Service'),
                  ],
                ),
              ],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'ls',
          description: 'Lists all the services in an application',
          options: [
            appOptionGenerated,
            jsonOption,
            FigOption(
              name: '--local',
              description: 'Only show services in the workspace',
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'package',
          description: 'Prints the AWS CloudFormation template of a service',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            svcNameOptionGenerated,
            FigOption(
              name: '--output-dir',
              description:
                  'Optional. Writes the stack template and template configuration to a directory',
              args: [FigArg(name: 'output-dir')],
            ),
            FigOption(
              name: '--tag',
              description: 'Optional. The container image tag',
              args: [FigArg(name: 'tag')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'deploy',
          description: 'Deploys a service to an environment',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            FigOption(
              name: '--force',
              description:
                  'Optional. Force a new service deployment using the existing image',
            ),
            svcNameOptionGenerated,
            FigOption(
              name: '--resource-tags',
              description:
                  'Optional. Labels with a key and value separated by commas.',
              args: [FigArg(name: 'resource-tags')],
            ),
            FigOption(
              name: '--tag',
              description: 'Optional. The container image tag',
              args: [FigArg(name: 'tag')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'delete',
          description: 'Deletes a service from an application',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            svcNameOptionGenerated,
            yesOption,
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'show',
          description: 'Shows info about a deployed service per environment',
          options: [
            appOptionGenerated,
            jsonOption,
            svcNameOptionGenerated,
            FigOption(
              name: '--resources',
              description: 'Optional. Show the resources in your service',
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'status',
          description: 'Shows status of a deployed service',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            jsonOption,
            svcNameOptionGenerated,
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'logs',
          description: 'Displays logs of a deployed service',
          options: [
            appOptionGenerated,
            FigOption(
              name: '--end-time',
              description:
                  'Optional. Only return logs before a specific date (RFC3339).',
              args: [FigArg(name: 'end-time')],
              exclusiveOn: ['--follow'],
            ),
            envNameOptionGenerated,
            FigOption(
              name: '--follow',
              description: 'Optional. Specifies if the logs should be streamed',
              exclusiveOn: ['--end-time'],
            ),
            jsonOption,
            FigOption(
              name: '--limit',
              description:
                  'Optional. The maximum number of log events returned.',
              args: [FigArg(name: 'limit', defaultValue: '0')],
            ),
            FigOption(
              name: '--log-group',
              description: 'Optional. Only return logs from specific log group',
              args: [FigArg(name: 'log-group')],
            ),
            svcNameOptionGenerated,
            FigOption(
              name: '--since',
              description:
                  'Optional. Only return logs newer than a relative duration.',
              args: [FigArg(name: 'since', defaultValue: '0s')],
              exclusiveOn: ['--start-time'],
            ),
            FigOption(
              name: '--start-time',
              description:
                  'Optional. Only return logs after a specific date (RFC3339).',
              args: [FigArg(name: 'start-time')],
              exclusiveOn: ['--since'],
            ),
            FigOption(
              name: '--tasks',
              description: 'Optional. Only return logs from specific task IDs',
              args: [FigArg(name: 'tasks')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'exec',
          description:
              'Execute a command in a running container part of a service',
          options: [
            appOptionGenerated,
            FigOption(
              name: ['--command', '-c'],
              description:
                  'Optional. The command that is passed to a running container',
              args: [FigArg(name: 'command', defaultValue: '/bin/sh')],
            ),
            FigOption(
              name: '--container',
              description:
                  'Optional. The specific container you want to exec in',
              args: [FigArg(name: 'container')],
            ),
            envNameOptionGenerated,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the service, job, or task group',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--task-id',
              description: 'Optional. ID of the task you want to exec in',
              args: [FigArg(name: 'task-id')],
            ),
            FigOption(
              name: '--yes',
              description:
                  'Optional. Whether to update the Session Manager Plugin',
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'pause',
          description: 'Pause running App Runner service',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            svcNameOptionGenerated,
            yesOption,
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'resume',
          description: 'Resumes a paused service',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            svcNameOptionGenerated,
            helpOption,
          ],
        ),
      ],
      options: [helpOption],
    ),
    FigSubcommand(
      name: 'job',
      description:
          'Commands for jobs. Jobs are tasks that are triggered by events',
      subcommands: [
        FigSubcommand(
          name: 'init',
          description: 'Creates a new scheduled job in an application',
          options: [
            appOptionGenerated,
            FigOption(
              name: ['--dockerfile', '-d'],
              description: 'Path to the Dockerfile',
              args: [FigArg(name: 'dockerfile')],
              exclusiveOn: ['--image', '-i'],
            ),
            FigOption(
              name: ['--image', '-i'],
              description: 'The location of an existing Docker image',
              args: [FigArg(name: 'image')],
              exclusiveOn: ['--dockerfile', '-d'],
            ),
            FigOption(
              name: ['--job-type', '-t'],
              description: 'Type of job to create',
              args: [
                FigArg(
                    name: 'job-type',
                    suggestions: const [FigSuggestion(name: 'Scheduled Job')])
              ],
            ),
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the job',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--retries',
              description:
                  'Optional. The number of times to try restarting the job on a failure',
              args: [FigArg(name: 'retries', defaultValue: '0')],
            ),
            FigOption(
              name: ['--schedule', '-s'],
              description: 'The schedule on which to run this job.',
              args: [FigArg(name: 'schedule')],
            ),
            FigOption(
              name: '--timeout',
              description:
                  'Optional. The total execution time for the task, including retries.',
              args: [FigArg(name: 'timeout')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'ls',
          description: 'Lists all the jobs in an application',
          options: [
            appOptionGenerated,
            jsonOption,
            FigOption(
              name: '--local',
              description: 'Only show jobs in the workspace',
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'package',
          description: 'Prints the AWS CloudFormation template of a job',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the job',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--output-dir',
              description:
                  'Optional. Writes the stack template and template configuration to a directory',
              args: [FigArg(name: 'output-dir')],
            ),
            FigOption(
              name: '--tag',
              description: 'Optional. The container image tag',
              args: [FigArg(name: 'tag')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'deploy',
          description: 'Deploys a job to an environment',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the job',
              args: [FigArg(name: 'name')],
            ),
            FigOption(
              name: '--resource-tags',
              description:
                  'Optional. Labels with a key and value separated by commas.',
              args: [FigArg(name: 'resource-tags')],
            ),
            FigOption(
              name: '--tag',
              description: 'Optional. The container image tag',
              args: [FigArg(name: 'tag')],
            ),
            helpOption,
          ],
        ),
        FigSubcommand(
          name: 'delete',
          description: 'Deletes a job from an application',
          options: [
            appOptionGenerated,
            envNameOptionGenerated,
            FigOption(
              name: ['--name', '-n'],
              description: 'Name of the job',
              args: [FigArg(name: 'name')],
            ),
            yesOption,
            helpOption,
          ],
        ),
      ],
      options: [helpOption],
    ),
    FigSubcommand(
      name: 'task',
      description:
          'Commands for tasks. One-off Amazon ECS tasks that terminate once their work is done',
      subcommands: [
        FigSubcommand(
          name: 'run',
          description: 'Run a one-off task on Amazon ECS',
          options: [
            FigOption(
              name: '--app',
              description: 'Optional. Name of the application',
              args: [
                FigArg(name: 'app', generators: [applicationName])
              ],
              exclusiveOn: ['--default', '--subnets', '--security-groups'],
            ),
            FigOption(
              name: '--build-context',
              description: 'Path to the Docker build context',
              args: [FigArg(name: 'build-context')],
              exclusiveOn: ['--image', '-i'],
            ),
            FigOption(
              name: '--cluster',
              description:
                  'Optional. The short name or full ARN of the cluster to run the task in',
              args: [FigArg(name: 'cluster')],
              exclusiveOn: ['--app', '--env', '--default'],
            ),
            FigOption(
              name: '--command',
              description:
                  'Optional. The command that is passed to "docker run" to override the default command',
              args: [FigArg(name: 'command')],
            ),
            FigOption(
              name: '--count',
              description: 'Optional. The number of tasks to set up',
              args: [FigArg(name: 'count', defaultValue: '1')],
            ),
            FigOption(
              name: '--cpu',
              description:
                  'Optional. The number of CPU units to reserve for each task',
              args: [FigArg(name: 'cpu', defaultValue: '256')],
            ),
            FigOption(
              name: '--default',
              description:
                  'Optional. Run tasks in default cluster and default subnets',
              exclusiveOn: ['--app', '--env', '--subnets'],
            ),
            FigOption(
              name: '--dockerfile',
              description: 'Path to the Dockerfile',
              args: [FigArg(name: 'dockerfile', defaultValue: 'Dockerfile')],
              exclusiveOn: ['--image', '-i'],
            ),
            FigOption(
              name: '--entrypoint',
              description:
                  'Optional. The entrypoint that is passed to "docker run" to override the default entrypoint',
              args: [FigArg(name: 'entrypoint')],
            ),
            FigOption(
              name: '--env',
              description: 'Optional. Name of the environment',
              args: [FigArg(name: 'env')],
              exclusiveOn: ['--default', '--subnets', '--security-groups'],
            ),
            FigOption(
              name: '--env-vars',
              description:
                  'Optional. Environment variables specified by key=value separated by commas',
              args: [FigArg(name: 'env-vars')],
            ),
            FigOption(
              name: '--execution-role',
              description:
                  'Optional. The ARN of the role that grants the container agent permission to make AWS API calls',
              args: [FigArg(name: 'execution-role')],
            ),
            FigOption(
              name: '--follow',
              description: 'Optional. Specifies if the logs should be streamed',
            ),
            FigOption(
              name: '--generate-cmd',
              description:
                  'Optional. Generate a command with a pre-filled value for each flag.',
              args: [FigArg(name: 'generate-cmd')],
            ),
            FigOption(
              name: ['--image', '-i'],
              description: 'The location of an existing Docker image',
              args: [FigArg(name: 'image')],
              exclusiveOn: ['--dockerfile', '-d'],
            ),
            FigOption(
              name: '--memory',
              description:
                  'Optional. The amount of memory to reserve in MiB for each task',
              args: [FigArg(name: 'memory', defaultValue: '512')],
            ),
            FigOption(
              name: '--platform-arch',
              description:
                  'Optional. Architecture of the task. Must be specified along with \'platform-os\'',
              args: [FigArg(name: 'platform-arch')],
            ),
            FigOption(
              name: '--platform-os',
              description:
                  'Optional. Operating system of the task. Must be specified along with \'platform-arch\'',
              args: [FigArg(name: 'platform-os')],
            ),
            FigOption(
              name: '--resource-tags',
              description:
                  'Optional. Labels with a key and value separated by commas.',
              args: [FigArg(name: 'resource-tags')],
            ),
            FigOption(
              name: '--secrets',
              description:
                  'Optional. Secrets to inject into the container. Specified by key=value separated by commas',
              args: [FigArg(name: 'secrets')],
            ),
            FigOption(
              name: '--security-groups',
              description:
                  'Optional. The security group IDs for the task to use. Can be specified multiple times',
              args: [FigArg(name: 'security-groups')],
              exclusiveOn: ['--app', '--env'],
            ),
            FigOption(
              name: '--subnets',
              description:
                  'Optional. The subnet IDs for the task to use. Can be specified multiple times',
              args: [FigArg(name: 'subnets')],
              exclusiveOn: ['--app', '--env', '--default'],
            ),
            FigOption(
              name: '--tag',
              description: 'Optional. The container image tag',
              args: [FigArg(name: 'tag')],
            ),
            helpOption,
          ],
        ),
      ],
      options: [helpOption],
    ),
  ],
  options: [helpOption],
);
