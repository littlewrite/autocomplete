// Auto-generated from TypeScript source: functionapp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `functionapp` CLI
final FigSpec functionappSpec = FigSpec(
  name: 'functionapp',
  description: 'Manage function apps. To install the Azure Functions Core tools see https://github.com/Azure/azure-functions-core-tools',
  subcommands: [

    Subcommand(
      name: 'app',
      description: 'Commands to manage Azure Functions app',
      subcommands: [

        Subcommand(
          name: 'up',
          description: 'Deploy to Azure Functions via GitHub actions',
          options: [

            Option(
              name: '--app-name',
              description: 'FunctionApp name in the subscription',
              args: [
                Arg(
                name: 'app-nam'
              )
              ]
            ),
            Option(
              name: '--branch-name',
              description: 'New branch name to be created to check in files and raise a PR',
              args: [
                Arg(
                name: 'branch-nam'
              )
              ]
            ),
            Option(
              name: '--do-not-wait',
              description: 'Do not wait for workflow completion'
            ),
            Option(
              name: ['--repository', '-r'],
              description: 'GitHub repository URL e.g. https://github.com/azure/azure-cli',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Configure a function app',
      subcommands: [

        Subcommand(
          name: 'set',
          description: 'Set an existing function app\'s configuration',
          options: [

            Option(
              name: '--always-on',
              description: 'Ensure web app gets loaded all the time, rather unloaded after been idle. Recommended when you have continuous web jobs running',
              args: [
                Arg(
                name: 'always-on',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-heal-enabled',
              description: 'Enable or disable auto heal',
              args: [
                Arg(
                name: 'auto-heal-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ftps-state',
              description: 'Set the Ftps state value for an app. Default value is \'AllAllowed\'',
              args: [
                Arg(
                name: 'ftps-state',
                suggestions: [

                  FigSuggestion(name: 'AllAllowed'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'FtpsOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--generic-configurations',
              description: 'Provide site configuration list in a format of either key=value pair or @<json_file>. PowerShell and Windows Command Prompt users should use a JSON file to provide these configurations to avoid compatibility issues with escape characters',
              args: [
                Arg(
                name: 'generic-configuration'
              )
              ]
            ),
            Option(
              name: '--http20-enabled',
              description: 'Configures a web site to allow clients to connect over http2.0',
              args: [
                Arg(
                name: 'http20-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--java-container',
              description: 'The java container, e.g., Tomcat, Jetty',
              args: [
                Arg(
                name: 'java-containe'
              )
              ]
            ),
            Option(
              name: '--java-container-version',
              description: 'The version of the java container, e.g., \'8.0.23\' for Tomcat',
              args: [
                Arg(
                name: 'java-container-versio'
              )
              ]
            ),
            Option(
              name: '--java-version',
              description: 'The version used to run your web app if using Java, e.g., \'1.7\' for Java 7, \'1.8\' for Java 8',
              args: [
                Arg(
                name: 'java-versio'
              )
              ]
            ),
            Option(
              name: '--linux-fx-version',
              description: 'The runtime stack used for your linux-based webapp, e.g., "RUBY|2.5.5", "NODE|12LTS", "PHP|7.2", "DOTNETCORE|2.1". See https://aka.ms/linux-stacks for more info',
              args: [
                Arg(
                name: 'linux-fx-versio'
              )
              ]
            ),
            Option(
              name: '--min-tls-version',
              description: 'The minimum version of TLS required for SSL requests, e.g., \'1.0\', \'1.1\', \'1.2\'',
              args: [
                Arg(
                name: 'min-tls-versio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--net-framework-version',
              description: 'The version used to run your web app if using .NET Framework, e.g., \'v4.0\' for .NET 4.6 and \'v3.0\' for .NET 3.5',
              args: [
                Arg(
                name: 'net-framework-versio'
              )
              ]
            ),
            Option(
              name: '--number-of-workers',
              description: 'The number of workers to be allocated',
              args: [
                Arg(
                name: 'number-of-worker'
              )
              ]
            ),
            Option(
              name: '--php-version',
              description: 'The version used to run your web app if using PHP, e.g., 5.5, 5.6, 7.0',
              args: [
                Arg(
                name: 'php-versio'
              )
              ]
            ),
            Option(
              name: '--powershell-version',
              description: 'The version used to run your function app if using PowerShell, e.g., 7.2',
              args: [
                Arg(
                name: 'powershell-versio'
              )
              ]
            ),
            Option(
              name: '--prewarmed-instance-count',
              description: 'Number of pre-warmed instances a function app has',
              args: [
                Arg(
                name: 'prewarmed-instance-coun'
              )
              ]
            ),
            Option(
              name: '--python-version',
              description: 'The version used to run your web app if using Python, e.g., 2.7, 3.4',
              args: [
                Arg(
                name: 'python-versio'
              )
              ]
            ),
            Option(
              name: '--remote-debugging-enabled',
              description: 'Enable or disable remote debugging',
              args: [
                Arg(
                name: 'remote-debugging-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: '--startup-file',
              description: 'The startup file for linux hosted web apps, e.g. \'process.json\' for Node.js web',
              args: [
                Arg(
                name: 'startup-fil'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--use-32bit-worker-process',
              description: 'Use 32 bits worker process or not',
              args: [
                Arg(
                name: 'use-32bit-worker-process',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--vnet-route-all-enabled',
              description: 'Configure regional VNet integration to route all traffic to the VNet',
              args: [
                Arg(
                name: 'vnet-route-all-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--web-sockets-enabled',
              description: 'Enable or disable web sockets',
              args: [
                Arg(
                name: 'web-sockets-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of an existing function app\'s configuration',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'access-restriction',
          description: 'Methods that show, set, add, and remove access restrictions on a functionapp',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Adds an Access Restriction to the function app',
              options: [

                Option(
                  name: ['--priority', '-p'],
                  description: 'Priority of the access restriction rule',
                  args: [
                    Arg(
                    name: 'priorit'
                  )
                  ]
                ),
                Option(
                  name: '--action',
                  description: 'Allow or deny access',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the access restriction rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--http-headers',
                  description: 'Space-separated http headers in a format of <name>=<value>',
                  args: [
                    Arg(
                    name: 'http-header'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create access restriction rule with checking if the subnet has Microsoft.Web service endpoint enabled'
                ),
                Option(
                  name: '--ip-address',
                  description: 'IP address or CIDR range (optional comma separated list of up to 8 ranges)',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: ['--rule-name', '-r'],
                  description: 'Name of the access restriction rule to add',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--scm-site',
                  description: 'True if access restrictions is added for scm site'
                ),
                Option(
                  name: '--service-tag',
                  description: 'Service Tag (optional comma separated list of up to 8 tags)',
                  args: [
                    Arg(
                    name: 'service-ta'
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
                  name: '--subnet',
                  description: 'Subnet name (requires vNet name) or subnet resource id',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'VNet name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-resource-group',
                  description: 'Resource group of virtual network (default is web app resource group)',
                  args: [
                    Arg(
                    name: 'vnet-resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes an Access Restriction from the functionapp',
              options: [

                Option(
                  name: '--action',
                  description: 'Allow or deny access',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'Allow'),
                      FigSuggestion(name: 'Deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ip-address',
                  description: 'IP address or CIDR range (optional comma separated list of up to 8 ranges)',
                  args: [
                    Arg(
                    name: 'ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: ['--rule-name', '-r'],
                  description: 'Name of the access restriction to remove',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--scm-site',
                  description: 'True if access restriction should be removed from scm site'
                ),
                Option(
                  name: '--service-tag',
                  description: 'Service Tag (optional comma separated list of up to 8 tags)',
                  args: [
                    Arg(
                    name: 'service-ta'
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
                  name: '--subnet',
                  description: 'Subnet name (requires vNet name) or subnet resource id',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'VNet name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Sets if SCM site is using the same restrictions as the main site',
              options: [

                Option(
                  name: '--use-same-restrictions-for-scm-site',
                  description: 'Use same access restrictions for scm site',
                  args: [
                    Arg(
                    name: 'use-same-restrictions-for-scm-site',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show Access Restriction settings for functionapp',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'appsettings',
          description: 'Configure function app settings',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a function app\'s settings',
              options: [

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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Show settings for a function app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
              description: 'Update a function app\'s settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  description: 'Space-separated appsettings in KEY=VALUE format. Use @{file} to load from a file',
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
                  description: 'Space-separated appsettings in KEY=VALUE format. Use @{file} to load from a file. Given setting are added to the configuration and marked as Deployment slot setting by default',
                  args: [
                    Arg(
                    name: 'slot-setting'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'container',
          description: 'Manage an existing function app\'s container settings',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete an existing function app\'s container settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Set an existing function app\'s container settings',
              options: [

                Option(
                  name: '--docker-custom-image-name',
                  description: 'Option \'--docker-custom-image-name\' has been deprecated and will be removed in a future release. Use \'--image\' instead. The container custom image name and optionally the tag name (e.g., /:)',
                  args: [
                    Arg(
                    name: 'docker-custom-image-nam'
                  )
                  ]
                ),
                Option(
                  name: '--docker-registry-server-password',
                  description: 'Option \'--docker-registry-server-password\' has been deprecated and will be removed in a future release. Use \'--registry-password\' instead. The container registry server password',
                  args: [
                    Arg(
                    name: 'docker-registry-server-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--docker-registry-server-url',
                  description: 'Option \'--docker-registry-server-url\' has been deprecated and will be removed in a future release. Use \'--registry-server\' instead. The container registry server url',
                  args: [
                    Arg(
                    name: 'docker-registry-server-ur'
                  )
                  ]
                ),
                Option(
                  name: '--docker-registry-server-user',
                  description: 'Option \'--docker-registry-server-user\' has been deprecated and will be removed in a future release. Use \'--registry-username\' instead. The container registry server username',
                  args: [
                    Arg(
                    name: 'docker-registry-server-use'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--image', '-c', '-i'],
                  description: 'The container custom image name and optionally the tag name (e.g., /:)',
                  args: [
                    Arg(
                    name: 'imag'
                  )
                  ]
                ),
                Option(
                  name: '--max-replicas',
                  description: 'The maximum number of replicas when create funtion app on container app',
                  args: [
                    Arg(
                    name: 'max-replica'
                  )
                  ]
                ),
                Option(
                  name: '--min-replicas',
                  description: 'The minimum number of replicas when create funtion app on container app',
                  args: [
                    Arg(
                    name: 'min-replica'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry-password', '-p'],
                  description: 'The container registry server password',
                  args: [
                    Arg(
                    name: 'registry-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--registry-server', '-r'],
                  description: 'The container registry server url',
                  args: [
                    Arg(
                    name: 'registry-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--registry-username', '-u'],
                  description: 'The container registry server username',
                  args: [
                    Arg(
                    name: 'registry-usernam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of a function app\'s container settings',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'hostname',
          description: 'Configure hostnames for a function app',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Bind a hostname to a function app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'Hostname assigned to the site, such as custom domains',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Unbind a hostname from a function app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'Hostname assigned to the site, such as custom domains',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-external-ip',
              description: 'Get the external-facing IP address for a function app',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all hostname bindings for a function app',
              options: [

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
                  name: '--webapp-name',
                  description: 'Name of the web app. If left unspecified, a name will be randomly generated. You can configure the default using az configure --defaults web=<name>',
                  args: [
                    Arg(
                    name: 'webapp-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'ssl',
          description: 'Configure SSL certificates',
          subcommands: [

            Subcommand(
              name: 'bind',
              description: 'Bind an SSL certificate to a function app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-type',
                  description: 'The ssl cert type',
                  args: [
                    Arg(
                    name: 'ssl-type',
                    suggestions: [

                      FigSuggestion(name: 'IP'),
                      FigSuggestion(name: 'SNI')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--hostname',
                  description: 'The custom domain name. If empty, hostnames will be selected automatically',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a Managed Certificate for a hostname in a function app',
              options: [

                Option(
                  name: '--hostname',
                  description: 'The custom domain name',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the web app',
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
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
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
              name: 'delete',
              description: 'Delete an SSL certificate from a function app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
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
              name: 'import',
              description: 'Import an SSL certificate to a function app from Key Vault',
              options: [

                Option(
                  name: '--key-vault',
                  description: 'The name or resource ID of the Key Vault',
                  args: [
                    Arg(
                    name: 'key-vaul'
                  )
                  ]
                ),
                Option(
                  name: '--key-vault-certificate-name',
                  description: 'The name of the certificate in Key Vault',
                  args: [
                    Arg(
                    name: 'key-vault-certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List SSL certificates for a function app',
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
              name: 'show',
              description: 'Show the details of an SSL certificate for a function app',
              options: [

                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
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
              name: 'unbind',
              description: 'Unbind an SSL certificate from a function app',
              options: [

                Option(
                  name: '--certificate-thumbprint',
                  description: 'The ssl cert thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: '--hostname',
                  description: 'The custom domain name. If empty, hostnames will be selected automatically',
                  args: [
                    Arg(
                    name: 'hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'upload',
              description: 'Upload an SSL certificate to a function app',
              options: [

                Option(
                  name: '--certificate-file',
                  description: 'The filepath for the .pfx file',
                  args: [
                    Arg(
                    name: 'certificate-fil'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-password',
                  description: 'The ssl cert password',
                  args: [
                    Arg(
                    name: 'certificate-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-name',
                  description: 'The name of the certificate',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
      name: 'connection',
      description: 'Commands to manage functionapp connections',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a functionapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the functionapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'List connections of a functionapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
              args: [
                Arg(
                name: 'source-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-configuration',
          description: 'List source configurations of a functionapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the functionapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-support-types',
          description: 'List client types and auth types supported by functionapp connections',
          options: [

            Option(
              name: ['--target-type', '-t'],
              description: 'The target resource type',
              args: [
                Arg(
                name: 'target-type',
                suggestions: [

                  FigSuggestion(name: 'appconfig'),
                  FigSuggestion(name: 'confluent-cloud'),
                  FigSuggestion(name: 'cosmos-cassandra'),
                  FigSuggestion(name: 'cosmos-gremlin'),
                  FigSuggestion(name: 'cosmos-mongo'),
                  FigSuggestion(name: 'cosmos-sql'),
                  FigSuggestion(name: 'cosmos-table'),
                  FigSuggestion(name: 'eventhub'),
                  FigSuggestion(name: 'keyvault'),
                  FigSuggestion(name: 'mysql'),
                  FigSuggestion(name: 'mysql-flexible'),
                  FigSuggestion(name: 'postgres'),
                  FigSuggestion(name: 'postgres-flexible'),
                  FigSuggestion(name: 'redis'),
                  FigSuggestion(name: 'redis-enterprise'),
                  FigSuggestion(name: 'servicebus'),
                  FigSuggestion(name: 'signalr'),
                  FigSuggestion(name: 'sql'),
                  FigSuggestion(name: 'storage-blob'),
                  FigSuggestion(name: 'storage-file'),
                  FigSuggestion(name: 'storage-queue'),
                  FigSuggestion(name: 'storage-table'),
                  FigSuggestion(name: 'webpubsub')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a functionapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the functionapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a functionapp connection',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the functionapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the connection is met',
          options: [

            Option(
              name: '--connection',
              description: 'Name of the functionapp connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a connection between a functionapp and a target resource',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Create a functionapp connection to appconfig',
              options: [

                Option(
                  name: '--app-config',
                  description: 'Name of the app configuration. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'app-confi'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--app-config\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the app configuration. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'confluent-cloud',
              description: 'Create a functionapp connection to confluent-cloud',
              options: [

                Option(
                  name: '--bootstrap-server',
                  description: 'Kafka bootstrap server url',
                  args: [
                    Arg(
                    name: 'bootstrap-serve'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-key',
                  description: 'Kafka API-Key (key)',
                  args: [
                    Arg(
                    name: 'kafka-ke'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-secret',
                  description: 'Kafka API-Key (secret)',
                  args: [
                    Arg(
                    name: 'kafka-secre'
                  )
                  ]
                ),
                Option(
                  name: '--schema-key',
                  description: 'Schema registry API-Key (key)',
                  args: [
                    Arg(
                    name: 'schema-ke'
                  )
                  ]
                ),
                Option(
                  name: '--schema-registry',
                  description: 'Schema registry url',
                  args: [
                    Arg(
                    name: 'schema-registr'
                  )
                  ]
                ),
                Option(
                  name: '--schema-secret',
                  description: 'Schema registry API-Key (secret)',
                  args: [
                    Arg(
                    name: 'schema-secre'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-cassandra',
              description: 'Create a functionapp connection to cosmos-cassandra',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--key-space',
                  description: 'Name of the keyspace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'key-spac'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--key-space\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-gremlin',
              description: 'Create a functionapp connection to cosmos-gremlin',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: '--graph',
                  description: 'Name of the graph. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'grap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\', \'--graph\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-mongo',
              description: 'Create a functionapp connection to cosmos-mongo',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-sql',
              description: 'Create a functionapp connection to cosmos-sql',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-table',
              description: 'Create a functionapp connection to cosmos-table',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'Name of the table. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'tabl'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\', \'--table\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the cosmos database account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'eventhub',
              description: 'Create a functionapp connection to eventhub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'kafka-springBoot'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Name of the eventhub namespace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--namespace\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the eventhub. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'keyvault',
              description: 'Create a functionapp connection to keyvault',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new keyvault when creating the functionapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--vault\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the keyvault. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault',
                  description: 'Name of the keyvault. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'vaul'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql',
              description: 'Create a functionapp connection to mysql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the mysql database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the mysql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the mysql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql-flexible',
              description: 'Create a functionapp connection to mysql-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the mysql flexible database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the mysql flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the mysql flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres',
              description: 'Create a functionapp connection to postgres',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of postgres database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new postgres when creating the functionapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of postgres server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the postgres service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres-flexible',
              description: 'Create a functionapp connection to postgres-flexible',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of postgres flexible database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of postgres flexible server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the flexible postgres service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis',
              description: 'Create a functionapp connection to redis',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the redis database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis-enterprise',
              description: 'Create a functionapp connection to redis-enterprise',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the redis enterprise database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the redis enterprise server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the redis server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'servicebus',
              description: 'Create a functionapp connection to servicebus',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Name of the servicebus namespace. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--namespace\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the servicebus. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signalr',
              description: 'Create a functionapp connection to signalr',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--signalr',
                  description: 'Name of the signalr service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'signal'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--signalr\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the signalr. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sql',
              description: 'Create a functionapp connection to sql',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--database',
                  description: 'Name of the sql database. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--server',
                  description: 'Name of the sql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--server\', \'--database\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the sql server. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-blob',
              description: 'Create a functionapp connection to storage-blob',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new storage-blob when creating the functionapp connection'
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-file',
              description: 'Create a functionapp connection to storage-file',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-queue',
              description: 'Create a functionapp connection to storage-queue',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-table',
              description: 'Create a functionapp connection to storage-table',
              options: [

                Option(
                  name: '--account',
                  description: 'Name of the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'accoun'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--account\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the storage account. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'webpubsub',
              description: 'Create a functionapp connection to webpubsub',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--target-id',
                  description: 'The resource id of target service. Required if [\'--target-resource-group\', \'--webpubsub\'] are not specified',
                  args: [
                    Arg(
                    name: 'target-i'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-group', '--tg'],
                  description: 'The resource group which contains the webpubsub. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'target-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                ),
                Option(
                  name: '--webpubsub',
                  description: 'Name of the webpubsub service. Required if \'--target-id\' is not specified',
                  args: [
                    Arg(
                    name: 'webpubsu'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a functionapp connection',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Update a functionapp to appconfig connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'confluent-cloud',
              description: 'Update a functionapp to confluent-cloud connection',
              options: [

                Option(
                  name: '--connection',
                  description: 'Name of the connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--bootstrap-server',
                  description: 'Kafka bootstrap server url',
                  args: [
                    Arg(
                    name: 'bootstrap-serve'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-key',
                  description: 'Kafka API-Key (key)',
                  args: [
                    Arg(
                    name: 'kafka-ke'
                  )
                  ]
                ),
                Option(
                  name: '--kafka-secret',
                  description: 'Kafka API-Key (secret)',
                  args: [
                    Arg(
                    name: 'kafka-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--schema-key',
                  description: 'Schema registry API-Key (key)',
                  args: [
                    Arg(
                    name: 'schema-ke'
                  )
                  ]
                ),
                Option(
                  name: '--schema-registry',
                  description: 'Schema registry url',
                  args: [
                    Arg(
                    name: 'schema-registr'
                  )
                  ]
                ),
                Option(
                  name: '--schema-secret',
                  description: 'Schema registry API-Key (secret)',
                  args: [
                    Arg(
                    name: 'schema-secre'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a functionapp. Required if [\'--resource-group\', \'--name\'] are not specified',
                  args: [
                    Arg(
                    name: 'source-i'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-cassandra',
              description: 'Update a functionapp to cosmos-cassandra connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-gremlin',
              description: 'Update a functionapp to cosmos-gremlin connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-mongo',
              description: 'Update a functionapp to cosmos-mongo connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-sql',
              description: 'Update a functionapp to cosmos-sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos-table',
              description: 'Update a functionapp to cosmos-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'eventhub',
              description: 'Update a functionapp to eventhub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'kafka-springBoot'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'keyvault',
              description: 'Update a functionapp to keyvault connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql',
              description: 'Update a functionapp to mysql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql-flexible',
              description: 'Update a functionapp to mysql-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres',
              description: 'Update a functionapp to postgres connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'postgres-flexible',
              description: 'Update a functionapp to postgres-flexible connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis',
              description: 'Update a functionapp to redis connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis-enterprise',
              description: 'Update a functionapp to redis-enterprise connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'servicebus',
              description: 'Update a functionapp to servicebus connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'signalr',
              description: 'Update a functionapp to signalr connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sql',
              description: 'Update a functionapp to sql connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'django'),
                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'go'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-blob',
              description: 'Update a functionapp to storage-blob connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-file',
              description: 'Update a functionapp to storage-file connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'php'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'ruby'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-queue',
              description: 'Update a functionapp to storage-queue connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python'),
                      FigSuggestion(name: 'springBoot')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'storage-table',
              description: 'Update a functionapp to storage-table connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-endpoint',
                  description: 'Connect target service by service endpoint. Source resource must be in the VNet and target SKU must support service endpoint feature',
                  args: [
                    Arg(
                    name: 'service-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'webpubsub',
              description: 'Update a functionapp to webpubsub connection',
              options: [

                Option(
                  name: '--client-type',
                  description: 'The client type used on the functionapp',
                  args: [
                    Arg(
                    name: 'client-type',
                    suggestions: [

                      FigSuggestion(name: 'dotnet'),
                      FigSuggestion(name: 'java'),
                      FigSuggestion(name: 'nodejs'),
                      FigSuggestion(name: 'none'),
                      FigSuggestion(name: 'python')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--connection',
                  description: 'Name of the functionapp connection',
                  args: [
                    Arg(
                    name: 'connectio'
                  )
                  ]
                ),
                Option(
                  name: '--customized-keys',
                  description: 'The customized keys used to change default configuration names. Key is the original name, value is the customized name',
                  args: [
                    Arg(
                    name: 'customized-key'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--name\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--private-endpoint',
                  description: 'Connect target service by private endpoint. The private endpoint in source virtual network must be created ahead',
                  args: [
                    Arg(
                    name: 'private-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the function app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--secret',
                  description: 'The secret auth info',
                  args: [
                    Arg(
                    name: 'secre'
                  )
                  ]
                ),
                Option(
                  name: '--service-principal',
                  description: 'The service principal auth info',
                  args: [
                    Arg(
                    name: 'service-principa'
                  )
                  ]
                ),
                Option(
                  name: '--system-identity',
                  description: 'The system assigned identity auth info',
                  args: [
                    Arg(
                    name: 'system-identit'
                  )
                  ]
                ),
                Option(
                  name: '--user-identity',
                  description: 'The user assigned identity auth info',
                  args: [
                    Arg(
                    name: 'user-identit'
                  )
                  ]
                ),
                Option(
                  name: '--vault-id',
                  description: 'The id of key vault to store secret value',
                  args: [
                    Arg(
                    name: 'vault-i'
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
      name: 'cors',
      description: 'Manage Cross-Origin Resource Sharing (CORS)',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add allowed origins',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*" and remove all other origins from the list',
              args: [
                Arg(
                name: 'allowed-origin'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'credentials',
          description: 'Enable or disable access-control-allow-credentials',
          options: [

            Option(
              name: '--enable',
              description: 'Enable/disable access-control-allow-credentials',
              args: [
                Arg(
                name: 'enable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove allowed origins',
          options: [

            Option(
              name: ['--allowed-origins', '-a'],
              description: 'Space separated origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). To allow all, use "*" and remove all other origins from the list',
              args: [
                Arg(
                name: 'allowed-origin'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show allowed origins',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a function app',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the new function app',
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
          description: 'Name of the existing App Insights project to be added to the function app. Must be in the same resource group',
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
          name: '--assign-identity',
          description: 'Accept system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: ['--consumption-plan-location', '-c'],
          description: 'Geographic location where function app will be hosted. Use az functionapp list-consumption-locations to view available locations',
          args: [
            Arg(
            name: 'consumption-plan-locatio'
          )
          ]
        ),
        Option(
          name: '--deployment-container-image-name',
          description: 'Option \'--deployment-container-image-name\' has been deprecated and will be removed in a future release. Use \'--image\' instead. Container image, e.g. publisher/image-name:tag',
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
          description: 'Disable creating application insights resource during functionapp create. No logs will be available',
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
          name: '--docker-registry-server-password',
          description: 'Option \'--docker-registry-server-password\' has been deprecated and will be removed in a future release. Use \'--registry-password\' instead. The container registry server password. Required for private registries',
          args: [
            Arg(
            name: 'docker-registry-server-passwor'
          )
          ]
        ),
        Option(
          name: '--docker-registry-server-user',
          description: 'Option \'--docker-registry-server-user\' has been deprecated and will be removed in a future release. Use \'--registry-username\' instead. The container registry server username',
          args: [
            Arg(
            name: 'docker-registry-server-use'
          )
          ]
        ),
        Option(
          name: '--environment',
          description: 'Name of the container app environment',
          args: [
            Arg(
            name: 'environmen'
          )
          ]
        ),
        Option(
          name: '--functions-version',
          description: 'The functions app version. NOTE: This will be required starting the next release cycle',
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
          name: ['--image', '-i'],
          description: 'Container image, e.g. publisher/image-name:tag',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--max-replicas',
          description: 'The maximum number of replicas when create funtion app on container app',
          args: [
            Arg(
            name: 'max-replica'
          )
          ]
        ),
        Option(
          name: '--min-replicas',
          description: 'The minimum number of replicas when create funtion app on container app',
          args: [
            Arg(
            name: 'min-replica'
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: 'Set the OS type for the app to be created',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'Linux'),
              FigSuggestion(name: 'Windows')
            ]
          )
          ]
        ),
        Option(
          name: ['--plan', '-p'],
          description: 'Name or resource id of the functionapp app service plan. Use \'appservice plan create\' to get one. If using an App Service plan from a different resource group, the full resource id must be used and not the plan name',
          args: [
            Arg(
            name: 'pla'
          )
          ]
        ),
        Option(
          name: ['--registry-password', '-w'],
          description: 'The container registry server password. Required for private registries',
          args: [
            Arg(
            name: 'registry-passwor'
          )
          ]
        ),
        Option(
          name: '--registry-server',
          description: 'The container registry server hostname, e.g. myregistry.azurecr.io',
          args: [
            Arg(
            name: 'registry-serve'
          )
          ]
        ),
        Option(
          name: ['--registry-username', '-d'],
          description: 'The container registry server username',
          args: [
            Arg(
            name: 'registry-usernam'
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'Role name or id the system assigned identity will have',
          args: [
            Arg(
            name: 'rol'
          )
          ]
        ),
        Option(
          name: '--runtime',
          description: 'The functions runtime stack. Use "az functionapp list-runtimes" to check supported runtimes and versions',
          args: [
            Arg(
            name: 'runtim'
          )
          ]
        ),
        Option(
          name: '--runtime-version',
          description: 'The version of the functions runtime stack. The functions runtime stack. Use "az functionapp list-runtimes" to check supported runtimes and versions',
          args: [
            Arg(
            name: 'runtime-versio'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope that the system assigned identity can access',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'Name or resource ID of the pre-existing subnet to have the webapp join. The --vnet is argument also needed if specifying subnet by name',
          args: [
            Arg(
            name: 'subne'
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
        ),
        Option(
          name: '--vnet',
          description: 'Name or resource ID of the regional virtual network. If there are multiple vnets of the same name across different resource groups, use vnet resource id to specify which vnet to use. If vnet name is used, by default, the vnet in the same resource group as the webapp will be used. Must be used with --subnet argument',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a function app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--keep-empty-plan',
          description: 'Keep empty app service plan',
          args: [
            Arg(
            name: 'keep-empty-pla'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the functionapp',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploys a provided artifact to Azure functionapp',
      options: [

        Option(
          name: '--async',
          description: 'Asynchronous deployment',
          args: [
            Arg(
            name: 'async',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--clean',
          description: 'If true, cleans the target directory prior to deploying the file(s). Default value is determined based on artifact type',
          args: [
            Arg(
            name: 'clean',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--ignore-stack',
          description: 'If true, any stack-specific defaults are ignored',
          args: [
            Arg(
            name: 'ignore-stack',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app to deploy to',
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
          name: '--restart',
          description: 'If true, the web app will be restarted following the deployment, default value is true. Set this to false if you are deploying multiple artifacts and do not want to restart the site on the earlier deployments',
          args: [
            Arg(
            name: 'restart',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          name: '--src-path',
          description: 'Path of the artifact to be deployed. Ex: "myapp.zip" or "/myworkspace/apps/myapp.war"',
          args: [
            Arg(
            name: 'src-pat'
          )
          ]
        ),
        Option(
          name: '--src-url',
          description: 'URL of the artifact. The webapp will pull the artifact from this URL. Ex: "http://mysite.com/files/myapp.war?key=123"',
          args: [
            Arg(
            name: 'src-ur'
          )
          ]
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--target-path',
          description: 'Absolute path that the artifact should be deployed to. Defaults to "home/site/wwwroot/". Ex: "/home/site/deployments/tools/", "/home/site/scripts/startup-script.sh"',
          args: [
            Arg(
            name: 'target-pat'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Timeout for the deployment operation in milliseconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Used to override the type of artifact being deployed',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(name: 'ear'),
              FigSuggestion(name: 'jar'),
              FigSuggestion(name: 'lib'),
              FigSuggestion(name: 'startup'),
              FigSuggestion(name: 'static'),
              FigSuggestion(name: 'war'),
              FigSuggestion(name: 'zip')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List function apps',
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
      name: 'list-consumption-locations',
      description: 'List available locations for running function apps'
    ),
    Subcommand(
      name: 'list-runtimes',
      description: 'List available built-in stacks which can be used for function apps',
      options: [

        Option(
          name: ['--os-type', '--os'],
          description: 'Limit the output to just windows or linux runtimes',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'linux'),
              FigSuggestion(name: 'windows')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a function app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a function app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Start a function app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop a function app',
      options: [

        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app',
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a function app',
      options: [

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
          name: '--force',
          description: 'Required if attempting to migrate functionapp from Premium to Consumption --plan'
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the function app',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--plan',
          description: 'The name or resource id of the plan to update the functionapp with',
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
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
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
        ),
        Option(
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deployment',
      description: 'Manage function app deployments',
      subcommands: [

        Subcommand(
          name: 'list-publishing-credentials',
          description: 'Get the details for available function app publishing credentials',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-publishing-profiles',
          description: 'Get the details for available function app deployment profiles',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--xml',
              description: 'Retrieves the publishing profile details in XML format'
            )
          ]
        ),
        Subcommand(
          name: 'container',
          description: 'Manage container-based continuous deployment',
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Configure continuous deployment via containers',
              options: [

                Option(
                  name: ['--enable-cd', '-e'],
                  description: 'Enable/disable continuous deployment',
                  args: [
                    Arg(
                    name: 'enable-cd',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-cd-url',
              description: 'Get the URL which can be used to configure webhooks for continuous deployment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'github-actions',
          description: 'Configure GitHub Actions for a functionapp',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a GitHub Actions workflow file to the specified repository. The workflow will build and deploy your app to the specified functionapp',
              options: [

                Option(
                  name: '--repo',
                  description: 'The GitHub repository to which the workflow file will be added. In the format: https://github.com// or /',
                  args: [
                    Arg(
                    name: 'rep'
                  )
                  ]
                ),
                Option(
                  name: ['--branch', '-b'],
                  description: 'The branch to which the workflow file will be added',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--build-path',
                  description: 'Path to the build requirements. Ex: package path, POM XML directory',
                  args: [
                    Arg(
                    name: 'build-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--force', '-f'],
                  description: 'When true, the command will overwrite any workflow file with a conflicting name'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--login-with-github',
                  description: 'Interactively log in with Github to retrieve the Personal Access Token'
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: ['--runtime', '-r'],
                  description: 'The functions runtime stack. Use "az functionapp list-runtimes" to check supported runtimes and versions',
                  args: [
                    Arg(
                    name: 'runtim'
                  )
                  ]
                ),
                Option(
                  name: ['--runtime-version', '-v'],
                  description: 'The version of the functions runtime stack. The functions runtime stack. Use "az functionapp list-runtimes" to check supported runtimes and versions',
                  args: [
                    Arg(
                    name: 'runtime-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove and disconnect the GitHub Actions workflow file from the specified repository',
              options: [

                Option(
                  name: '--repo',
                  description: 'The GitHub repository to which the workflow file will be added. In the format: https://github.com// or /',
                  args: [
                    Arg(
                    name: 'rep'
                  )
                  ]
                ),
                Option(
                  name: ['--branch', '-b'],
                  description: 'The branch to which the workflow file will be added',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--login-with-github',
                  description: 'Interactively log in with Github to retrieve the Personal Access Token'
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  description: 'The name of the slot. Default to the production slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'A Personal Access Token with write access to the specified repository. For more information: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line',
                  args: [
                    Arg(
                    name: 'toke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'slot',
          description: 'Manage function app deployment slots',
          subcommands: [

            Subcommand(
              name: 'auto-swap',
              description: 'Configure deployment slot auto swap',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--auto-swap-slot',
                  description: 'Target slot to auto swap',
                  args: [
                    Arg(
                    name: 'auto-swap-slo'
                  )
                  ]
                ),
                Option(
                  name: '--disable',
                  description: 'Disable auto swap',
                  args: [
                    Arg(
                    name: 'disabl'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a deployment slot',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--configuration-source',
                  description: 'Source slot to clone configurations from. Use function app\'s name to refer to the production slot',
                  args: [
                    Arg(
                    name: 'configuration-sourc'
                  )
                  ]
                ),
                Option(
                  name: '--deployment-container-image-name',
                  description: 'Option \'--deployment-container-image-name\' has been deprecated and will be removed in a future release. Use \'--image\' instead. Container image, e.g. publisher/image-name:tag',
                  args: [
                    Arg(
                    name: 'deployment-container-image-nam'
                  )
                  ]
                ),
                Option(
                  name: '--docker-registry-server-password',
                  description: 'Option \'--docker-registry-server-password\' has been deprecated and will be removed in a future release. Use \'--registry-password\' instead. The container registry server password',
                  args: [
                    Arg(
                    name: 'docker-registry-server-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--docker-registry-server-user',
                  description: 'Option \'--docker-registry-server-user\' has been deprecated and will be removed in a future release. Use \'--registry-username\' instead. The container registry server username',
                  args: [
                    Arg(
                    name: 'docker-registry-server-use'
                  )
                  ]
                ),
                Option(
                  name: ['--image', '-i'],
                  description: 'Container image, e.g. publisher/image-name:tag',
                  args: [
                    Arg(
                    name: 'imag'
                  )
                  ]
                ),
                Option(
                  name: ['--registry-password', '-d'],
                  description: 'The container registry server password',
                  args: [
                    Arg(
                    name: 'registry-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--registry-username', '-u'],
                  description: 'The container registry server username',
                  args: [
                    Arg(
                    name: 'registry-usernam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a deployment slot',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all deployment slots',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'swap',
              description: 'Swap deployment slots for a function app',
              options: [

                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: '--action',
                  description: 'Swap types. use \'preview\' to apply target slot\'s settings on the source slot first; use \'swap\' to complete it; use \'reset\' to reset the swap',
                  args: [
                    Arg(
                    name: 'action',
                    suggestions: [

                      FigSuggestion(name: 'preview'),
                      FigSuggestion(name: 'reset'),
                      FigSuggestion(name: 'swap')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--preserve-vnet',
                  description: 'Preserve Virtual Network to the slot during swap, default to \'true\'',
                  args: [
                    Arg(
                    name: 'preserve-vnet',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--target-slot',
                  description: 'Target slot to swap, default to \'production\'',
                  args: [
                    Arg(
                    name: 'target-slo'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'source',
          description: 'Manage function app deployment via source control',
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Manage deployment from git or Mercurial repositories',
              options: [

                Option(
                  name: ['--repo-url', '-u'],
                  description: 'Repository url to pull the latest source from, e.g. https://github.com/foo/foo-web',
                  args: [
                    Arg(
                    name: 'repo-ur'
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'The branch name of the repository',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: '--git-token',
                  description: 'Git access token required for auto sync',
                  args: [
                    Arg(
                    name: 'git-toke'
                  )
                  ]
                ),
                Option(
                  name: '--github-action',
                  description: 'If using GitHub action, default to False',
                  args: [
                    Arg(
                    name: 'github-actio'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--manual-integration',
                  description: 'Disable automatic sync between source control and web',
                  args: [
                    Arg(
                    name: 'manual-integratio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--repository-type',
                  description: 'Repository type',
                  args: [
                    Arg(
                    name: 'repository-type',
                    suggestions: [

                      FigSuggestion(name: 'externalgit'),
                      FigSuggestion(name: 'git'),
                      FigSuggestion(name: 'github'),
                      FigSuggestion(name: 'localgit'),
                      FigSuggestion(name: 'mercurial')
                    ]
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'config-local-git',
              description: 'Get a URL for a git repository endpoint to clone and push to for function app deployment',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'config-zip',
              description: 'Perform deployment using the kudu zip push deployment for a function app',
              options: [

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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a source control deployment configuration',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a source control deployment configuration',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'sync',
              description: 'Synchronize from the repository. Only needed under manual integration mode',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-token',
              description: 'Update source control token cached in Azure app service',
              options: [

                Option(
                  name: '--git-token',
                  description: 'Git access token required for auto sync',
                  args: [
                    Arg(
                    name: 'git-toke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'user',
          description: 'Manage user credentials for deployment',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update deployment credentials',
              options: [

                Option(
                  name: '--user-name',
                  description: 'User name',
                  args: [
                    Arg(
                    name: 'user-nam'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Password, will prompt if not specified',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets publishing user'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'devops-pipeline',
      description: 'Azure Function specific integration with Azure DevOps. Please visit https://aka.ms/functions-azure-devops for more information',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an Azure DevOps pipeline for a function app',
          options: [

            Option(
              name: '--allow-force-push',
              description: 'If Azure DevOps repository is not clean, should it overwrite remote content?',
              args: [
                Arg(
                name: 'allow-force-push',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--functionapp-name',
              description: 'Name of the Azure function app that you want to use',
              args: [
                Arg(
                name: 'functionapp-nam'
              )
              ]
            ),
            Option(
              name: '--github-pat',
              description: 'Github personal access token for creating pipeline from Github repository',
              args: [
                Arg(
                name: 'github-pa'
              )
              ]
            ),
            Option(
              name: '--github-repository',
              description: 'Fullname of your Github repository (e.g. Azure/azure-cli)',
              args: [
                Arg(
                name: 'github-repositor'
              )
              ]
            ),
            Option(
              name: '--organization-name',
              description: 'Name of the Azure DevOps organization that you want to use',
              args: [
                Arg(
                name: 'organization-nam'
              )
              ]
            ),
            Option(
              name: '--overwrite-yaml',
              description: 'If you have an existing yaml, should it be overwritten?',
              args: [
                Arg(
                name: 'overwrite-yaml',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--project-name',
              description: 'Name of the Azure DevOps project that you want to use',
              args: [
                Arg(
                name: 'project-nam'
              )
              ]
            ),
            Option(
              name: '--repository-name',
              description: 'Name of the Azure DevOps repository that you want to use',
              args: [
                Arg(
                name: 'repository-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'function',
      description: 'Manage function app functions',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a function',
          options: [

            Option(
              name: '--function-name',
              description: 'Name of the Function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
          name: 'list',
          description: 'List functions in a function app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
          name: 'show',
          description: 'Get the details of a function',
          options: [

            Option(
              name: '--function-name',
              description: 'Name of the Function',
              args: [
                Arg(
                name: 'function-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
          name: 'keys',
          description: 'Manage function keys',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a function key',
              options: [

                Option(
                  name: '--key-name',
                  description: 'Name of the key to set',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--function-name',
                  description: 'Name of the Function',
                  args: [
                    Arg(
                    name: 'function-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Defaults to the productions slot if not specified',
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
              description: 'List all function keys',
              options: [

                Option(
                  name: '--function-name',
                  description: 'Name of the Function',
                  args: [
                    Arg(
                    name: 'function-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  description: 'The name of the slot. Defaults to the productions slot if not specified',
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
              description: 'Create or update a function key',
              options: [

                Option(
                  name: '--function-name',
                  description: 'Name of the Function',
                  args: [
                    Arg(
                    name: 'function-nam'
                  )
                  ]
                ),
                Option(
                  name: '--key-name',
                  description: 'Name of the key to set',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--key-value',
                  description: 'Value of the new key. If not provided, a value will be generated',
                  args: [
                    Arg(
                    name: 'key-valu'
                  )
                  ]
                ),
                Option(
                  name: ['--slot', '-s'],
                  description: 'The name of the slot. Defaults to the productions slot if not specified',
                  args: [
                    Arg(
                    name: 'slo'
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
      name: 'hybrid-connection',
      description: 'Methods that list, add and remove hybrid-connections from functionapp',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add an existing hybrid-connection to a functionapp',
          options: [

            Option(
              name: '--hybrid-connection',
              description: 'Hybrid connection name',
              args: [
                Arg(
                name: 'hybrid-connectio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Hybrid connection namespace',
              args: [
                Arg(
                name: 'namespac'
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
          name: 'list',
          description: 'List the hybrid-connections on a functionapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
          name: 'remove',
          description: 'Remove a hybrid-connection from a functionapp',
          options: [

            Option(
              name: '--hybrid-connection',
              description: 'Hybrid connection name',
              args: [
                Arg(
                name: 'hybrid-connectio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Hybrid connection namespace',
              args: [
                Arg(
                name: 'namespac'
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
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage web app\'s managed identity',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign managed identity to the web app',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--role',
              description: 'Role name or id the managed identity will be assigned',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope the managed identity has access to',
              args: [
                Arg(
                name: 'scop'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Disable web app\'s managed identity',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display web app\'s managed identity',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'keys',
      description: 'Manage function app keys',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a function app key',
          options: [

            Option(
              name: '--key-name',
              description: 'Name of the key to set',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-type',
              description: 'Type of key',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'functionKeys'),
                  FigSuggestion(name: 'masterKey'),
                  FigSuggestion(name: 'systemKeys')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              description: 'The name of the slot. Defaults to the productions slot if not specified',
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
          description: 'List all function app keys',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              description: 'The name of the slot. Defaults to the productions slot if not specified',
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
          description: 'Create or update a function app key',
          options: [

            Option(
              name: '--key-name',
              description: 'Name of the key to set',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-type',
              description: 'Type of key',
              args: [
                Arg(
                name: 'key-type',
                suggestions: [

                  FigSuggestion(name: 'functionKeys'),
                  FigSuggestion(name: 'masterKey'),
                  FigSuggestion(name: 'systemKeys')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--key-value',
              description: 'Value of the new key. If not provided, a value will be generated',
              args: [
                Arg(
                name: 'key-valu'
              )
              ]
            ),
            Option(
              name: ['--slot', '-s'],
              description: 'The name of the slot. Defaults to the productions slot if not specified',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'log',
      description: 'Manage function app logs',
      subcommands: [

        Subcommand(
          name: 'deployment',
          description: 'Manage function app deployment logs',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployment logs of the deployments associated with function app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
              name: 'show',
              description: 'Show deployment logs of the latest deployment, or a specific deployment if deployment-id is specified',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the function app',
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
                  name: '--deployment-id',
                  description: 'Deployment ID. If none specified, returns the deployment logs of the latest deployment',
                  args: [
                    Arg(
                    name: 'deployment-i'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'plan',
      description: 'Manage App Service Plans for an Azure Function',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an App Service Plan for an Azure Function',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the app service plan',
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
              name: '--sku',
              description: 'The SKU of the app service plan. e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), K1 (Kubernetes)',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--is-linux',
              description: 'Host function app on Linux worker',
              args: [
                Arg(
                name: 'is-linux',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--max-burst',
              description: 'The maximum number of elastic workers for the plan',
              args: [
                Arg(
                name: 'max-burs'
              )
              ]
            ),
            Option(
              name: ['--number-of-workers', '--min-instances'],
              description: 'The number of workers for the app service plan',
              args: [
                Arg(
                name: 'number-of-worker'
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
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Enable zone redundancy for high availability. Cannot be changed after plan creation. Minimum instance count is 3'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an App Service Plan',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the app service plan',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List App Service Plans',
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
          name: 'show',
          description: 'Get the App Service Plans for a resource group or a set of resource groups',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the app service plan',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an App Service plan for an Azure Function',
          options: [

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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--max-burst',
              description: 'The maximum number of elastic workers for the plan',
              args: [
                Arg(
                name: 'max-burs'
              )
              ]
            ),
            Option(
              name: ['--number-of-workers', '--min-instances'],
              description: 'The number of workers for the app service plan',
              args: [
                Arg(
                name: 'number-of-worker'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the app service plan',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--sku',
              description: 'The SKU of the app service plan',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vnet-integration',
      description: 'Methods that list, add, and remove virtual networks integrations from a functionapp',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a regional virtual network integration to a functionapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
              name: '--subnet',
              description: 'The name or resource ID of the subnet',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--vnet',
              description: 'The name or resource ID of the Vnet',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: '--skip-delegation-check',
              description: 'Skip check if you do not have permission or the VNet is in another subscription'
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
          description: 'List the virtual network integrations on a functionapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
          name: 'remove',
          description: 'Remove a regional virtual network integration from functionapp',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the function app',
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
        )
      ]
    )
  ]
);
