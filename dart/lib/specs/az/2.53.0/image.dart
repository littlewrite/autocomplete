// Auto-generated from TypeScript source: image.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `image` CLI
final FigSpec imageSpec = FigSpec(
  name: 'image',
  description: 'Manage custom virtual machine images',
  subcommands: [

    Subcommand(
      name: 'builder',
      description: 'Manage and build image builder templates',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel the long running image build based on the image template',
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
              description: 'The name of the image template',
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
          description: 'Create an image builder template',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the image template',
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
              name: '--build-timeout',
              description: 'The Maximum duration to wait while building the image template, in minutes. Default is 60',
              args: [
                Arg(
                name: 'build-timeou'
              )
              ]
            ),
            Option(
              name: '--build-vm-identities',
              description: 'Optional configuration of the virtual network to use to deploy the build virtual machine in. Omit if no specific virtual network needs to be used',
              args: [
                Arg(
                name: 'build-vm-identitie'
              )
              ]
            ),
            Option(
              name: '--checksum',
              description: 'The SHA256 checksum of the Red Hat ISO image',
              args: [
                Arg(
                name: 'checksu'
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
              name: '--identity',
              description: 'List of user assigned identities (name or ID, space delimited) of the image template',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: ['--image-source', '-i'],
              description: 'The base image to customize. Must be a valid platform image URN, platform image alias, Red Hat ISO image URI, managed image name/ID, or shared image version ID. value from: az vm image list, az vm image show',
              args: [
                Arg(
                name: 'image-sourc'
              )
              ]
            ),
            Option(
              name: '--image-template',
              description: 'Local path or URL to an image template file. When using --image-template, all other parameters are ignored except -g and -n. Reference: https://docs.microsoft.com/azure/virtual-machines/linux/image-builder-json',
              args: [
                Arg(
                name: 'image-templat'
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
              name: '--managed-image-destinations',
              description: 'Managed image output distributor information. Space-separated list of key-value pairs. E.g "image_1=westus2 image_2=westus". Each key is the name or resource ID of the managed image to be created. Each value is the location of the image',
              args: [
                Arg(
                name: 'managed-image-destination'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--os-disk-size',
              description: 'Size of the OS disk in GB. Omit or specify 0 to use Azure\'s default OS disk size',
              args: [
                Arg(
                name: 'os-disk-siz'
              )
              ]
            ),
            Option(
              name: '--proxy-vm-size',
              description: 'Size of the virtual machine used to build, customize and capture images (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images)',
              args: [
                Arg(
                name: 'proxy-vm-siz'
              )
              ]
            ),
            Option(
              name: '--scripts',
              description: 'Space-separated list of shell or powershell scripts to customize the image with. Each script must be a publicly accessible URL. Infers type of script from file extension (\'.sh\' or\'.ps1\') or from source type. More more customizer options and flexibility, see: \'az image template customizer add\'',
              args: [
                Arg(
                name: 'script'
              )
              ]
            ),
            Option(
              name: '--shared-image-destinations',
              description: 'Shared image gallery (sig) output distributor information. Space-separated list of key-value pairs. E.g "my_gallery_1/image_def_1=eastus,westus my_gallery_2/image_def_2=uksouth,canadaeast,francesouth." Each key is the sig image definition ID or sig gallery name and sig image definition delimited by a "/". Each value is a comma-delimited list of replica locations',
              args: [
                Arg(
                name: 'shared-image-destination'
              )
              ]
            ),
            Option(
              name: '--staging-resource-group',
              description: 'The staging resource group id in the same subscription as the image template that will be used to build the image',
              args: [
                Arg(
                name: 'staging-resource-grou'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or ID of subnet to deploy the build virtual machine',
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
              name: '--validator',
              description: 'The type of validation you want to use on the Image. For example, "Shell" can be shell validation',
              args: [
                Arg(
                name: 'validato'
              )
              ]
            ),
            Option(
              name: '--vm-size',
              description: 'Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2)',
              args: [
                Arg(
                name: 'vm-siz'
              )
              ]
            ),
            Option(
              name: '--vnet',
              description: 'Name of VNET to deploy the build virtual machine. You should only specify it when subnet is a name',
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
          description: 'Delete image builder template',
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
              description: 'The name of the image template',
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
          description: 'List image builder templates',
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
          name: 'run',
          description: 'Build an image builder template',
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
              description: 'The name of the image template',
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
          description: 'Show an image builder template',
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
              description: 'The name of the image template',
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
          name: 'show-runs',
          description: 'Show an image builder template\'s run outputs',
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
              description: 'The name of the image template',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--output-name',
              description: 'Name of the image builder run output',
              args: [
                Arg(
                name: 'output-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update an image builder template',
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
              name: '--defer',
              description: 'Temporarily store the object in the local cache instead of sending to Azure. Use az cache commands to view/clear',
              args: [
                Arg(
                name: 'defe'
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
              name: ['--name', '-n'],
              description: 'The name of the image template',
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the template is met',
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
              description: 'The name of the image template',
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
          name: 'customizer',
          description: 'Manage image builder template customizers',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an image builder customizer to an image builder template',
              options: [

                Option(
                  name: '--customizer-name',
                  description: 'Name of the customizer',
                  args: [
                    Arg(
                    name: 'customizer-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'Type of customizer to be added to the image template',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'file'),
                      FigSuggestion(name: 'powershell'),
                      FigSuggestion(name: 'shell'),
                      FigSuggestion(name: 'windows-restart'),
                      FigSuggestion(name: 'windows-update')
                    ]
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
                  name: '--dest-path',
                  description: 'The absolute destination path where the file specified in --file-source will be downloaded to in the image',
                  args: [
                    Arg(
                    name: 'dest-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--exit-codes', '-e'],
                  description: 'Space-separated list of valid exit codes, as integers',
                  args: [
                    Arg(
                    name: 'exit-code'
                  )
                  ]
                ),
                Option(
                  name: '--file-source',
                  description: 'The URI of the file to be downloaded into the image. It can be a github link, SAS URI for Azure Storage, etc',
                  args: [
                    Arg(
                    name: 'file-sourc'
                  )
                  ]
                ),
                Option(
                  name: '--filters',
                  description: 'Space delimited filters to select updates to apply. Omit or specify empty array to use the default (no filter)',
                  args: [
                    Arg(
                    name: 'filter'
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
                  name: '--inline-script',
                  description: 'Space-separated list of inline script lines to customize the image with',
                  args: [
                    Arg(
                    name: 'inline-scrip'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the image template',
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
                  name: '--restart-check-command',
                  description: 'Command to verify that restart succeeded',
                  args: [
                    Arg(
                    name: 'restart-check-comman'
                  )
                  ]
                ),
                Option(
                  name: '--restart-command',
                  description: 'Command to execute the restart operation',
                  args: [
                    Arg(
                    name: 'restart-comman'
                  )
                  ]
                ),
                Option(
                  name: '--restart-timeout',
                  description: 'Restart timeout specified as a string consisting of a magnitude and unit, e.g. \'5m\' (5 minutes) or \'2h\' (2 hours)',
                  args: [
                    Arg(
                    name: 'restart-timeou'
                  )
                  ]
                ),
                Option(
                  name: '--script-url',
                  description: 'URL of script to customize the image with. The URL must be publicly accessible',
                  args: [
                    Arg(
                    name: 'script-ur'
                  )
                  ]
                ),
                Option(
                  name: '--search-criteria',
                  description: 'Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field',
                  args: [
                    Arg(
                    name: 'search-criteri'
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
                  name: '--update-limit',
                  description: 'Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000)',
                  args: [
                    Arg(
                    name: 'update-limi'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'clear',
              description: 'Remove all image builder customizers from an image builder template',
              options: [

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
                  description: 'The name of the image template',
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
              name: 'remove',
              description: 'Remove an image builder customizer from an image builder template',
              options: [

                Option(
                  name: '--customizer-name',
                  description: 'Name of the customizer',
                  args: [
                    Arg(
                    name: 'customizer-nam'
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
                  description: 'The name of the image template',
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
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Manage identities of an image builder template',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Add managed identities to an existing image builder template. Currently, only one user identity is supported',
              options: [

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
                  description: 'The name of the image template',
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
                  name: '--user-assigned',
                  description: 'Specify one user assigned identity (name or ID, space delimited) of the image template',
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
              description: 'Remove managed identities from an existing image builder template',
              options: [

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
                  description: 'The name of the image template',
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
                  name: '--user-assigned',
                  description: 'Specify one user assigned identity (name or ID, space delimited) of the image template',
                  args: [
                    Arg(
                    name: 'user-assigne'
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
              name: 'show',
              description: 'Display managed identities of a image builder template',
              options: [

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
                  description: 'The name of the image template',
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
            )
          ]
        ),
        Subcommand(
          name: 'optimizer',
          description: 'Manage image builder template optimizer',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add optimizer to an existing image builder template',
              options: [

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
                  name: '--enable-vm-boot',
                  description: 'If this parameter is set to true, VM boot time will be improved by optimizing the final customized image output',
                  args: [
                    Arg(
                    name: 'enable-vm-boot',
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
                  description: 'The name of the image template',
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
              name: 'remove',
              description: 'Remove optimizer from an existing image builder template',
              options: [

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
                  description: 'The name of the image template',
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
              name: 'show',
              description: 'Show optimizer of an existing image builder template',
              options: [

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
                  description: 'The name of the image template',
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
              description: 'Update an optimizer from an existing image builder template',
              options: [

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
                  name: '--enable-vm-boot',
                  description: 'If this parameter is set to true, VM boot time will be improved by optimizing the final customized image output',
                  args: [
                    Arg(
                    name: 'enable-vm-boot',
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
                  description: 'The name of the image template',
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
            )
          ]
        ),
        Subcommand(
          name: 'output',
          description: 'Manage image builder template output distributors.\n\n\t\tA customized image can be distributed as a managed image, a shared image in a shared image gallery (SIG), or as a VHD blob',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an image builder output distributor to an image builder template',
              options: [

                Option(
                  name: '--artifact-tags',
                  description: 'Tags that will be applied to the output artifact once it has been created by the distributor. space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'artifact-tag'
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
                  name: '--gallery-image-definition',
                  description: 'Name or ID of the existing SIG image definition to create the customized image version with',
                  args: [
                    Arg(
                    name: 'gallery-image-definitio'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-name',
                  description: 'Shared image gallery name, if image definition name and not ID was provided',
                  args: [
                    Arg(
                    name: 'gallery-nam'
                  )
                  ]
                ),
                Option(
                  name: '--gallery-replication-regions',
                  description: 'Space-separated list of regions to replicate the image version into. Defaults to resource group\'s location',
                  args: [
                    Arg(
                    name: 'gallery-replication-region'
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
                  name: '--is-vhd',
                  description: 'The output is a VHD distributor',
                  args: [
                    Arg(
                    name: 'is-vh'
                  )
                  ]
                ),
                Option(
                  name: '--managed-image',
                  description: 'Name or ID of the customized managed image to be created',
                  args: [
                    Arg(
                    name: 'managed-imag'
                  )
                  ]
                ),
                Option(
                  name: '--managed-image-location',
                  description: 'Location where the customized image will be created. Defaults to resource group\'s location',
                  args: [
                    Arg(
                    name: 'managed-image-locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the image template',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--output-name',
                  description: 'Name of the image builder run output. Defaults to the name of the managed image or sig image definition',
                  args: [
                    Arg(
                    name: 'output-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--versioning',
                  description: 'Describe how to generate new x.y.z version number for distribution',
                  args: [
                    Arg(
                    name: 'versioning',
                    suggestions: [

                      FigSuggestion(name: 'Latest'),
                      FigSuggestion(name: 'Source')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vhd-uri',
                  description: 'Optional Azure Storage URI for the distributed VHD blob. Omit to use the default (empty string) in which case VHD would be published to the storage account in the staging resource group',
                  args: [
                    Arg(
                    name: 'vhd-ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'clear',
              description: 'Remove all image builder output distributors from an image builder template',
              options: [

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
                  description: 'The name of the image template',
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
              name: 'remove',
              description: 'Remove an image builder output distributor from an image builder template',
              options: [

                Option(
                  name: '--output-name',
                  description: 'Name of the image builder run output',
                  args: [
                    Arg(
                    name: 'output-nam'
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
                  description: 'The name of the image template',
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
              name: 'versioning',
              description: 'Manage image builder template output versioner.\n\n\t\tDescribe how to generate new x.y.z version number for distribution',
              subcommands: [

                Subcommand(
                  name: 'remove',
                  description: 'Remove all versioning options on specified outputs',
                  options: [

                    Option(
                      name: '--output-name',
                      description: 'Name of the image builder run output',
                      args: [
                        Arg(
                        name: 'output-nam'
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
                      description: 'The name of the image template',
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
                  name: 'set',
                  description: 'Set the image builder output versioner of an image builder template',
                  options: [

                    Option(
                      name: '--output-name',
                      description: 'Name of the image builder run output',
                      args: [
                        Arg(
                        name: 'output-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--scheme',
                      description: 'Version numbering scheme to be used',
                      args: [
                        Arg(
                        name: 'scheme',
                        suggestions: [

                          FigSuggestion(name: 'Latest'),
                          FigSuggestion(name: 'Source')
                        ]
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
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--major',
                      description: 'Major version for the generated version number. Determine what is "latest" based on versions with this value as the major version. -1 is equivalent to leaving it unset',
                      args: [
                        Arg(
                        name: 'majo'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the image template',
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
                  name: 'show',
                  description: 'Show versioning options on specified outputs',
                  options: [

                    Option(
                      name: '--output-name',
                      description: 'Name of the image builder run output',
                      args: [
                        Arg(
                        name: 'output-nam'
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
                      description: 'The name of the image template',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'trigger',
          description: 'Manage image builder template trigger',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a trigger for the specified virtual machine image template',
              options: [

                Option(
                  name: '--image-template-name',
                  description: 'The name of the image Template',
                  args: [
                    Arg(
                    name: 'image-template-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--trigger-name', '--name', '-n'],
                  description: 'The name of the trigger',
                  args: [
                    Arg(
                    name: 'trigger-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The kind of trigger',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'SourceImage')
                    ]
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a trigger for the specified virtual machine image template',
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
                  name: '--image-template-name',
                  description: 'The name of the image Template',
                  args: [
                    Arg(
                    name: 'image-template-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--trigger-name', '--name', '-n'],
                  description: 'The name of the trigger',
                  args: [
                    Arg(
                    name: 'trigger-nam'
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
              description: 'List all triggers for the specified Image Template resource',
              options: [

                Option(
                  name: '--image-template-name',
                  description: 'The name of the image Template',
                  args: [
                    Arg(
                    name: 'image-template-nam'
                  )
                  ]
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
              description: 'Get the specified trigger for the specified image template resource',
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
                  name: '--image-template-name',
                  description: 'The name of the image Template',
                  args: [
                    Arg(
                    name: 'image-template-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--trigger-name', '--name', '-n'],
                  description: 'The name of the trigger',
                  args: [
                    Arg(
                    name: 'trigger-nam'
                  )
                  ]
                ),
                Option(
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
                  name: '--image-template-name',
                  description: 'The name of the image Template',
                  args: [
                    Arg(
                    name: 'image-template-nam'
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
                  name: ['--trigger-name', '--name', '-n'],
                  description: 'The name of the trigger',
                  args: [
                    Arg(
                    name: 'trigger-nam'
                  )
                  ]
                ),
                Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'validator',
          description: 'Manage image builder template validate',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add validate to an existing image builder template',
              options: [

                Option(
                  name: [
                    '--continue-distribute-on-failure',
                    '--dis-on-failure',
                  ],
                  description: 'If validation fails and this parameter is set to false, output image(s) will not be distributed'
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
                  description: 'The name of the image template',
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
                  name: '--source-validation-only',
                  description: 'If this parameter is set to true, the image specified in the \'source\' section will directly be validated. No separate build will be run to generate and then validate a customized image'
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
              description: 'Remove validate from an existing image builder template',
              options: [

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
                  description: 'The name of the image template',
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
              name: 'show',
              description: 'Show validate of an existing image builder template',
              options: [

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
                  description: 'The name of the image template',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'copy',
      description: 'Copy a managed image (or vm) to other regions. It requires the source disk to be available',
      options: [

        Option(
          name: '--source-object-name',
          description: 'The name of the image or vm resource',
          args: [
            Arg(
            name: 'source-object-nam'
          )
          ]
        ),
        Option(
          name: '--source-resource-group',
          description: 'Name of the resource group of the source resource',
          args: [
            Arg(
            name: 'source-resource-grou'
          )
          ]
        ),
        Option(
          name: '--target-location',
          description: 'Space separated location list to create the image in (e.g. westeurope etc.)',
          args: [
            Arg(
            name: 'target-locatio'
          )
          ]
        ),
        Option(
          name: '--target-resource-group',
          description: 'Name of the resource group to create images in',
          args: [
            Arg(
            name: 'target-resource-grou'
          )
          ]
        ),
        Option(
          name: '--cleanup',
          description: 'Include this switch to delete temporary resources upon completion'
        ),
        Option(
          name: '--export-as-snapshot',
          description: 'Include this switch to export the copies as snapshots instead of images'
        ),
        Option(
          name: '--parallel-degree',
          description: 'Number of parallel copy operations',
          args: [
            Arg(
            name: 'parallel-degre'
          )
          ]
        ),
        Option(
          name: '--source-type',
          description: 'Image or vm',
          args: [
            Arg(
            name: 'source-type',
            suggestions: [

              FigSuggestion(name: 'image'),
              FigSuggestion(name: 'vm')
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
          name: '--target-name',
          description: 'Name of the final image that will be created',
          args: [
            Arg(
            name: 'target-nam'
          )
          ]
        ),
        Option(
          name: '--target-subscription',
          description: 'Name or ID of the subscription where the final image should be created',
          args: [
            Arg(
            name: 'target-subscriptio'
          )
          ]
        ),
        Option(
          name: '--temporary-resource-group-name',
          description: 'Resource Group name where temporary storage account will be created',
          args: [
            Arg(
            name: 'temporary-resource-group-nam'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Time in seconds for the copy operation to finish. Increase this time if you are going to copy large images (disks) like 512GB or more',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a custom Virtual Machine Image from managed disks or snapshots',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'New image name',
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
          name: '--source',
          description: 'OS disk source from the same region, including a virtual machine ID or name, OS disk blob URI, managed OS disk ID or name, or OS snapshot ID or name',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--data-disk-caching',
          description: 'Storage caching type for the image\'s data disk',
          args: [
            Arg(
            name: 'data-disk-caching',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'ReadOnly'),
              FigSuggestion(name: 'ReadWrite')
            ]
          )
          ]
        ),
        Option(
          name: '--data-disk-sources',
          description: 'Space-separated list of data disk sources, including unmanaged blob URI, managed disk ID or name, or snapshot ID or name',
          args: [
            Arg(
            name: 'data-disk-source'
          )
          ]
        ),
        Option(
          name: '--edge-zone',
          description: 'The name of edge zone',
          args: [
            Arg(
            name: 'edge-zon'
          )
          ]
        ),
        Option(
          name: '--hyper-v-generation',
          description: 'The hypervisor generation of the Virtual Machine created from the image',
          args: [
            Arg(
            name: 'hyper-v-generation',
            suggestions: [

              FigSuggestion(name: 'V1'),
              FigSuggestion(name: 'V2')
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
          name: '--os-disk-caching',
          description: 'Storage caching type for the image\'s OS disk',
          args: [
            Arg(
            name: 'os-disk-caching',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'ReadOnly'),
              FigSuggestion(name: 'ReadWrite')
            ]
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: '',
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
          name: '--storage-sku',
          description: 'The SKU of the storage account with which to create the VM image. Unused if source VM is specified',
          args: [
            Arg(
            name: 'storage-sku',
            suggestions: [

              FigSuggestion(name: 'PremiumV2_LRS'),
              FigSuggestion(name: 'Premium_LRS'),
              FigSuggestion(name: 'Premium_ZRS'),
              FigSuggestion(name: 'StandardSSD_LRS'),
              FigSuggestion(name: 'StandardSSD_ZRS'),
              FigSuggestion(name: 'Standard_LRS'),
              FigSuggestion(name: 'UltraSSD_LRS')
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
          name: '--zone-resilient',
          description: 'Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage',
          args: [
            Arg(
            name: 'zone-resilient',
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
      description: 'Delete an Image',
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
          name: ['--image-name', '--name', '-n'],
          description: 'The name of the image',
          args: [
            Arg(
            name: 'image-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List the list of images under a resource group',
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
      description: 'Get an image',
      options: [

        Option(
          name: '--expand',
          description: 'The expand expression to apply on the operation',
          args: [
            Arg(
            name: 'expan'
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
          name: ['--image-name', '--name', '-n'],
          description: 'The name of the image',
          args: [
            Arg(
            name: 'image-nam'
          )
          ]
        ),
        Option(
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
      description: 'Update custom VM images',
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
          name: ['--name', '-n'],
          description: 'The name of the image. Required',
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
          name: '--expand',
          description: 'The expand expression to apply on the operation',
          args: [
            Arg(
            name: 'expan'
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
          name: ['--image-name', '--name', '-n'],
          description: 'The name of the image',
          args: [
            Arg(
            name: 'image-nam'
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
    )
  ]
);
