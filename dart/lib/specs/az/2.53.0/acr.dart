// Auto-generated from TypeScript source: acr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `acr` CLI
final FigSpec acrSpec = FigSpec(
  name: 'acr',
  description: 'Manage private registries with Azure Container Registries',
  subcommands: [

    Subcommand(
      name: 'agentpool',
      description: 'Manage private Tasks agent pools with Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an agent pool for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--count', '-c'],
              description: 'The count of the agent pool',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the Agent Pool to complete action and return immediately after queuing the request'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subnet-id',
              description: 'The Virtual Network Subnet Resource Id of the agent machine',
              args: [
                Arg(
                name: 'subnet-i'
              )
              ]
            ),
            Option(
              name: '--tier',
              description: 'Sets the VM your agent pool will run on. Valid values are: S1(2 vCPUs, 3 GiB RAM), S2(4 vCPUs, 8 GiB RAM), S3(8 vCPUs, 16 GiB RAM) or I6(64 vCPUs, 216 GiB RAM, Isolated)',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an agent pool',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the Agent Pool to complete action and return immediately after queuing the request'
            ),
            Option(
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
          description: 'List the agent pools for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Get the properties of a specified agent pool for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--queue-count',
              description: 'Get only the queue count'
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
          description: 'Update an agent pool for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--count', '-c'],
              description: 'The count of the agent pool',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the Agent Pool to complete action and return immediately after queuing the request'
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
      name: 'build',
      description: 'Queues a quick build, providing streaming logs for an Azure Container Registry',
      options: [

        Option(
          name: ['--registry', '-r'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'registr'
          )
          ]
        ),
        Option(
          name: '--agent-pool',
          description: 'The name of the agent pool',
          args: [
            Arg(
            name: 'agent-poo'
          )
          ]
        ),
        Option(
          name: '--auth-mode',
          description: 'Auth mode of the source registry',
          args: [
            Arg(
            name: 'auth-mode',
            suggestions: [

              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--build-arg',
          description: 'Build argument in \'--build-arg name[=value]\' format. Multiples supported by passing --build-arg multiple times',
          args: [
            Arg(
            name: 'build-ar'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'The relative path of the the docker file to the source code root folder. Default to \'Dockerfile\'',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--image', '-t'],
          description: 'The name and tag of the image using the format: \'-t repo/image:tag\'. Multiple tags are supported by passing -t multiple times',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--log-template',
          description: 'The repository and tag template for run log artifact using the format: \'log/repo:tag\' (e.g., \'acr/logs:{{.Run.ID}}\'). Only applicable to CMK enabled registry',
          args: [
            Arg(
            name: 'log-templat'
          )
          ]
        ),
        Option(
          name: '--no-format',
          description: 'Indicates whether the logs should be displayed in raw format'
        ),
        Option(
          name: '--no-logs',
          description: 'Do not show logs after successfully queuing the build'
        ),
        Option(
          name: '--no-push',
          description: 'Indicates whether the image built should be pushed to the registry'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the build to complete and return immediately after queuing the build'
        ),
        Option(
          name: '--platform',
          description: 'The platform where build/task is run, Eg, \'windows\' and \'linux\'. When it\'s used in build commands, it also can be specified in \'os/arch/variant\' format for the resulting image. Eg, linux/arm/v7. The \'arch\' and \'variant\' parts are optional',
          args: [
            Arg(
            name: 'platfor'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--secret-build-arg',
          description: 'Secret build argument in \'--secret-build-arg name[=value]\' format. Multiples supported by passing \'--secret-build-arg name[=value]\' multiple times',
          args: [
            Arg(
            name: 'secret-build-ar'
          )
          ]
        ),
        Option(
          name: '--target',
          description: 'The name of the target build stage',
          args: [
            Arg(
            name: 'targe'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The timeout in seconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<SOURCE_LOCATION>',
        description: 'The local source code directory path (e.g., \'./src\'), or the URL to a git repository (e.g., \'https://github.com/Azure-Samples/acr-build-helloworld-node.git\') or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\')',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'check-health',
      description: 'Gets health information on the environment and optionally a target registry',
      options: [

        Option(
          name: '--ignore-errors',
          description: 'Provide all health checks, even if errors are found'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--vnet',
          description: 'Virtual network ID so to run this command inside a VNET to verify the DNS routing to private endpoints',
          args: [
            Arg(
            name: 'vne'
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
      name: 'check-name',
      description: 'Checks if an Azure Container Registry name is valid and available for use',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
      description: 'Create an Azure Container Registry',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
          description: 'The SKU of the container registry',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Premium'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--admin-enabled',
          description: 'Indicates whether the admin user is enabled'
        ),
        Option(
          name: '--allow-exports',
          description: 'Configure exportPolicy to allow/disallow artifacts from being exported from this registry. Artifacts can be exported via import or transfer operations. For more information, please visit https://aka.ms/acr/export-policy',
          args: [
            Arg(
            name: 'allow-exports',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--allow-trusted-services',
          description: 'Allow trusted Azure Services to access network restricted registries. For more information, please visit https://aka.ms/acr/trusted-services. The Default is to allow',
          args: [
            Arg(
            name: 'allow-trusted-services',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches. Only applicable to Premium SKU',
          args: [
            Arg(
            name: 'default-action',
            suggestions: [

              FigSuggestion(name: 'Allow'),
              FigSuggestion(name: 'Deny')
            ]
          )
          ]
        ),
        Option(
          name: '--identity',
          description: 'Use assigned managed identity resource id or name if in the same resource group',
          args: [
            Arg(
            name: 'identit'
          )
          ]
        ),
        Option(
          name: '--key-encryption-key',
          description: 'Key vault key uri. To enable automated rotation, provide a version-less key uri. For manual rotation, provide a versioned key uri',
          args: [
            Arg(
            name: 'key-encryption-ke'
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
          name: '--public-network-enabled',
          description: 'Allow public network access for the container registry. The Default is to allow',
          args: [
            Arg(
            name: 'public-network-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
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
          name: '--workspace',
          description: 'Name or ID of the Log Analytics workspace to send registry diagnostic logs to. All events will be enabled. You can use "az monitor log-analytics workspace create" to create one. Extra billing may apply',
          args: [
            Arg(
            name: 'workspac'
          )
          ]
        ),
        Option(
          name: '--zone-redundancy',
          description: 'Indicates whether or not zone redundancy should be enabled for this registry or replication. For more information, such as supported locations, please visit https://aka.ms/acr/az. Zone-redundancy cannot be updated. Defaults to \'Disabled\'',
          args: [
            Arg(
            name: 'zone-redundancy',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes an Azure Container Registry',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Imports an image to an Azure Container Registry from another Container Registry. Import removes the need to docker pull, docker tag, docker push. For larger images consider using --no-wait',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Source image name or fully qualified source containing the registry login server. If --registry is used, --source will always be interpreted as a source image, even if it contains the login server',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Overwrite the existing tag of the image to be imported'
        ),
        Option(
          name: ['--image', '-t'],
          description: 'The name and tag of the image using the format: \'-t repo/image:tag\'. Multiple tags are supported by passing -t multiple times',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the import to complete and return immediately after queuing the import'
        ),
        Option(
          name: ['--password', '-p'],
          description: 'The password of source container registry',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: ['--registry', '-r'],
          description: 'The source Azure container registry. This can be name, login server or resource ID of the source registry',
          args: [
            Arg(
            name: 'registr'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'The repository name for a manifest-only copy of images. Multiple copies supported by passing --repository multiple times',
          args: [
            Arg(
            name: 'repositor'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--username', '-u'],
          description: 'The username of source container registry',
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
      description: 'Lists all the container registries under the current subscription',
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
      name: 'login',
      description: 'Log in to an Azure Container Registry through the Docker CLI',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--expose-token', '-t'],
          description: 'Expose access token instead of automatically logging in through Docker CLI'
        ),
        Option(
          name: ['--password', '-p'],
          description: 'The password used to log into a container registry',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--suffix',
          description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
          args: [
            Arg(
            name: 'suffi'
          )
          ]
        ),
        Option(
          name: ['--username', '-u'],
          description: 'The username used to log into a container registry',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'query',
      description: 'Query the content in an ACR using Kusto Query Language',
      options: [

        Option(
          name: ['--kql-query', '-q'],
          description: 'The KQL query to execute',
          args: [
            Arg(
            name: 'kql-quer'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry that the query is run against',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--password', '-p'],
          description: 'Registry password',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'The repository that the query is run against. If no repository is provided, the query is run at the registry level',
          args: [
            Arg(
            name: 'repositor'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'Skip token to get the next page of the query if applicable',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        ),
        Option(
          name: ['--username', '-u'],
          description: 'Registry username',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Queues a quick run providing streamed logs for an Azure Container Registry',
      options: [

        Option(
          name: ['--registry', '-r'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'registr'
          )
          ]
        ),
        Option(
          name: '--agent-pool',
          description: 'The name of the agent pool',
          args: [
            Arg(
            name: 'agent-poo'
          )
          ]
        ),
        Option(
          name: '--auth-mode',
          description: 'Auth mode of the source registry',
          args: [
            Arg(
            name: 'auth-mode',
            suggestions: [

              FigSuggestion(name: 'Default'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--cmd',
          description: 'Commands to execute. This also supports additional docker run parameters (https://docs.docker.com/engine/reference/commandline/run/) or even other docker commands (https://docs.docker.com/engine/reference/commandline/docker/)',
          args: [
            Arg(
            name: 'cm'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'The task template/definition file path relative to the source context. It can be \'-\' to pipe a file from the standard input',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--log-template',
          description: 'The repository and tag template for run log artifact using the format: \'log/repo:tag\' (e.g., \'acr/logs:{{.Run.ID}}\'). Only applicable to CMK enabled registry',
          args: [
            Arg(
            name: 'log-templat'
          )
          ]
        ),
        Option(
          name: '--no-format',
          description: 'Indicates whether the logs should be displayed in raw format'
        ),
        Option(
          name: '--no-logs',
          description: 'Do not show logs after successfully queuing the build'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the run to complete and return immediately after queuing the run'
        ),
        Option(
          name: '--platform',
          description: 'The platform where build/task is run, Eg, \'windows\' and \'linux\'. When it\'s used in build commands, it also can be specified in \'os/arch/variant\' format for the resulting image. Eg, linux/arm/v7. The \'arch\' and \'variant\' parts are optional',
          args: [
            Arg(
            name: 'platfor'
          )
          ]
        ),
        Option(
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
          description: 'Value in \'name[=value]\' format. Multiples supported by passing --set multiple times',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--set-secret',
          description: 'Secret value in \'--set name[=value]\' format. Multiples supported by passing --set multiple times',
          args: [
            Arg(
            name: 'set-secre'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The timeout in seconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--values',
          description: 'The task values file path relative to the source context',
          args: [
            Arg(
            name: 'value'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<SOURCE_LOCATION>',
        description: 'The local source code directory path (e.g., \'./src\'), or the URL to a git repository (e.g., \'https://github.com/Azure-Samples/acr-build-helloworld-node.git\'), or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\'). If \'/dev/null\' is specified, the value will be set to None and ignored',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of an Azure Container Registry',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
      name: 'show-endpoints',
      description: 'Display registry endpoints',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
      name: 'show-usage',
      description: 'Get the storage usage for an Azure Container Registry',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
      description: 'Update an Azure Container Registry',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
          args: [
            Arg(
            name: 'nam'
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
          name: '--admin-enabled',
          description: 'Indicates whether the admin user is enabled',
          args: [
            Arg(
            name: 'admin-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--allow-exports',
          description: 'Configure exportPolicy to allow/disallow artifacts from being exported from this registry. Artifacts can be exported via import or transfer operations. For more information, please visit https://aka.ms/acr/export-policy',
          args: [
            Arg(
            name: 'allow-exports',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--allow-trusted-services',
          description: 'Allow trusted Azure Services to access network restricted registries. For more information, please visit https://aka.ms/acr/trusted-services',
          args: [
            Arg(
            name: 'allow-trusted-services',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--anonymous-pull-enabled',
          description: 'Enable registry-wide pull from unauthenticated clients',
          args: [
            Arg(
            name: 'anonymous-pull-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--data-endpoint-enabled',
          description: 'Enable dedicated data endpoint for client firewall configuration',
          args: [
            Arg(
            name: 'data-endpoint-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches. Only applicable to Premium SKU',
          args: [
            Arg(
            name: 'default-action',
            suggestions: [

              FigSuggestion(name: 'Allow'),
              FigSuggestion(name: 'Deny')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--public-network-enabled',
          description: 'Allow public network access for the container registry',
          args: [
            Arg(
            name: 'public-network-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          description: 'The SKU of the container registry',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Premium'),
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
      name: 'cache',
      description: 'Manage cache rules in Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a cache rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cache rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--source-repo', '-s'],
              description: 'The full source repository path such as \'docker.io/library/ubuntu\'',
              args: [
                Arg(
                name: 'source-rep'
              )
              ]
            ),
            Option(
              name: ['--target-repo', '-t'],
              description: 'The target repository namespace such as \'ubuntu\'',
              args: [
                Arg(
                name: 'target-rep'
              )
              ]
            ),
            Option(
              name: ['--cred-set', '-c'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'cred-se'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a cache rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cache rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
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
          description: 'List the cache rules in an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a cache rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cache rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the credential set on a cache rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cache rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
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
              name: ['--cred-set', '-c'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'cred-se'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              name: '--remove-cred-set',
              description: 'Optional boolean indicating whether to remove the credential set from the cache rule. False by default'
            ),
            Option(
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Configure policies for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'authentication-as-arm',
          description: 'Manage \'Azure AD authenticate as ARM\' policy for Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the configured \'Azure AD authenticate as ARM\' policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              description: 'Update \'Azure AD authenticate as ARM\' policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Indicate whether authentication-as-arm is enabled',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'disabled'),
                      FigSuggestion(name: 'enabled')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'content-trust',
          description: 'Manage content-trust policy for Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the configured content-trust policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              description: 'Update content-trust policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Indicates whether content-trust is enabled',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'disabled'),
                      FigSuggestion(name: 'enabled')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'retention',
          description: 'Manage retention policy for Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the configured retention policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              description: 'Update retention policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'The type of retention policy',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'UntaggedManifests')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--days',
                  description: 'The number of days to retain an untagged manifest after which it gets purged (Range: 0 to 365). Value "0" will delete untagged manifests immediately',
                  args: [
                    Arg(
                    name: 'day'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Indicates whether retention policy is enabled',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'disabled'),
                      FigSuggestion(name: 'enabled')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'soft-delete',
          description: 'Manage soft-delete policy for Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the configured soft-delete policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update soft-delete policy for an Azure Container Registry',
              options: [

                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--days',
                  description: 'The number of days to retain a soft-deleted manifest or tag after which it gets purged (Range: 1 to 90). Default is 7',
                  args: [
                    Arg(
                    name: 'day'
                  )
                  ]
                ),
                Option(
                  name: '--status',
                  description: 'Indicates whether soft-delete policy is enabled',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'disabled'),
                      FigSuggestion(name: 'enabled')
                    ]
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
        )
      ]
    ),
    Subcommand(
      name: 'connected-registry',
      description: 'Manage connected registry resources with Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a connected registry for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--client-tokens',
              description: 'Specify the client access to the repositories in the connected registry. It can be in the format [TOKEN_NAME01] [TOKEN_NAME02]',
              args: [
                Arg(
                name: 'client-token'
              )
              ]
            ),
            Option(
              name: '--log-level',
              description: 'Set the log level for logging on the instance. Accepted log levels are Debug, Information, Warning, Error, and None',
              args: [
                Arg(
                name: 'log-leve'
              )
              ]
            ),
            Option(
              name: ['--mode', '-m'],
              description: 'Determine the access it will have when synchronized',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'ReadOnly'),
                  FigSuggestion(name: 'ReadWrite')
                ]
              )
              ]
            ),
            Option(
              name: '--notifications',
              description: 'List of artifact pattern for which notifications need to be generated. Use the format "--notifications [PATTERN1 PATTERN2 ...]"',
              args: [
                Arg(
                name: 'notification'
              )
              ]
            ),
            Option(
              name: ['--parent', '-p'],
              description: 'The name of the parent connected registry',
              args: [
                Arg(
                name: 'paren'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'Specify the repositories that need to be sync to the connected registry. It can be in the format [REPO01] [REPO02]',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sync-message-ttl',
              description: 'Determine how long the sync messages will be kept in the cloud. Uses ISO 8601 duration format',
              args: [
                Arg(
                name: 'sync-message-tt'
              )
              ]
            ),
            Option(
              name: ['--sync-schedule', '-s'],
              description: 'Optional parameter to define the sync schedule. Uses cron expression to determine the schedule. If not specified, the instance is considered always online and attempts to sync every minute',
              args: [
                Arg(
                name: 'sync-schedul'
              )
              ]
            ),
            Option(
              name: '--sync-token',
              description: 'Specifies the sync token used to synchronize the connected registry with its parent. It most have only repo permissions and at least the actions required for its mode. It can include access for multiple repositories',
              args: [
                Arg(
                name: 'sync-toke'
              )
              ]
            ),
            Option(
              name: ['--sync-window', '-w'],
              description: 'Required parameter if --sync-schedule is present. Used to determine the schedule duration. Uses ISO 8601 duration format',
              args: [
                Arg(
                name: 'sync-windo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivate a connected registry from Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
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
          name: 'delete',
          description: 'Delete a connected registry from Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--cleanup',
              description: 'It will aslo delete the sync token and the scope map resources'
            ),
            Option(
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
          name: 'get-settings',
          description: 'Retrieve information required to activate a connected registry, and creates or rotates the sync token credentials',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--parent-protocol',
              description: 'Specify the protocol used to communicate with its parent',
              args: [
                Arg(
                name: 'parent-protocol',
                suggestions: [

                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'https')
                ]
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--generate-password',
              description: 'Select which password you want to generate, and it is required to retrieve the password from the sync token',
              args: [
                Arg(
                name: 'generate-password',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2')
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the connected registries under the current parent registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--no-children',
              description: 'Used to remove all children from the list'
            ),
            Option(
              name: ['--parent', '-p'],
              description: 'The name of the parent connected registry',
              args: [
                Arg(
                name: 'paren'
              )
              ]
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
          name: 'list-client-tokens',
          description: 'List all the client tokens associated to a specific connected registries',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'repo',
          description: 'Update all the necessary connected registry sync scope maps repository permissions',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--add',
              description: 'Repository permissions to be added to the targeted connected registry and it\'s ancestors sync scope maps. Use the format "--add [REPO1 REPO2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Repository permissions to be removed from the targeted connected registry and it\'s succesors sync scope maps. Use the format "--remove [REPO1 REPO2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show connected registry details',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Update a connected registry for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--add-client-tokens',
              description: 'Client tokens to be added. Use the format "--add-client-tokens [TOKEN_NAME1 TOKEN_NAME2 ...]" per token id',
              args: [
                Arg(
                name: 'add-client-token'
              )
              ]
            ),
            Option(
              name: '--add-notifications',
              description: 'List of artifact pattern to be added to notifications list. Use the format "--add-notifications [PATTERN1 PATTERN2 ...]"',
              args: [
                Arg(
                name: 'add-notification'
              )
              ]
            ),
            Option(
              name: '--log-level',
              description: 'Set the log level for logging on the instance. Accepted log levels are Debug, Information, Warning, Error, and None',
              args: [
                Arg(
                name: 'log-leve'
              )
              ]
            ),
            Option(
              name: '--remove-client-tokens',
              description: 'Client tokens to be removed. Use the format "--remove-client-tokens [TOKEN_NAME1 TOKEN_NAME2 ...]" per token id',
              args: [
                Arg(
                name: 'remove-client-token'
              )
              ]
            ),
            Option(
              name: '--remove-notifications',
              description: 'List of artifact pattern to be removed from notifications list. Use the format "--remove-notifications [PATTERN1 PATTERN2 ...]"',
              args: [
                Arg(
                name: 'remove-notification'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sync-message-ttl',
              description: 'Determine how long the sync messages will be kept in the cloud. Uses ISO 8601 duration format',
              args: [
                Arg(
                name: 'sync-message-tt'
              )
              ]
            ),
            Option(
              name: ['--sync-schedule', '-s'],
              description: 'Optional parameter to define the sync schedule. Uses cron expression to determine the schedule. If not specified, the instance is considered always online and attempts to sync every minute',
              args: [
                Arg(
                name: 'sync-schedul'
              )
              ]
            ),
            Option(
              name: ['--sync-window', '-w'],
              description: 'Used to determine the schedule duration. Uses ISO 8601 duration format',
              args: [
                Arg(
                name: 'sync-windo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Help to access the necessary information for installing a connected registry. Please see https://aka.ms/acr/connected-registry for more information',
          subcommands: [

            Subcommand(
              name: 'info',
              description: 'Retrieve information required to activate a connected registry',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--parent-protocol',
                  description: 'Specify the protocol used to communicate with its parent',
                  args: [
                    Arg(
                    name: 'parent-protocol',
                    suggestions: [

                      FigSuggestion(name: 'http'),
                      FigSuggestion(name: 'https')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              name: 'renew-credentials',
              description: 'Retrieve information required to activate a connected registry, and renews the sync token credentials',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--parent-protocol',
                  description: 'Specify the protocol used to communicate with its parent',
                  args: [
                    Arg(
                    name: 'parent-protocol',
                    suggestions: [

                      FigSuggestion(name: 'http'),
                      FigSuggestion(name: 'https')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
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
          name: 'permissions',
          description: 'Manage the repository permissions accross multiple connected registries. Please see https://aka.ms/acr/connected-registry for more information',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the connected registry sync scope map information',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              description: 'Add and remove repository permissions accross all the necessary connected registry sync scope maps',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name for the connected registry. Name must be between 5 to 40 character long, start with a letter and contain only alphanumeric characters (including ‘_’ or ‘-’). Name must be unique under the Cloud ACR hierarchy',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The login server of the Cloud ACR registry. Must be the FQDN to support also Azure Stack',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--add',
                  description: 'Repository permissions to be added to the targeted connected registry and it\'s ancestors sync scope maps. Use the format "--add [REPO1 REPO2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Repository permissions to be removed from the targeted connected registry and it\'s succesors sync scope maps. Use the format "--remove [REPO1 REPO2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
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
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'credential',
      description: 'Manage login credentials for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'renew',
          description: 'Regenerate login credentials for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password-name',
              description: 'The name of password to regenerate',
              args: [
                Arg(
                name: 'password-name',
                suggestions: [

                  FigSuggestion(name: 'password'),
                  FigSuggestion(name: 'password2')
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the login credentials for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
        )
      ]
    ),
    Subcommand(
      name: 'credential-set',
      description: 'Manage credential sets in Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a credential set',
          options: [

            Option(
              name: ['--login-server', '-l'],
              description: 'The login server address of the upstream registry such as \'docker.io\'',
              args: [
                Arg(
                name: 'login-serve'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password-id', '-p'],
              description: 'The Azure Key Vault secret ID of the secret containing the password to the upstream registry',
              args: [
                Arg(
                name: 'password-i'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--username-id', '-u'],
              description: 'The Azure Key Vault secret ID of the secret containing the username to the upstream registry',
              args: [
                Arg(
                name: 'username-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a credential set',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
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
          description: 'List the credential sets in an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a credential set',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the username or password Azure Key Vault secret ID on a credential set',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the credential set',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
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
              name: ['--password-id', '-p'],
              description: 'The Azure Key Vault secret ID of the secret containing the password to the upstream registry',
              args: [
                Arg(
                name: 'password-i'
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
              name: ['--username-id', '-u'],
              description: 'The Azure Key Vault secret ID of the secret containing the username to the upstream registry',
              args: [
                Arg(
                name: 'username-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'encryption',
      description: 'Manage container registry encryption.\n\n\t\tFor more information, see http://aka.ms/acr/cmk',
      subcommands: [

        Subcommand(
          name: 'rotate-key',
          description: 'Rotate (update) the container registry\'s encryption key',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Client id of managed identity, resource name or id of user assigned identity. Use \'[system]\' to refer to the system assigned identity',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--key-encryption-key',
              description: 'Key vault key uri. To enable automated rotation, provide a version-less key uri. For manual rotation, provide a versioned key uri',
              args: [
                Arg(
                name: 'key-encryption-ke'
              )
              ]
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
          description: 'Show the container registry\'s encryption details',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
        )
      ]
    ),
    Subcommand(
      name: 'export-pipeline',
      description: 'Manage ACR export pipelines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an export pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the export pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--secret-uri', '-s'],
              description: 'Keyvault secret URI containing a valid SAS token to the associated storage account of the form https://\$MyKeyvault.vault.azure.net/secrets/\$MySecret. Note that the URI may be different outside of AzureCloud',
              args: [
                Arg(
                name: 'secret-ur'
              )
              ]
            ),
            Option(
              name: ['--storage-container-uri', '-c'],
              description: 'Storage account container URI of the source or target storage account container of the form https://\$MyStorageAccount.blob.core.windows.net/\$MyContainer. Note that the URI may be different outside of AzureCloud',
              args: [
                Arg(
                name: 'storage-container-ur'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'User assigned identity resource ID of the form /subscriptions/\$MySubID/resourceGroups/\$MyRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/\$MyIdentity',
              args: [
                Arg(
                name: 'assign-identit'
              )
              ]
            ),
            Option(
              name: ['--options', '-z'],
              description: 'Space-separated list of options. May only container the following options: OverwriteBlobs,ContinueOnErrors',
              args: [
                Arg(
                name: 'option'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an export pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the export pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'List export pipelines on a Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Show an export pipeline in detail',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the export pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
      name: 'helm',
      description: 'Manage helm charts for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a helm chart version in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--prov',
              description: 'Only delete the provenance file'
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'The helm chart version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ],
          args: [
            Arg(
            name: '<CHART>',
            description: 'The helm chart name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'install-cli',
          description: 'Download and install Helm command-line tool',
          options: [

            Option(
              name: '--client-version',
              description: 'The target Helm CLI version. (Attention: Currently, Helm 3 does not work with "az acr helm" commands)',
              args: [
                Arg(
                name: 'client-versio'
              )
              ]
            ),
            Option(
              name: '--install-location',
              description: 'Path at which to install Helm CLI (Existing one at the same path will be overwritten)',
              args: [
                Arg(
                name: 'install-locatio'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Agree to the license of Helm, and do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all helm charts in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'push',
          description: 'Push a helm chart package to an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overwrite the existing chart package'
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<CHART_PACKAGE>',
            description: 'The helm chart package',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Describe a helm chart in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'The helm chart version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<CHART>',
            description: 'The helm chart name',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'repo',
          description: 'Manage helm chart repositories for Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a helm chart repository from an Azure Container Registry through the Helm CLI',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password used to log into a container registry',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--suffix',
                  description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username used to log into a container registry',
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
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage service (managed) identities for a container registry',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign a managed identity to a container registry',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities. Use \'[system]\' to refer to the system assigned identity',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
          name: 'remove',
          description: 'Remove a managed identity from a container registry',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities. Use \'[system]\' to refer to the system assigned identity',
              args: [
                Arg(
                name: 'identitie'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
          description: 'Show the container registry\'s identity details',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
        )
      ]
    ),
    Subcommand(
      name: 'import-pipeline',
      description: 'Manage ACR import pipelines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an import pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the import pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--secret-uri', '-s'],
              description: 'Keyvault secret URI containing a valid SAS token to the associated storage account of the form https://\$MyKeyvault.vault.azure.net/secrets/\$MySecret. Note that the URI may be different outside of AzureCloud',
              args: [
                Arg(
                name: 'secret-ur'
              )
              ]
            ),
            Option(
              name: ['--storage-container-uri', '-c'],
              description: 'Storage account container URI of the source or target storage account container of the form https://\$MyStorageAccount.blob.core.windows.net/\$MyContainer. Note that the URI may be different outside of AzureCloud',
              args: [
                Arg(
                name: 'storage-container-ur'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'User assigned identity resource ID of the form /subscriptions/\$MySubID/resourceGroups/\$MyRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/\$MyIdentity',
              args: [
                Arg(
                name: 'assign-identit'
              )
              ]
            ),
            Option(
              name: ['--options', '-z'],
              description: 'Space-separated list of options. May only contain the following options: DeleteSourceBlobOnSuccess,OverwriteTags,ContinueOnErrors,DisableSourceTrigger',
              args: [
                Arg(
                name: 'option'
              )
              ]
            ),
            Option(
              name: ['--source-trigger-enabled', '-e'],
              description: 'Boolean parameter that determines whether source trigger is enabled on the pipeline. Must be either True or False. True by default',
              args: [
                Arg(
                name: 'source-trigger-enabled',
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
          name: 'delete',
          description: 'Delete an import pipeline',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the import pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'List import pipelines on a Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Show an import pipeline in detail',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the import pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
      name: 'manifest',
      description: 'Manage artifact manifests in Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a manifest in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the manifests in a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order the items in the results. Default to alphabetical order of names',
              args: [
                Arg(
                name: 'orderby',
                suggestions: [

                  FigSuggestion(name: 'time_asc'),
                  FigSuggestion(name: 'time_desc')
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of items in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<REPO_ID>',
            description: 'A fully qualified repository specifier such as \'myregistry.azurecr.io/hello-world\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'List the soft-deleted manifests in a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<REPO_ID>',
            description: 'A fully qualified repository specifier such as \'myregistry.azurecr.io/hello-world\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list-deleted-tags',
          description: 'List the soft-deleted tags in a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the repository. May include a tag in the format \'name:tag\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<PERM_REPO_ID>',
            description: 'A fully qualified repository specifier such as \'myregistry.azurecr.io/hello-world\'. May include a tag such as myregistry.azurecr.io/hello-world:latest',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list-metadata',
          description: 'List the metadata of the manifests in a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order the items in the results. Default to alphabetical order of names',
              args: [
                Arg(
                name: 'orderby',
                suggestions: [

                  FigSuggestion(name: 'time_asc'),
                  FigSuggestion(name: 'time_desc')
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of items in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<REPO_ID>',
            description: 'A fully qualified repository specifier such as \'myregistry.azurecr.io/hello-world\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'list-referrers',
          description: 'List the referrers to a manifest in an Azure Container Registry',
          options: [

            Option(
              name: '--artifact-type',
              description: 'Filter referrers based on artifact type',
              args: [
                Arg(
                name: 'artifact-typ'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--recursive',
              description: 'Recursively include referrer artifacts'
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restore a soft-deleted artifact and tag in an Azure Container Registry',
          options: [

            Option(
              name: ['--digest', '-d'],
              description: 'The digest of the manifest such as \'sha256@abc123\'',
              args: [
                Arg(
                name: 'diges'
              )
              ]
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Overwrite the existing tag'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a manifest in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--raw',
              description: 'Output the raw manifest text with no formatting',
              args: [
                Arg(
                name: 'ra'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'show-metadata',
          description: 'Get the metadata of an artifact in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'update-metadata',
          description: 'Update the manifest metadata of an artifact in an Azure Container Registry',
          options: [

            Option(
              name: '--delete-enabled',
              description: 'Indicate whether delete operation is allowed',
              args: [
                Arg(
                name: 'delete-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--list-enabled',
              description: 'Indicate whether this item shows in list operation results',
              args: [
                Arg(
                name: 'list-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--read-enabled',
              description: 'Indicate whether read operation is allowed',
              args: [
                Arg(
                name: 'read-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--write-enabled',
              description: 'Indicate whether write or delete operation is allowed',
              args: [
                Arg(
                name: 'write-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<MANIFEST_ID>',
            description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'metadata',
          description: 'Manage artifact manifest metadata in Azure Container Registries',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the metadata of the manifests in a repository in an Azure Container Registry',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the repository',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Order the items in the results. Default to alphabetical order of names',
                  args: [
                    Arg(
                    name: 'orderby',
                    suggestions: [

                      FigSuggestion(name: 'time_asc'),
                      FigSuggestion(name: 'time_desc')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password used to log into a container registry',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--suffix',
                  description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Limit the number of items in the results',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username used to log into a container registry',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: '<REPO_ID>',
                description: 'A fully qualified repository specifier such as \'myregistry.azurecr.io/hello-world\'',
                isOptional: true
              )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the metadata of an artifact in an Azure Container Registry',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password used to log into a container registry',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--suffix',
                  description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username used to log into a container registry',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: '<MANIFEST_ID>',
                description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
                isOptional: true
              )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the manifest metadata of an artifact in an Azure Container Registry',
              options: [

                Option(
                  name: '--delete-enabled',
                  description: 'Indicate whether delete operation is allowed',
                  args: [
                    Arg(
                    name: 'delete-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--list-enabled',
                  description: 'Indicate whether this item shows in list operation results',
                  args: [
                    Arg(
                    name: 'list-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the artifact. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password used to log into a container registry',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--read-enabled',
                  description: 'Indicate whether read operation is allowed',
                  args: [
                    Arg(
                    name: 'read-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--suffix',
                  description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
                  args: [
                    Arg(
                    name: 'suffi'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username used to log into a container registry',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: '--write-enabled',
                  description: 'Indicate whether write or delete operation is allowed',
                  args: [
                    Arg(
                    name: 'write-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: '<MANIFEST_ID>',
                description: 'A fully qualified manifest specifier such as \'myregistry.azurecr.io/hello-world:latest\'',
                isOptional: true
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'network-rule',
      description: 'Manage network rules for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a network rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ip-address',
              description: 'IPv4 address or CIDR range',
              args: [
                Arg(
                name: 'ip-addres'
              )
              ]
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
          description: 'List network rules',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
          name: 'remove',
          description: 'Remove a network rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ip-address',
              description: 'IPv4 address or CIDR range',
              args: [
                Arg(
                name: 'ip-addres'
              )
              ]
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
      name: 'pack',
      description: 'Manage Azure Container Registry Tasks that use Cloud Native Buildpacks',
      subcommands: [

        Subcommand(
          name: 'build',
          description: 'Queues a quick build task that builds an app and pushes it into an Azure Container Registry',
          options: [

            Option(
              name: ['--builder', '-b'],
              description: 'The name and tag of a Buildpack builder image',
              args: [
                Arg(
                name: 'builde'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name and tag of the image using the format: \'-t repo/image:tag\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--agent-pool',
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'agent-poo'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'Auth mode of the source registry',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--no-format',
              description: 'Indicates whether the logs should be displayed in raw format'
            ),
            Option(
              name: '--no-logs',
              description: 'Do not show logs after successfully queuing the build'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the run to complete and return immediately after queuing the run'
            ),
            Option(
              name: '--pack-image-tag',
              description: 'The tag of the \'pack\' runner image (\'mcr.microsoft.com/oryx/pack\')',
              args: [
                Arg(
                name: 'pack-image-ta'
              )
              ]
            ),
            Option(
              name: '--platform',
              description: 'The platform where build/task is run, Eg, \'windows\' and \'linux\'. When it\'s used in build commands, it also can be specified in \'os/arch/variant\' format for the resulting image. Eg, linux/arm/v7. The \'arch\' and \'variant\' parts are optional',
              args: [
                Arg(
                name: 'platfor'
              )
              ]
            ),
            Option(
              name: '--pull',
              description: 'Pull the latest builder and run images before use'
            ),
            Option(
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
              description: 'The timeout in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<SOURCE_LOCATION>',
            description: 'The local source code directory path (e.g., \'./src\'), or the URL to a git repository (e.g., \'https://github.com/Azure-Samples/acr-build-helloworld-node.git\') or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\')',
            isOptional: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline-run',
      description: 'Manage ACR import and export pipeline-runs',
      subcommands: [

        Subcommand(
          name: 'clean',
          description: 'Delete all failed pipeline-runs on the registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'List the failed pipeline-runs that would have been deleted, but do not delete any'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a pipeline-run',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the pipeline run',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '-p'],
              description: 'Name of the pipeline to run',
              args: [
                Arg(
                name: 'pipelin'
              )
              ]
            ),
            Option(
              name: ['--pipeline-type', '-t'],
              description: 'Type of pipeline. Must be either import or export',
              args: [
                Arg(
                name: 'pipeline-typ'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--storage-blob', '-b'],
              description: 'Name of the storage blob to be imported or exported',
              args: [
                Arg(
                name: 'storage-blo'
              )
              ]
            ),
            Option(
              name: ['--artifacts', '-a'],
              description: 'Space-separated list of container artifacts. Artifacts must be either of the form repository:tag or repository@digest such as hello-world:latest or hello-world@sha256:90659bf80b44ce6be8234e6ff90a1ac34acbeb826903b02cfa0da11c82cbc042',
              args: [
                Arg(
                name: 'artifact'
              )
              ]
            ),
            Option(
              name: ['--force-redeploy', '-f'],
              description: 'Flag that forces ARM to redeploy resource even if no parameters have changed'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a pipeline-run',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the pipeline run',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'List pipeline-runs of all pipelines on a container registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'List only the last n pipeline-runs. Must be an integer',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a pipeline-run in detail',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the pipeline run',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'Name of registry',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
      name: 'private-endpoint-connection',
      description: 'Manage container registry private endpoint connections.\n\n\t\tTo create a private endpoint connection use "az network private-endpoint create". For more information see https://aka.ms/acr/private-link',
      subcommands: [

        Subcommand(
          name: 'approve',
          description: 'Approve a private endpoint connection request for a container registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry-name', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Approval description. For example, the reason for approval',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
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
          name: 'delete',
          description: 'Delete a private endpoint connection request for a container registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry-name', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
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
          description: 'List all private endpoint connections to a container registry',
          options: [

            Option(
              name: ['--registry-name', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
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
          name: 'reject',
          description: 'Reject a private endpoint connection request for a container registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry-name', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Rejection description. For example, the reason for rejection',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
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
          description: 'Show details of a container registry\'s private endpoint connection',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry-name', '-r'],
              description: 'The name of the container registry. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
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
      name: 'private-link-resource',
      description: 'Manage registry private link resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the private link resources supported for a registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
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
        )
      ]
    ),
    Subcommand(
      name: 'replication',
      description: 'Manage geo-replicated regions of Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a replicated region for an Azure Container Registry',
          options: [

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
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the replication. Default to the location name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--region-endpoint-enabled',
              description: 'Allow routing to this replication. Requests will not be routed to a disabled replication. Data syncing will continue regardless of the region endpoint status. Default: true',
              args: [
                Arg(
                name: 'region-endpoint-enabled',
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--zone-redundancy',
              description: 'Indicates whether or not zone redundancy should be enabled for this registry or replication. For more information, such as supported locations, please visit https://aka.ms/acr/az. Zone-redundancy cannot be updated. Defaults to \'Disabled\'',
              args: [
                Arg(
                name: 'zone-redundancy',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a replicated region from an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the replication',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'List all of the regions for a geo-replicated Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Get the details of a replicated region',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the replication',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Updates a replication',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the replication',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
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
              name: '--region-endpoint-enabled',
              description: 'Allow routing to this replication. Requests will not be routed to a disabled replication. Data syncing will continue regardless of the region endpoint status',
              args: [
                Arg(
                name: 'region-endpoint-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
      name: 'repository',
      description: 'Manage repositories (image names) for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a repository or image in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
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
          description: 'List repositories in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of items in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'List soft-deleted repositories in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the attributes of a repository or image in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-manifests',
          description: 'Show manifests of a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--detail',
              description: 'Show detailed information'
            ),
            Option(
              name: '--orderby',
              description: 'Order the items in the results. Default to alphabetical order of names',
              args: [
                Arg(
                name: 'orderby',
                suggestions: [

                  FigSuggestion(name: 'time_asc'),
                  FigSuggestion(name: 'time_desc')
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of items in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-tags',
          description: 'Show tags for a repository in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--detail',
              description: 'Show detailed information'
            ),
            Option(
              name: '--orderby',
              description: 'Order the items in the results. Default to alphabetical order of names',
              args: [
                Arg(
                name: 'orderby',
                suggestions: [

                  FigSuggestion(name: 'time_asc'),
                  FigSuggestion(name: 'time_desc')
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of items in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'untag',
          description: 'Untag an image in an Azure Container Registry',
          options: [

            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
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
          description: 'Update the attributes of a repository or image in an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--delete-enabled',
              description: 'Indicates whether delete operation is allowed',
              args: [
                Arg(
                name: 'delete-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--list-enabled',
              description: 'Indicates whether this item shows in list operation results',
              args: [
                Arg(
                name: 'list-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password used to log into a container registry',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--read-enabled',
              description: 'Indicates whether read operation is allowed',
              args: [
                Arg(
                name: 'read-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'The name of the repository',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: '--suffix',
              description: 'The tenant suffix in registry login server. You may specify \'--suffix tenant\' if your registry login server is in the format \'registry-tenant.azurecr.io\'. Applicable if you\'re accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource',
              args: [
                Arg(
                name: 'suffi'
              )
              ]
            ),
            Option(
              name: ['--username', '-u'],
              description: 'The username used to log into a container registry',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--write-enabled',
              description: 'Indicates whether write or delete operation is allowed',
              args: [
                Arg(
                name: 'write-enabled',
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
      name: 'scope-map',
      description: 'Manage scope access maps for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a scope map for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the scope map',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description for the scope map. Maximum 256 characters are allowed',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--gateway',
              description: 'Gateway permissions. Use the format "--gateway GATEWAY [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'config/read\', \'config/write\', \'message/read\', \'message/write\']',
              args: [
                Arg(
                name: 'gatewa'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'Repository permissions. Use the format "--repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
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
          name: 'delete',
          description: 'Delete a scope map for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the scope map',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
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
          description: 'List all scope maps for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Show details and attributes of a scope map for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the scope map',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Update a scope map for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the scope map',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--add-gateway',
              description: 'Gateway permissions to be added. Use the format "--add-gateway GATEWAY [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'config/read\', \'config/write\', \'message/read\', \'message/write\']',
              args: [
                Arg(
                name: 'add-gatewa'
              )
              ]
            ),
            Option(
              name: '--add-repository',
              description: 'Repository permissions to be added. Use the format "--add-repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
              args: [
                Arg(
                name: 'add-repositor'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description for the scope map. Maximum 256 characters are allowed',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--remove-gateway',
              description: 'Gateway permissions to be removed. Use the format "--remove-gateway GATEWAY [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'config/read\', \'config/write\', \'message/read\', \'message/write\']',
              args: [
                Arg(
                name: 'remove-gatewa'
              )
              ]
            ),
            Option(
              name: '--remove-repository',
              description: 'Repository permissions to be removed. Use the format "--remove-repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
              args: [
                Arg(
                name: 'remove-repositor'
              )
              ]
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
      name: 'task',
      description: 'Manage a collection of steps for building, testing and OS & Framework patching container images using Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'cancel-run',
          description: 'Cancel a specified run of an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The unique run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
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
          name: 'create',
          description: 'Create a series of steps for building, testing and OS & Framework patching containers. Tasks support triggers from git commits and base image updates',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--agent-pool',
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'agent-poo'
              )
              ]
            ),
            Option(
              name: '--arg',
              description: 'Build argument in \'--arg name[=value]\' format. Multiples supported by passing \'--arg` multiple times',
              args: [
                Arg(
                name: 'ar'
              )
              ]
            ),
            Option(
              name: '--assign-identity',
              description: 'Assigns managed identities to the task. Use \'[system]\' to refer to the system-assigned identity or a resource ID to refer to a user-assigned identity. Please see https://aka.ms/acr/tasks/task-create-managed-identity for more information',
              args: [
                Arg(
                name: 'assign-identit'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'Auth mode of the source registry',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--base-image-trigger-enabled',
              description: 'Indicates whether the base image trigger is enabled',
              args: [
                Arg(
                name: 'base-image-trigger-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--base-image-trigger-name',
              description: 'The name of the base image trigger',
              args: [
                Arg(
                name: 'base-image-trigger-nam'
              )
              ]
            ),
            Option(
              name: '--base-image-trigger-type',
              description: 'The type of the auto trigger for base image dependency updates',
              args: [
                Arg(
                name: 'base-image-trigger-type',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Runtime')
                ]
              )
              ]
            ),
            Option(
              name: '--cmd',
              description: 'Commands to execute. This also supports additional docker run parameters (https://docs.docker.com/engine/reference/commandline/run/) or even other docker commands (https://docs.docker.com/engine/reference/commandline/docker/)',
              args: [
                Arg(
                name: 'cm'
              )
              ]
            ),
            Option(
              name: '--commit-trigger-enabled',
              description: 'Indicates whether the source control commit trigger is enabled',
              args: [
                Arg(
                name: 'commit-trigger-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--context', '-c'],
              description: 'The full URL to the source code repository (Requires \'.git\' suffix for a github repo) or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\'). If \'/dev/null\' is specified, the value will be set to None and ignored. This is a required argument if the task is not a system task',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'The CPU configuration in terms of number of cores required for the run',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Relative path of the the task/docker file to the source code root folder. Task files must be suffixed with \'.yaml\' or piped from the standard input using \'-\'',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--git-access-token',
              description: 'The access token used to access the source control provider',
              args: [
                Arg(
                name: 'git-access-toke'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name and tag of the image using the format: \'-t repo/image:tag\'. Multiple tags are supported by passing -t multiple times',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--is-system-task',
              description: 'Indicates whether the task resource is a system task. The name of the task must be \'quicktask\'. Only applicable to CMK enabled registry'
            ),
            Option(
              name: '--log-template',
              description: 'The repository and tag template for run log artifact using the format: \'log/repo:tag\' (e.g., \'acr/logs:{{.Run.ID}}\'). Only applicable to CMK enabled registry',
              args: [
                Arg(
                name: 'log-templat'
              )
              ]
            ),
            Option(
              name: '--no-cache',
              description: 'Indicates whether the image cache is enabled'
            ),
            Option(
              name: '--no-push',
              description: 'Indicates whether the image built should be pushed to the registry'
            ),
            Option(
              name: '--platform',
              description: 'The platform where build/task is run, Eg, \'windows\' and \'linux\'. When it\'s used in build commands, it also can be specified in \'os/arch/variant\' format for the resulting image. Eg, linux/arm/v7. The \'arch\' and \'variant\' parts are optional',
              args: [
                Arg(
                name: 'platfor'
              )
              ]
            ),
            Option(
              name: '--pull-request-trigger-enabled',
              description: 'Indicates whether the source control pull request trigger is enabled. The trigger is disabled by default'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--schedule',
              description: 'Schedule for a timer trigger represented as a cron expression. An optional trigger name can be specified using --schedule name:schedule format. Multiples supported by passing --schedule multiple times',
              args: [
                Arg(
                name: 'schedul'
              )
              ]
            ),
            Option(
              name: '--secret-arg',
              description: 'Secret build argument in \'--secret-arg name[=value]\' format. Multiples supported by passing --secret-arg multiple times',
              args: [
                Arg(
                name: 'secret-ar'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Task value in \'--set name[=value]\' format. Multiples supported by passing --set multiple times',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--set-secret',
              description: 'Secret task value in \'--set-secret name[=value]\' format. Multiples supported by passing --set-secret multiple times',
              args: [
                Arg(
                name: 'set-secre'
              )
              ]
            ),
            Option(
              name: '--source-trigger-name',
              description: 'The name of the source trigger',
              args: [
                Arg(
                name: 'source-trigger-nam'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The current status of task',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'The name of the target build stage',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'The timeout in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--update-trigger-endpoint',
              description: 'The full URL of the endpoint to receive base image update trigger notifications',
              args: [
                Arg(
                name: 'update-trigger-endpoin'
              )
              ]
            ),
            Option(
              name: '--update-trigger-payload-type',
              description: 'Indicates whether to include metadata about the base image trigger in the payload alongwith the update trigger token, when a notification is sent',
              args: [
                Arg(
                name: 'update-trigger-payload-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'Token')
                ]
              )
              ]
            ),
            Option(
              name: '--values',
              description: 'The task values/parameters file path relative to the source context',
              args: [
                Arg(
                name: 'value'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a task from an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
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
          description: 'List the tasks for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'list-runs',
          description: 'List all of the executed runs for an Azure Container Registry, with the ability to filter by a specific Task',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
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
              name: '--run-status',
              description: 'The current status of run',
              args: [
                Arg(
                name: 'run-status',
                suggestions: [

                  FigSuggestion(name: 'Canceled'),
                  FigSuggestion(name: 'Error'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'Queued'),
                  FigSuggestion(name: 'Running'),
                  FigSuggestion(name: 'Started'),
                  FigSuggestion(name: 'Succeeded'),
                  FigSuggestion(name: 'Timeout')
                ]
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Limit the number of latest runs in the results',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show logs for a particular run. If no run-id is supplied, show logs for the last created run',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name of the image. May include a tag in the format \'name:tag\' or digest in the format \'name@digest\'',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-format',
              description: 'Indicates whether the logs should be displayed in raw format'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The unique run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Manually trigger a task that might otherwise be waiting for git commits or base image update triggers',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--agent-pool',
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'agent-poo'
              )
              ]
            ),
            Option(
              name: '--arg',
              description: 'Build argument in \'--arg name[=value]\' format. Multiples supported by passing \'--arg` multiple times',
              args: [
                Arg(
                name: 'ar'
              )
              ]
            ),
            Option(
              name: ['--context', '-c'],
              description: 'The full URL to the source code repository (Requires \'.git\' suffix for a github repo) or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\'). If \'/dev/null\' is specified, the value will be set to None and ignored. This is a required argument if the task is not a system task',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Relative path of the the task/docker file to the source code root folder. Task files must be suffixed with \'.yaml\' or piped from the standard input using \'-\'',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--log-template',
              description: 'The repository and tag template for run log artifact using the format: \'log/repo:tag\' (e.g., \'acr/logs:{{.Run.ID}}\'). Only applicable to CMK enabled registry',
              args: [
                Arg(
                name: 'log-templat'
              )
              ]
            ),
            Option(
              name: '--no-format',
              description: 'Indicates whether the logs should be displayed in raw format'
            ),
            Option(
              name: '--no-logs',
              description: 'Do not show logs after successfully queuing the build'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the run to complete and return immediately after queuing the run'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--secret-arg',
              description: 'Secret build argument in \'--secret-arg name[=value]\' format. Multiples supported by passing --secret-arg multiple times',
              args: [
                Arg(
                name: 'secret-ar'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Task value in \'--set name[=value]\' format. Multiples supported by passing --set multiple times',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--set-secret',
              description: 'Secret task value in \'--set-secret name[=value]\' format. Multiples supported by passing --set-secret multiple times',
              args: [
                Arg(
                name: 'set-secre'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'The name of the target build stage',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--update-trigger-token',
              description: 'The payload that will be passed back alongwith the base image trigger notification',
              args: [
                Arg(
                name: 'update-trigger-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the properties of a named task for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--with-secure-properties',
              description: 'Indicates whether the secure properties of a task should be returned'
            )
          ]
        ),
        Subcommand(
          name: 'show-run',
          description: 'Get the properties of a specified run of an Azure Container Registry Task',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The unique run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
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
          description: 'Update a task for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the task',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--agent-pool',
              description: 'The name of the agent pool',
              args: [
                Arg(
                name: 'agent-poo'
              )
              ]
            ),
            Option(
              name: '--arg',
              description: 'Build argument in \'--arg name[=value]\' format. Multiples supported by passing \'--arg` multiple times',
              args: [
                Arg(
                name: 'ar'
              )
              ]
            ),
            Option(
              name: '--auth-mode',
              description: 'Auth mode of the source registry',
              args: [
                Arg(
                name: 'auth-mode',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--base-image-trigger-enabled',
              description: 'Indicates whether the base image trigger is enabled',
              args: [
                Arg(
                name: 'base-image-trigger-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--base-image-trigger-type',
              description: 'The type of the auto trigger for base image dependency updates',
              args: [
                Arg(
                name: 'base-image-trigger-type',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Runtime')
                ]
              )
              ]
            ),
            Option(
              name: '--cmd',
              description: 'Commands to execute. This also supports additional docker run parameters (https://docs.docker.com/engine/reference/commandline/run/) or even other docker commands (https://docs.docker.com/engine/reference/commandline/docker/)',
              args: [
                Arg(
                name: 'cm'
              )
              ]
            ),
            Option(
              name: '--commit-trigger-enabled',
              description: 'Indicates whether the source control commit trigger is enabled',
              args: [
                Arg(
                name: 'commit-trigger-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--context', '-c'],
              description: 'The full URL to the source code repository (Requires \'.git\' suffix for a github repo) or a remote tarball (e.g., \'http://server/context.tar.gz\'), or the repository of an OCI artifact in an Azure container registry (e.g., \'oci://myregistry.azurecr.io/myartifact:mytag\'). If \'/dev/null\' is specified, the value will be set to None and ignored. This is a required argument if the task is not a system task',
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--cpu',
              description: 'The CPU configuration in terms of number of cores required for the run',
              args: [
                Arg(
                name: 'cp'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Relative path of the the task/docker file to the source code root folder. Task files must be suffixed with \'.yaml\' or piped from the standard input using \'-\'',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--git-access-token',
              description: 'The access token used to access the source control provider',
              args: [
                Arg(
                name: 'git-access-toke'
              )
              ]
            ),
            Option(
              name: ['--image', '-t'],
              description: 'The name and tag of the image using the format: \'-t repo/image:tag\'. Multiple tags are supported by passing -t multiple times',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--log-template',
              description: 'The repository and tag template for run log artifact using the format: \'log/repo:tag\' (e.g., \'acr/logs:{{.Run.ID}}\'). Only applicable to CMK enabled registry',
              args: [
                Arg(
                name: 'log-templat'
              )
              ]
            ),
            Option(
              name: '--no-cache',
              description: 'Indicates whether the image cache is enabled',
              args: [
                Arg(
                name: 'no-cache',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-push',
              description: 'Indicates whether the image built should be pushed to the registry',
              args: [
                Arg(
                name: 'no-push',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--platform',
              description: 'The platform where build/task is run, Eg, \'windows\' and \'linux\'. When it\'s used in build commands, it also can be specified in \'os/arch/variant\' format for the resulting image. Eg, linux/arm/v7. The \'arch\' and \'variant\' parts are optional',
              args: [
                Arg(
                name: 'platfor'
              )
              ]
            ),
            Option(
              name: '--pull-request-trigger-enabled',
              description: 'Indicates whether the source control pull request trigger is enabled. The trigger is disabled by default',
              args: [
                Arg(
                name: 'pull-request-trigger-enabled',
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
              name: '--secret-arg',
              description: 'Secret build argument in \'--secret-arg name[=value]\' format. Multiples supported by passing --secret-arg multiple times',
              args: [
                Arg(
                name: 'secret-ar'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Task value in \'--set name[=value]\' format. Multiples supported by passing --set multiple times',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--set-secret',
              description: 'Secret task value in \'--set-secret name[=value]\' format. Multiples supported by passing --set-secret multiple times',
              args: [
                Arg(
                name: 'set-secre'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The current status of task',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'The name of the target build stage',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'The timeout in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--update-trigger-endpoint',
              description: 'The full URL of the endpoint to receive base image update trigger notifications',
              args: [
                Arg(
                name: 'update-trigger-endpoin'
              )
              ]
            ),
            Option(
              name: '--update-trigger-payload-type',
              description: 'Indicates whether to include metadata about the base image trigger in the payload alongwith the update trigger token, when a notification is sent',
              args: [
                Arg(
                name: 'update-trigger-payload-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'Token')
                ]
              )
              ]
            ),
            Option(
              name: '--values',
              description: 'The task values/parameters file path relative to the source context',
              args: [
                Arg(
                name: 'value'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-run',
          description: 'Patch the run properties of an Azure Container Registry Task',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The unique run identifier',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--no-archive',
              description: 'Indicates whether the run should be archived',
              args: [
                Arg(
                name: 'no-archive',
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
            )
          ]
        ),
        Subcommand(
          name: 'credential',
          description: 'Manage credentials for a task. Please see https://aka.ms/acr/tasks/cross-registry-authentication for more information',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a custom registry login credential to the task',
              options: [

                Option(
                  name: '--login-server',
                  description: 'The login server of the custom registry. For instance, \'myregistry.azurecr.io\'',
                  args: [
                    Arg(
                    name: 'login-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password to login to the custom registry. This can be plain text or a key vault secret URI',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--use-identity',
                  description: 'The task managed identity used for the credential. Use \'[system]\' to refer to the system-assigned identity or a client id to refer to a user-assigned identity. Please see https://aka.ms/acr/tasks/cross-registry-authentication for more information',
                  args: [
                    Arg(
                    name: 'use-identit'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username to login to the custom registry. This can be plain text or a key vault secret URI',
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
              description: 'List all the custom registry credentials for task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              name: 'remove',
              description: 'Remove credential for a task',
              options: [

                Option(
                  name: '--login-server',
                  description: 'The login server of the custom registry. For instance, \'myregistry.azurecr.io\'',
                  args: [
                    Arg(
                    name: 'login-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              description: 'Update the registry login credential for a task',
              options: [

                Option(
                  name: '--login-server',
                  description: 'The login server of the custom registry. For instance, \'myregistry.azurecr.io\'',
                  args: [
                    Arg(
                    name: 'login-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password to login to the custom registry. This can be plain text or a key vault secret URI',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--use-identity',
                  description: 'The task managed identity used for the credential. Use \'[system]\' to refer to the system-assigned identity or a client id to refer to a user-assigned identity. Please see https://aka.ms/acr/tasks/cross-registry-authentication for more information',
                  args: [
                    Arg(
                    name: 'use-identit'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username to login to the custom registry. This can be plain text or a key vault secret URI',
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
          name: 'identity',
          description: 'Managed Identities for Task. Please see https://aka.ms/acr/tasks/task-create-managed-identity for more information',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Update the managed identity for a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--identities',
                  description: 'Assigns managed identities to the task. Use \'[system]\' to refer to the system-assigned identity or a resource ID to refer to a user-assigned identity',
                  args: [
                    Arg(
                    name: 'identitie'
                  )
                  ]
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
              name: 'remove',
              description: 'Remove managed identities for a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--identities',
                  description: 'Assigns managed identities to the task. Use \'[system]\' to refer to the system-assigned identity or a resource ID to refer to a user-assigned identity',
                  args: [
                    Arg(
                    name: 'identitie'
                  )
                  ]
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
              description: 'Display the managed identities for task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
          name: 'timer',
          description: 'Manage timer triggers for a task',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a timer trigger to a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'The schedule of the timer trigger represented as a cron expression',
                  args: [
                    Arg(
                    name: 'schedul'
                  )
                  ]
                ),
                Option(
                  name: '--timer-name',
                  description: 'The name of the timer trigger',
                  args: [
                    Arg(
                    name: 'timer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Indicates whether the timer trigger is enabled',
                  args: [
                    Arg(
                    name: 'enabled',
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all timer triggers for a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
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
              name: 'remove',
              description: 'Remove a timer trigger from a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--timer-name',
                  description: 'The name of the timer trigger',
                  args: [
                    Arg(
                    name: 'timer-nam'
                  )
                  ]
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
              description: 'Update the timer trigger for a task',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the task',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--timer-name',
                  description: 'The name of the timer trigger',
                  args: [
                    Arg(
                    name: 'timer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Indicates whether the timer trigger is enabled',
                  args: [
                    Arg(
                    name: 'enabled',
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
                  name: '--schedule',
                  description: 'The schedule of the timer trigger represented as a cron expression',
                  args: [
                    Arg(
                    name: 'schedul'
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
      name: 'taskrun',
      description: 'Manage taskruns using Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a taskrun from an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the taskrun',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
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
          description: 'List the taskruns for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'logs',
          description: 'Show run logs for a particular taskrun',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the taskrun',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--no-format',
              description: 'Indicates whether the logs should be displayed in raw format'
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
          description: 'Get the properties of a named taskrun for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the taskrun',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
      name: 'token',
      description: 'Manage tokens for an Azure Container Registry',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a token associated with a scope map for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the token',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--expiration',
              description: 'UTC time for which the credentials will be valid. In the format of %Y-%m-%dT%H:%M:%SZ, e.g. 2025-12-31T12:59:59Z',
              args: [
                Arg(
                name: 'expiratio'
              )
              ]
            ),
            Option(
              name: '--expiration-in-days',
              description: 'Number of days for which the credentials will be valid. If not specified, the expiration will default to the max value "9999-12-31T23:59:59.999999+00:00"',
              args: [
                Arg(
                name: 'expiration-in-day'
              )
              ]
            ),
            Option(
              name: '--gateway',
              description: 'Gateway permissions. Use the format "--gateway GATEWAY [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'config/read\', \'config/write\', \'message/read\', \'message/write\']',
              args: [
                Arg(
                name: 'gatewa'
              )
              ]
            ),
            Option(
              name: '--no-passwords',
              description: 'Do not generate passwords during token creation. You can generate the passwords after the token is created by using az acr token credentials generate command',
              args: [
                Arg(
                name: 'no-passwords',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'Repository permissions. Use the format "--repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are [\'content/delete\', \'content/read\', \'content/write\', \'metadata/read\', \'metadata/write\']',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope-map',
              description: 'The name of the scope map with pre-configured repository permissions. Use "--repository" and/or "--gateway" if you would like CLI to configure one for you',
              args: [
                Arg(
                name: 'scope-ma'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The status of the token',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a token for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the token',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
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
          description: 'List all tokens for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Show details and attributes of a token for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the token',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Update a token (replace associated scope map) for an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the token',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scope-map',
              description: 'The name of the scope map associated with the token. If not specified, running this command will disassociate the current scope map related to the token',
              args: [
                Arg(
                name: 'scope-ma'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The status of the token',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'credential',
          description: 'Manage credentials of a token for an Azure Container Registry',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a token credential',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the token',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--password1',
                  description: 'Flag indicating if first password should be deleted'
                ),
                Option(
                  name: '--password2',
                  description: 'Flag indicating if second password should be deleted'
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
              name: 'generate',
              description: 'Generate or replace one or both passwords of a token for an Azure Container Registry. For using token and password to access a container registry, see https://aka.ms/acr/repo-permissions',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the token',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--registry', '-r'],
                  description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
                  args: [
                    Arg(
                    name: 'registr'
                  )
                  ]
                ),
                Option(
                  name: '--expiration',
                  description: 'UTC time for which the credentials will be valid. In the format of %Y-%m-%dT%H:%M:%SZ, e.g. 2025-12-31T12:59:59Z',
                  args: [
                    Arg(
                    name: 'expiratio'
                  )
                  ]
                ),
                Option(
                  name: '--expiration-in-days',
                  description: 'Number of days for which the credentials will be valid. If not specified, the expiration will default to the max value "9999-12-31T23:59:59.999999+00:00"',
                  args: [
                    Arg(
                    name: 'expiration-in-day'
                  )
                  ]
                ),
                Option(
                  name: '--password1',
                  description: 'Flag indicating if password1 should be generated'
                ),
                Option(
                  name: '--password2',
                  description: 'Flag indicating if password2 should be generated'
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
    ),
    Subcommand(
      name: 'webhook',
      description: 'Manage webhooks for Azure Container Registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a webhook for an Azure Container Registry',
          options: [

            Option(
              name: '--actions',
              description: 'Space-separated list of actions that trigger the webhook to post notifications',
              args: [
                Arg(
                name: 'actions',
                suggestions: [

                  FigSuggestion(name: 'chart_delete'),
                  FigSuggestion(name: 'chart_push'),
                  FigSuggestion(name: 'delete'),
                  FigSuggestion(name: 'push'),
                  FigSuggestion(name: 'quarantine')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--uri',
              description: 'The service URI for the webhook to post notifications',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--headers',
              description: 'Space-separated custom headers in \'key[=value]\' format that will be added to the webhook notifications. Use "" to clear existing headers',
              args: [
                Arg(
                name: 'header'
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
              name: '--scope',
              description: 'The scope of repositories where the event can be triggered. For example, \'foo:*\' means events for all tags under repository \'foo\'. \'foo:bar\' means events for \'foo:bar\' only. \'foo\' is equivalent to \'foo:latest\'. Empty means events for all repositories',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Indicates whether the webhook is enabled',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
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
          description: 'Delete a webhook from an Azure Container Registry',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'get-config',
          description: 'Get the service URI and custom headers for the webhook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'List all of the webhooks for an Azure Container Registry',
          options: [

            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'list-events',
          description: 'List recent events for a webhook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          name: 'ping',
          description: 'Trigger a ping event for a webhook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Get the details of a webhook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
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
          description: 'Update a webhook',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the webhook',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--registry', '-r'],
              description: 'The name of the container registry. It should be specified in lower case. You can configure the default registry name using az configure --defaults acr=<registry name>',
              args: [
                Arg(
                name: 'registr'
              )
              ]
            ),
            Option(
              name: '--actions',
              description: 'Space-separated list of actions that trigger the webhook to post notifications',
              args: [
                Arg(
                name: 'actions',
                suggestions: [

                  FigSuggestion(name: 'chart_delete'),
                  FigSuggestion(name: 'chart_push'),
                  FigSuggestion(name: 'delete'),
                  FigSuggestion(name: 'push'),
                  FigSuggestion(name: 'quarantine')
                ]
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
              name: '--headers',
              description: 'Space-separated custom headers in \'key[=value]\' format that will be added to the webhook notifications. Use "" to clear existing headers',
              args: [
                Arg(
                name: 'header'
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
              name: '--scope',
              description: 'The scope of repositories where the event can be triggered. For example, \'foo:*\' means events for all tags under repository \'foo\'. \'foo:bar\' means events for \'foo:bar\' only. \'foo\' is equivalent to \'foo:latest\'. Empty means events for all repositories',
              args: [
                Arg(
                name: 'scop'
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
              name: '--status',
              description: 'Indicates whether the webhook is enabled',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
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
              name: '--uri',
              description: 'The service URI for the webhook to post notifications',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
