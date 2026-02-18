// Auto-generated from TypeScript source: csvmware.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `csvmware` CLI
final FigSpec csvmwareSpec = FigSpec(
  name: 'csvmware',
  description: 'Manage Azure VMware Solution by CloudSimple',
  subcommands: [

    Subcommand(
      name: 'private-cloud',
      description: 'Manage VMware private clouds',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List details of private clouds in a region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a private cloud in a region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'resource-pool',
      description: 'Manage VMware resource pools',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List details of resource pools in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a resource pool in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'ID of the VMware resource pool in your CloudSimple Private Cloud. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'virtual-network',
      description: 'Manage virtual networks',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List details of available virtual networks in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-pool', '-r'],
              description: 'ID of the resource pool used to derive vSphere cluster which contains virtual networks. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'resource-poo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a virtual network in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'ID of the virtual network (vsphereId). You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vm',
      description: 'Manage VMware virtual machines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a VMware virtual machine',
          options: [

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
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--resource-pool', '-r'],
              description: 'ID of the VMware resource pool for this virtual machine in your CloudSimple Private Cloud. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'resource-poo'
              )
              ]
            ),
            Option(
              name: '--template',
              description: 'ID of the vSphere template from which this virtual machine will be created. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'templat'
              )
              ]
            ),
            Option(
              name: '--cores',
              description: 'The number of CPU cores required. The default is taken from the vSphere VM template specified',
              args: [
                Arg(
                name: 'core'
              )
              ]
            ),
            Option(
              name: '--disk',
              description: 'Add or modify disks',
              args: [
                Arg(
                name: 'dis'
              )
              ]
            ),
            Option(
              name: '--expose-to-guest-vm',
              description: 'Will expose full CPU virtualization to the guest operating system. The default is taken from the vSphere VM template specified',
              args: [
                Arg(
                name: 'expose-to-guest-vm',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present. If default location is not configured, will default to the resource group\'s location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--nic',
              description: 'Add or modify NICs',
              args: [
                Arg(
                name: 'ni'
              )
              ]
            ),
            Option(
              name: '--ram',
              description: 'The amount of memory in MB. The default is taken from the vSphere VM template specified',
              args: [
                Arg(
                name: 'ra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a VMware virtual machine',
          options: [

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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List details of VMware virtual machines in the current subscription. If resource group is specified, only the details of virtual machines in that resource group would be listed',
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
          description: 'Get the details of a VMware virtual machine',
          options: [

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
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start a VMware virtual machine',
          options: [

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
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop/Reboot/Suspend a VMware virtual machine',
          options: [

            Option(
              name: '--mode',
              description: 'Stop mode',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'poweroff'),
                  FigSuggestion(name: 'reboot'),
                  FigSuggestion(name: 'shutdown'),
                  FigSuggestion(name: 'suspend')
                ]
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the tags field of a VMware virtual machine',
          options: [

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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
            )
          ]
        ),
        Subcommand(
          name: 'disk',
          description: 'Manage VMware virtual machine\'s disks',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add disk to a VMware virtual machine',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--controller',
                  description: 'Id of the controller. Input 1000 for SCSI controller 0, and 15000 for SATA controller 0',
                  args: [
                    Arg(
                    name: 'controlle'
                  )
                  ]
                ),
                Option(
                  name: '--mode',
                  description: 'The disk independence mode',
                  args: [
                    Arg(
                    name: 'mode',
                    suggestions: [

                      FigSuggestion(name: 'independent_nonpersistent'),
                      FigSuggestion(name: 'independent_persistent'),
                      FigSuggestion(name: 'persistent')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--size',
                  description: 'The amount of disk size in KB',
                  args: [
                    Arg(
                    name: 'siz'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete disks from a VM',
              options: [

                Option(
                  name: '--disks',
                  description: 'Names of disks',
                  args: [
                    Arg(
                    name: 'disk'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List details of disks available on a VMware virtual machine',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a VMware virtual machine\'s disk',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the disk',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'nic',
          description: 'Manage VMware virtual machine\'s Network Interface Cards',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add NIC to a VMware virtual machine',
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
                  name: '--virtual-network',
                  description: 'ID of the virtual network. You can also pass the basename of the ID',
                  args: [
                    Arg(
                    name: 'virtual-networ'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--adapter',
                  description: 'The adapter for the NIC',
                  args: [
                    Arg(
                    name: 'adapter',
                    suggestions: [

                      FigSuggestion(name: 'E1000'),
                      FigSuggestion(name: 'E1000E'),
                      FigSuggestion(name: 'PCNET32'),
                      FigSuggestion(name: 'VMXNET'),
                      FigSuggestion(name: 'VMXNET2'),
                      FigSuggestion(name: 'VMXNET3')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--power-on-boot',
                  description: 'Will power on the NIC at boot time'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete NICs from a VM',
              options: [

                Option(
                  name: '--nics',
                  description: 'Names of NICs',
                  args: [
                    Arg(
                    name: 'nic'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List details of NICs available on a VMware virtual machine',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a VMware virtual machine\'s NIC',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
      name: 'vm-template',
      description: 'Manage VMware virtual machine templates',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List details of VMware virtual machines templates in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            ),
            Option(
              name: ['--resource-pool', '-r'],
              description: 'ID of the VMware resource pool in your CloudSimple Private Cloud. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'resource-poo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a VMware virtual machines template in a private cloud',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Region in which the private cloud is present',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'ID of the vSphere virtual machine template. You can also pass the basename of the ID',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--private-cloud', '-p'],
              description: 'Name or ID of the CloudSimple private cloud',
              args: [
                Arg(
                name: 'private-clou'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
