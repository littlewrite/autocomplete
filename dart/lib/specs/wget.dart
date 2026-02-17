// Auto-generated from TypeScript source: wget.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wget` CLI
final FigSpec wgetSpec = FigSpec(
  name: 'wget',
  description: 'A non-interactive network retriever',
  args: [
    Arg(
    isVariadic: true,
    name: 'url',
    description: 'The url(s) to retrieve'
  )
  ],
  options: [

    Option(
      name: ['-V', '--version'],
      description: 'Display the version of Wget and exit'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print this help'
    ),
    Option(
      name: ['-b', '--background'],
      description: 'Go to background after startup'
    ),
    Option(
      name: ['-e', '--execute=COMMAND'],
      description: 'Execute a `.wgetrc\'-style command'
    ),
    Option(
      name: ['-o', '--output-file=FILE'],
      description: 'Log messages to FILE'
    ),
    Option(
      name: ['-a', '--append-output=FILE'],
      description: 'Append messages to FILE'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Quiet (no output)'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Be verbose (this is the default)'
    ),
    Option(
      name: ['-nv', '--no-verbose'],
      description: 'Turn off verboseness, without being quiet'
    ),
    Option(
      name: '--report-speed=TYPE',
      description: 'Output bandwidth as TYPE.  TYPE can be bits'
    ),
    Option(
      name: ['-i', '--input-file=FILE'],
      description: 'Download URLs found in local or external FILE'
    ),
    Option(
      name: ['-F', '--force-html'],
      description: 'Treat input file as HTML'
    ),
    Option(
      name: ['-B', '--base=URL'],
      description: 'Resolves HTML input-file links (-i -F) relative to URL'
    ),
    Option(
      name: '--config=FILE',
      description: 'Specify config file to use'
    ),
    Option(
      name: '--no-config',
      description: 'Do not read any config file'
    ),
    Option(
      name: '--rejected-log=FILE',
      description: 'Log reasons for URL rejection to FILE'
    ),
    Option(
      name: ['-t', '--tries=NUMBER'],
      description: 'Set number of retries to NUMBER (0 unlimits)'
    ),
    Option(
      name: '--retry-connrefused',
      description: 'Retry even if connection is refused'
    ),
    Option(
      name: '--retry-on-http-error',
      description: 'Comma-separated list of HTTP errors to retry'
    ),
    Option(
      name: ['-O', '--output-document=FILE'],
      description: 'Write documents to FILE'
    ),
    Option(
      name: ['-nc', '--no-clobber'],
      description: 'Skip downloads that would download to existing files (overwriting them)'
    ),
    Option(
      name: '--no-netrc',
      description: 'Don\'t try to obtain credentials from .netrc'
    ),
    Option(
      name: ['-c', '--continue'],
      description: 'Resume getting a partially-downloaded file'
    ),
    Option(
      name: '--start-pos=OFFSET',
      description: 'Start downloading from zero-based position OFFSET'
    ),
    Option(
      name: '--progress=TYPE',
      description: 'Select progress gauge type'
    ),
    Option(
      name: '--show-progress',
      description: 'Display the progress bar in any verbosity mode'
    ),
    Option(
      name: ['-N', '--timestamping'],
      description: 'Don\'t re-retrieve files unless newer than local'
    ),
    Option(
      name: ['-S', '--server-response'],
      description: 'Print server response'
    ),
    Option(
      name: '--spider',
      description: 'Don\'t download anything'
    ),
    Option(
      name: ['-T', '--timeout=SECONDS'],
      description: 'Set all timeout values to SECONDS'
    ),
    Option(
      name: '--dns-timeout=SECS',
      description: 'Set the DNS lookup timeout to SECS'
    ),
    Option(
      name: '--connect-timeout=SECS',
      description: 'Set the connect timeout to SECS'
    ),
    Option(
      name: '--read-timeout=SECS',
      description: 'Set the read timeout to SECS'
    ),
    Option(
      name: ['-w', '--wait=SECONDS'],
      description: 'Wait SECONDS between retrievals'
    ),
    Option(
      name: '--waitretry=SECONDS',
      description: 'Wait 1..SECONDS between retries of a retrieval'
    ),
    Option(
      name: '--random-wait',
      description: 'Wait from 0.5*WAIT...1.5*WAIT secs between retrievals'
    ),
    Option(
      name: '--no-proxy',
      description: 'Explicitly turn off proxy'
    ),
    Option(
      name: ['-Q', '--quota=NUMBER'],
      description: 'Set retrieval quota to NUMBER'
    ),
    Option(
      name: '--bind-address=ADDRESS',
      description: 'Bind to ADDRESS (hostname or IP) on local host'
    ),
    Option(
      name: '--limit-rate=RATE',
      description: 'Limit download rate to RATE'
    ),
    Option(
      name: '--no-dns-cache',
      description: 'Disable caching DNS lookups'
    ),
    Option(
      name: '--restrict-file-names=OS',
      description: 'Restrict chars in file names to ones OS allows'
    ),
    Option(
      name: '--ignore-case',
      description: 'Ignore case when matching files/directories'
    ),
    Option(
      name: ['-4', '--inet4-only'],
      description: 'Connect only to IPv4 addresses'
    ),
    Option(
      name: ['-6', '--inet6-only'],
      description: 'Connect only to IPv6 addresses'
    ),
    Option(
      name: '--user=USER',
      description: 'Set both ftp and http user to USER'
    ),
    Option(
      name: '--password=PASS',
      description: 'Set both ftp and http password to PASS'
    ),
    Option(
      name: '--ask-password',
      description: 'Prompt for passwords'
    ),
    Option(
      name: '--no-iri',
      description: 'Turn off IRI support'
    ),
    Option(
      name: '--local-encoding=ENC',
      description: 'Use ENC as the local encoding for IRIs'
    ),
    Option(
      name: '--remote-encoding=ENC',
      description: 'Use ENC as the default remote encoding'
    ),
    Option(
      name: '--unlink',
      description: 'Remove file before clobber'
    ),
    Option(
      name: '--xattr',
      description: 'Turn on storage of metadata in extended file attributes'
    ),
    Option(
      name: ['-nd', '--no-directories'],
      description: 'Don\'t create directories'
    ),
    Option(
      name: ['-x', '--force-directories'],
      description: 'Force creation of directories'
    ),
    Option(
      name: ['-nH', '--no-host-directories'],
      description: 'Don\'t create host directories'
    ),
    Option(
      name: '--protocol-directories',
      description: 'Use protocol name in directories'
    ),
    Option(
      name: ['-P', '--directory-prefix=PREFIX'],
      description: 'Save files to PREFIX/'
    ),
    Option(
      name: '--cut-dirs=NUMBER',
      description: 'Ignore NUMBER remote directory components'
    ),
    Option(
      name: '--http-user=USER',
      description: 'Set http user to USER'
    ),
    Option(
      name: '--http-password=PASS',
      description: 'Set http password to PASS'
    ),
    Option(
      name: '--no-cache',
      description: 'Disallow server-cached data'
    ),
    Option(
      name: ['-E', '--adjust-extension'],
      description: 'Save HTML/CSS documents with proper extensions'
    ),
    Option(
      name: '--ignore-length',
      description: 'Ignore \'Content-Length\' header field'
    ),
    Option(
      name: '--header=STRING',
      description: 'Insert STRING among the headers'
    ),
    Option(
      name: '--compression=TYPE',
      description: 'Choose compression, one of auto, gzip and none. (default: none)'
    ),
    Option(
      name: '--max-redirect',
      description: 'Maximum redirections allowed per page'
    ),
    Option(
      name: '--proxy-user=USER',
      description: 'Set USER as proxy username'
    ),
    Option(
      name: '--proxy-password=PASS',
      description: 'Set PASS as proxy password'
    ),
    Option(
      name: '--referer=URL',
      description: 'Include \'Referer: URL\' header in HTTP request'
    ),
    Option(
      name: '--save-headers',
      description: 'Save the HTTP headers to file'
    ),
    Option(
      name: ['-U', '--user-agent=AGENT'],
      description: 'Identify as AGENT instead of Wget/VERSION'
    ),
    Option(
      name: '--no-http-keep-alive',
      description: 'Disable HTTP keep-alive (persistent connections)'
    ),
    Option(
      name: '--no-cookies',
      description: 'Don\'t use cookies'
    ),
    Option(
      name: '--load-cookies=FILE',
      description: 'Load cookies from FILE before session'
    ),
    Option(
      name: '--save-cookies=FILE',
      description: 'Save cookies to FILE after session'
    ),
    Option(
      name: '--keep-session-cookies',
      description: 'Load and save session (non-permanent) cookies'
    ),
    Option(
      name: '--post-data=STRING',
      description: 'Use the POST method; send STRING as the data'
    ),
    Option(
      name: '--post-file=FILE',
      description: 'Use the POST method; send contents of FILE'
    ),
    Option(
      name: '--method=HTTPMethod',
      description: 'Use method "HTTPMethod" in the request'
    ),
    Option(
      name: '--body-data=STRING',
      description: 'Send STRING as data. --method MUST be set'
    ),
    Option(
      name: '--body-file=FILE',
      description: 'Send contents of FILE. --method MUST be set'
    ),
    Option(
      name: '--content-on-error',
      description: 'Output the received content on server errors'
    ),
    Option(
      name: '--secure-protocol=PR',
      description: 'Choose secure protocol, one of auto, SSLv2,'
    ),
    Option(
      name: '--https-only',
      description: 'Only follow secure HTTPS links'
    ),
    Option(
      name: '--no-check-certificate',
      description: 'Don\'t validate the server\'s certificate'
    ),
    Option(
      name: '--certificate=FILE',
      description: 'Client certificate file'
    ),
    Option(
      name: '--certificate-type=TYPE',
      description: 'Client certificate type, PEM or DER'
    ),
    Option(
      name: '--private-key=FILE',
      description: 'Private key file'
    ),
    Option(
      name: '--private-key-type=TYPE',
      description: 'Private key type, PEM or DER'
    ),
    Option(
      name: '--ca-certificate=FILE',
      description: 'File with the bundle of CAs'
    ),
    Option(
      name: '--ca-directory=DIR',
      description: 'Directory where hash list of CAs is stored'
    ),
    Option(
      name: '--crl-file=FILE',
      description: 'File with bundle of CRLs'
    ),
    Option(
      name: '--ciphers=STR',
      description: 'Set the priority string (GnuTLS) or cipher list string (OpenSSL) directly'
    ),
    Option(
      name: ['-r', '--recursive'],
      description: 'Specify recursive download'
    ),
    Option(
      name: ['-l', '--level=NUMBER'],
      description: 'Maximum recursion depth (inf or 0 for infinite)'
    ),
    Option(
      name: '--delete-after',
      description: 'Delete files locally after downloading them'
    ),
    Option(
      name: ['-k', '--convert-links'],
      description: 'Make links in downloaded HTML or CSS point to local files'
    ),
    Option(
      name: ['-K', '--backup-converted'],
      description: 'Before converting file X, back up as X.orig'
    ),
    Option(
      name: ['-m', '--mirror'],
      description: 'Shortcut for -N -r -l inf --no-remove-listing'
    ),
    Option(
      name: ['-p', '--page-requisites'],
      description: 'Get all images, etc. needed to display HTML page'
    ),
    Option(
      name: ['-A', '--accept=LIST'],
      description: 'Comma-separated list of accepted extensions'
    ),
    Option(
      name: ['-R', '--reject=LIST'],
      description: 'Comma-separated list of rejected extensions'
    ),
    Option(
      name: '--accept-regex=REGEX',
      description: 'Regex matching accepted URLs'
    ),
    Option(
      name: '--reject-regex=REGEX',
      description: 'Regex matching rejected URLs'
    ),
    Option(
      name: '--regex-type=TYPE',
      description: 'Regex type (posix)'
    ),
    Option(
      name: ['-D', '--domains=LIST'],
      description: 'Comma-separated list of accepted domains'
    ),
    Option(
      name: '--exclude-domains=LIST',
      description: 'Comma-separated list of rejected domains'
    ),
    Option(
      name: '--follow-ftp',
      description: 'Follow FTP links from HTML documents'
    ),
    Option(
      name: '--follow-tags=LIST',
      description: 'Comma-separated list of followed HTML tags'
    ),
    Option(
      name: '--ignore-tags=LIST',
      description: 'Comma-separated list of ignored HTML tags'
    ),
    Option(
      name: ['-H', '--span-hosts'],
      description: 'Go to foreign hosts when recursive'
    ),
    Option(
      name: ['-L', '--relative'],
      description: 'Follow relative links only'
    ),
    Option(
      name: ['-I', '--include-directories=LIST'],
      description: 'List of allowed directories'
    ),
    Option(
      name: ['-X', '--exclude-directories=LIST'],
      description: 'List of excluded directories'
    ),
    Option(
      name: ['-np', '--no-parent'],
      description: 'Don\'t ascend to the parent directory'
    )
  ]
);
