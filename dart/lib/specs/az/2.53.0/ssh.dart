// Auto-generated from TypeScript source: ssh.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ssh` CLI
final FigSpec sshSpec = FigSpec(
  name: 'ssh',
  description: 'SSH into resources (Azure VMs, Arc servers, etc) using AAD issued openssh certificates.\n\n\t\tSSH into Arc-enabled servers without requiring a public IP address or SSH into Azure Virtual Machines. AAD issued openssh certificates for authentication currently only supported for Linux',
  subcommands: [

    Subcommand(
      name: 'arc',
      description: 'SSH into Azure Arc Servers',
      options: [

        Option(
          name: ['--certificate-file', '-c'],
          description: 'Path to certificate file',
          args: [
            Arg(
            name: 'certificate-fil'
          )
          ]
        ),
        Option(
          name: '--local-user',
          description: 'The username for a local user',
          args: [
            Arg(
            name: 'local-use'
          )
          ]
        ),
        Option(
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Arc Server',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'Port to connect to on the remote host',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: ['--private-key-file', '-i'],
          description: 'The RSA private key file path',
          args: [
            Arg(
            name: 'private-key-fil'
          )
          ]
        ),
        Option(
          name: ['--public-key-file', '-p'],
          description: 'The RSA public key file path',
          args: [
            Arg(
            name: 'public-key-fil'
          )
          ]
        ),
        Option(
          name: ['--winrdp', '--rdp'],
          description: 'Start RDP connection over SSH'
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
          name: '--resource-type',
          description: 'Resource type should be either Microsoft.HybridCompute/machines or Microsoft.ConnectedVMwareSphere/virtualMachines',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        ),
        Option(
          name: '--ssh-client-folder',
          description: 'Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided',
          args: [
            Arg(
            name: 'ssh-client-folde'
          )
          ]
        ),
        Option(
          name: '--ssh-proxy-folder',
          description: 'Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user\'s home directory if not provided',
          args: [
            Arg(
            name: 'ssh-proxy-folde'
          )
          ]
        ),
        Option(
          name: ['--yes-without-prompt', '--yes', '-y'],
          description: 'Update service configuration without prompting user'
        )
      ],
      args: [
        Arg(
        name: '<SSH_ARGS>',
        description: 'Additional arguments passed to OpenSSH',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'cert',
      description: 'Create an SSH RSA certificate signed by AAD',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The file path to write the SSH cert to, defaults to public key path with -aadcert.pub appened',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--public-key-file', '-p'],
          description: 'The RSA public key file path. If not provided, generated key pair is stored in the same directory as --file',
          args: [
            Arg(
            name: 'public-key-fil'
          )
          ]
        ),
        Option(
          name: '--ssh-client-folder',
          description: 'Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided',
          args: [
            Arg(
            name: 'ssh-client-folde'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Create an SSH config for resources (Azure VMs, Arc Servers, etc) which can then be used by clients that support OpenSSH configs and certificates',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The file path to write the SSH config to',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--certificate-file', '-c'],
          description: 'Path to certificate file',
          args: [
            Arg(
            name: 'certificate-fil'
          )
          ]
        ),
        Option(
          name: '--ip',
          description: 'The public IP address (or hostname) of the VM',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--keys-destination-folder', '--keys-dest-folder'],
          description: 'Folder where new generated keys will be stored',
          args: [
            Arg(
            name: 'keys-destination-folde'
          )
          ]
        ),
        Option(
          name: '--local-user',
          description: 'The username for a local user',
          args: [
            Arg(
            name: 'local-use'
          )
          ]
        ),
        Option(
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the VM',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrites the config file if this flag is set'
        ),
        Option(
          name: '--port',
          description: 'SSH Port',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: '--prefer-private-ip',
          description: 'Will use a private IP if available. By default only public IPs are used'
        ),
        Option(
          name: ['--private-key-file', '-i'],
          description: 'The RSA private key file path',
          args: [
            Arg(
            name: 'private-key-fil'
          )
          ]
        ),
        Option(
          name: ['--public-key-file', '-p'],
          description: 'The RSA public key file path',
          args: [
            Arg(
            name: 'public-key-fil'
          )
          ]
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
          name: '--resource-type',
          description: 'Resource type should be either Microsoft.Compute/virtualMachines, Microsoft.HybridCompute/machines, or Microsoft.ConnectedVMwareSphere/virtualMachines',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        ),
        Option(
          name: '--ssh-client-folder',
          description: 'Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided',
          args: [
            Arg(
            name: 'ssh-client-folde'
          )
          ]
        ),
        Option(
          name: '--ssh-proxy-folder',
          description: 'Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user\'s home directory if not provided',
          args: [
            Arg(
            name: 'ssh-proxy-folde'
          )
          ]
        ),
        Option(
          name: ['--yes-without-prompt', '--yes', '-y'],
          description: 'Update service configuration without prompting user'
        )
      ]
    ),
    Subcommand(
      name: 'vm',
      description: 'SSH into Azure VMs or Arc Servers',
      options: [

        Option(
          name: ['--certificate-file', '-c'],
          description: 'Path to a certificate file used for authentication when using local user credentials',
          args: [
            Arg(
            name: 'certificate-fil'
          )
          ]
        ),
        Option(
          name: ['--hostname', '--ip'],
          description: 'The public (or reachable private) IP address (or hostname) of the VM',
          args: [
            Arg(
            name: 'hostnam'
          )
          ]
        ),
        Option(
          name: '--local-user',
          description: 'The username for a local user',
          args: [
            Arg(
            name: 'local-use'
          )
          ]
        ),
        Option(
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the VM',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'SSH port',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: '--prefer-private-ip',
          description: 'Will prefer private IP. Requires connectivity to the private IP'
        ),
        Option(
          name: ['--private-key-file', '-i'],
          description: 'The RSA private key file path',
          args: [
            Arg(
            name: 'private-key-fil'
          )
          ]
        ),
        Option(
          name: ['--public-key-file', '-p'],
          description: 'The RSA public key file path',
          args: [
            Arg(
            name: 'public-key-fil'
          )
          ]
        ),
        Option(
          name: ['--winrdp', '--rdp'],
          description: 'Start RDP connection over SSH'
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
          name: '--resource-type',
          description: 'Resource type should be either Microsoft.Compute/virtualMachines, Microsoft.HybridCompute/machines, or Microsoft.ConnectedVMwareSphere/virtualMachines',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        ),
        Option(
          name: '--ssh-client-folder',
          description: 'Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided',
          args: [
            Arg(
            name: 'ssh-client-folde'
          )
          ]
        ),
        Option(
          name: '--ssh-proxy-folder',
          description: 'Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user\'s home directory if not provided',
          args: [
            Arg(
            name: 'ssh-proxy-folde'
          )
          ]
        ),
        Option(
          name: ['--yes-without-prompt', '--yes', '-y'],
          description: 'Update service configuration without prompting user'
        )
      ],
      args: [
        Arg(
        name: '<SSH_ARGS>',
        description: 'Additional arguments passed to OpenSSH',
        isOptional: true
      )
      ]
    )
  ]
);
