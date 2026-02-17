// Auto-generated from TypeScript source: appservice.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `appservice` CLI
final FigSpec appserviceSpec = FigSpec(
  name: 'appservice',
  description: 'Manage App Service plans',
  subcommands: [

    Subcommand(
      name: 'ase',
      description: 'Manage App Service Environments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create app service environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
              description: 'Name or ID of existing subnet. To create vnet and/or subnet use az network vnet [subnet] create',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--force-network-security-group',
              description: 'Override network security group for subnet. Applies to ASEv2 only'
            ),
            Option(
              name: '--force-route-table',
              description: 'Override route table for subnet. Applies to ASEv2 only'
            ),
            Option(
              name: '--front-end-scale-factor',
              description: 'Scale of front ends to app service plan instance ratio. Applies to ASEv2 only',
              args: [
                Arg(
                name: 'front-end-scale-facto'
              )
              ]
            ),
            Option(
              name: '--front-end-sku',
              description: 'Size of front end servers. Applies to ASEv2 only',
              args: [
                Arg(
                name: 'front-end-sku',
                suggestions: [

                  FigSuggestion(name: 'I1'),
                  FigSuggestion(name: 'I2'),
                  FigSuggestion(name: 'I3')
                ]
              )
              ]
            ),
            Option(
              name: '--ignore-network-security-group',
              description: 'Configure network security group manually. Applies to ASEv2 only'
            ),
            Option(
              name: '--ignore-route-table',
              description: 'Configure route table manually. Applies to ASEv2 only'
            ),
            Option(
              name: '--ignore-subnet-size-validation',
              description: 'Do not check if subnet is sized according to recommendations'
            ),
            Option(
              name: ['--kind', '-k'],
              description: 'Specify App Service Environment version',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'ASEv2'),
                  FigSuggestion(name: 'ASEv3')
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--os-preference',
              description: 'Determine if app service environment should start with Linux workers. Applies to ASEv2 only',
              args: [
                Arg(
                name: 'os-preference',
                suggestions: [

                  FigSuggestion(name: 'Linux'),
                  FigSuggestion(name: 'Windows')
                ]
              )
              ]
            ),
            Option(
              name: '--virtual-ip-type',
              description: 'Specify if app service environment should be accessible from internet',
              args: [
                Arg(
                name: 'virtual-ip-type',
                suggestions: [

                  FigSuggestion(name: 'External'),
                  FigSuggestion(name: 'Internal')
                ]
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of the vNet. Mandatory if only subnet name is specified',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            ),
            Option(
              name: '--zone-redundant',
              description: 'Configure App Service Environment as Zone Redundant. Applies to ASEv3 only',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'create-inbound-services',
          description: 'Private DNS Zone for Internal (ILB) App Service Environments',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
              description: 'Name or ID of existing subnet for DNS Zone link. To create vnet and/or subnet use az network vnet [subnet] create',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--skip-dns',
              description: 'Argument \'skip_dns\' has been deprecated and will be removed in version \'3.0.0\'. Do not create Private DNS Zone and DNS records'
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of the vNet. Mandatory if only subnet name is specified',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete app service environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List app service environments',
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
          name: 'list-addresses',
          description: 'List VIPs associated with an app service environment v2',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
          name: 'list-plans',
          description: 'List app service plans associated with an app service environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
          name: 'send-test-notification',
          description: 'Send a test upgrade notification in app service environment v3',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
          description: 'Show details of an app service environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
          name: 'update',
          description: 'Update app service environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--allow-incoming-ftp-connections', '-f'],
              description: '(ASEv3 only) Configure App Service Environment to allow FTP access. This ftpEnabled setting allows you to allow or deny FTP connections on the App Service Environment level. Individual apps will still need to configure FTP access',
              args: [
                Arg(
                name: 'allow-incoming-ftp-connections',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--allow-new-private-endpoint-connections', '-p'],
              description: '(ASEv3 only) Configure Apps in App Service Environment to allow new private endpoint connections',
              args: [
                Arg(
                name: 'allow-new-private-endpoint-connections',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--allow-remote-debugging', '-r'],
              description: '(ASEv3 only) Configure App Service Environment to allow remote debugging. You will still have to configure remote debugging at the individual app level',
              args: [
                Arg(
                name: 'allow-remote-debugging',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--front-end-scale-factor',
              description: '(ASEv2 only) Scale of front ends to app service plan instance ratio between 5 and 15',
              args: [
                Arg(
                name: 'front-end-scale-facto'
              )
              ]
            ),
            Option(
              name: '--front-end-sku',
              description: '(ASEv2 only) Size of front end servers',
              args: [
                Arg(
                name: 'front-end-sku',
                suggestions: [

                  FigSuggestion(name: 'I1'),
                  FigSuggestion(name: 'I2'),
                  FigSuggestion(name: 'I3')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          name: 'upgrade',
          description: 'Upgrade app service environment v3',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the app service environment',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
        )
      ]
    ),
    Subcommand(
      name: 'domain',
      description: 'Manage custom domains',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create and purchase a custom domain',
          options: [

            Option(
              name: ['--contact-info', '-c'],
              description: 'The file path to a JSON object with your contact info for domain registration. Please see the following link for the format of the JSON file expected: https://github.com/AzureAppServiceCLI/appservice_domains_templates/blob/master/contact_info.json',
              args: [
                Arg(
                name: 'contact-inf'
              )
              ]
            ),
            Option(
              name: ['--hostname', '-n'],
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'hostnam'
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
              name: '--accept-terms',
              description: 'By using this flag, you are accepting the conditions shown using the --show-hostname-purchase-terms flag'
            ),
            Option(
              name: ['--auto-renew', '-a'],
              description: 'Enable auto-renew on the domain',
              args: [
                Arg(
                name: 'auto-rene'
              )
              ]
            ),
            Option(
              name: '--dryrun',
              description: 'Show summary of the purchase and create operation instead of executing it'
            ),
            Option(
              name: ['--privacy', '-p'],
              description: 'Enable privacy protection',
              args: [
                Arg(
                name: 'privac'
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
          name: 'show-terms',
          description: 'Show the legal terms for purchasing and creating a custom domain',
          options: [

            Option(
              name: ['--hostname', '-n'],
              description: 'Name of the custom domain',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'hybrid-connection',
      description: 'A method that sets the key a hybrid-connection uses',
      subcommands: [

        Subcommand(
          name: 'set-key',
          description: 'Set the key that all apps in an appservice plan use to connect to the hybrid-connections in that appservice plan',
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
              name: '--key-type',
              description: 'Which key (primary or secondary) should be used',
              args: [
                Arg(
                name: 'key-typ'
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
              name: '--plan',
              description: 'AppService plan',
              args: [
                Arg(
                name: 'pla'
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
      name: 'kube',
      description: 'Manage Kubernetes Environments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Kubernetes Environment',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'ID of the custom location',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the kubernetes environment',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the create to complete, and return immediately after queuing the create'
            ),
            Option(
              name: '--static-ip',
              description: 'Static IP Address. This is required if an AKS resource ID is specified',
              args: [
                Arg(
                name: 'static-i'
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
          description: 'Delete kubernetes environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Kubernetes Environment',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List kubernetes environments by subscription or resource group',
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
          description: 'Show the details of a kubernetes environment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Kubernetes Environment',
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
          name: 'update',
          description: 'Update a Kubernetes Environment. Currently not supported',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the kubernetes environment',
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
              name: ['--custom-location', '-c'],
              description: 'ID of the custom location',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--static-ip',
              description: 'New Static IP Address',
              args: [
                Arg(
                name: 'static-i'
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
          name: 'wait',
          description: 'Wait for a Kubernetes Environment to reach a desired state',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Kubernetes Environment',
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
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
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
        )
      ]
    ),
    Subcommand(
      name: 'list-locations',
      description: 'List regions where a plan sku is available',
      options: [

        Option(
          name: '--sku',
          description: 'The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P2V2(Premium V2 Medium), P3V2(Premium V2 Large), P0V3(Premium V3 Extra Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), P1MV3(Premium Memory Optimized V3 Small), P2MV3(Premium Memory Optimized V3 Medium), P3MV3(Premium Memory Optimized V3 Large), P4MV3(Premium Memory Optimized V3 Extra Large), P5MV3(Premium Memory Optimized V3 Extra Extra Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large), I4v2 (Isolated V2 I4v2), I5v2 (Isolated V2 I5v2), I6v2 (Isolated V2 I6v2), WS1 (Logic Apps Workflow Standard 1), WS2 (Logic Apps Workflow Standard 2), WS3 (Logic Apps Workflow Standard 3)',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'B1'),
              FigSuggestion(name: 'B2'),
              FigSuggestion(name: 'B3'),
              FigSuggestion(name: 'D1'),
              FigSuggestion(name: 'F1'),
              FigSuggestion(name: 'FREE'),
              FigSuggestion(name: 'I1'),
              FigSuggestion(name: 'I1v2'),
              FigSuggestion(name: 'I2'),
              FigSuggestion(name: 'I2v2'),
              FigSuggestion(name: 'I3'),
              FigSuggestion(name: 'I3v2'),
              FigSuggestion(name: 'I4v2'),
              FigSuggestion(name: 'I5v2'),
              FigSuggestion(name: 'I6v2'),
              FigSuggestion(name: 'P0V3'),
              FigSuggestion(name: 'P1MV3'),
              FigSuggestion(name: 'P1V2'),
              FigSuggestion(name: 'P1V3'),
              FigSuggestion(name: 'P2MV3'),
              FigSuggestion(name: 'P2V2'),
              FigSuggestion(name: 'P2V3'),
              FigSuggestion(name: 'P3MV3'),
              FigSuggestion(name: 'P3V2'),
              FigSuggestion(name: 'P3V3'),
              FigSuggestion(name: 'P4MV3'),
              FigSuggestion(name: 'P5MV3'),
              FigSuggestion(name: 'S1'),
              FigSuggestion(name: 'S2'),
              FigSuggestion(name: 'S3'),
              FigSuggestion(name: 'SHARED'),
              FigSuggestion(name: 'WS1'),
              FigSuggestion(name: 'WS2'),
              FigSuggestion(name: 'WS3')
            ]
          )
          ]
        ),
        Option(
          name: '--linux-workers-enabled',
          description: 'Get regions which support hosting web apps on Linux workers',
          args: [
            Arg(
            name: 'linux-workers-enable'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'plan',
      description: 'Manage app service plans',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an app service plan',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the new app service plan',
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
              name: ['--app-service-environment', '-e'],
              description: 'Name or ID of the app service environment. If you want to create the app service plan in different subscription than the app service environment, please use the resource ID for --app-service-environment parameter',
              args: [
                Arg(
                name: 'app-service-environmen'
              )
              ]
            ),
            Option(
              name: '--hyper-v',
              description: 'Host web app on Windows container',
              args: [
                Arg(
                name: 'hyper-'
              )
              ]
            ),
            Option(
              name: '--is-linux',
              description: 'Host web app on Linux worker',
              args: [
                Arg(
                name: 'is-linu'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--number-of-workers',
              description: 'Number of workers to be allocated',
              args: [
                Arg(
                name: 'number-of-worker'
              )
              ]
            ),
            Option(
              name: '--per-site-scaling',
              description: 'Enable per-app scaling at the App Service plan level to allow for scaling an app independently from the App Service plan that hosts it'
            ),
            Option(
              name: '--sku',
              description: 'The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P2V2(Premium V2 Medium), P3V2(Premium V2 Large), P0V3(Premium V3 Extra Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), P1MV3(Premium Memory Optimized V3 Small), P2MV3(Premium Memory Optimized V3 Medium), P3MV3(Premium Memory Optimized V3 Large), P4MV3(Premium Memory Optimized V3 Extra Large), P5MV3(Premium Memory Optimized V3 Extra Extra Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large), I4v2 (Isolated V2 I4v2), I5v2 (Isolated V2 I5v2), I6v2 (Isolated V2 I6v2), WS1 (Logic Apps Workflow Standard 1), WS2 (Logic Apps Workflow Standard 2), WS3 (Logic Apps Workflow Standard 3)',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'B1'),
                  FigSuggestion(name: 'B2'),
                  FigSuggestion(name: 'B3'),
                  FigSuggestion(name: 'D1'),
                  FigSuggestion(name: 'F1'),
                  FigSuggestion(name: 'FREE'),
                  FigSuggestion(name: 'I1'),
                  FigSuggestion(name: 'I1v2'),
                  FigSuggestion(name: 'I2'),
                  FigSuggestion(name: 'I2v2'),
                  FigSuggestion(name: 'I3'),
                  FigSuggestion(name: 'I3v2'),
                  FigSuggestion(name: 'I4v2'),
                  FigSuggestion(name: 'I5v2'),
                  FigSuggestion(name: 'I6v2'),
                  FigSuggestion(name: 'P0V3'),
                  FigSuggestion(name: 'P1MV3'),
                  FigSuggestion(name: 'P1V2'),
                  FigSuggestion(name: 'P1V3'),
                  FigSuggestion(name: 'P2MV3'),
                  FigSuggestion(name: 'P2V2'),
                  FigSuggestion(name: 'P2V3'),
                  FigSuggestion(name: 'P3MV3'),
                  FigSuggestion(name: 'P3V2'),
                  FigSuggestion(name: 'P3V3'),
                  FigSuggestion(name: 'P4MV3'),
                  FigSuggestion(name: 'P5MV3'),
                  FigSuggestion(name: 'S1'),
                  FigSuggestion(name: 'S2'),
                  FigSuggestion(name: 'S3'),
                  FigSuggestion(name: 'SHARED'),
                  FigSuggestion(name: 'WS1'),
                  FigSuggestion(name: 'WS2'),
                  FigSuggestion(name: 'WS3')
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
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Enable zone redundancy for high availability. Cannot be changed after plan creation. Minimum instance count is 3'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an app service plan',
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
          description: 'List app service plans',
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
          description: 'Get the app service plans for a resource group or a set of resource groups',
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
          description: 'Update an app service plan',
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
              name: '--elastic-scale',
              description: 'Enable or disable automatic scaling. Set to "true" to enable elastic scale for this plan, or "false" to disable elastic scale for this plan. The SKU must be a Premium V2 SKU (P1V2, P2V2, P3V2) or a Premium V3 SKU (P1V3, P2V3, P3V3)',
              args: [
                Arg(
                name: 'elastic-scale',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: ['--max-elastic-worker-count', '-m'],
              description: 'Maximum number of instances that the plan can scale out to. The plan must be an elastic scale plan',
              args: [
                Arg(
                name: 'max-elastic-worker-coun'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--number-of-workers',
              description: 'Number of workers to be allocated',
              args: [
                Arg(
                name: 'number-of-worker'
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
              description: 'The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P2V2(Premium V2 Medium), P3V2(Premium V2 Large), P0V3(Premium V3 Extra Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), P1MV3(Premium Memory Optimized V3 Small), P2MV3(Premium Memory Optimized V3 Medium), P3MV3(Premium Memory Optimized V3 Large), P4MV3(Premium Memory Optimized V3 Extra Large), P5MV3(Premium Memory Optimized V3 Extra Extra Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large), I4v2 (Isolated V2 I4v2), I5v2 (Isolated V2 I5v2), I6v2 (Isolated V2 I6v2), WS1 (Logic Apps Workflow Standard 1), WS2 (Logic Apps Workflow Standard 2), WS3 (Logic Apps Workflow Standard 3)',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'B1'),
                  FigSuggestion(name: 'B2'),
                  FigSuggestion(name: 'B3'),
                  FigSuggestion(name: 'D1'),
                  FigSuggestion(name: 'F1'),
                  FigSuggestion(name: 'FREE'),
                  FigSuggestion(name: 'I1'),
                  FigSuggestion(name: 'I1v2'),
                  FigSuggestion(name: 'I2'),
                  FigSuggestion(name: 'I2v2'),
                  FigSuggestion(name: 'I3'),
                  FigSuggestion(name: 'I3v2'),
                  FigSuggestion(name: 'I4v2'),
                  FigSuggestion(name: 'I5v2'),
                  FigSuggestion(name: 'I6v2'),
                  FigSuggestion(name: 'P0V3'),
                  FigSuggestion(name: 'P1MV3'),
                  FigSuggestion(name: 'P1V2'),
                  FigSuggestion(name: 'P1V3'),
                  FigSuggestion(name: 'P2MV3'),
                  FigSuggestion(name: 'P2V2'),
                  FigSuggestion(name: 'P2V3'),
                  FigSuggestion(name: 'P3MV3'),
                  FigSuggestion(name: 'P3V2'),
                  FigSuggestion(name: 'P3V3'),
                  FigSuggestion(name: 'P4MV3'),
                  FigSuggestion(name: 'P5MV3'),
                  FigSuggestion(name: 'S1'),
                  FigSuggestion(name: 'S2'),
                  FigSuggestion(name: 'S3'),
                  FigSuggestion(name: 'SHARED'),
                  FigSuggestion(name: 'WS1'),
                  FigSuggestion(name: 'WS2'),
                  FigSuggestion(name: 'WS3')
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vnet-integration',
      description: 'A method that lists the virtual network integrations used in an appservice plan',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the virtual network integrations used in an appservice plan',
          options: [

            Option(
              name: '--plan',
              description: 'AppService plan',
              args: [
                Arg(
                name: 'pla'
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
    )
  ]
);
