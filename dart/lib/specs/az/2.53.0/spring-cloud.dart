// Auto-generated from TypeScript source: spring-cloud.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `spring-cloud` CLI
final FigSpec springCloudSpec = FigSpec(
  name: 'spring-cloud',
  description: 'Commands to manage Azure Spring Cloud',
  subcommands: [

    Subcommand(
      name: 'api-portal',
      description: '(Enterprise Tier Only) Commands to manage API portal in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear all settings of API portal',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the settings, provisioning status and runtime status of API portal',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing API portal properties',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--assign-endpoint',
              description: 'If true, assign endpoint URL for direct access',
              args: [
                Arg(
                name: 'assign-endpoint',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--client-id',
              description: 'The public identifier for the application',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The secret known only to the application and the authorization server',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: '--https-only',
              description: 'If true, access endpoint via https',
              args: [
                Arg(
                name: 'https-only',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Number of instance',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: '--issuer-uri',
              description: 'The URI of Issuer Identifier',
              args: [
                Arg(
                name: 'issuer-ur'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Comma-separated list of the specific actions applications can be allowed to do on a user\'s behalf',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'custom-domain',
          description: 'Commands to manage custom domains for API portal',
          subcommands: [

            Subcommand(
              name: 'bind',
              description: 'Bind a custom domain with the API portal',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all custom domains of the API portal',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a custom domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'unbind',
              description: 'Unbind a custom-domain of the API portal',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a custom domain of the API portal',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
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
      name: 'app',
      description: 'Commands to manage apps in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'append-loaded-public-certificate',
          description: 'Append a new loaded public certificate to an app in the Azure Spring Cloud',
          options: [

            Option(
              name: '--certificate-name',
              description: 'Name of the certificate to be appended',
              args: [
                Arg(
                name: 'certificate-nam'
              )
              ]
            ),
            Option(
              name: '--load-trust-store',
              description: 'If true, the certificate would be loaded into trust store for Java applications'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'append-persistent-storage',
          description: 'Append a new persistent storage to an app in the Azure Spring Cloud',
          options: [

            Option(
              name: '--mount-path',
              description: 'The path for the persistent storage volume to be mounted',
              args: [
                Arg(
                name: 'mount-pat'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--persistent-storage-type', '-t'],
              description: 'Type of the persistent storage volumed',
              args: [
                Arg(
                name: 'persistent-storage-typ'
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--share-name',
              description: 'The name of the pre-created file share. ShareName should be provided only if the type of the persistent storage volume is AzureFileVolume',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: '--storage-name',
              description: 'Name of the storage resource you created in Azure Spring Cloud',
              args: [
                Arg(
                name: 'storage-nam'
              )
              ]
            ),
            Option(
              name: '--mount-options',
              description: '[optional] The mount options for the persistent storage volume',
              args: [
                Arg(
                name: 'mount-option'
              )
              ]
            ),
            Option(
              name: '--read-only',
              description: '[optional] If true, the persistent storage volume will be read only'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new app with a default deployment in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--assign-endpoint',
              description: 'If true, assign endpoint URL for direct access'
            ),
            Option(
              name: '--cpu',
              description: 'CPU resource quantity. Should be 500m or number of CPU cores',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--disable-probe',
              description: 'If true, disable the liveness and readiness probe',
              args: [
                Arg(
                name: 'disable-probe',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-persistent-storage',
              description: 'If true, mount a 50G (Standard Pricing tier) or 1G (Basic Pricing tier) disk with default path',
              args: [
                Arg(
                name: 'enable-persistent-storage',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables in \'key[=value]\' format',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Number of instance',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: '--jvm-options',
              description: 'A string containing jvm options, use \'=\' instead of \' \' for this argument to avoid bash parse error, eg: --jvm-options=\'-Xms1024m -Xmx2048m\'',
              args: [
                Arg(
                name: 'jvm-option'
              )
              ]
            ),
            Option(
              name: ['--loaded-public-certificate-file', '-f'],
              description: 'A json file path indicates the certificates which would be loaded to app',
              args: [
                Arg(
                name: 'loaded-public-certificate-fil'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Memory resource quantity. Should be 512Mi or #Gi, e.g., 1Gi, 3Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--persistent-storage',
              description: 'A json file path for the persistent storages to be mounted to the app',
              args: [
                Arg(
                name: 'persistent-storag'
              )
              ]
            ),
            Option(
              name: '--runtime-version',
              description: 'Runtime version of used language',
              args: [
                Arg(
                name: 'runtime-version',
                suggestions: [

                  FigSuggestion(name: 'Java_11'),
                  FigSuggestion(name: 'Java_17'),
                  FigSuggestion(name: 'Java_8'),
                  FigSuggestion(name: 'NetCore_31')
                ]
              )
              ]
            ),
            Option(
              name: '--system-assigned',
              description: 'Enable system-assigned managed identity',
              args: [
                Arg(
                name: 'system-assigned',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--user-assigned',
              description: 'Space-separated user-assigned managed identity resource IDs to assgin to an app',
              args: [
                Arg(
                name: 'user-assigne'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an app in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Deploy source code or pre-built binary to an app and update related configurations',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--artifact-path',
              description: 'Deploy the specified pre-built artifact (jar or netcore zip)',
              args: [
                Arg(
                name: 'artifact-pat'
              )
              ]
            ),
            Option(
              name: '--build-env',
              description: 'Space-separated environment variables in \'key[=value]\' format',
              args: [
                Arg(
                name: 'build-en'
              )
              ]
            ),
            Option(
              name: '--builder',
              description: '(Enterprise Tier Only) Build service builder used to build the executable',
              args: [
                Arg(
                name: 'builde'
              )
              ]
            ),
            Option(
              name: '--config-file-patterns',
              description: '(Enterprise Tier Only) Config file patterns separated with \',\' to decide which patterns of Application Configuration Service will be used. Use \'""\' to clear existing configurations',
              args: [
                Arg(
                name: 'config-file-pattern'
              )
              ]
            ),
            Option(
              name: '--container-args',
              description: 'The arguments of the container image',
              args: [
                Arg(
                name: 'container-arg'
              )
              ]
            ),
            Option(
              name: '--container-command',
              description: 'The command of the container image',
              args: [
                Arg(
                name: 'container-comman'
              )
              ]
            ),
            Option(
              name: '--container-image',
              description: 'The container image tag',
              args: [
                Arg(
                name: 'container-imag'
              )
              ]
            ),
            Option(
              name: '--container-registry',
              description: 'The registry of the container image',
              args: [
                Arg(
                name: 'container-registr'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--disable-probe',
              description: 'If true, disable the liveness and readiness probe',
              args: [
                Arg(
                name: 'disable-probe',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disable-validation',
              description: 'If true, disable jar validation',
              args: [
                Arg(
                name: 'disable-validation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables in \'key[=value]\' format',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--jvm-options',
              description: 'A string containing jvm options, use \'=\' instead of \' \' for this argument to avoid bash parse error, eg: --jvm-options=\'-Xms1024m -Xmx2048m\'',
              args: [
                Arg(
                name: 'jvm-option'
              )
              ]
            ),
            Option(
              name: ['--main-entry', '-m'],
              description: 'A string containing the path to the .NET executable relative to zip root',
              args: [
                Arg(
                name: 'main-entr'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--registry-password',
              description: 'The password of the container registry',
              args: [
                Arg(
                name: 'registry-passwor'
              )
              ]
            ),
            Option(
              name: '--registry-username',
              description: 'The username of the container registry',
              args: [
                Arg(
                name: 'registry-usernam'
              )
              ]
            ),
            Option(
              name: '--runtime-version',
              description: 'Runtime version of used language',
              args: [
                Arg(
                name: 'runtime-version',
                suggestions: [

                  FigSuggestion(name: 'Java_11'),
                  FigSuggestion(name: 'Java_17'),
                  FigSuggestion(name: 'Java_8'),
                  FigSuggestion(name: 'NetCore_31')
                ]
              )
              ]
            ),
            Option(
              name: '--source-path',
              description: 'Deploy the specified source folder. The folder will be packed into tar, uploaded, and built using kpack. Default to the current folder if no value provided',
              args: [
                Arg(
                name: 'source-pat'
              )
              ]
            ),
            Option(
              name: '--target-module',
              description: 'Child module to be deployed, required for multiple jar packages built from source code',
              args: [
                Arg(
                name: 'target-modul'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Deployment version, keep unchanged if not set',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all apps in the Azure Spring Cloud',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show logs of an app instance, logs will be streamed when setting \'-f/--follow\'',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: ['--follow', '-f', ''],
              description: 'Specify if the logs should be streamed'
            ),
            Option(
              name: '--format-json',
              description: 'Format JSON logs if structured log is enabled',
              args: [
                Arg(
                name: 'format-jso'
              )
              ]
            ),
            Option(
              name: ['--instance', '-i'],
              description: 'Name of an existing instance of the deployment',
              args: [
                Arg(
                name: 'instanc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum kilobytes of logs to return. Ceiling number is 2048',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--lines',
              description: 'Number of lines to show. Maximum is 10000',
              args: [
                Arg(
                name: 'line'
              )
              ]
            ),
            Option(
              name: '--since',
              description: 'Only return logs newer than a relative duration like 5s, 2m, or 1h. Maximum is 1h',
              args: [
                Arg(
                name: 'sinc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart instances of the app, default to production deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
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
          name: 'scale',
          description: 'Manually scale an app or its deployments',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'CPU resource quantity. Should be 500m or number of CPU cores',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Number of instance',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Memory resource quantity. Should be 512Mi or #Gi, e.g., 1Gi, 3Gi',
              args: [
                Arg(
                name: 'memor'
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
          name: 'set-deployment',
          description: 'Set production deployment of an app',
          options: [

            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
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
          name: 'show',
          description: 'Show the details of an app in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deploy-log',
          description: 'Show build log of the last deploy, only apply to source code deploy, default to production deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start instances of the app, default to production deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
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
          name: 'stop',
          description: 'Stop instances of the app, default to production deployment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
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
          name: 'unset-deployment',
          description: 'Unset production deployment of an app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
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
          name: 'update',
          description: 'Update configurations of an app',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of app',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--assign-endpoint',
              description: 'If true, assign endpoint URL for direct access',
              args: [
                Arg(
                name: 'assign-endpoint',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--config-file-patterns',
              description: '(Enterprise Tier Only) Config file patterns separated with \',\' to decide which patterns of Application Configuration Service will be used. Use \'""\' to clear existing configurations',
              args: [
                Arg(
                name: 'config-file-pattern'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--disable-probe',
              description: 'If true, disable the liveness and readiness probe',
              args: [
                Arg(
                name: 'disable-probe',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-ingress-to-app-tls',
              description: 'If true, enable ingress to app tls',
              args: [
                Arg(
                name: 'enable-ingress-to-app-tls',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-persistent-storage',
              description: 'If true, mount a 50G (Standard Pricing tier) or 1G (Basic Pricing tier) disk with default path',
              args: [
                Arg(
                name: 'enable-persistent-storage',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'Space-separated environment variables in \'key[=value]\' format',
              args: [
                Arg(
                name: 'en'
              )
              ]
            ),
            Option(
              name: '--https-only',
              description: 'If true, access app via https'
            ),
            Option(
              name: '--jvm-options',
              description: 'A string containing jvm options, use \'=\' instead of \' \' for this argument to avoid bash parse error, eg: --jvm-options=\'-Xms1024m -Xmx2048m\'',
              args: [
                Arg(
                name: 'jvm-option'
              )
              ]
            ),
            Option(
              name: ['--loaded-public-certificate-file', '-f'],
              description: 'A json file path indicates the certificates which would be loaded to app',
              args: [
                Arg(
                name: 'loaded-public-certificate-fil'
              )
              ]
            ),
            Option(
              name: ['--main-entry', '-m'],
              description: 'The path to the .NET executable relative to zip root',
              args: [
                Arg(
                name: 'main-entr'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--persistent-storage',
              description: 'A json file path for the persistent storages to be mounted to the app',
              args: [
                Arg(
                name: 'persistent-storag'
              )
              ]
            ),
            Option(
              name: '--runtime-version',
              description: 'Runtime version of used language',
              args: [
                Arg(
                name: 'runtime-version',
                suggestions: [

                  FigSuggestion(name: 'Java_11'),
                  FigSuggestion(name: 'Java_17'),
                  FigSuggestion(name: 'Java_8'),
                  FigSuggestion(name: 'NetCore_31')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'binding',
          description: 'Commands to manage bindings with Azure Data Services, you need to manually restart app to make settings take effect',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all service bindings in an app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a service binding of the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of service binding',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a service binding',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of service binding',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cosmos',
              description: 'Commands to manage Azure Cosmos DB bindings',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Bind an Azure Cosmos DB with the app',
                  options: [

                    Option(
                      name: '--api-type',
                      description: 'Type of API',
                      args: [
                        Arg(
                        name: 'api-type',
                        suggestions: [

                          FigSuggestion(name: 'cassandra'),
                          FigSuggestion(name: 'gremlin'),
                          FigSuggestion(name: 'mongo'),
                          FigSuggestion(name: 'sql'),
                          FigSuggestion(name: 'table')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: '--resource-id',
                      description: 'Azure resource ID of the service to bind with',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--collection-name',
                      description: 'Name of collection. Required for gremlin',
                      args: [
                        Arg(
                        name: 'collection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'Name of database. Required for mongo, sql, gremlin',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--key-space',
                      description: 'Cassandra key space. Required for cassandra',
                      args: [
                        Arg(
                        name: 'key-spac'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an Azure Cosmos DB service binding of the app',
                  options: [

                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--collection-name',
                      description: 'Name of collection. Required for gremlin',
                      args: [
                        Arg(
                        name: 'collection-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'Name of database. Required for mongo, sql, gremlin',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--key-space',
                      description: 'Cassandra key space. Required for cassandra',
                      args: [
                        Arg(
                        name: 'key-spac'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'mysql',
              description: 'Commands to manage Azure Database for MySQL bindings',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Bind an Azure Database for MySQL with the app',
                  options: [

                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--key',
                      description: 'API key of the service',
                      args: [
                        Arg(
                        name: 'ke'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: '--resource-id',
                      description: 'Azure resource ID of the service to bind with',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the database',
                      args: [
                        Arg(
                        name: 'usernam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an Azure Database for MySQL service binding of the app',
                  options: [

                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--database-name',
                      description: 'Database name',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--key',
                      description: 'API key of the service',
                      args: [
                        Arg(
                        name: 'ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the database',
                      args: [
                        Arg(
                        name: 'usernam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'redis',
              description: 'Commands to manage Azure Cache for Redis bindings',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Bind an Azure Cache for Redis with the app',
                  options: [

                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: '--resource-id',
                      description: 'Azure resource ID of the service to bind with',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--disable-ssl',
                      description: 'If true, disable SSL. If false, enable SSL'
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an Azure Cache for Redis service binding of the app',
                  options: [

                    Option(
                      name: '--app',
                      description: 'Name of app',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of service binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--disable-ssl',
                      description: 'If true, disable SSL. If false, enable SSL'
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'custom-domain',
          description: 'Commands to manage custom domains',
          subcommands: [

            Subcommand(
              name: 'bind',
              description: 'Bind a custom domain with the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: '--enable-ingress-to-app-tls',
                  description: 'If true, enable ingress to app tls',
                  args: [
                    Arg(
                    name: 'enable-ingress-to-app-tls',
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
              name: 'list',
              description: 'List all custom domains of the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a custom domain',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'unbind',
              description: 'Unbind a custom-domain of the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a custom domain of the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                ),
                Option(
                  name: '--enable-ingress-to-app-tls',
                  description: 'If true, enable ingress to app tls',
                  args: [
                    Arg(
                    name: 'enable-ingress-to-app-tls',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deployment',
          description: 'Commands to manage life cycle of deployments of an app in Azure Spring Cloud. More operations on deployments can be done on app level with parameter --deployment. e.g. az spring-cloud app deploy --deployment',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a staging deployment for the app. To deploy code or update setting to an existing deployment, use az spring-cloud app deploy/update --deployment <staging deployment>',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of deployment',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--artifact-path',
                  description: 'Deploy the specified pre-built artifact (jar or netcore zip)',
                  args: [
                    Arg(
                    name: 'artifact-pat'
                  )
                  ]
                ),
                Option(
                  name: '--build-env',
                  description: 'Space-separated environment variables in \'key[=value]\' format',
                  args: [
                    Arg(
                    name: 'build-en'
                  )
                  ]
                ),
                Option(
                  name: '--builder',
                  description: '(Enterprise Tier Only) Build service builder used to build the executable',
                  args: [
                    Arg(
                    name: 'builde'
                  )
                  ]
                ),
                Option(
                  name: '--config-file-patterns',
                  description: '(Enterprise Tier Only) Config file patterns separated with \',\' to decide which patterns of Application Configuration Service will be used. Use \'""\' to clear existing configurations',
                  args: [
                    Arg(
                    name: 'config-file-pattern'
                  )
                  ]
                ),
                Option(
                  name: '--container-args',
                  description: 'The arguments of the container image',
                  args: [
                    Arg(
                    name: 'container-arg'
                  )
                  ]
                ),
                Option(
                  name: '--container-command',
                  description: 'The command of the container image',
                  args: [
                    Arg(
                    name: 'container-comman'
                  )
                  ]
                ),
                Option(
                  name: '--container-image',
                  description: 'The container image tag',
                  args: [
                    Arg(
                    name: 'container-imag'
                  )
                  ]
                ),
                Option(
                  name: '--container-registry',
                  description: 'The registry of the container image',
                  args: [
                    Arg(
                    name: 'container-registr'
                  )
                  ]
                ),
                Option(
                  name: '--cpu',
                  description: 'CPU resource quantity. Should be 500m or number of CPU cores',
                  args: [
                    Arg(
                    name: 'cp'
                  )
                  ]
                ),
                Option(
                  name: '--disable-probe',
                  description: 'If true, disable the liveness and readiness probe',
                  args: [
                    Arg(
                    name: 'disable-probe',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--disable-validation',
                  description: 'If true, disable jar validation',
                  args: [
                    Arg(
                    name: 'disable-validation',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--env',
                  description: 'Space-separated environment variables in \'key[=value]\' format',
                  args: [
                    Arg(
                    name: 'en'
                  )
                  ]
                ),
                Option(
                  name: '--instance-count',
                  description: 'Number of instance',
                  args: [
                    Arg(
                    name: 'instance-coun'
                  )
                  ]
                ),
                Option(
                  name: '--jvm-options',
                  description: 'A string containing jvm options, use \'=\' instead of \' \' for this argument to avoid bash parse error, eg: --jvm-options=\'-Xms1024m -Xmx2048m\'',
                  args: [
                    Arg(
                    name: 'jvm-option'
                  )
                  ]
                ),
                Option(
                  name: ['--main-entry', '-m'],
                  description: 'A string containing the path to the .NET executable relative to zip root',
                  args: [
                    Arg(
                    name: 'main-entr'
                  )
                  ]
                ),
                Option(
                  name: '--memory',
                  description: 'Memory resource quantity. Should be 512Mi or #Gi, e.g., 1Gi, 3Gi',
                  args: [
                    Arg(
                    name: 'memor'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--registry-password',
                  description: 'The password of the container registry',
                  args: [
                    Arg(
                    name: 'registry-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--registry-username',
                  description: 'The username of the container registry',
                  args: [
                    Arg(
                    name: 'registry-usernam'
                  )
                  ]
                ),
                Option(
                  name: '--runtime-version',
                  description: 'Runtime version of used language',
                  args: [
                    Arg(
                    name: 'runtime-version',
                    suggestions: [

                      FigSuggestion(name: 'Java_11'),
                      FigSuggestion(name: 'Java_17'),
                      FigSuggestion(name: 'Java_8'),
                      FigSuggestion(name: 'NetCore_31')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--skip-clone-settings',
                  description: 'Create staging deployment will automatically copy settings from production deployment'
                ),
                Option(
                  name: '--source-path',
                  description: 'Deploy the specified source folder. The folder will be packed into tar, uploaded, and built using kpack. Default to the current folder if no value provided',
                  args: [
                    Arg(
                    name: 'source-pat'
                  )
                  ]
                ),
                Option(
                  name: '--target-module',
                  description: 'Child module to be deployed, required for multiple jar packages built from source code',
                  args: [
                    Arg(
                    name: 'target-modul'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Deployment version, keep unchanged if not set',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a deployment of the app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of deployment',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
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
              name: 'generate-heap-dump',
              description: 'Generate a heap dump of your target app instance to given file path',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--app-instance',
                  description: 'Target app instance you want to dump',
                  args: [
                    Arg(
                    name: 'app-instanc'
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'The mount file path for your dump file',
                  args: [
                    Arg(
                    name: 'file-pat'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: ['--deployment', '-d'],
                  description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'generate-thread-dump',
              description: 'Generate a thread dump of your target app instance to given file path',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--app-instance',
                  description: 'Target app instance you want to dump',
                  args: [
                    Arg(
                    name: 'app-instanc'
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'The mount file path for your dump file',
                  args: [
                    Arg(
                    name: 'file-pat'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: ['--deployment', '-d'],
                  description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all deployments in an app',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a deployment',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of deployment',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'start-jfr',
              description: 'Start a JFR on your target app instance to given file path',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of app',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--app-instance',
                  description: 'Target app instance you want to dump',
                  args: [
                    Arg(
                    name: 'app-instanc'
                  )
                  ]
                ),
                Option(
                  name: '--file-path',
                  description: 'The mount file path for your dump file',
                  args: [
                    Arg(
                    name: 'file-pat'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: ['--deployment', '-d'],
                  description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--duration',
                  description: 'Duration of JFR',
                  args: [
                    Arg(
                    name: 'duratio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Manage an app\'s managed identities',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Enable system-assigned managed identity or assign user-assigned managed identities to an app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of app',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
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
                  name: '--system-assigned',
                  description: 'Enable system-assigned managed identity on an app',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated user-assigned managed identity resource IDs to assgin to an app',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'force-set',
              description: 'Force set managed identities on an app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of app',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Allowed values: ["enable", "disable"]. Use "enable" to enable or keep system-assigned managed identity. Use "disable" to remove system-assigned managed identity',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Allowed values: ["disable", space-separated user-assigned managed identity resource IDs]. Use "disable" to remove all user-assigned managed identities, use resource IDs to assign or keep user-assigned managed identities',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove managed identity from an app',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of app',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--system-assigned',
                  description: 'Remove system-assigned managed identity',
                  args: [
                    Arg(
                    name: 'system-assigned',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated user-assigned managed identity resource IDs to remove. If no ID is provided, remove ALL user-assigned managed identities',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Display app\'s managed identity info',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of app',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'log',
          description: 'Commands to tail app instances logs with multiple options. If the app has only one instance, the instance name is optional',
          subcommands: [

            Subcommand(
              name: 'tail',
              description: 'Show logs of an app instance, logs will be streamed when setting \'-f/--follow\'',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of app',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: ['--deployment', '-d'],
                  description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: ['--follow', '-f', ''],
                  description: 'Specify if the logs should be streamed'
                ),
                Option(
                  name: '--format-json',
                  description: 'Format JSON logs if structured log is enabled',
                  args: [
                    Arg(
                    name: 'format-jso'
                  )
                  ]
                ),
                Option(
                  name: ['--instance', '-i'],
                  description: 'Name of an existing instance of the deployment',
                  args: [
                    Arg(
                    name: 'instanc'
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'Maximum kilobytes of logs to return. Ceiling number is 2048',
                  args: [
                    Arg(
                    name: 'limi'
                  )
                  ]
                ),
                Option(
                  name: '--lines',
                  description: 'Number of lines to show. Maximum is 10000',
                  args: [
                    Arg(
                    name: 'line'
                  )
                  ]
                ),
                Option(
                  name: '--since',
                  description: 'Only return logs newer than a relative duration like 5s, 2m, or 1h. Maximum is 1h',
                  args: [
                    Arg(
                    name: 'sinc'
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
      name: 'app-insights',
      description: 'Commands to management Application Insights in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show Application Insights settings',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
          description: 'Update Application Insights settings',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
              name: '--app-insights',
              description: 'Name of the existing Application Insights in the same Resource Group. Or Resource ID of the existing Application Insights in a different Resource Group',
              args: [
                Arg(
                name: 'app-insight'
              )
              ]
            ),
            Option(
              name: '--app-insights-key',
              description: 'Connection string (recommended) or Instrumentation key of the existing Application Insights',
              args: [
                Arg(
                name: 'app-insights-ke'
              )
              ]
            ),
            Option(
              name: '--disable',
              description: 'Disable Application Insights',
              args: [
                Arg(
                name: 'disable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sampling-rate',
              description: 'Sampling Rate of application insights. Maximum is 100',
              args: [
                Arg(
                name: 'sampling-rat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'application-configuration-service',
      description: '(Enterprise Tier Only) Commands to manage Application Configuration Service in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'bind',
          description: 'Bind an app to Application Configuration Service',
          options: [

            Option(
              name: '--app',
              description: 'Name of app',
              args: [
                Arg(
                name: 'ap'
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'clear',
          description: 'Reset all Application Configuration Service settings',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the provisioning status, runtime status, and settings of Application Configuration Service',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unbind',
          description: 'Unbind an app from Application Configuration Service',
          options: [

            Option(
              name: '--app',
              description: 'Name of app',
              args: [
                Arg(
                name: 'ap'
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'git',
          description: 'Commands to manage Application Configuration Service git property in Azure Spring Cloud',
          subcommands: [

            Subcommand(
              name: 'repo',
              description: 'Commands to manage Application Configuration Service git repository in Azure Spring Cloud',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Git property to the Application Configuration Service settings',
                  options: [

                    Option(
                      name: '--label',
                      description: 'Required branch name to search in the Git repository',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Required unique name to label each item of git configs',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--patterns',
                      description: 'Required patterns used to search in Git repositories. For each pattern, use format like {application} or {application}/{profile} instead of {application}-{profile}.yml, and separate them by comma',
                      args: [
                        Arg(
                        name: 'pattern'
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--uri',
                      description: 'Required Git URI',
                      args: [
                        Arg(
                        name: 'ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key',
                      description: 'Host key of the added config',
                      args: [
                        Arg(
                        name: 'host-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-algorithm',
                      description: 'Host key algorithm of the added config',
                      args: [
                        Arg(
                        name: 'host-key-algorith'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-check',
                      description: 'Strict host key checking of the added config which is used in SSH authentication. If false, ignore errors with host key',
                      args: [
                        Arg(
                        name: 'host-key-chec'
                      )
                      ]
                    ),
                    Option(
                      name: '--password',
                      description: 'Password of the added config',
                      args: [
                        Arg(
                        name: 'passwor'
                      )
                      ]
                    ),
                    Option(
                      name: '--private-key',
                      description: 'Private_key of the added config',
                      args: [
                        Arg(
                        name: 'private-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--search-paths',
                      description: 'Search_paths of the added config, use , as delimiter for multiple paths',
                      args: [
                        Arg(
                        name: 'search-path'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the added config',
                      args: [
                        Arg(
                        name: 'usernam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all Git settings of Application Configuration Service',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Delete an existing Git property from the Application Configuration Service settings',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Required unique name to label each item of git configs',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an existing Git property in the Application Configuration Service settings',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Required unique name to label each item of git configs',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key',
                      description: 'Host key of the added config',
                      args: [
                        Arg(
                        name: 'host-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-algorithm',
                      description: 'Host key algorithm of the added config',
                      args: [
                        Arg(
                        name: 'host-key-algorith'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-check',
                      description: 'Strict host key checking of the added config which is used in SSH authentication. If false, ignore errors with host key',
                      args: [
                        Arg(
                        name: 'host-key-chec'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Required branch name to search in the Git repository',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--password',
                      description: 'Password of the added config',
                      args: [
                        Arg(
                        name: 'passwor'
                      )
                      ]
                    ),
                    Option(
                      name: '--patterns',
                      description: 'Required patterns used to search in Git repositories. For each pattern, use format like {application} or {application}/{profile} instead of {application}-{profile}.yml, and separate them by comma',
                      args: [
                        Arg(
                        name: 'pattern'
                      )
                      ]
                    ),
                    Option(
                      name: '--private-key',
                      description: 'Private_key of the added config',
                      args: [
                        Arg(
                        name: 'private-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--search-paths',
                      description: 'Search_paths of the added config, use , as delimiter for multiple paths',
                      args: [
                        Arg(
                        name: 'search-path'
                      )
                      ]
                    ),
                    Option(
                      name: '--uri',
                      description: 'Required Git URI',
                      args: [
                        Arg(
                        name: 'ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the added config',
                      args: [
                        Arg(
                        name: 'usernam'
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
    ),
    Subcommand(
      name: 'build-service',
      description: '(Enterprise Tier Only) Commands to manage build service in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'builder',
          description: '(Enterprise Tier Only) Commands to manage builder of build service',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a builder',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The builder name',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--builder-file',
                  description: 'The file path of JSON array of builder',
                  args: [
                    Arg(
                    name: 'builder-fil'
                  )
                  ]
                ),
                Option(
                  name: '--builder-json',
                  description: 'The JSON array of builder',
                  args: [
                    Arg(
                    name: 'builder-jso'
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
              name: 'delete',
              description: 'Delete a builder',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The builder name',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
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
              name: 'show',
              description: 'Show a builder',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The builder name',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a builder',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The builder name',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--builder-file',
                  description: 'The file path of JSON array of builder',
                  args: [
                    Arg(
                    name: 'builder-fil'
                  )
                  ]
                ),
                Option(
                  name: '--builder-json',
                  description: 'The JSON array of builder',
                  args: [
                    Arg(
                    name: 'builder-jso'
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
              name: 'buildpack-binding',
              description: '(Enterprise Tier Only) Commands to manage buildpack-binding of builder',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: '(Enterprise Tier Only) Create a buildpack binding',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name for buildpack binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--type',
                      description: 'Required type for buildpack binding',
                      args: [
                        Arg(
                        name: 'type',
                        suggestions: [

                          FigSuggestion(name: 'ApacheSkyWalking'),
                          FigSuggestion(name: 'AppDynamics'),
                          FigSuggestion(name: 'ApplicationInsights'),
                          FigSuggestion(name: 'Dynatrace'),
                          FigSuggestion(name: 'ElasticAPM'),
                          FigSuggestion(name: 'NewRelic')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--builder-name',
                      description: 'The name for builder',
                      args: [
                        Arg(
                        name: 'builder-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--properties',
                      description: 'Non-sensitive properties for launchProperties. Format "key[=value]"',
                      args: [
                        Arg(
                        name: 'propertie'
                      )
                      ]
                    ),
                    Option(
                      name: '--secrets',
                      description: 'Sensitive properties for launchProperties. Once put, it will be encrypted and never return to user. Format "key[=value]"',
                      args: [
                        Arg(
                        name: 'secret'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: '(Enterprise Tier Only) Delete a buildpack binding',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name for buildpack binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--builder-name',
                      description: 'The name for builder',
                      args: [
                        Arg(
                        name: 'builder-nam'
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
                  description: '(Enterprise Tier Only) List all buildpack binding in a builder. The secrets will be masked',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--builder-name',
                      description: 'The name for builder',
                      args: [
                        Arg(
                        name: 'builder-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'set',
                  description: '(Enterprise Tier Only) Set a buildpack binding',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name for buildpack binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--type',
                      description: 'Required type for buildpack binding',
                      args: [
                        Arg(
                        name: 'type',
                        suggestions: [

                          FigSuggestion(name: 'ApacheSkyWalking'),
                          FigSuggestion(name: 'AppDynamics'),
                          FigSuggestion(name: 'ApplicationInsights'),
                          FigSuggestion(name: 'Dynatrace'),
                          FigSuggestion(name: 'ElasticAPM'),
                          FigSuggestion(name: 'NewRelic')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--builder-name',
                      description: 'The name for builder',
                      args: [
                        Arg(
                        name: 'builder-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--properties',
                      description: 'Non-sensitive properties for launchProperties. Format "key[=value]"',
                      args: [
                        Arg(
                        name: 'propertie'
                      )
                      ]
                    ),
                    Option(
                      name: '--secrets',
                      description: 'Sensitive properties for launchProperties. Once put, it will be encrypted and never return to user. Format "key[=value]"',
                      args: [
                        Arg(
                        name: 'secret'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: '(Enterprise Tier Only) Show a buildpack binding. The secrets will be masked',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name for buildpack binding',
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
                      name: ['--service', '-s'],
                      description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                      args: [
                        Arg(
                        name: 'servic'
                      )
                      ]
                    ),
                    Option(
                      name: '--builder-name',
                      description: 'The name for builder',
                      args: [
                        Arg(
                        name: 'builder-nam'
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
    ),
    Subcommand(
      name: 'certificate',
      description: 'Commands to manage certificates',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a certificate in Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of certificate',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--only-public-cert',
              description: 'If true, only import public certificate part from key vault'
            ),
            Option(
              name: ['--public-certificate-file', '-f'],
              description: 'A file path for the public certificate to be uploaded',
              args: [
                Arg(
                name: 'public-certificate-fil'
              )
              ]
            ),
            Option(
              name: '--vault-certificate-name',
              description: 'The certificate name in key vault',
              args: [
                Arg(
                name: 'vault-certificate-nam'
              )
              ]
            ),
            Option(
              name: '--vault-uri',
              description: 'The key vault uri where store the certificate',
              args: [
                Arg(
                name: 'vault-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all certificates in Azure Spring Cloud',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--certificate-type',
              description: 'Type of uploaded certificate',
              args: [
                Arg(
                name: 'certificate-type',
                suggestions: [

                  FigSuggestion(name: 'ContentCertificate'),
                  FigSuggestion(name: 'KeyVaultCertificate')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-reference-app',
          description: 'List all the apps reference an existing certificate in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of certificate',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a certificate in Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of certificate',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a certificate in Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of certificate',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config-server',
      description: '(Support Standard Tier and Basic Tier) Commands to manage Config Server in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Erase all settings in Config Server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
          name: 'set',
          description: 'Set Config Server from a yaml file',
          options: [

            Option(
              name: '--config-file',
              description: 'A yaml file path for the configuration of Spring Cloud config server',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show Config Server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
          name: 'git',
          description: 'Commands to manage Config Server git property in Azure Spring Cloud',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set git property of Config Server, will totally override the old one',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of Azure Spring Cloud',
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
                  name: '--uri',
                  description: 'Uri of the added config',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                ),
                Option(
                  name: '--defer',
                  description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
                  args: [
                    Arg(
                    name: 'defe'
                  )
                  ]
                ),
                Option(
                  name: '--host-key',
                  description: 'Host key of the added config',
                  args: [
                    Arg(
                    name: 'host-ke'
                  )
                  ]
                ),
                Option(
                  name: '--host-key-algorithm',
                  description: 'Host key algorithm of the added config',
                  args: [
                    Arg(
                    name: 'host-key-algorith'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'Label of the added config',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Password of the added config',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--private-key',
                  description: 'Private_key of the added config',
                  args: [
                    Arg(
                    name: 'private-ke'
                  )
                  ]
                ),
                Option(
                  name: '--search-paths',
                  description: 'Search_paths of the added config, use , as delimiter for multiple paths',
                  args: [
                    Arg(
                    name: 'search-path'
                  )
                  ]
                ),
                Option(
                  name: '--strict-host-key-checking',
                  description: 'Strict_host_key_checking of the added config',
                  args: [
                    Arg(
                    name: 'strict-host-key-checkin'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'Username of the added config',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'repo',
              description: 'Commands to manage Config Server git repository in Azure Spring Cloud',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a new repository of git property of Config Server',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of Azure Spring Cloud',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--repo-name',
                      description: 'Name of the repo',
                      args: [
                        Arg(
                        name: 'repo-nam'
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
                      name: '--uri',
                      description: 'Uri of the added config',
                      args: [
                        Arg(
                        name: 'ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--defer',
                      description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
                      args: [
                        Arg(
                        name: 'defe'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key',
                      description: 'Host key of the added config',
                      args: [
                        Arg(
                        name: 'host-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-algorithm',
                      description: 'Host key algorithm of the added config',
                      args: [
                        Arg(
                        name: 'host-key-algorith'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Label of the added config',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--password',
                      description: 'Password of the added config',
                      args: [
                        Arg(
                        name: 'passwor'
                      )
                      ]
                    ),
                    Option(
                      name: '--pattern',
                      description: 'Pattern of the repo, use , as delimiter for multiple patterns',
                      args: [
                        Arg(
                        name: 'patter'
                      )
                      ]
                    ),
                    Option(
                      name: '--private-key',
                      description: 'Private_key of the added config',
                      args: [
                        Arg(
                        name: 'private-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--search-paths',
                      description: 'Search_paths of the added config, use , as delimiter for multiple paths',
                      args: [
                        Arg(
                        name: 'search-path'
                      )
                      ]
                    ),
                    Option(
                      name: '--strict-host-key-checking',
                      description: 'Strict_host_key_checking of the added config',
                      args: [
                        Arg(
                        name: 'strict-host-key-checkin'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the added config',
                      args: [
                        Arg(
                        name: 'usernam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all repositories of git property of Config Server',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of Azure Spring Cloud',
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
                      name: '--defer',
                      description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
                      args: [
                        Arg(
                        name: 'defe'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove an existing repository of git property of Config Server',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of Azure Spring Cloud',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--repo-name',
                      description: 'Name of the repo',
                      args: [
                        Arg(
                        name: 'repo-nam'
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
                      name: '--defer',
                      description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
                      args: [
                        Arg(
                        name: 'defe'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Override an existing repository of git property of Config Server, will totally override the old one',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of Azure Spring Cloud',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--repo-name',
                      description: 'Name of the repo',
                      args: [
                        Arg(
                        name: 'repo-nam'
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
                      name: '--defer',
                      description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
                      args: [
                        Arg(
                        name: 'defe'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key',
                      description: 'Host key of the added config',
                      args: [
                        Arg(
                        name: 'host-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--host-key-algorithm',
                      description: 'Host key algorithm of the added config',
                      args: [
                        Arg(
                        name: 'host-key-algorith'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Label of the added config',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--password',
                      description: 'Password of the added config',
                      args: [
                        Arg(
                        name: 'passwor'
                      )
                      ]
                    ),
                    Option(
                      name: '--pattern',
                      description: 'Pattern of the repo, use , as delimiter for multiple patterns',
                      args: [
                        Arg(
                        name: 'patter'
                      )
                      ]
                    ),
                    Option(
                      name: '--private-key',
                      description: 'Private_key of the added config',
                      args: [
                        Arg(
                        name: 'private-ke'
                      )
                      ]
                    ),
                    Option(
                      name: '--search-paths',
                      description: 'Search_paths of the added config, use , as delimiter for multiple paths',
                      args: [
                        Arg(
                        name: 'search-path'
                      )
                      ]
                    ),
                    Option(
                      name: '--strict-host-key-checking',
                      description: 'Strict_host_key_checking of the added config',
                      args: [
                        Arg(
                        name: 'strict-host-key-checkin'
                      )
                      ]
                    ),
                    Option(
                      name: '--uri',
                      description: 'Uri of the added config',
                      args: [
                        Arg(
                        name: 'ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--username',
                      description: 'Username of the added config',
                      args: [
                        Arg(
                        name: 'usernam'
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
    ),
    Subcommand(
      name: 'connection',
      description: 'Commands to manage spring-cloud connections',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a spring-cloud connection',
          options: [

            Option(
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--connection',
              description: 'Name of the spring-cloud connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
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
          description: 'List connections of a spring-cloud',
          options: [

            Option(
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--source-id',
              description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
          description: 'List source configurations of a spring-cloud connection',
          options: [

            Option(
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--connection',
              description: 'Name of the spring-cloud connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-support-types',
          description: 'List client types and auth types supported by spring-cloud connections',
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
          description: 'Get the details of a spring-cloud connection',
          options: [

            Option(
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--connection',
              description: 'Name of the spring-cloud connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a spring-cloud connection',
          options: [

            Option(
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--connection',
              description: 'Name of the spring-cloud connection',
              args: [
                Arg(
                name: 'connectio'
              )
              ]
            ),
            Option(
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
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
              name: '--app',
              description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--connection',
              description: 'Name of the spring-cloud connection',
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
              name: '--deployment',
              description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--id',
              description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
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
              name: ['--resource-group', '-g'],
              description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
              args: [
                Arg(
                name: 'servic'
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
          description: 'Create a connection between a spring-cloud and a target resource',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Create a spring-cloud connection to appconfig',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
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
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to confluent-cloud',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to cosmos-cassandra',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to cosmos-gremlin',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to cosmos-mongo',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to cosmos-sql',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to cosmos-table',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to eventhub',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to keyvault',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new keyvault when creating the spring-cloud connection'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to mysql',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to mysql-flexible',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to postgres',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new postgres when creating the spring-cloud connection'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to postgres-flexible',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to redis',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to redis-enterprise',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to servicebus',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to signalr',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to sql',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to storage-blob',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--new',
                  description: 'Indicates whether to create a new storage-blob when creating the spring-cloud connection'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to storage-file',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to storage-queue',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to storage-table',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Create a spring-cloud connection to webpubsub',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
          description: 'Update a spring-cloud connection',
          subcommands: [

            Subcommand(
              name: 'appconfig',
              description: 'Update a spring-cloud to appconfig connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to confluent-cloud connection',
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
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
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
                  description: 'The client type used on the spring-cloud',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--source-id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--source-id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--source-id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--source-id',
                  description: 'The resource id of a spring-cloud. Required if [\'--resource-group\', \'--service\', \'--app\', \'--deployment\'] are not specified',
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
              description: 'Update a spring-cloud to cosmos-cassandra connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to cosmos-gremlin connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to cosmos-mongo connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to cosmos-sql connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to cosmos-table connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to eventhub connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to keyvault connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to mysql connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to mysql-flexible connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to postgres connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to postgres-flexible connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to redis connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to redis-enterprise connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to servicebus connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to signalr connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to sql connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to storage-blob connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to storage-file connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to storage-queue connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to storage-table connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
              description: 'Update a spring-cloud to webpubsub connection',
              options: [

                Option(
                  name: '--app',
                  description: 'Name of the spring-cloud app. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--client-type',
                  description: 'The client type used on the spring-cloud',
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
                  description: 'Name of the spring-cloud connection',
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
                  name: '--deployment',
                  description: 'Argument \'deployment\' has been deprecated and will be removed in a future release. The deployment name of the app. Required if \'--id\' is not specified. Note: The default value of --deployment is deprecated and will be removed in a future release. Use --deployment default if you want stay in current behavior',
                  args: [
                    Arg(
                    name: 'deploymen'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The resource id of the connection. [\'--resource-group\', \'--service\', \'--app\', \'--deployment\', \'--connection\'] are required if \'--id\' is not specified',
                  args: [
                    Arg(
                    name: 'i'
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
                  description: 'The resource group which contains the spring-cloud. Required if \'--id\' is not specified.None',
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
                  name: '--service',
                  description: 'Name of the spring-cloud service. Required if \'--id\' is not specified.None',
                  args: [
                    Arg(
                    name: 'servic'
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
      name: 'create',
      description: 'Create an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
          name: ['--api-portal-instance-count', '--ap-instance'],
          description: '(Enterprise Tier Only) Number of API portal instances',
          args: [
            Arg(
            name: 'api-portal-instance-coun'
          )
          ]
        ),
        Option(
          name: '--app-insights',
          description: 'Name of the existing Application Insights in the same Resource Group. Or Resource ID of the existing Application Insights in a different Resource Group',
          args: [
            Arg(
            name: 'app-insight'
          )
          ]
        ),
        Option(
          name: '--app-insights-key',
          description: 'Connection string (recommended) or Instrumentation key of the existing Application Insights',
          args: [
            Arg(
            name: 'app-insights-ke'
          )
          ]
        ),
        Option(
          name: ['--app-network-resource-group', '--app-nrg'],
          description: 'The resource group where all network resources for apps will be created in',
          args: [
            Arg(
            name: 'app-network-resource-grou'
          )
          ]
        ),
        Option(
          name: '--app-subnet',
          description: 'The name or ID of an existing subnet in "vnet" into which to deploy the Spring Cloud app. Required when deploying into a Virtual Network. Smaller subnet sizes are supported, please refer: https://aka.ms/azure-spring-cloud-smaller-subnet-vnet-docs',
          args: [
            Arg(
            name: 'app-subne'
          )
          ]
        ),
        Option(
          name: '--build-pool-size',
          description: '(Enterprise Tier Only) Size of build agent pool. See aka.ms/azure-spring-cloud-build-service-docs for size info',
          args: [
            Arg(
            name: 'build-pool-size',
            suggestions: [

              FigSuggestion(name: 'S1'),
              FigSuggestion(name: 'S2'),
              FigSuggestion(name: 'S3'),
              FigSuggestion(name: 'S4'),
              FigSuggestion(name: 'S5')
            ]
          )
          ]
        ),
        Option(
          name: '--disable-app-insights',
          description: 'Disable Application Insights, if not disabled and no existing Application Insights specified with --app-insights-key or --app-insights, will create a new Application Insights instance in the same resource group',
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
          name: ['--enable-application-configuration-service', '--enable-acs'],
          description: '(Enterprise Tier Only) Enable Application Configuration Service'
        ),
        Option(
          name: '--enable-api-portal',
          description: '(Enterprise Tier Only) Enable API portal'
        ),
        Option(
          name: '--enable-gateway',
          description: '(Enterprise Tier Only) Enable Spring Cloud Gateway'
        ),
        Option(
          name: ['--enable-service-registry', '--enable-sr'],
          description: '(Enterprise Tier Only) Enable Service Registry'
        ),
        Option(
          name: '--gateway-instance-count',
          description: '(Enterprise Tier Only) Number of Spring Cloud Gateway instances',
          args: [
            Arg(
            name: 'gateway-instance-coun'
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
          name: '--reserved-cidr-range',
          description: 'Comma-separated list of IP address ranges in CIDR format. The IP ranges are reserved to host underlying Azure Spring Cloud infrastructure, which should be 3 at least /16 unused IP ranges, must not overlap with any Subnet IP ranges',
          args: [
            Arg(
            name: 'reserved-cidr-rang'
          )
          ]
        ),
        Option(
          name: '--sampling-rate',
          description: 'Sampling Rate of application insights. Minimum is 0, maximum is 100',
          args: [
            Arg(
            name: 'sampling-rat'
          )
          ]
        ),
        Option(
          name: ['--service-runtime-network-resource-group', '--svc-nrg'],
          description: 'The resource group where all network resources for Azure Spring Cloud service runtime will be created in',
          args: [
            Arg(
            name: 'service-runtime-network-resource-grou'
          )
          ]
        ),
        Option(
          name: ['--service-runtime-subnet', '--svc-subnet'],
          description: 'The name or ID of an existing subnet in "vnet" into which to deploy the Spring Cloud service runtime. Required when deploying into a Virtual Network',
          args: [
            Arg(
            name: 'service-runtime-subne'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'Name of SKU. Enterprise is still in Preview',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Enterprise'),
              FigSuggestion(name: 'Standard')
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
          name: '--vnet',
          description: 'The name or ID of an existing Virtual Network into which to deploy the Spring Cloud instance',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        ),
        Option(
          name: '--zone-redundant',
          description: 'Create your Azure Spring Cloud service in an Azure availability zone or not, this could only be supported in several regions at the moment'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all Azure Spring Cloud in the given resource group, otherwise list the subscription\'s',
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
      description: 'Show the details for an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
      description: 'Start an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an Azure Spring Cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of Azure Spring Cloud',
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
          name: '--build-pool-size',
          description: '(Enterprise Tier Only) Size of build agent pool. See aka.ms/azure-spring-cloud-build-service-docs for size info',
          args: [
            Arg(
            name: 'build-pool-size',
            suggestions: [

              FigSuggestion(name: 'S1'),
              FigSuggestion(name: 'S2'),
              FigSuggestion(name: 'S3'),
              FigSuggestion(name: 'S4'),
              FigSuggestion(name: 'S5')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--sku',
          description: 'Name of SKU. Enterprise is still in Preview',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Enterprise'),
              FigSuggestion(name: 'Standard')
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
      name: 'gateway',
      description: '(Enterprise Tier Only) Commands to manage gateway in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear all settings of gateway',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
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
          name: 'show',
          description: 'Show the settings, provisioning status and runtime status of gateway',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing gateway properties',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--allow-credentials',
              description: 'Whether user credentials are supported on cross-site requests',
              args: [
                Arg(
                name: 'allow-credentials',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--allowed-headers',
              description: 'Comma-separated list of allowed headers in cross-site requests. The special value * allows actual requests to send any header',
              args: [
                Arg(
                name: 'allowed-header'
              )
              ]
            ),
            Option(
              name: '--allowed-methods',
              description: 'Comma-separated list of allowed HTTP methods on cross-site requests. The special value * allows all methods',
              args: [
                Arg(
                name: 'allowed-method'
              )
              ]
            ),
            Option(
              name: '--allowed-origins',
              description: 'Comma-separated list of allowed origins to make cross-site requests. The special value * allows all domains',
              args: [
                Arg(
                name: 'allowed-origin'
              )
              ]
            ),
            Option(
              name: '--api-description',
              description: 'Detailed description of the APIs available on the Gateway instance',
              args: [
                Arg(
                name: 'api-descriptio'
              )
              ]
            ),
            Option(
              name: '--api-doc-location',
              description: 'Location of additional documentation for the APIs available on the Gateway instance',
              args: [
                Arg(
                name: 'api-doc-locatio'
              )
              ]
            ),
            Option(
              name: '--api-title',
              description: 'Title describing the context of the APIs available on the Gateway instance',
              args: [
                Arg(
                name: 'api-titl'
              )
              ]
            ),
            Option(
              name: '--api-version',
              description: 'Version of APIs available on this Gateway instance',
              args: [
                Arg(
                name: 'api-versio'
              )
              ]
            ),
            Option(
              name: '--assign-endpoint',
              description: 'If true, assign endpoint URL for direct access',
              args: [
                Arg(
                name: 'assign-endpoint',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--client-id',
              description: 'The public identifier for the application',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The secret known only to the application and the authorization server',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'CPU resource quantity. Should be 500m or number of CPU cores',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: '--exposed-headers',
              description: 'Comma-separated list of HTTP response headers to expose for cross-site requests',
              args: [
                Arg(
                name: 'exposed-header'
              )
              ]
            ),
            Option(
              name: '--https-only',
              description: 'If true, access endpoint via https',
              args: [
                Arg(
                name: 'https-only',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Number of instance',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: '--issuer-uri',
              description: 'The URI of Issuer Identifier',
              args: [
                Arg(
                name: 'issuer-ur'
              )
              ]
            ),
            Option(
              name: '--max-age',
              description: 'How long, in seconds, the response from a pre-flight request can be cached by clients',
              args: [
                Arg(
                name: 'max-ag'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'Memory resource quantity. Should be 512Mi or #Gi, e.g., 1Gi, 3Gi',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--scope',
              description: 'Comma-separated list of the specific actions applications can be allowed to do on a user\'s behalf',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--server-url',
              description: 'Base URL that API consumers will use to access APIs on the Gateway instance',
              args: [
                Arg(
                name: 'server-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'custom-domain',
          description: 'Commands to manage custom domains for gateway',
          subcommands: [

            Subcommand(
              name: 'bind',
              description: 'Bind a custom domain with the gateway',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all custom domains of the gateway',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of a custom domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'unbind',
              description: 'Unbind a custom-domain of the gateway',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a custom domain of the gateway',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of custom domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--certificate',
                  description: 'Certificate name in Azure Spring Cloud',
                  args: [
                    Arg(
                    name: 'certificat'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'route-config',
          description: 'Commands to manage gateway route configs in Azure Spring Cloud',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a gateway route config with routing rules of Json array format',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of route config',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--app-name',
                  description: 'The Azure Spring Cloud app name to configure the route',
                  args: [
                    Arg(
                    name: 'app-nam'
                  )
                  ]
                ),
                Option(
                  name: '--routes-file',
                  description: 'The file path of JSON array of API routes',
                  args: [
                    Arg(
                    name: 'routes-fil'
                  )
                  ]
                ),
                Option(
                  name: '--routes-json',
                  description: 'The JSON array of API routes',
                  args: [
                    Arg(
                    name: 'routes-jso'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all existing gateway route configs',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Delete an existing gateway route config',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of route config',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an existing gateway route config',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of route config',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an existing gateway route config with routing rules of Json array format',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of route config',
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
                  name: ['--service', '-s'],
                  description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
                  args: [
                    Arg(
                    name: 'servic'
                  )
                  ]
                ),
                Option(
                  name: '--app-name',
                  description: 'The Azure Spring Cloud app name to configure the route',
                  args: [
                    Arg(
                    name: 'app-nam'
                  )
                  ]
                ),
                Option(
                  name: '--routes-file',
                  description: 'The file path of JSON array of API routes',
                  args: [
                    Arg(
                    name: 'routes-fil'
                  )
                  ]
                ),
                Option(
                  name: '--routes-json',
                  description: 'The JSON array of API routes',
                  args: [
                    Arg(
                    name: 'routes-jso'
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
      name: 'service-registry',
      description: '(Enterprise Tier Only) Commands to manage Service Registry in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'bind',
          description: 'Bind an app to Service Registry',
          options: [

            Option(
              name: '--app',
              description: 'Name of app',
              args: [
                Arg(
                name: 'ap'
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the provisioning status and runtime status of Service Registry',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unbind',
          description: 'Unbind an app from Service Registry',
          options: [

            Option(
              name: '--app',
              description: 'Name of app',
              args: [
                Arg(
                name: 'ap'
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'storage',
      description: 'Commands to manage Storages in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Create a new storage in the Azure Spring Cloud',
          options: [

            Option(
              name: '--account-key',
              description: 'The account key of the storage account',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of storage',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--storage-type',
              description: 'The type of the torage. e.g. StorageAccount',
              args: [
                Arg(
                name: 'storage-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all existing storages in the Azure Spring Cloud',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-persistent-storage',
          description: 'List all the persistent storages related to an existing storage in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of storage',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove an existing storage in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of storage',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an existing storage in the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of storage',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing storage in the Azure Spring Cloud',
          options: [

            Option(
              name: '--account-key',
              description: 'The account key of the storage account',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of storage',
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
              name: ['--service', '-s'],
              description: 'Name of Azure Spring Cloud, you can configure the default service using az configure --defaults spring-cloud=',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--storage-type',
              description: 'The type of the torage. e.g. StorageAccount',
              args: [
                Arg(
                name: 'storage-typ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test-endpoint',
      description: 'Commands to manage test endpoint in Azure Spring Cloud',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable test endpoint of the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
          name: 'enable',
          description: 'Enable test endpoint of the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
          description: 'List test endpoint keys of the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
              name: '--app',
              description: 'Name of app',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: ['--deployment', '-d'],
              description: 'Name of an existing deployment of the app. Default to the production deployment if not specified',
              args: [
                Arg(
                name: 'deploymen'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'renew-key',
          description: 'Regenerate a test-endpoint key for the Azure Spring Cloud',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of Azure Spring Cloud',
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
              name: '--type',
              description: 'Type of test-endpoint key',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'Primary'),
                  FigSuggestion(name: 'Secondary')
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
