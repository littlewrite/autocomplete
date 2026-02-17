// Auto-generated from TypeScript source: internet-analyzer.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `internet-analyzer` CLI
final FigSpec internetAnalyzerSpec = FigSpec(
  name: 'internet-analyzer',
  description: 'Commands to manage internet analyzer',
  subcommands: [

    Subcommand(
      name: 'preconfigured-endpoint',
      description: 'Commands to manage preconfigured endpoints',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List preconfigured endpoints',
          options: [

            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile for which to list preconfigured endpoints',
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
        )
      ]
    ),
    Subcommand(
      name: 'profile',
      description: 'Commands to manage internet analyzer profile',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create internet analyzer profile',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer profile to be created',
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
              name: '--enabled-state',
              description: 'The state of the Experiment',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
          description: 'Delete internet analyzer profile',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer profile to be deleted',
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
          description: 'List internet analyzer profiles',
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
          description: 'Show internet analyzer profile',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer profile to show',
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
          description: 'Update internet analyzer profile',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer profile to be updated',
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
              name: '--enabled-state',
              description: 'The state of the Experiment',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
    ),
    Subcommand(
      name: 'show-scorecard',
      description: 'Show latency scorecard for a test',
      options: [

        Option(
          name: '--aggregation-interval',
          description: 'The aggregation interval of the Latency Scorecard',
          args: [
            Arg(
            name: 'aggregation-interva'
          )
          ]
        ),
        Option(
          name: '--profile-name',
          description: 'The name of the Internet Analyzer profile under which the test exists',
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
          name: '--test-name',
          description: 'The name of the Internet Analyzer test',
          args: [
            Arg(
            name: 'test-nam'
          )
          ]
        ),
        Option(
          name: '--country',
          description: 'The country associated with the Latency Scorecard. Values are country ISO codes as specified here - https://www.iso.org/iso-3166-country-codes.html',
          args: [
            Arg(
            name: 'countr'
          )
          ]
        ),
        Option(
          name: '--end-date-time-utc',
          description: 'The end DateTime of the Latency Scorecard in UTC',
          args: [
            Arg(
            name: 'end-date-time-ut'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show-timeseries',
      description: 'Show timeseries for a test',
      options: [

        Option(
          name: '--aggregation-interval',
          description: 'The aggregation interval of the Timeseries',
          args: [
            Arg(
            name: 'aggregation-interva'
          )
          ]
        ),
        Option(
          name: '--end-date-time-utc',
          description: 'The end DateTime of the Timeseries in UTC',
          args: [
            Arg(
            name: 'end-date-time-ut'
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'The specific endpoint',
          args: [
            Arg(
            name: 'endpoin'
          )
          ]
        ),
        Option(
          name: '--profile-name',
          description: 'The name of the Internet Analyzer profile under which the test exists',
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
          name: '--start-date-time-utc',
          description: 'The start DateTime of the Timeseries in UTC',
          args: [
            Arg(
            name: 'start-date-time-ut'
          )
          ]
        ),
        Option(
          name: '--test-name',
          description: 'The name of the Internet Analyzer test',
          args: [
            Arg(
            name: 'test-nam'
          )
          ]
        ),
        Option(
          name: '--timeseries-type',
          description: 'The type of Timeseries',
          args: [
            Arg(
            name: 'timeseries-typ'
          )
          ]
        ),
        Option(
          name: '--country',
          description: 'The country associated with the Latency Scorecard. Values are country ISO codes as specified here - https://www.iso.org/iso-3166-country-codes.html',
          args: [
            Arg(
            name: 'countr'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Commands to manage tests',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create test',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer test to be created',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile under which the new test should be created',
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
              description: 'The description of the details or intents of the test',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--enabled-state',
              description: 'The initial of the test',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint-a-endpoint',
              description: 'The URL of the control endpoint in [/] format (e.g., www.contoso.com or www.contoso.com/some/path/to/trans.gif). Must support HTTPS. If an object path isn\'t specified explicitly, Internet Analyzer will use "/apc/trans.gif" as the object path by default, which is where the preconfigured endpoints are hosting the one-pixel image',
              args: [
                Arg(
                name: 'endpoint-a-endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-a-name',
              description: 'The name of the control endpoint',
              args: [
                Arg(
                name: 'endpoint-a-nam'
              )
              ]
            ),
            Option(
              name: '--endpoint-b-endpoint',
              description: 'The URL of the other endpoint in [/] format (e.g., www.contoso.com or www.contoso.com/some/path/to/trans.gif). Must support HTTPS. If an object path isn\'t specified explicitly, Internet Analyzer will use "/apc/trans.gif" as the object path by default, which is where the preconfigured endpoints are hosting the one-pixel image',
              args: [
                Arg(
                name: 'endpoint-b-endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-b-name',
              description: 'The name of the other endpoint',
              args: [
                Arg(
                name: 'endpoint-b-nam'
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
          description: 'Delete test',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer test to delete',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile under which the test exists',
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
          name: 'list',
          description: 'List tests',
          options: [

            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile for which to list tests',
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
          description: 'Show test',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer test to show',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile under which the test exists',
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
          name: 'update',
          description: 'Update test',
          options: [

            Option(
              name: '--name',
              description: 'The name of the Internet Analyzer test to be updated',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The name of the Internet Analyzer profile under which the test exists',
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
              description: 'The description of the details or intents of the test',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--enabled-state',
              description: 'The state of the Experiment',
              args: [
                Arg(
                name: 'enabled-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint-a-endpoint',
              description: 'The URL of the control endpoint in [/] format (e.g., www.contoso.com or www.contoso.com/some/path/to/trans.gif). Must support HTTPS. If an object path isn\'t specified explicitly, Internet Analyzer will use "/apc/trans.gif" as the object path by default, which is where the preconfigured endpoints are hosting the one-pixel image',
              args: [
                Arg(
                name: 'endpoint-a-endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-a-name',
              description: 'The name of the control endpoint',
              args: [
                Arg(
                name: 'endpoint-a-nam'
              )
              ]
            ),
            Option(
              name: '--endpoint-b-endpoint',
              description: 'The URL of the other endpoint in [/] format (e.g., www.contoso.com or www.contoso.com/some/path/to/trans.gif). Must support HTTPS. If an object path isn\'t specified explicitly, Internet Analyzer will use "/apc/trans.gif" as the object path by default, which is where the preconfigured endpoints are hosting the one-pixel image',
              args: [
                Arg(
                name: 'endpoint-b-endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-b-name',
              description: 'The name of the other endpoint',
              args: [
                Arg(
                name: 'endpoint-b-nam'
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
