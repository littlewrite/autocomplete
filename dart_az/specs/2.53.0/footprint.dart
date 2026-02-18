// Auto-generated from TypeScript source: footprint.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `footprint` CLI
final FigSpec footprintSpec = FigSpec(
  name: 'footprint',
  description: '',
  subcommands: [

    Subcommand(
      name: 'experiment',
      description: 'Commands to manage experiments under a profile',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a Footprint experiment with the specified properties',
          options: [

            Option(
              name: ['--experiment-name', '--name', '-n'],
              description: 'Name of the Footprint experiment resource',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--description',
              description: 'The description of a Footprint experiment',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing Footprint experiment',
          options: [

            Option(
              name: ['--experiment-name', '--name', '-n'],
              description: 'Name of the Footprint experiment resource',
              args: [
                Arg(
                name: 'experiment-nam'
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
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about all experiments under a Footprint profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about a single Footprint experiment',
          options: [

            Option(
              name: ['--experiment-name', '--name', '-n'],
              description: 'Name of the Footprint experiment resource',
              args: [
                Arg(
                name: 'experiment-nam'
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
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Creates or updates a Footprint experiment with the specified properties',
          options: [

            Option(
              name: '--description',
              description: 'The description of a Footprint experiment',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '--name', '-n'],
              description: 'Name of the Footprint experiment resource',
              args: [
                Arg(
                name: 'experiment-nam'
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
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'measurement-endpoint',
      description: 'Commands to manage measurement endpoints under a profile',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a single measurement endpoint under a Footprint profile with the specified properties',
          options: [

            Option(
              name: '--endpoint',
              description: 'The value of a measurement endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: ['--measurement-endpoint-name', '--name', '-n'],
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'measurement-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--measurement-type',
              description: 'The type of a measurement endpoint',
              args: [
                Arg(
                name: 'measurement-typ'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--weight',
              description: 'The weight of a measurement endpoint, higher weight means higher priority',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of a measurement endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--end-time-utc',
              description: 'The end time that a measurement endpoint should be served',
              args: [
                Arg(
                name: 'end-time-ut'
              )
              ]
            ),
            Option(
              name: '--experiment-id',
              description: 'The id of an experiment that a measurement endpoint is part of',
              args: [
                Arg(
                name: 'experiment-i'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The metadata of a measurement endpoint',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--object-path',
              description: 'The path of the object that a measurement endpoint points to',
              args: [
                Arg(
                name: 'object-pat'
              )
              ]
            ),
            Option(
              name: '--sample-rate-cold',
              description: 'The percentual sampling rate for the cold path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-col'
              )
              ]
            ),
            Option(
              name: '--sample-rate-hot',
              description: 'The percentual sampling rate for the hot path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-ho'
              )
              ]
            ),
            Option(
              name: '--sample-rate-warm',
              description: 'The percentual sampling rate for the warm path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-war'
              )
              ]
            ),
            Option(
              name: '--start-time-utc',
              description: 'The start time that a measurement endpoint should be served',
              args: [
                Arg(
                name: 'start-time-ut'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing measurement endpoint under a Footprint profile',
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
              name: ['--measurement-endpoint-name', '--name', '-n'],
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'measurement-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about all measurement endpoints under a Footprint profile',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about a single measurement endpoint under a Footprint profile',
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
              name: ['--measurement-endpoint-name', '--name', '-n'],
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'measurement-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Creates or updates a single measurement endpoint under a Footprint profile with the specified properties',
          options: [

            Option(
              name: '--endpoint',
              description: 'The value of a measurement endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--measurement-type',
              description: 'The type of a measurement endpoint',
              args: [
                Arg(
                name: 'measurement-typ'
              )
              ]
            ),
            Option(
              name: '--weight',
              description: 'The weight of a measurement endpoint, higher weight means higher priority',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of a measurement endpoint',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--end-time-utc',
              description: 'The end time that a measurement endpoint should be served',
              args: [
                Arg(
                name: 'end-time-ut'
              )
              ]
            ),
            Option(
              name: '--experiment-id',
              description: 'The id of an experiment that a measurement endpoint is part of',
              args: [
                Arg(
                name: 'experiment-i'
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
              name: ['--measurement-endpoint-name', '--name', '-n'],
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'measurement-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The metadata of a measurement endpoint',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--object-path',
              description: 'The path of the object that a measurement endpoint points to',
              args: [
                Arg(
                name: 'object-pat'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--sample-rate-cold',
              description: 'The percentual sampling rate for the cold path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-col'
              )
              ]
            ),
            Option(
              name: '--sample-rate-hot',
              description: 'The percentual sampling rate for the hot path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-ho'
              )
              ]
            ),
            Option(
              name: '--sample-rate-warm',
              description: 'The percentual sampling rate for the warm path logging of a measurement endpoint',
              args: [
                Arg(
                name: 'sample-rate-war'
              )
              ]
            ),
            Option(
              name: '--start-time-utc',
              description: 'The start time that a measurement endpoint should be served',
              args: [
                Arg(
                name: 'start-time-ut'
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
      name: 'measurement-endpoint-condition',
      description: 'Commands to manage measurement endpoint conditions under a measurement endpoint',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a measurement endpoint condition under a Footprint measurement with the specified properties',
          options: [

            Option(
              name: '--constant',
              description: 'The constant of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'constan'
              )
              ]
            ),
            Option(
              name: '--endpoint-name',
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the Footprint measurement endpoint condition resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--operator',
              description: 'The operator of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'operator',
                suggestions: [

                  FigSuggestion(name: 'ContainsValue'),
                  FigSuggestion(name: 'ContainsValueIgnoreCasing'),
                  FigSuggestion(name: 'DoesNotContainValue'),
                  FigSuggestion(name: 'DoesNotContainValueIgnoreCasing'),
                  FigSuggestion(name: 'IsExactValue'),
                  FigSuggestion(name: 'MatchValueIgnoreCasing')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--variable',
              description: 'The variable of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'variabl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing measurement endpoint condition under a Footprint measurement',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--name',
              description: 'Name of the Footprint measurement endpoint condition resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about all measurement endpoint conditions under a Footprint measurement endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about a single measurement endpoint condition under a Footprint measurement endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--name',
              description: 'Name of the Footprint measurement endpoint condition resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Creates or updates a measurement endpoint condition under a Footprint measurement with the specified properties',
          options: [

            Option(
              name: '--constant',
              description: 'The constant of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'constan'
              )
              ]
            ),
            Option(
              name: '--operator',
              description: 'The operator of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'operator',
                suggestions: [

                  FigSuggestion(name: 'ContainsValue'),
                  FigSuggestion(name: 'ContainsValueIgnoreCasing'),
                  FigSuggestion(name: 'DoesNotContainValue'),
                  FigSuggestion(name: 'DoesNotContainValueIgnoreCasing'),
                  FigSuggestion(name: 'IsExactValue'),
                  FigSuggestion(name: 'MatchValueIgnoreCasing')
                ]
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'The variable of a Footprint measurement endpoint condition',
              args: [
                Arg(
                name: 'variabl'
              )
              ]
            ),
            Option(
              name: '--endpoint-name',
              description: 'Name of the Footprint measurement endpoint resource',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              name: '--name',
              description: 'Name of the Footprint measurement endpoint condition resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'profile',
      description: 'Commands to manage Footprint profiles',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a Footprint profile with the specified properties',
          options: [

            Option(
              name: '--measurement-count',
              description: 'The number of measurements to perform',
              args: [
                Arg(
                name: 'measurement-coun'
              )
              ]
            ),
            Option(
              name: ['--profile-name', '--name', '-n'],
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--start-delay-ms',
              description: 'The delay in milliseconds that the clients should wait for until they start performing measurements',
              args: [
                Arg(
                name: 'start-delay-m'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the Footprint profile',
              args: [
                Arg(
                name: 'descriptio'
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
              name: '--reporting-endpoints',
              description: 'The endpoints which to upload measurements to',
              args: [
                Arg(
                name: 'reporting-endpoint'
              )
              ]
            ),
            Option(
              name: '--sample-rate-cold',
              description: 'The default sampling percentage for cold path measurement storage',
              args: [
                Arg(
                name: 'sample-rate-col'
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
          description: 'Deletes an existing Footprint profile',
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
              name: ['--profile-name', '--name', '-n'],
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Retrieves the information about all Footprint profiles under a subscription',
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
          description: 'Retrieves the information about a single Footprint profile',
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
              name: ['--profile-name', '--name', '-n'],
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Updates an existing Footprint profile resource',
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
              name: ['--profile-name', '--name', '-n'],
              description: 'Name of the Footprint profile resource',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
