// Auto-generated from TypeScript source: mysql.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mysql` CLI
final FigSpec mysqlSpec = FigSpec(
  name: 'mysql',
  description: 'Mysql is a terminal-based front-end to MySQL',
  args: [
    Arg(
  )
  ],
  options: [
    Option(
      name: '--auto-rehash',
      description: 'Enable automatic rehashing'
    ),
    Option(
      name: '--auto-vertical-output',
      description: 'Enable automatic vertical result set display'
    ),
    Option(
      name: ['--batch', '-B'],
      description: 'Do not use history file'
    ),
    Option(
      name: '--binary-as-hex',
      description: 'Display binary values in hexadecimal notation'
    ),
    Option(
      name: '--binary-mode',
      description: 'Disable \\r\\n - to - \\n translation and treatment of \\0 as end-of-query'
    ),
    Option(
      name: '--bind-address',
      description: 'Use specified network interface to connect to MySQL Server',
      args: [
        Arg(
        name: 'ip_address'
      )
      ]
    ),
    Option(
      name: '--character-sets-dir',
      description: 'Directory where character sets are installed',
      args: [
        Arg(
        name: 'dir_name',
        template: 'folders',
        description: 'Directory where character sets are installed'
      )
      ]
    ),
    Option(
      name: '--column-names',
      description: 'Write column names in results'
    ),
    Option(
      name: '--column-type-info',
      description: 'Display result set metadata'
    ),
    Option(
      name: ['--comments', '-c'],
      description: 'Whether to retain or strip comments in statements sent to the server'
    ),
    Option(
      name: ['--compress', '-C'],
      description: 'Compress all information sent between client and server'
    ),
    Option(
      name: '--compression-algorithms',
      description: 'Permitted compression algorithms for connections to server',
      args: [
        Arg(
        name: 'value',
        suggestions: [
          FigSuggestion(
            name: 'zlib'
          ),
          FigSuggestion(
            name: 'zstd'
          ),
          FigSuggestion(
            name: 'uncompressed'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--connect-expired-password',
      description: 'Indicate to server that client can handle expired-password sandbox mode'
    ),
    Option(
      name: '--connect-timeout',
      description: 'Number of seconds before connection timeout',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: ['-D', '--database'],
      description: 'The database to use',
      args: [
        Arg(
        name: 'db_name'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Write debugging log; supported only if MySQL was built with debugging support'
    ),
    Option(
      name: '--debug-check',
      description: 'Print debugging information when program exits'
    ),
    Option(
      name: ['-T', '--debug-info'],
      description: 'Print debugging information, memory, and CPU statistics when program exits'
    ),
    Option(
      name: '--default-auth',
      description: 'Authentication plugin to use',
      args: [
        Arg(
        name: 'plugin'
      )
      ]
    ),
    Option(
      name: '--default-character-set',
      description: 'Specify default character set',
      args: [
        Arg(
        name: 'charset_name'
      )
      ]
    ),
    Option(
      name: '--defaults-extra-file',
      description: 'Read named option file in addition to usual option files',
      args: [
        Arg(
        name: 'file_name',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--defaults-file',
      description: 'Read only named option file',
      args: [
        Arg(
        name: 'file_name',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--defaults-group-suffix',
      description: 'Option group suffix value',
      args: [
        Arg(
        name: 'str'
      )
      ]
    ),
    Option(
      name: '--delimiter',
      description: 'Set the statement delimiter',
      args: [
        Arg(
        name: 'str'
      )
      ]
    ),
    Option(
      name: '--disable-named-commands',
      description: 'Disable named commands. Use the \\* form only, or use named commands only at the beginning of a line ending with a semicolon (;). mysql starts with this option enabled by default. However, even with this option, long-format commands still work from the first line'
    ),
    Option(
      name: '--dns-srv-name',
      description: 'Use DNS SRV lookup for host information',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--enable-cleartext-plugin',
      description: 'Enable cleartext authentication plugin'
    ),
    Option(
      name: ['-e', '--execute'],
      description: 'Execute the statement and quit',
      args: [
        Arg(
        name: 'statement'
      )
      ]
    ),
    Option(
      name: ['-f', '--force'],
      description: 'Continue even if an SQL error occurs'
    ),
    Option(
      name: '--get-server-public-key',
      description: 'Request RSA public key from server'
    ),
    Option(
      name: ['--help', '-?'],
      description: 'Display help message and exit'
    ),
    Option(
      name: '--histignore',
      description: 'Patterns specifying which statements to ignore for logging'
    ),
    Option(
      name: ['-h', '--host'],
      description: 'Host on which MySQL server is located',
      args: [
        Arg(
        name: 'host_name'
      )
      ]
    ),
    Option(
      name: ['-H', '--html'],
      description: 'Produce HTML output'
    ),
    Option(
      name: ['-i', '--ignore-spaces'],
      description: 'Ignore spaces after function names'
    ),
    Option(
      name: '--init-command',
      description: 'SQL statement to execute after connecting',
      args: [
        Arg(
        name: 'command'
      )
      ],
      insertValue: '{cursor}\''
    ),
    Option(
      name: '--line-numbers',
      description: 'Write line numbers for errors'
    ),
    Option(
      name: '--load-data-local-dir',
      description: 'Directory for files named in LOAD DATA LOCAL statements',
      args: [
        Arg(
        name: 'dir_name',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--local-infile',
      description: 'Enable or disable for LOCAL capability for LOAD DATA',
      args: [
        Arg(
        name: 'is-local-inflie',
        suggestions: [
          FigSuggestion(
            name: '0',
            description: 'Disable'
          ),
          FigSuggestion(
            name: '1',
            description: 'Enable'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--login-path',
      description: 'Read login path options from .mylogin.cnf',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--max-allowed-packet',
      description: 'Maximum packet length to send to or receive from server',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--max-join-size',
      description: 'The automatic limit for rows in a join when using --safe-updates',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: ['-G', '--named-commands'],
      description: 'Enable named mysql commands'
    ),
    Option(
      name: '--net-buffer-length',
      description: 'Buffer size for TCP/IP and socket communication',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--network-namespace',
      description: 'Specify network namespace',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: ['-A', '--no-auto-rehash'],
      description: 'Disable automatic rehashing'
    ),
    Option(
      name: ['--no-beep', '-b'],
      description: 'Do not beep when errors occur'
    ),
    Option(
      name: '--no-defaults',
      description: 'Read no option files'
    ),
    Option(
      name: ['-o', '--one-database'],
      description: 'Ignore statements except those for the default database named on the command line'
    ),
    Option(
      name: '--pager',
      description: 'Use the given command for paging query output',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Option(
      name: ['-p', '--password'],
      description: 'Password to use when connecting to server',
      args: [
        Arg(
        name: 'password'
      )
      ]
    ),
    Option(
      name: ['--pipe', '-W'],
      description: 'Connect to server using named pipe (Windows only)'
    ),
    Option(
      name: '--plugin-dir',
      description: 'Directory where plugins are installed',
      args: [
        Arg(
        name: 'dir_name',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-P', '--port'],
      description: 'TCP/IP port number for connection',
      args: [
        Arg(
        name: 'port_num'
      )
      ]
    ),
    Option(
      name: '--print-defaults',
      description: 'Print default options'
    ),
    Option(
      name: '--prompt',
      description: 'Set the prompt to the specified format',
      args: [
        Arg(
        name: 'format_str'
      )
      ]
    ),
    Option(
      name: '--protocol',
      description: 'Transport protocol to use',
      args: [
        Arg(
        name: 'format_str',
        suggestions: [
          FigSuggestion(
            name: 'TCP'
          ),
          FigSuggestion(
            name: 'SOCKET'
          ),
          FigSuggestion(
            name: 'PIPE'
          ),
          FigSuggestion(
            name: 'MEMORY'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-q', '--quick'],
      description: 'Do not cache each query result'
    ),
    Option(
      name: ['-r', '--raw'],
      description: 'Write column values without escape conversion'
    ),
    Option(
      name: '--reconnect',
      description: 'If the connection to the server is lost, automatically try to reconnect'
    ),
    Option(
      name: ['-U', '--safe-updates', '--i-am-a-dummy'],
      description: 'Allow only UPDATE and DELETE statements that specify key values'
    ),
    Option(
      name: '--select-limit',
      description: 'The automatic limit for SELECT statements when using --safe-updates',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--server-public-key-path',
      description: 'Path name to file containing RSA public key',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--shared-memory-base-name',
      description: 'Shared-memory name for shared-memory connections (Windows only)',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--show-warnings',
      description: 'Show warnings after each statement if there are any'
    ),
    Option(
      name: '--sigint-ignore',
      description: 'Ignore SIGINT signals (typically the result of typing Control+C)'
    ),
    Option(
      name: ['-s', '--silent'],
      description: 'Silent mode.  Produce less output. This option can be given multiple times to produce less and less output',
      isRepeatable: true
    ),
    Option(
      name: '--skip-auto-rehash',
      description: 'Disable automatic rehashing'
    ),
    Option(
      name: ['-N', '--skip-column-names'],
      description: 'Do not write column names in results'
    ),
    Option(
      name: ['-L', '--skip-line-numbers'],
      description: 'Skip line numbers for errors'
    ),
    Option(
      name: '--skip-named-commands',
      description: 'Disable named mysql commands'
    ),
    Option(
      name: '--skip-pager',
      description: 'Disable paging'
    ),
    Option(
      name: '--skip-reconnect',
      description: 'Disable reconnecting'
    ),
    Option(
      name: ['-S', '--socket'],
      description: 'Unix socket file or Windows named pipe to use"File that contains list of trusted SSL Certificate Authorities"',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--ssl-ca',
      description: 'File that contains list of trusted SSL Certificate Authorities',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-capath',
      description: 'Directory that contains trusted SSL Certificate Authority certificate files',
      args: [
        Arg(
        name: 'dirname',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--ssl-cert',
      description: 'File that contains X.509 certificate',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-cipher',
      description: 'Permissible ciphers for connection encryption'
    ),
    Option(
      name: '--ssl-crl',
      description: 'File that contains certificate revocation lists',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-crlpath',
      description: 'Directory that contains certificate revocation-list files',
      args: [
        Arg(
        name: 'dirname',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--ssl-fips-mode',
      description: 'Whether to enable FIPS mode on client side',
      args: [
        Arg(
        name: 'mode',
        suggestions: [
          FigSuggestion(
            name: 'OFF'
          ),
          FigSuggestion(
            name: 'ON'
          ),
          FigSuggestion(
            name: 'STRICT'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--ssl-key',
      description: 'File that contains X.509 key',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-mode',
      description: 'Desired security state of connection to server'
    ),
    Option(
      name: ['-j', '--syslog'],
      description: 'Log interactive statements to syslog'
    ),
    Option(
      name: ['-t', '--table'],
      description: 'Display output in tabular format'
    ),
    Option(
      name: '--tee',
      description: 'Append a copy of output to named file',
      args: [
        Arg(
        name: 'file_name',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--tls-ciphersuites',
      description: 'Permissible TLSv1.3 ciphersuites for encrypted connections',
      args: [
        Arg(
        name: 'ciphersuite_list',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--tls-version',
      description: 'Permissible TLS protocols for encrypted connections',
      args: [
        Arg(
        name: 'protocol_list'
      )
      ]
    ),
    Option(
      name: ['-n', '--unbuffered'],
      description: 'Flush the buffer after each query'
    ),
    Option(
      name: ['-u', '--user'],
      description: 'MySQL user name to use when connecting to server',
      args: [
        Arg(
        name: 'user_name'
      )
      ]
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Verbose mode'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Display version information and exit'
    ),
    Option(
      name: ['-E', '--vertical'],
      description: 'Print query output rows vertically (one line per column value)'
    ),
    Option(
      name: ['-w', '--wait'],
      description: 'If the connection cannot be established, wait and retry instead of aborting'
    ),
    Option(
      name: ['-X', '--xml'],
      description: 'Produce XML output'
    ),
    Option(
      name: '--zstd-compression-level',
      description: 'Compression level for connections to server that use zstd compression',
      args: [
        Arg(
        name: 'level',
        description: 'Compression level between 1-22. The default zstd compression level is 3. The compression level setting has no effect on connections that do not use zstd compression'
      )
      ]
    )
  ]
);
