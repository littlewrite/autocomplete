// AI-generated from
import 'package:autocomplete/src/spec.dart';

final RegExp knownHostRegex = RegExp(r'(?:[a-zA-Z0-9-]+\.)+[a-zA-Z0-9]+');

final FigGenerator knownHosts = FigGenerator(
  script: ['sh', '-c', 'cat ~/.ssh/known_hosts'],
  postProcess: (String out, [List<String>? tokens]) {
    final suggestions = out
        .split('\n')
        .map((line) {
          final match = knownHostRegex.firstMatch(line);
          return match?.group(0);
        })
        .where((value) => value != null)
        .toSet()
        .map((knownHost) {
          final hostName = knownHost!;
          final userPart =
              (tokens != null && tokens.length > 1 && tokens[1].endsWith('@'))
                  ? tokens[1]
                  : '';
          final name = userPart.isNotEmpty ? '$userPart$hostName' : hostName;
          return FigSuggestion(
            name: name,
            description: 'SSH host',
          );
        })
        .toList();

    return suggestions;
  },
  trigger: '@',
);

final FigGenerator configHosts = FigGenerator(
  script: ['sh', '-c', 'cat ~/.ssh/config'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) {
          final trimmedLine = line.trim().toLowerCase();
          return trimmedLine.startsWith('host ') && !line.contains('*');
        })
        .map((line) {
          final parts = line.trim().split(RegExp(r'\s+'));
          return parts.length > 1 ? parts[1] : null;
        })
        .where((name) => name != null)
        .map((name) => FigSuggestion(
              name: name!,
              description: 'SSH host',
              priority: 90,
            ))
        .toList();
  },
);

