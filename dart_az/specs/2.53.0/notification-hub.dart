// Auto-generated from TypeScript source: notification-hub.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `notification-hub` CLI
final FigSpec notificationHubSpec = FigSpec(
  name: 'notification-hub',
  description: 'Manage notification hubs',
  subcommands: [

    Subcommand(
      name: 'authorization-rule',
      description: 'Commands to manage notification hubs authorization rule',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an authorization rule for a notification hub',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Authorization Rule Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
              name: '--rights',
              description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'right'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a notificationHub authorization rule',
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
              description: 'Authorization Rule Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
          description: 'List the authorization rules for a notification hub',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-keys',
          description: 'List the primary and secondary connection strings to the notification hub',
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
              description: 'The connection string of the NotificationHub for the specified authorizationRule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
          name: 'regenerate-keys',
          description: 'Regenerates the primary/secondary keys to the notification hub authorization rule',
          options: [

            Option(
              name: '--policy-key',
              description: 'Name of the key that has to be regenerated for the Namespace/Notification Hub Authorization Rule. The value can be Primary Key/Secondary Key',
              args: [
                Arg(
                name: 'policy-key',
                suggestions: [

                  FigSuggestion(name: 'Primary Key'),
                  FigSuggestion(name: 'Secondary Key')
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
              description: 'The connection string of the NotificationHub for the specified authorizationRule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
          name: 'show',
          description: 'Show an authorization rule for a notification hub by name',
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
              description: 'Authorization Rule Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'check-availability',
      description: 'Checks the availability of the given notification hub in a namespace',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Resource name',
          args: [
            Arg(
            name: 'nam'
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
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
      description: 'Create a notification hub in a namespace',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The notification hub name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
          name: ['--location', '-l'],
          description: 'Resource location When not specified, the location of the resource group will be used',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--registration-ttl',
          description: 'The RegistrationTtl of the created NotificationHub',
          args: [
            Arg(
            name: 'registration-tt'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
      description: 'Delete a notification hub associated with a namespace',
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
          description: 'The notification hub name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
      description: 'List the notification hubs associated with a namespace',
      options: [

        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
          name: '--max-items',
          description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
          args: [
            Arg(
            name: 'max-item'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
          args: [
            Arg(
            name: 'next-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show the notification hub information',
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
          description: 'The notification hub name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
      name: 'test-send',
      description: 'Test send a push notification',
      options: [

        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
          )
          ]
        ),
        Option(
          name: '--notification-format',
          description: 'The format of notification message',
          args: [
            Arg(
            name: 'notification-format',
            suggestions: [

              FigSuggestion(name: 'apple'),
              FigSuggestion(name: 'baidu'),
              FigSuggestion(name: 'gcm'),
              FigSuggestion(name: 'template'),
              FigSuggestion(name: 'windows'),
              FigSuggestion(name: 'windowsphone')
            ]
          )
          ]
        ),
        Option(
          name: '--notification-hub-name',
          description: 'The notification hub name',
          args: [
            Arg(
            name: 'notification-hub-nam'
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
          name: '--message',
          description: 'The message body to send. If not None, payload will be ignored',
          args: [
            Arg(
            name: 'messag'
          )
          ]
        ),
        Option(
          name: '--payload',
          description: 'The payload for the message in JSON format',
          args: [
            Arg(
            name: 'payloa'
          )
          ]
        ),
        Option(
          name: '--tag',
          description: 'You can send test notifications to a specific set of registrations using this option. Leave this field empty if you like to send push notifications to 10 random registrations on the selected platform',
          args: [
            Arg(
            name: 'ta'
          )
          ]
        ),
        Option(
          name: '--title',
          description: 'The title of the notification',
          args: [
            Arg(
            name: 'titl'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a notification hub in a namespace',
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
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
          args: [
            Arg(
            name: 'force-string',
            suggestions: [

              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: 'f'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'n'),
              FigSuggestion(name: 'no'),
              FigSuggestion(name: 't'),
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'y'),
              FigSuggestion(name: 'yes')
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
          name: ['--location', '-l'],
          description: 'Resource location',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--notification-hub-name', '--name', '-n'],
          description: 'The notification hub name',
          args: [
            Arg(
            name: 'notification-hub-nam'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace name',
          args: [
            Arg(
            name: 'namespace-nam'
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
          name: '--subscription',
          description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
          args: [
            Arg(
            name: 'subscriptio'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'credential',
      description: 'Commands to manage notification hub credential',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists the PNS credentials associated with a notification hub',
          options: [

            Option(
              name: '--namespace-name',
              description: 'The namespace name',
              args: [
                Arg(
                name: 'namespace-nam'
              )
              ]
            ),
            Option(
              name: '--notification-hub-name',
              description: 'The notification hub name',
              args: [
                Arg(
                name: 'notification-hub-nam'
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
          name: 'adm',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update credential for Amazon(ADM)',
              options: [

                Option(
                  name: '--client-id',
                  description: 'The client identifier',
                  args: [
                    Arg(
                    name: 'client-i'
                  )
                  ]
                ),
                Option(
                  name: '--client-secret',
                  description: 'The credential secret access key',
                  args: [
                    Arg(
                    name: 'client-secre'
                  )
                  ]
                ),
                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'apns',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update credential for Apple(APNS)',
              options: [

                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--apns-certificate',
                  description: 'The APNS certificate',
                  args: [
                    Arg(
                    name: 'apns-certificat'
                  )
                  ]
                ),
                Option(
                  name: '--app-id',
                  description: 'The issuer (iss) registered claim key. The value is a 10-character TeamId, obtained from your developer account. Specify if using Token Authentication Mode',
                  args: [
                    Arg(
                    name: 'app-i'
                  )
                  ]
                ),
                Option(
                  name: '--app-name',
                  description: 'The name of the application or BundleId. Specify if using Token Authentication Mode',
                  args: [
                    Arg(
                    name: 'app-nam'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-key',
                  description: 'The APNS certificate password if it exists',
                  args: [
                    Arg(
                    name: 'certificate-ke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'The APNS endpoint of this credential. If using Certificate Authentication Mode and Sandbox specify \'gateway.sandbox.push.apple.com\'. If using Certificate Authentication Mode and Production specify \'gateway.push.apple.com\'. If using Token Authentication Mode and Sandbox specify \'https://api.development.push.apple.com:443/3/device\'. If using Token Authentication Mode and Production specify \'https://api.push.apple.com:443/3/device\'',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--key-id',
                  description: 'A 10-character key identifier (kid) key, obtained from your developer account. Specify if using Token Authentication Mode',
                  args: [
                    Arg(
                    name: 'key-i'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Provider Authentication Token, obtained through your developer account. Specify if using Token Authentication Mode',
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
          name: 'baidu',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update credential for Baidu(Andrioid China)',
              options: [

                Option(
                  name: '--api-key',
                  description: 'Baidu API key',
                  args: [
                    Arg(
                    name: 'api-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--secret-key',
                  description: 'Baidu secret key',
                  args: [
                    Arg(
                    name: 'secret-ke'
                  )
                  ]
                ),
                Option(
                  name: '--baidu-api-key',
                  description: 'Baidu Api Key',
                  args: [
                    Arg(
                    name: 'baidu-api-ke'
                  )
                  ]
                ),
                Option(
                  name: '--baidu-secret-key',
                  description: 'Baidu Secret Key',
                  args: [
                    Arg(
                    name: 'baidu-secret-ke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'gcm',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update the Google GCM/FCM API key',
              options: [

                Option(
                  name: '--google-api-key',
                  description: 'The Google API key',
                  args: [
                    Arg(
                    name: 'google-api-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'mpns',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update credential for Windows Phone(MPNS)',
              options: [

                Option(
                  name: '--certificate-key',
                  description: 'The certificate key for this credential',
                  args: [
                    Arg(
                    name: 'certificate-ke'
                  )
                  ]
                ),
                Option(
                  name: '--mpns-certificate',
                  description: 'The MPNS certificate',
                  args: [
                    Arg(
                    name: 'mpns-certificat'
                  )
                  ]
                ),
                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'wns',
          description: '',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update credential for Windows(WNS)',
              options: [

                Option(
                  name: ['--notification-hub-name', '--name', '-n'],
                  description: 'The notification hub name',
                  args: [
                    Arg(
                    name: 'notification-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-sid',
                  description: 'The package ID for this credential',
                  args: [
                    Arg(
                    name: 'package-si'
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
                  name: '--secret-key',
                  description: 'The secret key',
                  args: [
                    Arg(
                    name: 'secret-ke'
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
      name: 'namespace',
      description: 'Commands to manage notification hub namespace',
      subcommands: [

        Subcommand(
          name: 'check-availability',
          description: 'Checks the availability of the given service namespace across all Azure subscriptions. This is useful because the domain name is created based on the service namespace name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Resource name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a service namespace. Once created, this namespace\'s resource manifest is immutable. This operation is idempotent',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The namespace name',
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
              description: 'Name of the notification hub sku',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Free'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Resource location When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          description: 'Delete an existing namespace. This operation also removes all associated notificationHubs under the namespace',
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
              description: 'The namespace name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wait',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List available namespaces',
          options: [

            Option(
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
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
          description: 'Return the description for the specified namespace',
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
              description: 'The namespace name',
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
          description: 'Update a service namespace. The namespace\'s resource manifest is immutable and cannot be modified',
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
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
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
              name: ['--location', '-l'],
              description: 'Resource location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The namespace name',
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
              description: 'Name of the notification hub sku',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Free'),
                  FigSuggestion(name: 'Standard')
                ]
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
              name: '--tags',
              description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition is met',
          options: [

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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              description: 'The namespace name',
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
          name: 'authorization-rule',
          description: 'Commands to manage notification hubs namespace authorization rule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an authorization rule for a namespace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Authorization Rule Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--rights',
                  description: 'The rights associated with the rule. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'right'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a namespace authorization rule',
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
                  description: 'Authorization Rule Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
              description: 'List the authorization rules for a namespace',
              options: [

                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-keys',
              description: 'List the primary and secondary connection strings to the namespace',
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
                  description: 'The connection string of the namespace for the specified authorizationRule',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
              name: 'regenerate-keys',
              description: 'Regenerate the primary/secondary keys to the namespace authorization rule',
              options: [

                Option(
                  name: '--policy-key',
                  description: 'Name of the key that has to be regenerated for the Namespace/Notification Hub Authorization Rule. The value can be Primary Key/Secondary Key',
                  args: [
                    Arg(
                    name: 'policy-key',
                    suggestions: [

                      FigSuggestion(name: 'Primary Key'),
                      FigSuggestion(name: 'Secondary Key')
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
                  description: 'The connection string of the namespace for the specified authorizationRule',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
              name: 'show',
              description: 'Get an authorization rule for a namespace by name',
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
                  description: 'Authorization Rule Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace-name',
                  description: 'The namespace name',
                  args: [
                    Arg(
                    name: 'namespace-nam'
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
            )
          ]
        )
      ]
    )
  ]
);
