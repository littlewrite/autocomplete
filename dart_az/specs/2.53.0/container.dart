// Auto-generated from TypeScript source: container.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `container` CLI
final FigSpec containerSpec = FigSpec(
  name: 'container',
  description: 'Manage Azure Container Instances',
  subcommands: [

    Subcommand(
      name: 'app',
      description: 'Commands to Manage Azure Container Instances App',
      subcommands: [

        Subcommand(
          name: 'up',
          description: 'Deploy to Azure Container Instances using GitHub Actions',
          options: [

            Option(
              name: '--acr',
              description: 'Name of the Azure Container Registry to be used for pushing the image',
              args: [
                Arg(
                name: 'ac'
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
              name: '--port',
              description: 'Port on which your application runs. Default is 8080',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--repository',
              description: 'GitHub Repository URL e.g. https://github.com/contoso/webapp',
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
      name: 'attach',
      description: 'Attach local standard output and error streams to a container in a container group. This command provides diagnostic information during container startup. Once the container has started, it streams STDOUT and STDERR to your local console',
      options: [

        Option(
          name: '--container-name',
          description: 'The container to attach to. If omitted, the first container in the container group will be chosen',
          args: [
            Arg(
            name: 'container-nam'
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
          description: 'The name of the container group',
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
      description: 'Create a container group',
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
          name: '--acr-identity',
          description: 'The identity with access to the container registry',
          args: [
            Arg(
            name: 'acr-identit'
          )
          ]
        ),
        Option(
          name: '--add-capabilities',
          description: 'A List of security context capabilities to be added',
          args: [
            Arg(
            name: 'add-capabilitie'
          )
          ]
        ),
        Option(
          name: '--allow-escalation',
          description: 'Allow whether a process can gain more privileges than its parent process'
        ),
        Option(
          name: '--assign-identity',
          description: 'Space-separated list of assigned identities. Assigned identities are either user assigned identities (resource IDs) and / or the system assigned identity (\'[system]\'). See examples for more info',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--azure-file-volume-account-key',
          description: 'The storage account access key used to access the Azure File share',
          args: [
            Arg(
            name: 'azure-file-volume-account-ke'
          )
          ]
        ),
        Option(
          name: '--azure-file-volume-account-name',
          description: 'The name of the storage account that contains the Azure File share',
          args: [
            Arg(
            name: 'azure-file-volume-account-nam'
          )
          ]
        ),
        Option(
          name: '--azure-file-volume-mount-path',
          description: 'The path within the container where the azure file volume should be mounted. Must not contain colon \':\'',
          args: [
            Arg(
            name: 'azure-file-volume-mount-pat'
          )
          ]
        ),
        Option(
          name: '--azure-file-volume-share-name',
          description: 'The name of the Azure File share to be mounted as a volume',
          args: [
            Arg(
            name: 'azure-file-volume-share-nam'
          )
          ]
        ),
        Option(
          name: '--cce-policy',
          description: 'The CCE policy for the confidential container group',
          args: [
            Arg(
            name: 'cce-polic'
          )
          ]
        ),
        Option(
          name: '--command-line',
          description: 'The command line to run when the container is started, e.g. \'/bin/bash -c myscript.sh\'',
          args: [
            Arg(
            name: 'command-lin'
          )
          ]
        ),
        Option(
          name: '--cpu',
          description: 'The required number of CPU cores of the containers, accurate to one decimal place',
          args: [
            Arg(
            name: 'cp'
          )
          ]
        ),
        Option(
          name: '--dns-name-label',
          description: 'The dns name label for container group with public IP',
          args: [
            Arg(
            name: 'dns-name-labe'
          )
          ]
        ),
        Option(
          name: '--drop-capabilities',
          description: 'A List of security context capabilities to be dropped',
          args: [
            Arg(
            name: 'drop-capabilitie'
          )
          ]
        ),
        Option(
          name: ['--environment-variables', '-e'],
          description: 'A list of environment variable for the container. Space-separated values in \'key=value\' format',
          args: [
            Arg(
            name: 'environment-variable'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'The path to the input file',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--gitrepo-dir',
          description: 'The target directory path in the git repository. Must not contain \'..\'',
          args: [
            Arg(
            name: 'gitrepo-di'
          )
          ]
        ),
        Option(
          name: '--gitrepo-mount-path',
          description: 'The path within the container where the git repo volume should be mounted. Must not contain colon \':\'',
          args: [
            Arg(
            name: 'gitrepo-mount-pat'
          )
          ]
        ),
        Option(
          name: '--gitrepo-revision',
          description: 'The commit hash for the specified revision',
          args: [
            Arg(
            name: 'gitrepo-revisio'
          )
          ]
        ),
        Option(
          name: '--gitrepo-url',
          description: 'The URL of a git repository to be mounted as a volume',
          args: [
            Arg(
            name: 'gitrepo-ur'
          )
          ]
        ),
        Option(
          name: '--image',
          description: 'The container image name',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--ip-address',
          description: 'The IP address type of the container group',
          args: [
            Arg(
            name: 'ip-address',
            suggestions: [

              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
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
          name: '--log-analytics-workspace',
          description: 'The Log Analytics workspace name or id. Use the current subscription or use --subscription flag to set the desired subscription',
          args: [
            Arg(
            name: 'log-analytics-workspac'
          )
          ]
        ),
        Option(
          name: '--log-analytics-workspace-key',
          description: 'The Log Analytics workspace key',
          args: [
            Arg(
            name: 'log-analytics-workspace-ke'
          )
          ]
        ),
        Option(
          name: '--memory',
          description: 'The required memory of the containers in GB, accurate to one decimal place',
          args: [
            Arg(
            name: 'memor'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the container group',
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
          name: '--os-type',
          description: 'The OS type of the containers',
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
          name: '--ports',
          description: 'A list of ports to open. Space-separated list of ports',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'The priority of the container group',
          args: [
            Arg(
            name: 'priorit'
          )
          ]
        ),
        Option(
          name: '--privileged',
          description: 'The flag to determine if the contianer permissions is elevated to Privileged'
        ),
        Option(
          name: '--protocol',
          description: 'The network protocol to use',
          args: [
            Arg(
            name: 'protocol',
            suggestions: [

              FigSuggestion(name: 'TCP'),
              FigSuggestion(name: 'UDP')
            ]
          )
          ]
        ),
        Option(
          name: '--registry-login-server',
          description: 'The container image registry login server',
          args: [
            Arg(
            name: 'registry-login-serve'
          )
          ]
        ),
        Option(
          name: '--registry-password',
          description: 'The password to log in container image registry server',
          args: [
            Arg(
            name: 'registry-passwor'
          )
          ]
        ),
        Option(
          name: '--registry-username',
          description: 'The username to log in container image registry server',
          args: [
            Arg(
            name: 'registry-usernam'
          )
          ]
        ),
        Option(
          name: '--restart-policy',
          description: 'Restart policy for all containers within the container group',
          args: [
            Arg(
            name: 'restart-policy',
            suggestions: [

              FigSuggestion(name: 'Always'),
              FigSuggestion(name: 'Never'),
              FigSuggestion(name: 'OnFailure')
            ]
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
          name: '--run-as-group',
          description: 'Set the User UID for the container',
          args: [
            Arg(
            name: 'run-as-grou'
          )
          ]
        ),
        Option(
          name: '--run-as-user',
          description: 'Set the User GID for the container',
          args: [
            Arg(
            name: 'run-as-use'
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
          name: '--seccomp-profile',
          description: 'A base64 encoded string containing the contents of the JSON in the seccomp profile',
          args: [
            Arg(
            name: 'seccomp-profil'
          )
          ]
        ),
        Option(
          name: '--secrets',
          description: 'Space-separated secrets in \'key=value\' format',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: '--secrets-mount-path',
          description: 'The path within the container where the secrets volume should be mounted. Must not contain colon \':\'',
          args: [
            Arg(
            name: 'secrets-mount-pat'
          )
          ]
        ),
        Option(
          name: '--secure-environment-variables',
          description: 'A list of secure environment variable for the container. Space-separated values in \'key=value\' format',
          args: [
            Arg(
            name: 'secure-environment-variable'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'The SKU of the container group',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'The name of the subnet when creating a new VNET or referencing an existing one. Can also reference an existing subnet by ID',
          args: [
            Arg(
            name: 'subne'
          )
          ]
        ),
        Option(
          name: '--subnet-address-prefix',
          description: 'The subnet IP address prefix to use when creating a new VNET in CIDR format',
          args: [
            Arg(
            name: 'subnet-address-prefi'
          )
          ]
        ),
        Option(
          name: '--vnet',
          description: 'The name of the VNET when creating a new one or referencing an existing one. Can also reference an existing vnet by ID. This allows using vnets from other resource groups',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        ),
        Option(
          name: '--vnet-address-prefix',
          description: 'The IP address prefix to use when creating a new VNET in CIDR format',
          args: [
            Arg(
            name: 'vnet-address-prefi'
          )
          ]
        ),
        Option(
          name: '--vnet-name',
          description: 'Argument \'vnet_name\' has been deprecated and will be removed in a future release. Use \'--vnet\' instead. The name of the VNET when creating a new one or referencing an existing one',
          args: [
            Arg(
            name: 'vnet-nam'
          )
          ]
        ),
        Option(
          name: '--zone',
          description: 'The zone to place the container group',
          args: [
            Arg(
            name: 'zon'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a container group',
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
          description: 'The name of the container group',
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
      name: 'exec',
      description: 'Execute a command from within a running container of a container group',
      options: [

        Option(
          name: '--exec-command',
          description: 'The command to run from within the container',
          args: [
            Arg(
            name: 'exec-comman'
          )
          ]
        ),
        Option(
          name: '--container-name',
          description: 'The container name where to execute the command. Can be ommitted for container groups with only one container',
          args: [
            Arg(
            name: 'container-nam'
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
          description: 'The name of the container group',
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
      name: 'export',
      description: 'Export a container group in yaml format',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The file path to export the container group',
          args: [
            Arg(
            name: 'fil'
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
          description: 'The name of the container group',
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
      description: 'List container groups',
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
      name: 'logs',
      description: 'Examine the logs for a container in a container group',
      options: [

        Option(
          name: '--container-name',
          description: 'The container name to tail the logs. If omitted, the first container in the container group will be chosen',
          args: [
            Arg(
            name: 'container-nam'
          )
          ]
        ),
        Option(
          name: '--follow',
          description: 'Indicate to stream the tailing logs'
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
          description: 'The name of the container group',
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
      name: 'restart',
      description: 'Restarts all containers in a container group',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container group',
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
      description: 'Get the details of a container group',
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
          description: 'The name of the container group',
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
      name: 'start',
      description: 'Starts all containers in a container group',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container group',
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
      description: 'Stops all containers in a container group',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the container group',
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
);
