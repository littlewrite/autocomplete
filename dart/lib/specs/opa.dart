// Auto-generated from TypeScript source: opa.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `opa` CLI
final FigSpec opaSpec = FigSpec(
  name: 'opa',
  description: 'Open Policy Agent (OPA)',
  subcommands: [

    Subcommand(
      name: 'bench',
      description: 'Benchmark a Rego query',
      options: [

        Option(
          name: '--benchmem',
          description: 'Report memory allocations with benchmark results'
        ),
        Option(
          name: ['--bundle', '-b'],
          description: 'Set bundle file(s) or directory path(s). This flag can be repeated',
          args: [
            Arg(
            name: 'bundle'
          )
          ]
        ),
        Option(
          name: '--count',
          description: 'Number of times to repeat each benchmark',
          args: [
            Arg(
            name: 'count',
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: ['--data', '-d'],
          description: 'Set policy or data file(s). This flag can be repeated',
          args: [
            Arg(
            name: 'data'
          )
          ]
        ),
        Option(
          name: '--fail',
          description: 'Exits with non-zero exit code on undefined/empty result and errors'
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: '--import',
          description: 'Set query import(s). This flag can be repeated',
          args: [
            Arg(
            name: 'import'
          )
          ]
        ),
        Option(
          name: ['--input', '-i'],
          description: 'Set input file path',
          args: [
            Arg(
            name: 'input'
          )
          ]
        ),
        Option(
          name: '--metrics',
          description: 'Report query performance metrics'
        ),
        Option(
          name: '--package',
          description: 'Set query package',
          args: [
            Arg(
            name: 'package'
          )
          ]
        ),
        Option(
          name: ['--partial', '-p'],
          description: 'Perform partial evaluation'
        ),
        Option(
          name: ['--schema', '-s'],
          description: 'Set schema file path or directory path',
          args: [
            Arg(
            name: 'schema'
          )
          ]
        ),
        Option(
          name: '--stdin',
          description: 'Read query from stdin'
        ),
        Option(
          name: ['--stdin-input', '-I'],
          description: 'Read input document from stdin'
        ),
        Option(
          name: ['--target', '-t'],
          description: 'Set the runtime to exercise',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'rego'
          )
          ]
        ),
        Option(
          name: ['--unknowns', '-u'],
          description: 'Set paths to treat as unknown during partial evaluation',
          isRepeatable: true,
          args: [
            Arg(
            name: 'unknowns',
            defaultValue: '[input]'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for bench'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build an OPA bundle',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Load paths as bundle files or root directories'
        ),
        Option(
          name: '--capabilities',
          description: 'Set capabilities.json file path',
          args: [
            Arg(
            name: 'capabilities'
          )
          ]
        ),
        Option(
          name: '--claims-file',
          description: 'Set path of JSON file containing optional claims (see: https://openpolicyagent.org/docs/latest/management/#signature-format)',
          args: [
            Arg(
            name: 'claims-file'
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Enable debug output'
        ),
        Option(
          name: ['--entrypoint', '-e'],
          description: 'Set slash separated entrypoint path',
          args: [
            Arg(
            name: 'entrypoint'
          )
          ]
        ),
        Option(
          name: '--exclude-files-verify',
          description: 'Set file names to exclude during bundle verification',
          args: [
            Arg(
            name: 'exclude-files-verify'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: ['--optimize', '-O'],
          description: 'Set optimization level',
          args: [
            Arg(
            name: 'optimize',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Set the output filename',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'bundle.tar.gz'
          )
          ]
        ),
        Option(
          name: ['--revision', '-r'],
          description: 'Set output bundle revision',
          args: [
            Arg(
            name: 'revision'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope to use for bundle signature verification',
          args: [
            Arg(
            name: 'scope'
          )
          ]
        ),
        Option(
          name: '--signing-alg',
          description: 'Name of the signing algorithm',
          args: [
            Arg(
            name: 'signing-alg',
            defaultValue: 'RS256'
          )
          ]
        ),
        Option(
          name: '--signing-key',
          description: 'Set the secret (HMAC) or path of the PEM file containing the private key (RSA and ECDSA)',
          args: [
            Arg(
            name: 'signing-key'
          )
          ]
        ),
        Option(
          name: '--signing-plugin',
          description: 'Name of the plugin to use for signing/verification (see https://openpolicyagent.org/docs/latest/management/#signature-plugin',
          args: [
            Arg(
            name: 'signing-plugin'
          )
          ]
        ),
        Option(
          name: ['--target', '-t'],
          description: 'Set the output bundle target type',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'rego'
          )
          ]
        ),
        Option(
          name: '--verification-key',
          description: 'Set the secret (HMAC) or path of the PEM file containing the public key (RSA and ECDSA)',
          args: [
            Arg(
            name: 'verification-key'
          )
          ]
        ),
        Option(
          name: '--verification-key-id',
          description: 'Name assigned to the verification key used for bundle verification',
          args: [
            Arg(
            name: 'verification-key-id',
            defaultValue: 'default'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for build'
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Check Rego source files',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Load paths as bundle files or root directories'
        ),
        Option(
          name: '--capabilities',
          description: 'Set capabilities.json file path',
          args: [
            Arg(
            name: 'capabilities'
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: ['--max-errors', '-m'],
          description: 'Set the number of errors to allow before compilation fails early',
          args: [
            Arg(
            name: 'max-errors',
            defaultValue: '10'
          )
          ]
        ),
        Option(
          name: ['--schema', '-s'],
          description: 'Set schema file path or directory path',
          args: [
            Arg(
            name: 'schema'
          )
          ]
        ),
        Option(
          name: ['--strict', '-S'],
          description: 'Enable compiler strict mode'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for check'
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for bash'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for fish'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for powershell'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for zsh'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Help for completion'
        )
      ]
    ),
    Subcommand(
      name: 'deps',
      description: 'Analyze Rego query dependencies',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Set bundle file(s) or directory path(s). This flag can be repeated',
          args: [
            Arg(
            name: 'bundle'
          )
          ]
        ),
        Option(
          name: ['--data', '-d'],
          description: 'Set policy or data file(s). This flag can be repeated',
          args: [
            Arg(
            name: 'data'
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for deps'
        )
      ]
    ),
    Subcommand(
      name: 'eval',
      description: 'Evaluate a Rego query',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Set bundle file(s) or directory path(s). This flag can be repeated',
          args: [
            Arg(
            name: 'bundle'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'Set capabilities.json file path',
          args: [
            Arg(
            name: 'capabilities'
          )
          ]
        ),
        Option(
          name: '--count',
          description: 'Number of times to repeat each benchmark',
          args: [
            Arg(
            name: 'count',
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: '--coverage',
          description: 'Report coverage'
        ),
        Option(
          name: ['--data', '-d'],
          description: 'Set policy or data file(s). This flag can be repeated',
          args: [
            Arg(
            name: 'data'
          )
          ]
        ),
        Option(
          name: '--disable-early-exit',
          description: 'Disable \'early exit\' optimizations'
        ),
        Option(
          name: '--disable-indexing',
          description: 'Disable indexing optimizations'
        ),
        Option(
          name: '--disable-inlining',
          description: 'Set paths of documents to exclude from inlining',
          isRepeatable: true,
          args: [
            Arg(
            name: 'disable-inlining'
          )
          ]
        ),
        Option(
          name: '--explain',
          description: 'Enable query explanations',
          args: [
            Arg(
            name: 'explain',
            defaultValue: 'off'
          )
          ]
        ),
        Option(
          name: '--fail',
          description: 'Exits with non-zero exit code on undefined/empty result and errors'
        ),
        Option(
          name: '--fail-defined',
          description: 'Exits with non-zero exit code on defined/non-empty result and errors'
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: '--import',
          description: 'Set query import(s). This flag can be repeated',
          args: [
            Arg(
            name: 'import'
          )
          ]
        ),
        Option(
          name: ['--input', '-i'],
          description: 'Set input file path',
          args: [
            Arg(
            name: 'input'
          )
          ]
        ),
        Option(
          name: '--instrument',
          description: 'Enable query instrumentation metrics (implies --metrics)'
        ),
        Option(
          name: '--metrics',
          description: 'Report query performance metrics'
        ),
        Option(
          name: '--package',
          description: 'Set query package',
          args: [
            Arg(
            name: 'package'
          )
          ]
        ),
        Option(
          name: ['--partial', '-p'],
          description: 'Perform partial evaluation'
        ),
        Option(
          name: '--pretty-limit',
          description: 'Set limit after which pretty output gets truncated',
          args: [
            Arg(
            name: 'pretty-limit',
            defaultValue: '80'
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Perform expression profiling'
        ),
        Option(
          name: '--profile-limit',
          description: 'Set number of profiling results to show',
          args: [
            Arg(
            name: 'profile-limit',
            defaultValue: '10'
          )
          ]
        ),
        Option(
          name: '--profile-sort',
          description: 'Set sort order of expression profiler results',
          args: [
            Arg(
            name: 'profile-sort'
          )
          ]
        ),
        Option(
          name: ['--schema', '-s'],
          description: 'Set schema file path or directory path',
          args: [
            Arg(
            name: 'schema'
          )
          ]
        ),
        Option(
          name: '--shallow-inlining',
          description: 'Disable inlining of rules that depend on unknowns'
        ),
        Option(
          name: '--stdin',
          description: 'Read query from stdin'
        ),
        Option(
          name: ['--stdin-input', '-I'],
          description: 'Read input document from stdin'
        ),
        Option(
          name: '--strict-builtin-errors',
          description: 'Treat built-in function errors as fatal'
        ),
        Option(
          name: ['--target', '-t'],
          description: 'Set the runtime to exercise',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'rego'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Set eval timeout (default unlimited)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '0s'
          )
          ]
        ),
        Option(
          name: ['--unknowns', '-u'],
          description: 'Set paths to treat as unknown during partial evaluation',
          isRepeatable: true,
          args: [
            Arg(
            name: 'unknowns',
            defaultValue: '[input]'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for eval'
        )
      ]
    ),
    Subcommand(
      name: 'exec',
      description: 'Execute against input files',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Set bundle file(s) or directory path(s). This flag can be repeated',
          args: [
            Arg(
            name: 'bundle'
          )
          ]
        ),
        Option(
          name: ['--config-file', '-c'],
          description: 'Set path of configuration file',
          args: [
            Arg(
            name: 'config-file'
          )
          ]
        ),
        Option(
          name: '--decision',
          description: 'Set decision to evaluate',
          args: [
            Arg(
            name: 'decision'
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--log-format',
          description: 'Set log format',
          args: [
            Arg(
            name: 'log-format',
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: ['--log-level', '-l'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            defaultValue: 'error'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Override config values on the command line (use commas to specify multiple values)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Override config values with files on the command line (use commas to specify multiple values)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for exec'
        )
      ]
    ),
    Subcommand(
      name: 'fmt',
      description: 'Format Rego source files',
      options: [

        Option(
          name: ['--diff', '-d'],
          description: 'Only display a diff of the changes'
        ),
        Option(
          name: '--fail',
          description: 'Non zero exit code on reformat'
        ),
        Option(
          name: ['--list', '-l'],
          description: 'List all files who would change when formatted'
        ),
        Option(
          name: ['--write', '-w'],
          description: 'Overwrite the original source file'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for fmt'
        )
      ]
    ),
    Subcommand(
      name: 'inspect',
      description: 'Inspect OPA bundle(s)',
      options: [

        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for inspect'
        )
      ]
    ),
    Subcommand(
      name: 'parse',
      description: 'Parse Rego source file',
      options: [

        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for parse'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Start OPA in interactive or server mode',
      options: [

        Option(
          name: ['--addr', '-a'],
          description: 'Set listening address of the server (e.g., [ip]:<port> for TCP, unix://<path> for UNIX domain socket)',
          args: [
            Arg(
            name: 'addr',
            defaultValue: '[:8181]'
          )
          ]
        ),
        Option(
          name: '--authentication',
          description: 'Set authentication scheme',
          args: [
            Arg(
            name: 'authentication',
            defaultValue: 'off'
          )
          ]
        ),
        Option(
          name: '--authorization',
          description: 'Set authorization scheme',
          args: [
            Arg(
            name: 'authorization',
            defaultValue: 'off'
          )
          ]
        ),
        Option(
          name: ['--bundle', '-b'],
          description: 'Load paths as bundle files or root directories'
        ),
        Option(
          name: ['--config-file', '-c'],
          description: 'Set path of configuration file',
          args: [
            Arg(
            name: 'config-file'
          )
          ]
        ),
        Option(
          name: '--diagnostic-addr',
          description: 'Set read-only diagnostic listening address of the server for /health and /metric APIs (e.g., [ip]:<port> for TCP, unix://<path> for UNIX domain socket)',
          args: [
            Arg(
            name: 'diagnostic-addr'
          )
          ]
        ),
        Option(
          name: '--exclude-files-verify',
          description: 'Set file names to exclude during bundle verification',
          args: [
            Arg(
            name: 'exclude-files-verify'
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set shell output format, i.e, pretty, json',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--h2c',
          description: 'Enable H2C for HTTP listeners'
        ),
        Option(
          name: ['--history', '-H'],
          description: 'Set path of history file',
          args: [
            Arg(
            name: 'history',
            defaultValue: '/Users/batuhan.apaydin/.opa_history'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: '--log-format',
          description: 'Set log format',
          args: [
            Arg(
            name: 'log-format',
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: ['--log-level', '-l'],
          description: 'Set log level',
          args: [
            Arg(
            name: 'log-level',
            defaultValue: 'info'
          )
          ]
        ),
        Option(
          name: ['--max-errors', '-m'],
          description: 'Set the number of errors to allow before compilation fails early',
          args: [
            Arg(
            name: 'max-errors',
            defaultValue: '10'
          )
          ]
        ),
        Option(
          name: '--min-tls-version',
          description: 'Set minimum TLS version to be used by OPA\'s server',
          args: [
            Arg(
            name: 'min-tls-version',
            defaultValue: '1.2'
          )
          ]
        ),
        Option(
          name: '--pprof',
          description: 'Enables pprof endpoints'
        ),
        Option(
          name: '--ready-timeout',
          description: 'Wait (in seconds) for configured plugins before starting server (value <= 0 disables ready check)',
          args: [
            Arg(
            name: 'ready-timeout',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope to use for bundle signature verification',
          args: [
            Arg(
            name: 'scope'
          )
          ]
        ),
        Option(
          name: ['--server', '-s'],
          description: 'Start the runtime in server mode'
        ),
        Option(
          name: '--set',
          description: 'Override config values on the command line (use commas to specify multiple values)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Override config values with files on the command line (use commas to specify multiple values)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file'
          )
          ]
        ),
        Option(
          name: '--shutdown-grace-period',
          description: 'Set the time (in seconds) that the server will wait to gracefully shut down',
          args: [
            Arg(
            name: 'shutdown-grace-period',
            defaultValue: '10'
          )
          ]
        ),
        Option(
          name: '--shutdown-wait-period',
          description: 'Set the time (in seconds) that the server will wait before initiating shutdown',
          args: [
            Arg(
            name: 'shutdown-wait-period',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--signing-alg',
          description: 'Name of the signing algorithm',
          args: [
            Arg(
            name: 'signing-alg',
            defaultValue: 'RS256'
          )
          ]
        ),
        Option(
          name: '--skip-verify',
          description: 'Disables bundle signature verification'
        ),
        Option(
          name: '--skip-version-check',
          description: 'Disables anonymous version reporting (see: https://openpolicyagent.org/docs/latest/privacy)'
        ),
        Option(
          name: '--tls-ca-cert-file',
          description: 'Set path of TLS CA cert file',
          args: [
            Arg(
            name: 'tls-ca-cert-file'
          )
          ]
        ),
        Option(
          name: '--tls-cert-file',
          description: 'Set path of TLS certificate file',
          args: [
            Arg(
            name: 'tls-cert-file'
          )
          ]
        ),
        Option(
          name: '--tls-cert-refresh-period',
          description: 'Set certificate refresh period',
          args: [
            Arg(
            name: 'tls-cert-refresh-period',
            defaultValue: '0s'
          )
          ]
        ),
        Option(
          name: '--tls-private-key-file',
          description: 'Set path of TLS private key file',
          args: [
            Arg(
            name: 'tls-private-key-file'
          )
          ]
        ),
        Option(
          name: '--verification-key',
          description: 'Set the secret (HMAC) or path of the PEM file containing the public key (RSA and ECDSA)',
          args: [
            Arg(
            name: 'verification-key'
          )
          ]
        ),
        Option(
          name: '--verification-key-id',
          description: 'Name assigned to the verification key used for bundle verification',
          args: [
            Arg(
            name: 'verification-key-id',
            defaultValue: 'default'
          )
          ]
        ),
        Option(
          name: ['--watch', '-w'],
          description: 'Watch command line files for changes'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for run'
        )
      ]
    ),
    Subcommand(
      name: 'sign',
      description: 'Generate an OPA bundle signature',
      options: [

        Option(
          name: ['--bundle', '-b'],
          description: 'Load paths as bundle files or root directories'
        ),
        Option(
          name: '--claims-file',
          description: 'Set path of JSON file containing optional claims (see: https://openpolicyagent.org/docs/latest/management/#signature-format)',
          args: [
            Arg(
            name: 'claims-file'
          )
          ]
        ),
        Option(
          name: ['--output-file-path', '-o'],
          description: 'Set the location for the .signatures.json file',
          args: [
            Arg(
            name: 'output-file-path',
            defaultValue: '.'
          )
          ]
        ),
        Option(
          name: '--signing-alg',
          description: 'Name of the signing algorithm',
          args: [
            Arg(
            name: 'signing-alg',
            defaultValue: 'RS256'
          )
          ]
        ),
        Option(
          name: '--signing-key',
          description: 'Set the secret (HMAC) or path of the PEM file containing the private key (RSA and ECDSA)',
          args: [
            Arg(
            name: 'signing-key'
          )
          ]
        ),
        Option(
          name: '--signing-plugin',
          description: 'Name of the plugin to use for signing/verification (see https://openpolicyagent.org/docs/latest/management/#signature-plugin',
          args: [
            Arg(
            name: 'signing-plugin'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for sign'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Execute Rego test cases',
      options: [

        Option(
          name: '--bench',
          description: 'Benchmark the unit tests'
        ),
        Option(
          name: '--benchmem',
          description: 'Report memory allocations with benchmark results'
        ),
        Option(
          name: ['--bundle', '-b'],
          description: 'Load paths as bundle files or root directories'
        ),
        Option(
          name: '--count',
          description: 'Number of times to repeat each test',
          args: [
            Arg(
            name: 'count',
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: ['--coverage', '-c'],
          description: 'Report coverage (overrides debug tracing)'
        ),
        Option(
          name: ['--exit-zero-on-skipped', '-z'],
          description: 'Skipped tests return status 0'
        ),
        Option(
          name: '--explain',
          description: 'Enable query explanations',
          args: [
            Arg(
            name: 'explain',
            defaultValue: 'fails'
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Set output format',
          args: [
            Arg(
            name: 'format',
            defaultValue: 'pretty'
          )
          ]
        ),
        Option(
          name: '--ignore',
          description: 'Set file and directory names to ignore during loading (e.g., \'.*\' excludes hidden files)',
          args: [
            Arg(
            name: 'ignore'
          )
          ]
        ),
        Option(
          name: ['--max-errors', '-m'],
          description: 'Set the number of errors to allow before compilation fails early',
          args: [
            Arg(
            name: 'max-errors',
            defaultValue: '10'
          )
          ]
        ),
        Option(
          name: ['--run', '-r'],
          description: 'Run only test cases matching the regular expression',
          args: [
            Arg(
            name: 'run'
          )
          ]
        ),
        Option(
          name: ['--show-failure-line', '-l'],
          description: 'Show test failure line'
        ),
        Option(
          name: ['--target', '-t'],
          description: 'Set the runtime to exercise',
          args: [
            Arg(
            name: 'target',
            defaultValue: 'rego'
          )
          ]
        ),
        Option(
          name: '--threshold',
          description: 'Set coverage threshold and exit with non-zero status if coverage is less than threshold %',
          args: [
            Arg(
            name: 'threshold',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Set test timeout (default 5s, 30s when benchmarking)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '0s'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Set verbose reporting mode'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for test'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the version of OPA',
      options: [

        Option(
          name: ['--check', '-c'],
          description: 'Check for latest OPA release'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for version'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'bench',
          description: 'Benchmark a Rego query',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for bench'
            )
          ]
        ),
        Subcommand(
          name: 'build',
          description: 'Build an OPA bundle',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for build'
            )
          ]
        ),
        Subcommand(
          name: 'check',
          description: 'Check Rego source files',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for check'
            )
          ]
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [

            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash',
              options: [

                Option(
                  name: '--no-descriptions',
                  description: 'Disable completion descriptions'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for bash'
                )
              ]
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish',
              options: [

                Option(
                  name: '--no-descriptions',
                  description: 'Disable completion descriptions'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for fish'
                )
              ]
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell',
              options: [

                Option(
                  name: '--no-descriptions',
                  description: 'Disable completion descriptions'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for powershell'
                )
              ]
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh',
              options: [

                Option(
                  name: '--no-descriptions',
                  description: 'Disable completion descriptions'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for zsh'
                )
              ]
            )
          ],
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for completion'
            )
          ]
        ),
        Subcommand(
          name: 'deps',
          description: 'Analyze Rego query dependencies',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for deps'
            )
          ]
        ),
        Subcommand(
          name: 'eval',
          description: 'Evaluate a Rego query',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for eval'
            )
          ]
        ),
        Subcommand(
          name: 'exec',
          description: 'Execute against input files',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for exec'
            )
          ]
        ),
        Subcommand(
          name: 'fmt',
          description: 'Format Rego source files',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for fmt'
            )
          ]
        ),
        Subcommand(
          name: 'inspect',
          description: 'Inspect OPA bundle(s)',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for inspect'
            )
          ]
        ),
        Subcommand(
          name: 'parse',
          description: 'Parse Rego source file',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for parse'
            )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Start OPA in interactive or server mode',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for run'
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Generate an OPA bundle signature',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for sign'
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Execute Rego test cases',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for test'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Print the version of OPA',
          options: [

            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Help for help'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Help for opa'
    )
  ]
);