/// Completion spec for `ssh` CLI
final FigSpec sshSpec =
    FigSpec(name: 'ssh', description: 'Log into a remote machine', args: [
  Arg(
      name: 'user@hostname',
      description: 'Address of remote machine to log into',
      generators: [
        knownHosts,
        configHosts,
        const Generator(template: 'history')
      ])
], options: [
  Option(name: '-1', description: 'Forces ssh to try protocol version 1 only'),
  Option(name: '-2', description: 'Forces ssh to try protocol version 2 only'),
  Option(name: '-4', description: 'Forces ssh to use IPv4 addresses only'),
  Option(name: '-6', description: 'Forces ssh to use IPv6 addresses only'),
  Option(
      name: '-A',
      description: 'Enables forwarding of the authentication agent connection'),
  Option(
      name: '-a',
      description:
          'Disables forwarding of the authentication agent connection'),
  Option(
      name: '-b',
      description:
          'Use bind_address on the local machine as the source address of the connection',
      args: [
        Arg(
            name: 'bind address',
            description: 'Source address of the connection')
      ]),
  Option(
      name: '-C',
      description:
          'Requests compression of all data (including stdin, stdout, stderr, and data for forwarded X11 and TCP connections)'),
  Option(
      name: '-c',
      description:
          'Selects the cipher specification for encrypting the session',
      args: [
        Arg(
            name: 'cipher spec',
            description: 'The selected cipher specification')
      ]),
  Option(
      name: '-D',
      description:
          'Specifies a local \'dynamic\' application-level port forwarding',
      args: [Arg(name: 'port', description: 'Port of the bind address')]),
  Option(
      name: '-e',
      description:
          'Sets the escape character for sessions with a pty (default: \'~\')',
      args: [
        Arg(name: 'escape char', description: 'Specified escape character')
      ]),
  Option(
      name: '-F',
      description: 'Specifies an alternative per-user configuration file',
      args: [
        Arg(
            name: 'configfile',
            description: 'Path to alternative config file',
            template: 'filepaths')
      ]),
  Option(
      name: '-f',
      description:
          'Requests ssh to go to background just before command execution'),
  Option(
      name: '-g',
      description: 'Allows remote hosts to connect to local forwarded ports'),
  Option(
      name: '-I',
      description:
          'Specify the PKCS#11 shared library ssh should use to communicate with a PKCS#11 token providing the user\'s private RSA key',
      args: [Arg(name: 'pkcs11')]),
  Option(
      name: '-i',
      description:
          'Selects a file from which the identity (private key) for public key authentication is read',
      isRepeatable: true,
      args: [
        Arg(
            name: 'identity file',
            description: 'Path to identity (private key)',
            template: 'filepaths')
      ]),
  Option(
      name: '-K',
      description:
          'Enables GSSAPI-based authentication and forwarding (delegation) of GSSAPI credentials to the server'),
  Option(
      name: '-k',
      description:
          'Disables forwarding (delegation) of GSSAPI credentials to the server'),
  Option(
      name: '-L',
      description:
          'Specifies that the given port on the local (client) host is to be forwarded to the given host and port on the remote side',
      args: [
        Arg(
            name: 'port:host:hostport',
            description:
                'Local port, followed by host and host port to forward to')
      ]),
  Option(
      name: '-l',
      description: 'Specifies the user to log in as on the remote machine',
      args: [
        Arg(
            name: 'login name',
            description: 'Name of user logging into remote machine')
      ]),
  Option(
      name: '-M',
      description:
          'Places the ssh client into ``master\'\' mode for connection sharing',
      isRepeatable: true),
  Option(
      name: '-m',
      description:
          'Additionally, for protocol version 2 a comma-separated list of MAC (message authentication code) algorithms can be specified in order of preference',
      args: [Arg(name: 'mac spec')]),
  Option(name: '-N', description: 'Do not execute a remote command'),
  Option(
      name: '-n',
      description:
          'Redirects stdin from /dev/null (actually, prevents reading from stdin)'),
  Option(
      name: '-O',
      description: 'Control an active connection multiplexing master process',
      args: [
        Arg(
            name: 'ctl cmd',
            description: 'Command that\'s passed to the master process')
      ]),
  Option(
      name: '-o',
      description:
          'Can be used to give options in the format used in the configuration file',
      isRepeatable: true,
      args: [
        Arg(
            name: 'option',
            description:
                'Options that can be specified in the format of the config file',
            suggestions: const [
              FigSuggestion(name: 'AddressFamily'),
              FigSuggestion(name: 'BatchMode'),
              FigSuggestion(name: 'BindAddress'),
              FigSuggestion(name: 'ChallengeResponseAuthentication'),
              FigSuggestion(name: 'CheckHostIP'),
              FigSuggestion(name: 'Cipher'),
              FigSuggestion(name: 'Ciphers'),
              FigSuggestion(name: 'ClearAllForwardings'),
              FigSuggestion(name: 'Compression'),
              FigSuggestion(name: 'CompressionLevel'),
              FigSuggestion(name: 'ConnectionAttempts'),
              FigSuggestion(name: 'ConnectTimeout'),
              FigSuggestion(name: 'ControlMaster'),
              FigSuggestion(name: 'ControlPath'),
              FigSuggestion(name: 'ControlPersist'),
              FigSuggestion(name: 'DynamicForward'),
              FigSuggestion(name: 'EscapeChar'),
              FigSuggestion(name: 'ExitOnForwardFailure'),
              FigSuggestion(name: 'ForwardAgent'),
              FigSuggestion(name: 'ForwardX11'),
              FigSuggestion(name: 'ForwardX11Timeout'),
              FigSuggestion(name: 'ForwardX11Trusted'),
              FigSuggestion(name: 'GatewayPorts'),
              FigSuggestion(name: 'GlobalKnownHostsFile'),
              FigSuggestion(name: 'GSSAPIAuthentication'),
              FigSuggestion(name: 'GSSAPIDelegateCredentials'),
              FigSuggestion(name: 'HashKnownHosts'),
              FigSuggestion(name: 'Host'),
              FigSuggestion(name: 'HostbasedAuthentication'),
              FigSuggestion(name: 'HostKeyAlgorithms'),
              FigSuggestion(name: 'HostKeyAlias'),
              FigSuggestion(name: 'HostName'),
              FigSuggestion(name: 'IdentityFile'),
              FigSuggestion(name: 'IdentitiesOnly'),
              FigSuggestion(name: 'IPQoS'),
              FigSuggestion(name: 'KbdInteractiveAuthentication'),
              FigSuggestion(name: 'KbdInteractiveDevices'),
              FigSuggestion(name: 'KexAlgorithms'),
              FigSuggestion(name: 'LocalCommand'),
              FigSuggestion(name: 'LocalForward'),
              FigSuggestion(name: 'LogLevel'),
              FigSuggestion(name: 'MACs'),
              FigSuggestion(name: 'NoHostAuthenticationForLocalhost'),
              FigSuggestion(name: 'NumberOfPasswordPrompts'),
              FigSuggestion(name: 'PasswordAuthentication'),
              FigSuggestion(name: 'PermitLocalCommand'),
              FigSuggestion(name: 'PKCS11Provider'),
              FigSuggestion(name: 'Port'),
              FigSuggestion(name: 'PreferredAuthentications'),
              FigSuggestion(name: 'Protocol'),
              FigSuggestion(name: 'ProxyCommand'),
              FigSuggestion(name: 'PubkeyAuthentication'),
              FigSuggestion(name: 'RekeyLimit'),
              FigSuggestion(name: 'RequestTTY'),
              FigSuggestion(name: 'RhostsRSAAuthentication'),
              FigSuggestion(name: 'RSAAuthentication'),
              FigSuggestion(name: 'SendEnv'),
              FigSuggestion(name: 'ServerAliveInterval'),
              FigSuggestion(name: 'ServerAliveCountMax'),
              FigSuggestion(name: 'StrictHostKeyChecking'),
              FigSuggestion(name: 'TCPKeepAlive'),
              FigSuggestion(name: 'Tunnel'),
              FigSuggestion(name: 'TunnelDevice'),
              FigSuggestion(name: 'UsePrivilegedPort'),
              FigSuggestion(name: 'User'),
              FigSuggestion(name: 'UserKnownHostsFile'),
              FigSuggestion(name: 'VerifyHostKeyDNS'),
              FigSuggestion(name: 'VisualHostKey'),
              FigSuggestion(name: 'XAuthLocation')
            ])
      ]),
  Option(
      name: '-p',
      description: 'Port to connect to on the remote host',
      args: [Arg(name: 'port', description: 'Port to connect to')]),
  Option(
      name: '-q',
      description:
          'Quiet mode.  Causes most warning and diagnostic messages to be suppressed'),
  Option(
      name: '-R',
      description:
          'Specifies that the given port on the remote (server) host is to be forwarded to the given host and port on the local side',
      args: [
        Arg(
            name: 'port:host:hostport',
            description:
                'Local port, followed by host and host port to forward to')
      ]),
  Option(
      name: '-S',
      description:
          'Specifies the location of a control socket for connection sharing, or the string \'none\' to disable connection sharing',
      args: [
        Arg(
            name: 'ctl_path',
            description: 'Location of the control socket',
            template: 'filepaths')
      ]),
  Option(
      name: '-s',
      description:
          'May be used to request invocation of a subsystem on the remote system'),
  Option(name: '-T', description: 'Disable pseudo-tty allocation'),
  Option(
      name: '-t',
      description: 'Force pseudo-tty allocation',
      isRepeatable: true),
  Option(name: '-V', description: 'Display the version number and exit'),
  Option(
      name: '-v',
      description:
          'Verbose mode.  Causes ssh to print debugging messages about its progress',
      isRepeatable: 3),
  Option(
      name: '-W',
      description:
          'Requests that standard input and output on the client be forwarded to host on port over the secure channel',
      args: [
        Arg(name: 'host:port', description: 'Host and port to forward to')
      ]),
  Option(
      name: '-w',
      description:
          'Requests tunnel device forwarding with the specified tun(4) devices between the client (local_tun) and the server (remote_tun)',
      args: [
        Arg(name: 'local tun', description: 'Local device to forward to')
      ]),
  Option(name: '-X', description: 'Enables X11 forwarding'),
  Option(name: '-x', description: 'Disables X11 forwarding'),
  Option(name: '-Y', description: 'Enables trusted X11 forwarding'),
  Option(
      name: '-y',
      description: 'Send log information using the syslog(3) system module')
]);
