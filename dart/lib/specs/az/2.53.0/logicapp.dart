// Auto-generated from TypeScript source: logicapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `logicapp` CLI
final FigSpec logicappSpec = FigSpec(
  name: 'logicapp',
  description: 'Manage logic apps',
  subcommands: [

    Subcommand(
      name: 'config',
      description: 'Configure a logic app',
      subcommands: [

        Subcommand(
          name: 'appsettings',
          description: 'Configure logic app settings',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a logic app\'s settings',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the logic app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--setting-names',
                  description: 'Space-separated app setting names',
                  args: [
                    Arg(
                    name: 'setting-name'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Show settings for a logic app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the logic app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Update a logic app\'s settings',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the logic app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--settings',
                  description: 'Space-separated app settings in a format of <name>=<value>',
                  args: [
                    Arg(
                    name: 'setting'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--slot-settings',
                  description: 'Space-separated slot app settings in a format of <name>=<value>',
                  args: [
                    Arg(
                    name: 'slot-setting'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the new logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--storage-account', '-s'],
          description: 'Provide a string value of a Storage Account in the provided Resource Group. Or Resource ID of a Storage Account in a different Resource Group',
          args: [
            Arg(
            name: 'storage-accoun'
          )
          ]
        ),
        Option(
          name: '--app-insights',
          description: 'Name of the existing App Insights project to be added to the logic app. Must be in the same resource group',
          args: [
            Arg(
            name: 'app-insight'
          )
          ]
        ),
        Option(
          name: '--app-insights-key',
          description: 'Instrumentation key of App Insights to be added',
          args: [
            Arg(
            name: 'app-insights-ke'
          )
          ]
        ),
        Option(
          name: ['--deployment-container-image-name', '-i'],
          description: 'Container image name from Docker Hub, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'deployment-container-image-nam'
          )
          ]
        ),
        Option(
          name: ['--deployment-local-git', '-l'],
          description: 'Enable local git',
          args: [
            Arg(
            name: 'deployment-local-gi'
          )
          ]
        ),
        Option(
          name: ['--deployment-source-branch', '-b'],
          description: 'The branch to deploy',
          args: [
            Arg(
            name: 'deployment-source-branc'
          )
          ]
        ),
        Option(
          name: ['--deployment-source-url', '-u'],
          description: 'Git repository URL to link with manual integration',
          args: [
            Arg(
            name: 'deployment-source-ur'
          )
          ]
        ),
        Option(
          name: '--disable-app-insights',
          description: 'Disable creating application insights resource during logicapp create. No logs will be available',
          args: [
            Arg(
            name: 'disable-app-insights',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--docker-registry-server-password', '-w'],
          description: 'The container registry server password. Required for private registries',
          args: [
            Arg(
            name: 'docker-registry-server-passwor'
          )
          ]
        ),
        Option(
          name: ['--docker-registry-server-user', '-d'],
          description: 'The container registry server username',
          args: [
            Arg(
            name: 'docker-registry-server-use'
          )
          ]
        ),
        Option(
          name: ['--functions-version', '-v'],
          description: 'The functions version for logic app',
          args: [
            Arg(
            name: 'functions-version',
            suggestions: [

              FigSuggestion(name: '2'),
              FigSuggestion(name: '3'),
              FigSuggestion(name: '4')
            ]
          )
          ]
        ),
        Option(
          name: '--https-only',
          description: 'Redirect all traffic made to an app using HTTP to HTTPS'
        ),
        Option(
          name: ['--plan', '-p'],
          description: 'Name or resource id of the logicapp app service plan. Use \'appservice plan create\' to get one. If using an App Service plan from a different resource group, the full resource id must be used and not the plan name',
          args: [
            Arg(
            name: 'pla'
          )
          ]
        ),
        Option(
          name: '--runtime-version',
          description: 'The runtime version for logic app',
          args: [
            Arg(
            name: 'runtime-version',
            suggestions: [

              FigSuggestion(name: '~14'),
              FigSuggestion(name: '~16'),
              FigSuggestion(name: '~18')
            ]
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List logic apps',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Scale a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--max-instances',
          description: 'The maximum number of instances this logic app can scale out to under load',
          args: [
            Arg(
            name: 'max-instance'
          )
          ]
        ),
        Option(
          name: '--min-instances',
          description: 'The number of instances that are always ready and warm for this logic app',
          args: [
            Arg(
            name: 'min-instance'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a logic app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the logic app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--plan',
          description: 'The name or resource id of the plan to update the logicapp with',
          args: [
            Arg(
            name: 'pla'
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: ['--slot', '-s'],
          description: 'The name of the slot. Default to the productions slot if not specified',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deployment',
      description: 'Manage logic app deployments',
      subcommands: [

        Subcommand(
          name: 'source',
          description: 'Manage logicapp app deployment via source control',
          subcommands: [

            Subcommand(
              name: 'config-zip',
              description: 'Perform deployment using the kudu zip push deployment for a logic app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the logic app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--src',
                  description: 'A zip file path for deployment',
                  args: [
                    Arg(
                    name: 'sr'
                  )
                  ]
                ),
                Option(
                  name: '--build-remote',
                  description: 'Enable remote build during deployment'
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Configurable timeout in seconds for checking the status of deployment',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    )
  ]
);
