// Auto-generated from TypeScript source: serial-console.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `serial-console` CLI
final FigSpec serialConsoleSpec = FigSpec(
  name: 'serial-console',
  description: 'Connect to the Serial Console of a Linux/Windows Virtual Machine or VMSS Instance',
  subcommands: [

    Subcommand(
      name: 'connect',
      description: 'Connect to Serial Console VM or VMSS Instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Virtual Machine or Virtual Machine Scale Set',
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
          name: '--instance-id',
          description: 'ID of VMSS instance. Not needed when connecting to the serialport of a Virtual Machine',
          args: [
            Arg(
            name: 'instance-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'disable',
      description: 'Disable the serial console service for an entire subscription'
    ),
    Subcommand(
      name: 'enable',
      description: 'Enable the serial console service for an entire subscription'
    ),
    Subcommand(
      name: 'send',
      description: 'Send NMI/SysRq/Reset to a VM or VMSS Instance',
      subcommands: [

        Subcommand(
          name: 'nmi',
          description: 'Send a Non-Maskable Interrupt (NMI) to a VM or VMSS Instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Virtual Machine or Virtual Machine Scale Set',
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
              name: '--instance-id',
              description: 'ID of VMSS instance. Not needed when connecting to the serialport of a Virtual Machine',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Perform a "hard" restart of the VM or VMSS Instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Virtual Machine or Virtual Machine Scale Set',
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
              name: '--instance-id',
              description: 'ID of VMSS instance. Not needed when connecting to the serialport of a Virtual Machine',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sysrq',
          description: 'Send SysRq sequence to a VM or VMSS Instance',
          options: [

            Option(
              name: '--input',
              description: 'Input key to send over serial console. Must be one character',
              args: [
                Arg(
                name: 'inpu'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Virtual Machine or Virtual Machine Scale Set',
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
              name: '--instance-id',
              description: 'ID of VMSS instance. Not needed when connecting to the serialport of a Virtual Machine',
              args: [
                Arg(
                name: 'instance-i'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
