// Auto-generated from TypeScript source: curl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `curl` CLI
final FigSpec curlSpec =
    FigSpec(name: 'curl', description: 'Transfer a URL', args: [
  Arg(name: 'URL', template: 'histor')
], options: [
  Option(
      name: ['-a', '--append'],
      description: 'Append to target file when uploading'),
  Option(
      name: ['-E', '--cert'],
      description: 'Client certificate file and password',
      args: [
        Arg(
            name: 'certificate[:password]',
            generators: FigGenerator(getQueryTerm: ':'))
      ]),
  Option(
      name: ['-K', '--config'],
      description: 'Read config from a file',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: ['-C', '--continue-at'],
      description: 'Resumed transfer offset',
      args: [Arg(name: 'offse')]),
  Option(
      name: ['-b', '--cookie'],
      description: 'Send cookies from string/file',
      args: [Arg(name: 'data or filename', template: 'filepath')]),
  Option(
      name: ['-c', '--cookie-jar'],
      description: 'Write cookies to <filename> after operation',
      args: [Arg(name: 'filename', template: 'filepath')]),
  Option(
      name: ['-d', '--data'],
      description: 'HTTP POST data',
      insertValue: '-d \'{cursor}\'',
      args: [Arg(name: 'dat')],
      isRepeatable: true),
  Option(name: ['-q', '--disable'], description: 'Disable .curlrc'),
  Option(
      name: ['-D', '--dump-header'],
      description: 'Write the received headers to <filename>',
      args: [Arg(name: 'filename', template: 'filepath')]),
  Option(
      name: ['-f', '--fail'],
      description: 'Fail silently (no output at all) on HTTP errors'),
  Option(
      name: ['-F', '--form'],
      description: 'Specify multipart MIME data',
      args: [Arg(name: 'conten')],
      isRepeatable: true),
  Option(
      name: ['-P', '--ftp-port'],
      description: 'Use PORT instead of PASV',
      args: [Arg(name: 'addres')]),
  Option(
      name: ['-G', '--get'],
      description: 'Put the post data in the URL and use GET'),
  Option(
      name: ['-g', '--globoff'],
      description: 'Disable URL sequences and ranges using {} and []'),
  Option(name: ['-I', '--head'], description: 'Show document info only'),
  Option(
      name: ['-H', '--header'],
      description: 'Pass custom header(s) to server',
      args: [
        Arg(name: 'header/file', suggestions: [
          FigSuggestion(name: 'Content-Type: application/json'),
          FigSuggestion(name: 'Content-Type: application/x-www-form-urlencoded')
        ])
      ]),
  Option(name: ['-h', '--help'], description: 'This help text'),
  Option(name: ['-0', '--http1.0'], description: 'Use HTTP 1.0'),
  Option(
      name: ['-i', '--include'],
      description: 'Include protocol response headers in the output'),
  Option(
      name: ['-k', '--insecure'],
      description: 'Allow insecure server connections when using SSL'),
  Option(
      name: ['-4', '--ipv4'], description: 'Resolve names to IPv4 addresses'),
  Option(
      name: ['-6', '--ipv6'], description: 'Resolve names to IPv6 addresses'),
  Option(
      name: ['-j', '--junk-session-cookies'],
      description: 'Ignore session cookies read from file'),
  Option(name: ['-l', '--list-only'], description: 'List only mode'),
  Option(name: ['-L', '--location'], description: 'Follow redirects'),
  Option(name: ['-M', '--manual'], description: 'Display the full manual'),
  Option(
      name: ['-m', '--max-time'],
      description: 'Maximum time allowed for the transfer',
      args: [Arg(name: 'second')]),
  Option(
      name: ['-n', '--netrc'],
      description: 'Must read .netrc for user name and password'),
  Option(
      name: ['-:', '--next'],
      description: 'Make next URL use its separate set of options'),
  Option(
      name: ['-N', '--no-buffer'],
      description: 'Disable buffering of the output stream'),
  Option(
      name: ['-o', '--output'],
      description: 'Write to file instead of stdout',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: ['-#', '--progress-bar'],
      description: 'Display transfer progress as a bar'),
  Option(
      name: ['-x', '--proxy'],
      description: '[protocol://]host[:port] Use this proxy'),
  Option(
      name: ['-U', '--proxy-user'],
      description: 'Proxy user and password',
      args: [Arg(name: 'user:passwor')]),
  Option(
      name: ['-p', '--proxytunnel'],
      description: 'Operate through an HTTP proxy tunnel (using CONNECT)'),
  Option(
      name: ['-Q', '--quote'],
      description: 'Send command(s) to server before transfer'),
  Option(
      name: ['-r', '--range'],
      description: 'Retrieve only the bytes within RANGE',
      args: [Arg(name: 'rang')]),
  Option(
      name: ['-e', '--referer'],
      description: 'Referrer URL',
      args: [Arg(name: 'UR')]),
  Option(
      name: ['-J', '--remote-header-name'],
      description: 'Use the header-provided filename'),
  Option(
      name: ['-O', '--remote-name'],
      description: 'Write output to a file named as the remote file'),
  Option(
      name: ['-R', '--remote-time'],
      description: 'Set the remote file\'s time on the local output'),
  Option(
      name: ['-X', '--request'],
      description: 'Specify request command to use',
      args: [
        Arg(name: 'command', suggestions: [
          FigSuggestion(name: 'GET'),
          FigSuggestion(name: 'HEAD'),
          FigSuggestion(name: 'POST'),
          FigSuggestion(name: 'PUT'),
          FigSuggestion(name: 'DELETE'),
          FigSuggestion(name: 'CONNECT'),
          FigSuggestion(name: 'OPTIONS'),
          FigSuggestion(name: 'TRACE'),
          FigSuggestion(name: 'PATCH')
        ])
      ]),
  Option(
      name: ['-S', '--show-error'],
      description: 'Show error even when -s is used'),
  Option(name: ['-s', '--silent'], description: 'Silent mode'),
  Option(
      name: ['-Y', '--speed-limit'],
      description: 'Stop transfers slower than this',
      args: [Arg(name: 'spee')]),
  Option(
      name: ['-y', '--speed-time'],
      description: 'Trigger \'speed-limit\' abort after this time',
      args: [Arg(name: 'second')]),
  Option(name: ['-2', '--sslv2'], description: 'Use SSLv2'),
  Option(name: ['-3', '--sslv3'], description: 'Use SSLv3'),
  Option(
      name: ['-t', '--telnet-option'],
      description: 'Set telnet option',
      args: [Arg(name: 'va')]),
  Option(
      name: ['-z', '--time-cond'],
      description: 'Transfer based on a time condition',
      args: [Arg(name: 'tim')]),
  Option(name: ['-1', '--tlsv1'], description: 'Use TLSv1.0 or greater'),
  Option(
      name: ['-T', '--upload-file'],
      description: 'Transfer local FILE to destination',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(name: ['-B', '--use-ascii'], description: 'Use ASCII/text transfer'),
  Option(
      name: ['-u', '--user'],
      description: 'Server user and password',
      args: [Arg(name: 'user:passwor')]),
  Option(
      name: ['-A', '--user-agent'],
      description: 'Send User-Agent <name> to server',
      args: [Arg(name: 'nam')]),
  Option(
      name: ['-v', '--verbose'],
      description: 'Make the operation more talkative'),
  Option(
      name: ['-V', '--version'], description: 'Show version number and quit'),
  Option(
      name: ['-w', '--write-out'],
      description: 'Use output FORMAT after completion',
      args: [Arg(name: 'forma')]),
  Option(
      name: '--abstract-unix-socket',
      description: 'Connect via abstract Unix domain socket',
      args: [Arg(name: 'pat')]),
  Option(
      name: '--alt-svc',
      description: 'Name> Enable alt-svc with this cache file',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(name: '--anyauth', description: 'Pick any authentication method'),
  Option(name: '--basic', description: 'Use HTTP Basic Authentication'),
  Option(
      name: '--cacert',
      description: 'CA certificate to verify peer against',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--capath',
      description: 'CA directory to verify peer against',
      args: [Arg(name: 'dir', template: 'folder')]),
  Option(
      name: '--cert-status',
      description: 'Verify the status of the server certificate'),
  Option(name: '--cert-type', description: 'Certificate file type', args: [
    Arg(name: 'type', suggestions: [
      FigSuggestion(name: 'DER'),
      FigSuggestion(name: 'PEM'),
      FigSuggestion(name: 'ENG')
    ])
  ]),
  Option(
      name: '--ciphers',
      description: 'Of ciphers> SSL ciphers to use',
      args: [Arg(name: 'lis')]),
  Option(name: '--compressed', description: 'Request compressed response'),
  Option(name: '--compressed-ssh', description: 'Enable SSH compression'),
  Option(
      name: '--connect-timeout',
      description: 'Maximum time allowed for connection',
      args: [Arg(name: 'second')]),
  Option(
      name: '--connect-to',
      description: 'Connect to host',
      args: [Arg(name: 'HOST1:PORT1:HOST2:PORT')]),
  Option(
      name: '--create-dirs',
      description: 'Create necessary local directory hierarchy'),
  Option(name: '--crlf', description: 'Convert LF to CRLF in upload'),
  Option(
      name: '--crlfile',
      description: 'Get a CRL list in PEM format from the given file',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--data-ascii',
      description: 'HTTP POST ASCII data',
      args: [Arg(name: 'dat')]),
  Option(
      name: '--data-binary',
      description: 'HTTP POST binary data',
      args: [Arg(name: 'dat')]),
  Option(
      name: '--data-raw',
      description: 'HTTP POST data, \'@\' allowed',
      args: [Arg(name: 'dat')]),
  Option(
      name: '--data-urlencode',
      description: 'HTTP POST data url encoded',
      args: [Arg(name: 'dat')]),
  Option(
      name: '--delegation',
      description: 'GSS-API delegation permission',
      args: [Arg(name: 'LEVE')]),
  Option(name: '--digest', description: 'Use HTTP Digest Authentication'),
  Option(name: '--disable-eprt', description: 'Inhibit using EPRT or LPRT'),
  Option(name: '--disable-epsv', description: 'Inhibit using EPSV'),
  Option(
      name: '--disallow-username-in-url',
      description: 'Disallow username in url'),
  Option(
      name: '--dns-interface',
      description: 'Interface to use for DNS requests',
      args: [Arg(name: 'interfac')]),
  Option(
      name: '--dns-ipv4-addr',
      description: 'IPv4 address to use for DNS requests',
      args: [Arg(name: 'addres')]),
  Option(
      name: '--dns-ipv6-addr',
      description: 'IPv6 address to use for DNS requests',
      args: [Arg(name: 'addres')]),
  Option(
      name: '--dns-servers',
      description: 'DNS server addrs to use',
      args: [Arg(name: 'addresse')]),
  Option(
      name: '--doh-url',
      description: 'Resolve host names over DOH',
      args: [Arg(name: 'UR')]),
  Option(
      name: '--egd-file',
      description: 'EGD socket path for random data',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--engine',
      description: 'Crypto engine to use',
      args: [Arg(name: 'nam')]),
  Option(
      name: '--etag-compare',
      description:
          'Make a conditional HTTP request for the ETag read from the given file',
      args: [Arg(name: 'fil')]),
  Option(
      name: '--etag-save',
      description: 'Save an HTTP ETag to the specified file',
      args: [Arg(name: 'fil')]),
  Option(
      name: '--expect100-timeout',
      description: 'How long to wait for 100-continue',
      args: [Arg(name: 'second')]),
  Option(
      name: '--fail-early',
      description: 'Fail on first transfer error, do not continue'),
  Option(
      name: '--fail-with-body',
      description:
          'On HTTP errors, return an error and also output any HTML response'),
  Option(name: '--false-start', description: 'Enable TLS False Start'),
  Option(
      name: '--form-string',
      description: 'Specify multipart MIME data',
      args: [Arg(name: 'strin')]),
  Option(
      name: '--ftp-account',
      description: 'Account data string',
      args: [Arg(name: 'dat')]),
  Option(
      name: '--ftp-alternative-to-user',
      description: 'String to replace USER [name]',
      args: [Arg(name: 'comman')]),
  Option(
      name: '--ftp-create-dirs',
      description: 'Create the remote dirs if not present'),
  Option(
      name: '--ftp-method',
      description: 'Control CWD usage',
      args: [Arg(name: 'metho')]),
  Option(name: '--ftp-pasv', description: 'Use PASV/EPSV instead of PORT'),
  Option(name: '--ftp-pret', description: 'Send PRET before PASV'),
  Option(
      name: '--ftp-skip-pasv-ip', description: 'Skip the IP address for PASV'),
  Option(name: '--ftp-ssl-ccc', description: 'Send CCC after authenticating'),
  Option(name: '--ftp-ssl-ccc-mode', description: 'Set CCC mode', args: [
    Arg(name: 'mode', suggestions: [
      FigSuggestion(name: 'active'),
      FigSuggestion(name: 'passive')
    ])
  ]),
  Option(
      name: '--ftp-ssl-control',
      description: 'Require SSL/TLS for FTP login, clear for transfer'),
  Option(
      name: '--happy-eyeballs-timeout-ms',
      description:
          'How long to wait in milliseconds for IPv6 before trying IPv4',
      args: [Arg(name: 'millisecond')]),
  Option(
      name: '--haproxy-protocol',
      description: 'Send HAProxy PROXY protocol v1 header'),
  Option(
      name: '--hostpubmd5',
      description: 'Acceptable MD5 hash of the host public key',
      args: [Arg(name: 'md')]),
  Option(name: '--http0.9', description: 'Allow HTTP 0.9 responses'),
  Option(name: '--http1.1', description: 'Use HTTP 1.1'),
  Option(name: '--http2', description: 'Use HTTP 2'),
  Option(
      name: '--http2-prior-knowledge',
      description: 'Use HTTP 2 without HTTP/1.1 Upgrade'),
  Option(
      name: '--ignore-content-length',
      description: 'Ignore the size of the remote resource'),
  Option(
      name: '--interface',
      description: 'Use network INTERFACE (or address)',
      args: [Arg(name: 'nam')]),
  Option(
      name: '--keepalive-time',
      description: 'Interval time for keepalive probes',
      args: [Arg(name: 'second')]),
  Option(
      name: '--key',
      description: 'Private key file name',
      args: [Arg(name: 'ke')]),
  Option(name: '--key-type', description: 'Private key file type', args: [
    Arg(name: 'type', suggestions: [
      FigSuggestion(name: 'DER'),
      FigSuggestion(name: 'PEM'),
      FigSuggestion(name: 'ENG')
    ])
  ]),
  Option(
      name: '--krb',
      description: 'Enable Kerberos with security <level>',
      args: [Arg(name: 'leve')]),
  Option(
      name: '--libcurl',
      description: 'Dump libcurl equivalent code of this command line',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--limit-rate',
      description: 'Limit transfer speed to RATE',
      args: [Arg(name: 'spee')]),
  Option(
      name: '--local-port',
      description: 'Force use of RANGE for local port numbers',
      args: [Arg(name: 'num/rang')]),
  Option(
      name: '--location-trusted',
      description: 'Like --location, and send auth to other hosts'),
  Option(
      name: '--login-options',
      description: 'Server login options',
      args: [Arg(name: 'option')]),
  Option(
      name: '--mail-auth',
      description: 'Originator address of the original email',
      args: [Arg(name: 'addres')]),
  Option(
      name: '--mail-from',
      description: 'Mail from this address',
      args: [Arg(name: 'addres')]),
  Option(
      name: '--mail-rcpt',
      description: 'Mail to this address',
      args: [Arg(name: 'addres')]),
  Option(
      name: '--max-filesize',
      description: 'Maximum file size to download',
      args: [Arg(name: 'byte')]),
  Option(
      name: '--max-redirs',
      description: 'Maximum number of redirects allowed',
      args: [Arg(name: 'nu')]),
  Option(
      name: '--metalink',
      description: 'Process given URLs as metalink XML file'),
  Option(
      name: '--negotiate',
      description: 'Use HTTP Negotiate (SPNEGO) authentication'),
  Option(
      name: '--netrc-file',
      description: 'Specify FILE for netrc',
      args: [Arg(name: 'filename', template: 'filepath')]),
  Option(name: '--netrc-optional', description: 'Use either .netrc or URL'),
  Option(name: '--no-alpn', description: 'Disable the ALPN TLS extension'),
  Option(
      name: '--no-keepalive',
      description: 'Disable TCP keepalive on the connection'),
  Option(name: '--no-npn', description: 'Disable the NPN TLS extension'),
  Option(name: '--no-sessionid', description: 'Disable SSL session-ID reusing'),
  Option(
      name: '--noproxy',
      description: 'List of hosts which do not use proxy',
      args: [Arg(name: 'no-proxy-lis')]),
  Option(name: '--ntlm', description: 'Use HTTP NTLM authentication'),
  Option(
      name: '--ntlm-wb',
      description: 'Use HTTP NTLM authentication with winbind'),
  Option(
      name: '--oauth2-bearer',
      description: 'OAuth 2 Bearer Token',
      args: [Arg(name: 'toke')]),
  Option(
      name: '--pass',
      description: 'Pass phrase for the private key',
      args: [Arg(name: 'phras')]),
  Option(
      name: '--path-as-is',
      description: 'Do not squash .. sequences in URL path'),
  Option(
      name: '--pinnedpubkey',
      description: 'FILE/HASHES Public key to verify peer against',
      args: [Arg(name: 'hashe')]),
  Option(
      name: '--post301',
      description: 'Do not switch to GET after following a 301'),
  Option(
      name: '--post302',
      description: 'Do not switch to GET after following a 302'),
  Option(
      name: '--post303',
      description: 'Do not switch to GET after following a 303'),
  Option(
      name: '--preproxy',
      description: '[protocol://]host[:port] Use this proxy first'),
  Option(
      name: '--proto',
      description: 'Enable/disable PROTOCOLS',
      args: [Arg(name: 'protocol')]),
  Option(
      name: '--proto-default',
      description: 'Use PROTOCOL for any URL missing a scheme',
      args: [Arg(name: 'protoco')]),
  Option(
      name: '--proto-redir',
      description: 'Enable/disable PROTOCOLS on redirect',
      args: [Arg(name: 'protocol')]),
  Option(
      name: '--proxy-anyauth',
      description: 'Pick any proxy authentication method'),
  Option(
      name: '--proxy-basic',
      description: 'Use Basic authentication on the proxy'),
  Option(
      name: '--proxy-cacert',
      description: 'CA certificate to verify peer against for proxy',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--proxy-capath',
      description: 'CA directory to verify peer against for proxy',
      args: [Arg(name: 'dir', template: 'folder')]),
  Option(
      name: '--proxy-cert',
      description: 'Set client certificate for proxy',
      args: [Arg(name: 'cert[:passwd')]),
  Option(
      name: '--proxy-cert-type',
      description: 'Client certificate type for HTTPS proxy',
      args: [Arg(name: 'typ')]),
  Option(
      name: '--proxy-ciphers',
      description: 'SSL ciphers to use for proxy',
      args: [Arg(name: 'lis')]),
  Option(
      name: '--proxy-crlfile',
      description: 'Set a CRL list for proxy',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--proxy-digest',
      description: 'Use Digest authentication on the proxy'),
  Option(
      name: '--proxy-header',
      description: 'Pass custom header(s) to proxy',
      args: [
        Arg(name: 'header/file', suggestions: [
          FigSuggestion(name: 'Content-Type: application/json'),
          FigSuggestion(name: 'Content-Type: application/x-www-form-urlencoded')
        ])
      ]),
  Option(
      name: '--proxy-insecure',
      description: 'Do HTTPS proxy connections without verifying the proxy'),
  Option(
      name: '--proxy-key',
      description: 'Private key for HTTPS proxy',
      args: [Arg(name: 'ke')]),
  Option(
      name: '--proxy-key-type',
      description: 'Private key file type for proxy',
      args: [Arg(name: 'typ')]),
  Option(
      name: '--proxy-negotiate',
      description: 'Use HTTP Negotiate (SPNEGO) authentication on the proxy'),
  Option(
      name: '--proxy-ntlm',
      description: 'Use NTLM authentication on the proxy'),
  Option(
      name: '--proxy-pass',
      description: 'Pass phrase for the private key for HTTPS proxy',
      args: [Arg(name: 'phras')]),
  Option(
      name: '--proxy-pinnedpubkey',
      description: 'FILE/HASHES public key to verify proxy with',
      args: [Arg(name: 'hashe')]),
  Option(
      name: '--proxy-service-name',
      description: 'SPNEGO proxy service name',
      args: [Arg(name: 'nam')]),
  Option(
      name: '--proxy-ssl-allow-beast',
      description: 'Allow security flaw for interop for HTTPS proxy'),
  Option(
      name: '--proxy-tls13-ciphers',
      description: 'List> TLS 1.3 proxy cipher suites',
      args: [Arg(name: 'ciphersuit')]),
  Option(
      name: '--proxy-tlsauthtype',
      description: 'TLS authentication type for HTTPS proxy',
      args: [Arg(name: 'typ')]),
  Option(
      name: '--proxy-tlspassword',
      description: 'TLS password for HTTPS proxy',
      args: [Arg(name: 'strin')]),
  Option(
      name: '--proxy-tlsuser',
      description: 'TLS username for HTTPS proxy',
      args: [Arg(name: 'nam')]),
  Option(name: '--proxy-tlsv1', description: 'Use TLSv1 for HTTPS proxy'),
  Option(
      name: '--proxy1.0',
      description: 'Use HTTP/1.0 proxy on given port',
      args: [Arg(name: 'host[:port')]),
  Option(
      name: '--pubkey',
      description: 'SSH Public key file name',
      args: [Arg(name: 'key', template: 'filepath')]),
  Option(
      name: '--random-file',
      description: 'File for reading random data from',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(name: '--raw', description: 'Do HTTP "raw"; no transfer decoding'),
  Option(
      name: '--remote-name-all',
      description: 'Use the remote file name for all URLs'),
  Option(
      name: '--request-target',
      description: 'Specify the target for this request'),
  Option(
      name: '--resolve',
      description: 'Resolve the host+port to this address',
      args: [Arg(name: 'host:port:address[,address]..')]),
  Option(
      name: '--retry',
      description: 'Retry request if transient problems occur',
      args: [Arg(name: 'nu')]),
  Option(
      name: '--retry-connrefused',
      description: 'Retry on connection refused (use with --retry)'),
  Option(
      name: '--retry-delay',
      description: 'Wait time between retries',
      args: [Arg(name: 'second')]),
  Option(
      name: '--retry-max-time',
      description: 'Retry only within this period',
      args: [Arg(name: 'second')]),
  Option(
      name: '--sasl-ir',
      description: 'Enable initial response in SASL authentication'),
  Option(
      name: '--service-name',
      description: 'SPNEGO service name',
      args: [Arg(name: 'nam')]),
  Option(
      name: '--socks4',
      description: 'SOCKS4 proxy on given host + port',
      args: [Arg(name: 'host[:port')]),
  Option(
      name: '--socks4a',
      description: 'SOCKS4a proxy on given host + port',
      args: [Arg(name: 'host[:port')]),
  Option(
      name: '--socks5',
      description: 'SOCKS5 proxy on given host + port',
      args: [Arg(name: 'host[:port')]),
  Option(
      name: '--socks5-basic',
      description: 'Enable username/password auth for SOCKS5 proxies'),
  Option(
      name: '--socks5-gssapi',
      description: 'Enable GSS-API auth for SOCKS5 proxies'),
  Option(
      name: '--socks5-gssapi-nec',
      description: 'Compatibility with NEC SOCKS5 server'),
  Option(
      name: '--socks5-gssapi-service',
      description: 'SOCKS5 proxy service name for GSS-API',
      args: [Arg(name: 'nam')]),
  Option(
      name: '--socks5-hostname',
      description: 'SOCKS5 proxy, pass host name to proxy',
      args: [Arg(name: 'host[:port')]),
  Option(name: '--ssl', description: 'Try SSL/TLS'),
  Option(
      name: '--ssl-auto-client-cert',
      description: 'Obtain and use a client certificate automatically'),
  Option(
      name: '--ssl-allow-beast',
      description: 'Allow security flaw to improve interop'),
  Option(
      name: '--ssl-no-revoke',
      description: 'Disable cert revocation checks (Schannel)'),
  Option(name: '--ssl-reqd', description: 'Require SSL/TLS'),
  Option(name: '--stderr', description: 'Where to redirect stderr'),
  Option(
      name: '--styled-output',
      description: 'Enable styled output for HTTP headers'),
  Option(
      name: '--suppress-connect-headers',
      description: 'Suppress proxy CONNECT response headers'),
  Option(name: '--tcp-fastopen', description: 'Use TCP Fast Open'),
  Option(name: '--tcp-nodelay', description: 'Use the TCP_NODELAY option'),
  Option(
      name: '--tftp-blksize',
      description: 'Set TFTP BLKSIZE option',
      args: [Arg(name: 'valu')]),
  Option(
      name: '--tftp-no-options', description: 'Do not send any TFTP options'),
  Option(
      name: '--tls-max',
      description: 'Set maximum allowed TLS version',
      args: [Arg(name: 'VERSIO')]),
  Option(
      name: '--tls13-ciphers',
      description: 'Of TLS 1.3 ciphersuites> TLS 1.3 cipher suites to use',
      args: [Arg(name: 'lis')]),
  Option(
      name: '--tlsauthtype',
      description: 'TLS authentication type',
      args: [Arg(name: 'typ')]),
  Option(name: '--tlspassword', description: 'TLS password'),
  Option(
      name: '--tlsuser',
      description: 'TLS user name',
      args: [Arg(name: 'nam')]),
  Option(name: '--tlsv1.0', description: 'Use TLSv1.0 or greater'),
  Option(name: '--tlsv1.1', description: 'Use TLSv1.1 or greater'),
  Option(name: '--tlsv1.2', description: 'Use TLSv1.2 or greater'),
  Option(name: '--tlsv1.3', description: 'Use TLSv1.3 or greater'),
  Option(
      name: '--tr-encoding',
      description: 'Request compressed transfer encoding'),
  Option(
      name: '--trace',
      description: 'Write a debug trace to FILE',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--trace-ascii',
      description: 'Like --trace, but without hex output',
      args: [Arg(name: 'file', template: 'filepath')]),
  Option(
      name: '--trace-time',
      description: 'Add time stamps to trace/verbose output'),
  Option(
      name: '--unix-socket',
      description: 'Connect through this Unix domain socket',
      args: [Arg(name: 'pat')]),
  Option(
      name: '--url', description: 'URL to work with', args: [Arg(name: 'ur')]),
  Option(
      name: '--xattr',
      description: 'Store metadata in extended file attributes')
]);
