// Auto-generated from TypeScript source: connection.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `connection` CLI
final FigSpec connectionSpec = FigSpec(
  name: 'connection',
  description: 'Commands to manage Service Connector local connections which allow local environment to connect Azure Resource. If you want to manage connection for compute service, please run \'az webapp/containerapp/spring connection\'',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a connection from local to a target resource',
      subcommands: [

        Subcommand(
          name: 'appconfig',
          description: 'Create a Service Connector local connection to appconfig',
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
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'confluent-cloud',
          description: 'Create a local connection to confluent-cloud',
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-cassandra',
          description: 'Create a Service Connector local connection to cosmos-cassandra',
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
              description: 'The client type used on the connection',
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
              name: '--key-space',
              description: 'Name of the keyspace. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'key-spac'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-gremlin',
          description: 'Create a Service Connector local connection to cosmos-gremlin',
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
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-mongo',
          description: 'Create a Service Connector local connection to cosmos-mongo',
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
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-sql',
          description: 'Create a Service Connector local connection to cosmos-sql',
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
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-table',
          description: 'Create a Service Connector local connection to cosmos-table',
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
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'eventhub',
          description: 'Create a Service Connector local connection to eventhub',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'keyvault',
          description: 'Create a Service Connector local connection to keyvault',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--service-principal',
              description: 'The service principal auth info',
              args: [
                Arg(
                name: 'service-principa'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
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
            )
          ]
        ),
        Subcommand(
          name: 'mysql',
          description: 'Create a Service Connector local connection to mysql',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the mysql database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
            )
          ]
        ),
        Subcommand(
          name: 'mysql-flexible',
          description: 'Create a Service Connector local connection to mysql-flexible',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the mysql flexible database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres',
          description: 'Create a Service Connector local connection to postgres',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of postgres database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres-flexible',
          description: 'Create a Service Connector local connection to postgres-flexible',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of postgres flexible database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'redis',
          description: 'Create a Service Connector local connection to redis',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the redis database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
            )
          ]
        ),
        Subcommand(
          name: 'redis-enterprise',
          description: 'Create a Service Connector local connection to redis-enterprise',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the redis enterprise database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
            )
          ]
        ),
        Subcommand(
          name: 'servicebus',
          description: 'Create a Service Connector local connection to servicebus',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'signalr',
          description: 'Create a Service Connector local connection to signalr',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sql',
          description: 'Create a Service Connector local connection to sql',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--database',
              description: 'Name of the sql database. Required if \'--target-id\' is not specified',
              args: [
                Arg(
                name: 'databas'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-blob',
          description: 'Create a Service Connector local connection to storage-blob',
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
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-file',
          description: 'Create a Service Connector local connection to storage-file',
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
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
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
            )
          ]
        ),
        Subcommand(
          name: 'storage-queue',
          description: 'Create a Service Connector local connection to storage-queue',
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
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-table',
          description: 'Create a Service Connector local connection to storage-table',
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
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
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
            )
          ]
        ),
        Subcommand(
          name: 'webpubsub',
          description: 'Create a Service Connector local connection to webpubsub',
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
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
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
      name: 'delete',
      description: 'Delete a Service Connector local connection',
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
          name: '--id',
          description: 'The id of connection',
          args: [
            Arg(
            name: 'i'
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
      name: 'generate-configuration',
      description: 'Generate configurations of a Service Connector local connection. The result should be put to application configuration file or set as environment variables',
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
          name: '--id',
          description: 'The id of connection',
          args: [
            Arg(
            name: 'i'
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
      description: 'List local connections of Service Connector',
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-support-types',
      description: 'List client types and auth types supported by local connections',
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
      description: 'Get the details of a Service Connector local connection',
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
          name: '--id',
          description: 'The id of connection',
          args: [
            Arg(
            name: 'i'
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
      name: 'validate',
      description: 'Validate a Service Connector local connection',
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
          name: '--id',
          description: 'The id of connection',
          args: [
            Arg(
            name: 'i'
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
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of the connection is met',
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
          description: 'The id of connection',
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
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
      name: 'preview-configuration',
      description: 'Preview the expected configurations of local connection',
      subcommands: [

        Subcommand(
          name: 'appconfig',
          description: 'Preview the expected configurations of local connection to appconfig',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'confluent-cloud',
          description: 'Preview the expected configurations of local connection to confluent-cloud',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-cassandra',
          description: 'Preview the expected configurations of local connection to cosmos-cassandra',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-gremlin',
          description: 'Preview the expected configurations of local connection to cosmos-gremlin',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-mongo',
          description: 'Preview the expected configurations of local connection to cosmos-mongo',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-sql',
          description: 'Preview the expected configurations of local connection to cosmos-sql',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-table',
          description: 'Preview the expected configurations of local connection to cosmos-table',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'eventhub',
          description: 'Preview the expected configurations of local connection to eventhub',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'keyvault',
          description: 'Preview the expected configurations of local connection to keyvault',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--service-principal',
              description: 'The service principal auth info',
              args: [
                Arg(
                name: 'service-principa'
              )
              ]
            ),
            Option(
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mysql',
          description: 'Preview the expected configurations of local connection to mysql',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mysql-flexible',
          description: 'Preview the expected configurations of local connection to mysql-flexible',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres',
          description: 'Preview the expected configurations of local connection to postgres',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres-flexible',
          description: 'Preview the expected configurations of local connection to postgres-flexible',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'redis',
          description: 'Preview the expected configurations of local connection to redis',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'redis-enterprise',
          description: 'Preview the expected configurations of local connection to redis-enterprise',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'servicebus',
          description: 'Preview the expected configurations of local connection to servicebus',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'signalr',
          description: 'Preview the expected configurations of local connection to signalr',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sql',
          description: 'Preview the expected configurations of local connection to sql',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-blob',
          description: 'Preview the expected configurations of local connection to storage-blob',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-file',
          description: 'Preview the expected configurations of local connection to storage-file',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-queue',
          description: 'Preview the expected configurations of local connection to storage-queue',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-table',
          description: 'Preview the expected configurations of local connection to storage-table',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--secret',
              description: 'The secret auth info',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'webpubsub',
          description: 'Preview the expected configurations of local connection to webpubsub',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--user-account',
              description: 'The local user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a Service Connector local connection',
      subcommands: [

        Subcommand(
          name: 'appconfig',
          description: 'Update a local to appconfig connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'confluent-cloud',
          description: 'Update a local connection to confluent-cloud',
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
              description: 'The client type used on the connection',
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-cassandra',
          description: 'Update a local to cosmos-cassandra connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-gremlin',
          description: 'Update a local to cosmos-gremlin connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-mongo',
          description: 'Update a local to cosmos-mongo connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-sql',
          description: 'Update a local to cosmos-sql connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cosmos-table',
          description: 'Update a local to cosmos-table connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'eventhub',
          description: 'Update a local to eventhub connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'keyvault',
          description: 'Update a local to keyvault connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mysql',
          description: 'Update a local to mysql connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'mysql-flexible',
          description: 'Update a local to mysql-flexible connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres',
          description: 'Update a local to postgres connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'postgres-flexible',
          description: 'Update a local to postgres-flexible connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'redis',
          description: 'Update a local to redis connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'redis-enterprise',
          description: 'Update a local to redis-enterprise connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'servicebus',
          description: 'Update a local to servicebus connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'signalr',
          description: 'Update a local to signalr connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sql',
          description: 'Update a local to sql connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-blob',
          description: 'Update a local to storage-blob connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-file',
          description: 'Update a local to storage-file connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'storage-queue',
          description: 'Update a local to storage-queue connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage-table',
          description: 'Update a local to storage-table connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'webpubsub',
          description: 'Update a local to webpubsub connection',
          options: [

            Option(
              name: '--client-type',
              description: 'The client type used on the connection',
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
              name: '--id',
              description: 'The id of connection',
              args: [
                Arg(
                name: 'i'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              name: '--user-account',
              description: 'The user account auth info',
              args: [
                Arg(
                name: 'user-accoun'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
