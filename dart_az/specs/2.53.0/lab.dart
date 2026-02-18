// Auto-generated from TypeScript source: lab.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lab` CLI
final FigSpec labSpec = FigSpec(
  name: 'lab',
  description: 'Manage Azure DevTest Labs',
  subcommands: [

    Subcommand(
      name: 'arm-template',
      description: 'Manage Azure Resource Manager (ARM) templates in an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List azure resource manager templates in a given artifact source',
          options: [

            Option(
              name: '--artifact-source-name',
              description: 'The name of the artifact source',
              args: [
                Arg(
                name: 'artifact-source-nam'
              )
              ]
            ),
            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=displayName)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
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
          description: 'Get the details of an ARM template in a lab',
          options: [

            Option(
              name: '--artifact-source-name',
              description: 'Name of the artifact source',
              args: [
                Arg(
                name: 'artifact-source-nam'
              )
              ]
            ),
            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Resource Manager template',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of lab\'s resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--export-parameters',
              description: 'Whether or not to export parameters template'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'artifact',
      description: 'Manage DevTest Labs artifacts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List artifacts in a given artifact source',
          options: [

            Option(
              name: '--artifact-source-name',
              description: 'The name of the artifact source',
              args: [
                Arg(
                name: 'artifact-source-nam'
              )
              ]
            ),
            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=title)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'artifact-source',
      description: 'Manage DevTest Lab artifact sources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List artifact sources in a given lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=displayName)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
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
          description: 'Get artifact source',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the artifact source',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=displayName)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'custom-image',
      description: 'Manage custom images of a DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a custom image in a DevTest Lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the Lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the image',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--os-state',
              description: 'The current state of the virtual machine',
              args: [
                Arg(
                name: 'os-stat'
              )
              ]
            ),
            Option(
              name: '--os-type',
              description: 'Type of the OS on which the custom image is based. Allowed values are: Windows, Linux',
              args: [
                Arg(
                name: 'os-typ'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--source-vm-id',
              description: 'The resource ID of a virtual machine in the provided lab',
              args: [
                Arg(
                name: 'source-vm-i'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'The author of the custom image',
              args: [
                Arg(
                name: 'autho'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A detailed description for the custom image',
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
          description: 'Delete custom image',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the custom image',
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
          description: 'List custom images in a given lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=vm)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
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
          description: 'Get custom image',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the custom image',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=vm)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete lab',
      options: [

        Option(
          name: '--name',
          description: 'The name of the lab',
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
      name: 'get',
      description: 'Get lab',
      options: [

        Option(
          name: '--name',
          description: 'The name of the lab',
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
          name: '--expand',
          description: 'Specify the \$expand query. Example: \'properties(\$select=defaultStorageAccount)\'',
          args: [
            Arg(
            name: 'expan'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'environment',
      description: 'Manage environments for an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an environment in a lab',
          options: [

            Option(
              name: '--arm-template',
              description: 'Name or ID of the ARM template in the lab',
              args: [
                Arg(
                name: 'arm-templat'
              )
              ]
            ),
            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of the lab\'s resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--artifact-source-name',
              description: 'Name of the artifact source in the lab. value from: az lab artifact-source list',
              args: [
                Arg(
                name: 'artifact-source-nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'JSON encoded list of parameters. Use \'@{file}\' to load from a file',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The tags for the resource',
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
          description: 'Delete an environment from a lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the environment',
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
          description: 'List environments in a lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=deploymentProperties)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
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
          description: 'Get the details for an environment of a lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the environment',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=deploymentProperties)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'formula',
      description: 'Manage formulas for an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete formula',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the formula',
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
          name: 'export-artifacts',
          description: 'Export artifacts from a formula',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the formula',
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
          description: 'List formulas in a given lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=description)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
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
          description: 'Show formulae from an Azure DevTest Lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the formula',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=description)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'gallery-image',
      description: 'List Azure Marketplace images allowed for a DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List gallery images in a given lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=author)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'secret',
      description: 'Manage secrets of an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete secret',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the secret',
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
          description: 'List secrets in a given user profile',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=value)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set a secret for a lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret',
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
              name: '--value',
              description: 'Value of the secret',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get secret',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the secret',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$select=value)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vm',
      description: 'Manage VMs in an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'apply-artifacts',
          description: 'Apply artifacts to a virtual machine in Azure DevTest Lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the Lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual machine',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of lab\'s resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--artifacts',
              description: 'JSON encoded array of artifacts to be applied. Use \'@{file}\' to load from a file',
              args: [
                Arg(
                name: 'artifact'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'claim',
          description: 'Claim a virtual machine from the Lab',
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
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual machine to claim',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of lab\'s resource group',
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
          description: 'Create a VM in a lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual machine',
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
              name: '--admin-password',
              description: 'Password for the VM admin',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: '--admin-username',
              description: 'Username for the VM admin',
              args: [
                Arg(
                name: 'admin-usernam'
              )
              ]
            ),
            Option(
              name: '--allow-claim',
              description: 'Flag indicating if the VM should be created as claimable'
            ),
            Option(
              name: '--artifacts',
              description: 'JSON encoded array of artifacts to be applied. Use \'@{file}\' to load from a file',
              args: [
                Arg(
                name: 'artifact'
              )
              ]
            ),
            Option(
              name: '--authentication-type',
              description: 'Type of authentication allowed for the VM. Allowed values are: password, ssh',
              args: [
                Arg(
                name: 'authentication-typ'
              )
              ]
            ),
            Option(
              name: '--disk-type',
              description: 'Storage type to use for virtual machine. Allowed values are: Premium, Standard, StandardSSD',
              args: [
                Arg(
                name: 'disk-typ'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'The expiration date in UTC(yyyy-MM-ddTHH:mm:ss) for the VM',
              args: [
                Arg(
                name: 'expiration-dat'
              )
              ]
            ),
            Option(
              name: '--formula',
              description: 'Name of the formula. Use az lab formula list for available formulas',
              args: [
                Arg(
                name: 'formul'
              )
              ]
            ),
            Option(
              name: '--generate-ssh-keys',
              description: 'Generate SSH public and private key files if missing',
              args: [
                Arg(
                name: 'generate-ssh-key'
              )
              ]
            ),
            Option(
              name: '--image',
              description: 'The name of the operating system image (gallery image name or custom image name/ID)',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--image-type',
              description: 'Type of the image. Allowed values are: gallery, custom',
              args: [
                Arg(
                name: 'image-typ'
              )
              ]
            ),
            Option(
              name: '--ip-configuration',
              description: 'Type of IP configuration to use for the VM. Allowed values are: shared, public, private',
              args: [
                Arg(
                name: 'ip-configuratio'
              )
              ]
            ),
            Option(
              name: '--notes',
              description: 'Notes for the virtual machine',
              args: [
                Arg(
                name: 'note'
              )
              ]
            ),
            Option(
              name: '--saved-secret',
              description: 'Name of the saved secret to be used for authentication',
              args: [
                Arg(
                name: 'saved-secre'
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'The size of the VM to be created. See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--ssh-key',
              description: 'The SSH public key or public key file path. Use --generate-ssh-keys to generate SSH keys',
              args: [
                Arg(
                name: 'ssh-ke'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name of the subnet to add the VM to',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of the virtual network to add the VM to',
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
          description: 'Delete virtual machine',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the virtual machine',
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
          description: 'List the VMs in an Azure DevTest Lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'Name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'List all virtual machines in the lab. Cannot be used with --filters',
              args: [
                Arg(
                name: 'al'
              )
              ]
            ),
            Option(
              name: '--claimable',
              description: 'List only claimable virtual machines in the lab. Cannot be used with --filters',
              args: [
                Arg(
                name: 'claimabl'
              )
              ]
            ),
            Option(
              name: '--environment',
              description: 'Name or ID of the environment to list virtual machines in. Cannot be used with --filters',
              args: [
                Arg(
                name: 'environmen'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'The expand query',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'The filter to apply',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            ),
            Option(
              name: '--object-id',
              description: 'Object ID of the owner to list VMs for',
              args: [
                Arg(
                name: 'object-i'
              )
              ]
            ),
            Option(
              name: '--order-by',
              description: 'The ordering expression for the results using OData notation',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return',
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
          description: 'Get virtual machine',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the virtual machine',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$expand=artifacts,computeVm,networkInterface,applicableSchedule)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a virtual machine',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the virtual machine',
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
          name: 'stop',
          description: 'Stop a virtual machine This operation can take a while to complete',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the virtual machine',
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
      name: 'vnet',
      description: 'Manage virtual networks of an Azure DevTest Lab',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Get virtual network',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of the virtual network',
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
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$expand=externalSubnets)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List virtual networks in a given lab',
          options: [

            Option(
              name: '--lab-name',
              description: 'The name of the lab',
              args: [
                Arg(
                name: 'lab-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'Specify the \$expand query. Example: \'properties(\$expand=externalSubnets)\'',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'The filter to apply to the operation. Example: \'\$filter=contains(name,\'myName\')',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'The ordering expression for the results, using OData notation. Example: \'\$orderby=name desc\'',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'The maximum number of resources to return from the operation. Example: \'\$top=10\'',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
