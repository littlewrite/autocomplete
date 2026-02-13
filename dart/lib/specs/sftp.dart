// Auto-generated from TypeScript source: sftp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sftp` CLI
final FigSpec sftpSpec = FigSpec(
  name: 'sftp',
  description: 'OpenSSH secure file transfer',
  args: [

    Arg(
      name: 'sources',
      description: 'File or directory, local or remote ([user@]host:[path])',
      isVariadic: true,
      generators: [

        Generator(
          template: ['history', 'filepaths', 'folders']
        )
      ]
    ),
    Arg(
      name: 'target',
      description: 'File or directory, local or remote ([user@]host:[path])',
      generators: [

        Generator(
          template: ['history', 'filepaths', 'folders']
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for sftp'
    ),
    Option(
      name: '-4',
      description: 'Forces scp to use IPv4 addresses only'
    ),
    Option(
      name: '-6',
      description: 'Forces scp to use IPv6 addresses only'
    ),
    Option(
      name: '-A',
      description: 'Allows forwarding of ssh-agent(1) to the remote system. The default is not to forward an authentication agent'
    ),
    Option(
      name: '-a'
    ),
    Option(
      name: '-B',
      args: [
        Arg(
        name: 'buffer_size',
        description: 'The buffer size',
        suggestions: [

          FigSuggestion(name: '32768')
        ],
        defaultValue: '32768'
      )
      ]
    ),
    Option(
      name: '-b',
      args: [
        Arg(
        name: 'batchfile',
        description: 'The batch file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-C',
      description: 'Compression enable. Passes the -C flag to ssh(1) to enable compression'
    ),
    Option(
      name: '-c',
      description: 'Selects the cipher to use for encrypting the data transfer. This option is directly passed to ssh(1)',
      args: [
        Arg(
        name: 'cipher',
        description: 'The selected cipher specification'
      )
      ]
    ),
    Option(
      name: '-D',
      args: [
        Arg(
        name: 'sftp_server_path',
        description: 'Path to the SFTP server'
      )
      ]
    ),
    Option(
      name: '-F',
      description: 'Specifies an alternative per-user configuration file for ssh. This option is directly passed to ssh(1)',
      args: [
        Arg(
        name: 'ssh_config',
        description: 'The selected ssh config'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Requests that files be flushed to disk immediately after transfer'
    ),
    Option(
      name: '-i',
      description: 'Selects the file from which the identity (private key) for public key authentication is read. This option is directly passed to ssh(1)',
      args: [
        Arg(
        name: 'identity_file',
        description: 'Specified identity file'
      )
      ]
    ),
    Option(
      name: '-J',
      args: [
        Arg(
        name: 'destination',
        description: 'Scp destination'
      )
      ]
    ),
    Option(
      name: '-l',
      description: 'Limits the used bandwidth, specified in Kbit/s',
      args: [
        Arg(
        name: 'limit',
        description: 'Limit bandwidth in Kbit/s'
      )
      ]
    ),
    Option(
      name: '-N',
      description: 'Disables quiet mode, e.g. to override the implicit quiet mode set by the -b flag'
    ),
    Option(
      name: '-o',
      args: [
        Arg(
        name: 'option',
        suggestions: [

          FigSuggestion(
            name: 'AddressFamily'
          ),
          FigSuggestion(
            name: 'BatchMode'
          ),
          FigSuggestion(
            name: 'BindAddress'
          ),
          FigSuggestion(
            name: 'ChallengeResponseAuthentication'
          ),
          FigSuggestion(
            name: 'CheckHostIP'
          ),
          FigSuggestion(
            name: 'Cipher'
          ),
          FigSuggestion(
            name: 'Ciphers'
          ),
          FigSuggestion(
            name: 'ClearAllForwardings'
          ),
          FigSuggestion(
            name: 'Compression'
          ),
          FigSuggestion(
            name: 'CompressionLevel'
          ),
          FigSuggestion(
            name: 'ConnectionAttempts'
          ),
          FigSuggestion(
            name: 'ConnectTimeout'
          ),
          FigSuggestion(
            name: 'ControlMaster'
          ),
          FigSuggestion(
            name: 'ControlPath'
          ),
          FigSuggestion(
            name: 'ControlPersist'
          ),
          FigSuggestion(
            name: 'DynamicForward'
          ),
          FigSuggestion(
            name: 'EscapeChar'
          ),
          FigSuggestion(
            name: 'ExitOnForwardFailure'
          ),
          FigSuggestion(
            name: 'ForwardAgent'
          ),
          FigSuggestion(
            name: 'ForwardX11'
          ),
          FigSuggestion(
            name: 'ForwardX11Timeout'
          ),
          FigSuggestion(
            name: 'ForwardX11Trusted'
          ),
          FigSuggestion(
            name: 'GatewayPorts'
          ),
          FigSuggestion(
            name: 'GlobalKnownHostsFile'
          ),
          FigSuggestion(
            name: 'GSSAPIAuthentication'
          ),
          FigSuggestion(
            name: 'GSSAPIDelegateCredentials'
          ),
          FigSuggestion(
            name: 'HashKnownHosts'
          ),
          FigSuggestion(
            name: 'Host'
          ),
          FigSuggestion(
            name: 'HostbasedAuthentication'
          ),
          FigSuggestion(
            name: 'HostKeyAlgorithms'
          ),
          FigSuggestion(
            name: 'HostKeyAlias'
          ),
          FigSuggestion(
            name: 'HostName'
          ),
          FigSuggestion(
            name: 'IdentityFile'
          ),
          FigSuggestion(
            name: 'IdentitiesOnly'
          ),
          FigSuggestion(
            name: 'IPQoS'
          ),
          FigSuggestion(
            name: 'KbdInteractiveAuthentication'
          ),
          FigSuggestion(
            name: 'KbdInteractiveDevices'
          ),
          FigSuggestion(
            name: 'KexAlgorithms'
          ),
          FigSuggestion(
            name: 'LocalCommand'
          ),
          FigSuggestion(
            name: 'LocalForward'
          ),
          FigSuggestion(
            name: 'LogLevel'
          ),
          FigSuggestion(
            name: 'MACs'
          ),
          FigSuggestion(
            name: 'NoHostAuthenticationForLocalhost'
          ),
          FigSuggestion(
            name: 'NumberOfPasswordPrompts'
          ),
          FigSuggestion(
            name: 'PasswordAuthentication'
          ),
          FigSuggestion(
            name: 'PermitLocalCommand'
          ),
          FigSuggestion(
            name: 'PKCS11Provider'
          ),
          FigSuggestion(
            name: 'Port'
          ),
          FigSuggestion(
            name: 'PreferredAuthentications'
          ),
          FigSuggestion(
            name: 'Protocol'
          ),
          FigSuggestion(
            name: 'ProxyCommand'
          ),
          FigSuggestion(
            name: 'PubkeyAuthentication'
          ),
          FigSuggestion(
            name: 'RekeyLimit'
          ),
          FigSuggestion(
            name: 'RequestTTY'
          ),
          FigSuggestion(
            name: 'RhostsRSAAuthentication'
          ),
          FigSuggestion(
            name: 'RSAAuthentication'
          ),
          FigSuggestion(
            name: 'SendEnv'
          ),
          FigSuggestion(
            name: 'ServerAliveInterval'
          ),
          FigSuggestion(
            name: 'ServerAliveCountMax'
          ),
          FigSuggestion(
            name: 'StrictHostKeyChecking'
          ),
          FigSuggestion(
            name: 'TCPKeepAlive'
          ),
          FigSuggestion(
            name: 'Tunnel'
          ),
          FigSuggestion(
            name: 'TunnelDevice'
          ),
          FigSuggestion(
            name: 'UsePrivilegedPort'
          ),
          FigSuggestion(
            name: 'User'
          ),
          FigSuggestion(
            name: 'UserKnownHostsFile'
          ),
          FigSuggestion(
            name: 'VerifyHostKeyDNS'
          ),
          FigSuggestion(
            name: 'VisualHostKey'
          ),
          FigSuggestion(
            name: 'XAuthLocation'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-P',
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Preserves modification times, access times, and modes from the original file'
    ),
    Option(
      name: '-q',
      description: 'Quiet mode: disables the progress meter as well as warning and diagnostic messages from ssh(1)'
    ),
    Option(
      name: '-R',
      args: [
        Arg(
        name: 'num_requests',
        description: 'The number of requests',
        suggestions: [

          FigSuggestion(name: '64')
        ],
        defaultValue: '64'
      )
      ]
    ),
    Option(
      name: '-r',
      description: 'Recursively copy entire directories.  Note that scp follows symbolic links encountered in the tree traversal'
    ),
    Option(
      name: '-S',
      description: 'Name of program to use for the encrypted connection.  The program must understand ssh(1) options',
      args: [
        Arg(
        name: 'program'
      )
      ]
    ),
    Option(
      name: '-s',
      args: [
        Arg(
        name: 'subsystem | sftp_server',
        description: 'Path to the SFTP server'
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Verbose mode.  Causes scp and ssh(1) to print debugging messages about their progress. This is helpful in debugging connection, authentication, and configuration problems'
    )
  ]
);
