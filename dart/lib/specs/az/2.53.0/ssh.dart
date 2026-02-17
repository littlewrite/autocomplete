// AI-generated from TypeScript source: src/az/2.53.0/ssh.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec sshSpec = FigSpec(
  name: "ssh",
  description:
      "SSH into resources (Azure VMs, Arc servers, etc) using AAD issued openssh certificates.\n\n\t\tSSH into Arc-enabled servers without requiring a public IP address or SSH into Azure Virtual Machines. AAD issued openssh certificates for authentication currently only supported for Linux",
  subcommands: [
    FigSubcommand(
      name: "arc",
      description: "SSH into Azure Arc Servers",
      options: [
        FigOption(
          name: ["--certificate-file", "-c"],
          description: "Path to certificate file",
          args: [FigArg(name: "certificate-file")],
        ),
        FigOption(
          name: "--local-user",
          description: "The username for a local user",
          args: [FigArg(name: "local-user")],
        ),
        FigOption(
          name: ["--vm-name", "--name", "-n"],
          description: "The name of the Arc Server",
          args: [FigArg(name: "vm-name")],
        ),
        FigOption(
          name: "--port",
          description: "Port to connect to on the remote host",
          args: [FigArg(name: "port")],
        ),
        FigOption(
          name: ["--private-key-file", "-i"],
          description: "The RSA private key file path",
          args: [FigArg(name: "private-key-file")],
        ),
        FigOption(
          name: ["--public-key-file", "-p"],
          description: "The RSA public key file path",
          args: [FigArg(name: "public-key-file")],
        ),
        FigOption(
          name: ["--winrdp", "--rdp"],
          description: "Start RDP connection over SSH",
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [FigArg(name: "resource-group")],
        ),
        FigOption(
          name: "--resource-type",
          description:
              "Resource type should be either Microsoft.HybridCompute/machines or Microsoft.ConnectedVMwareSphere/virtualMachines",
          args: [FigArg(name: "resource-type")],
        ),
        FigOption(
          name: "--ssh-client-folder",
          description:
              "Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided",
          args: [FigArg(name: "ssh-client-folder")],
        ),
        FigOption(
          name: "--ssh-proxy-folder",
          description:
              "Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user's home directory if not provided",
          args: [FigArg(name: "ssh-proxy-folder")],
        ),
        FigOption(
          name: ["--yes-without-prompt", "--yes", "-y"],
          description: "Update service configuration without prompting user",
        ),
      ],
      args: [
        FigArg(
          name: "<SSH_ARGS>",
          description: "Additional arguments passed to OpenSSH",
          isOptional: true,
        )
      ],
    ),
    FigSubcommand(
      name: "cert",
      description: "Create an SSH RSA certificate signed by AAD",
      options: [
        FigOption(
          name: ["--file", "-f"],
          description:
              "The file path to write the SSH cert to, defaults to public key path with -aadcert.pub appened",
          args: [FigArg(name: "file")],
        ),
        FigOption(
          name: ["--public-key-file", "-p"],
          description:
              "The RSA public key file path. If not provided, generated key pair is stored in the same directory as --file",
          args: [FigArg(name: "public-key-file")],
        ),
        FigOption(
          name: "--ssh-client-folder",
          description:
              "Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided",
          args: [FigArg(name: "ssh-client-folder")],
        ),
      ],
    ),
    FigSubcommand(
      name: "config",
      description:
          "Create an SSH config for resources (Azure VMs, Arc Servers, etc) which can then be used by clients that support OpenSSH configs and certificates",
      options: [
        FigOption(
          name: ["--file", "-f"],
          description: "The file path to write the SSH config to",
          args: [FigArg(name: "file")],
          isRequired: true,
        ),
        FigOption(
          name: ["--certificate-file", "-c"],
          description: "Path to certificate file",
          args: [FigArg(name: "certificate-file")],
        ),
        FigOption(
          name: "--ip",
          description: "The public IP address (or hostname) of the VM",
          args: [FigArg(name: "ip")],
        ),
        FigOption(
          name: ["--keys-destination-folder", "--keys-dest-folder"],
          description: "Folder where new generated keys will be stored",
          args: [FigArg(name: "keys-destination-folder")],
        ),
        FigOption(
          name: "--local-user",
          description: "The username for a local user",
          args: [FigArg(name: "local-user")],
        ),
        FigOption(
          name: ["--vm-name", "--name", "-n"],
          description: "The name of the VM",
          args: [FigArg(name: "vm-name")],
        ),
        FigOption(
          name: "--overwrite",
          description: "Overwrites the config file if this flag is set",
        ),
        FigOption(
          name: "--port",
          description: "SSH Port",
          args: [FigArg(name: "port")],
        ),
        FigOption(
          name: "--prefer-private-ip",
          description:
              "Will use a private IP if available. By default only public IPs are used",
        ),
        FigOption(
          name: ["--private-key-file", "-i"],
          description: "The RSA private key file path",
          args: [FigArg(name: "private-key-file")],
        ),
        FigOption(
          name: ["--public-key-file", "-p"],
          description: "The RSA public key file path",
          args: [FigArg(name: "public-key-file")],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [FigArg(name: "resource-group")],
        ),
        FigOption(
          name: "--resource-type",
          description:
              "Resource type should be either Microsoft.Compute/virtualMachines, Microsoft.HybridCompute/machines, or Microsoft.ConnectedVMwareSphere/virtualMachines",
          args: [FigArg(name: "resource-type")],
        ),
        FigOption(
          name: "--ssh-client-folder",
          description:
              "Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided",
          args: [FigArg(name: "ssh-client-folder")],
        ),
        FigOption(
          name: "--ssh-proxy-folder",
          description:
              "Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user's home directory if not provided",
          args: [FigArg(name: "ssh-proxy-folder")],
        ),
        FigOption(
          name: ["--yes-without-prompt", "--yes", "-y"],
          description: "Update service configuration without prompting user",
        ),
      ],
    ),
    FigSubcommand(
      name: "vm",
      description: "SSH into Azure VMs or Arc Servers",
      options: [
        FigOption(
          name: ["--certificate-file", "-c"],
          description:
              "Path to a certificate file used for authentication when using local user credentials",
          args: [FigArg(name: "certificate-file")],
        ),
        FigOption(
          name: ["--hostname", "--ip"],
          description:
              "The public (or private) IP address or hostname of the VM",
          args: [FigArg(name: "hostname")],
        ),
        FigOption(
          name: "--local-user",
          description: "The username for a local user",
          args: [FigArg(name: "local-user")],
        ),
        FigOption(
          name: ["--vm-name", "--name", "-n"],
          description: "The name of the VM",
          args: [FigArg(name: "vm-name")],
        ),
        FigOption(
          name: "--port",
          description: "SSH Port",
          args: [FigArg(name: "port")],
        ),
        FigOption(
          name: "--prefer-private-ip",
          description:
              "Will use a private IP if available. By default only public IPs are used",
        ),
        FigOption(
          name: ["--private-key-file", "-i"],
          description: "The RSA private key file path",
          args: [FigArg(name: "private-key-file")],
        ),
        FigOption(
          name: ["--public-key-file", "-p"],
          description: "The RSA public key file path",
          args: [FigArg(name: "public-key-file")],
        ),
        FigOption(
          name: ["--resource-group", "-g"],
          description:
              "Name of resource group. You can configure the default group using az configure --defaults group=<name>",
          args: [FigArg(name: "resource-group")],
        ),
        FigOption(
          name: "--resource-type",
          description:
              "Resource type should be either Microsoft.Compute/virtualMachines, Microsoft.HybridCompute/machines, or Microsoft.ConnectedVMwareSphere/virtualMachines",
          args: [FigArg(name: "resource-type")],
        ),
        FigOption(
          name: "--ssh-client-folder",
          description:
              "Folder path that contains ssh executables (ssh.exe, ssh-keygen.exe, etc). Default to ssh pre-installed if not provided",
          args: [FigArg(name: "ssh-client-folder")],
        ),
        FigOption(
          name: "--ssh-proxy-folder",
          description:
              "Path to the folder where the ssh proxy should be saved. Default to .clientsshproxy folder in user's home directory if not provided",
          args: [FigArg(name: "ssh-proxy-folder")],
        ),
        FigOption(
          name: ["--yes-without-prompt", "--yes", "-y"],
          description: "Update service configuration without prompting user",
        ),
      ],
      args: [
        FigArg(
          name: "<SSH_ARGS>",
          description: "Additional arguments passed to OpenSSH",
          isOptional: true,
        )
      ],
    ),
  ],
);
