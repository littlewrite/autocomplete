// Auto-generated from TypeScript source: newman.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `newman` CLI
final FigSpec newmanSpec = FigSpec(
  name: 'newman',
  description: 'Newman is a command-line collection runner for Postman',
  subcommands: [

    Subcommand(
      name: 'run',
      description: 'Initiate a Postman Collection run from a given URL or path',
      options: [

        Option(
          name: ['-e', '--environment'],
          description: 'Specify a URL or path to a Postman Environment',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-g', '--globals'],
          description: 'Specify a URL or path to a file containing Postman Globals',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-r', '--reporters'],
          description: 'Specify the reporters to use for this run',
          args: [
            Arg(
            name: 'reporters',
            isOptional: true,
            defaultValue: 'cl'
          )
          ]
        ),
        Option(
          name: ['-n', '--iteration-count'],
          description: 'Define the number of iterations to run',
          args: [
            Arg(
            name: ''
          )
          ]
        ),
        Option(
          name: ['-d', '--iteration-data'],
          description: 'Specify a data file to use for iterations (either JSON or CSV)',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths',
            suggestions: [

              FigSuggestion(name: 'JSON'),
              FigSuggestion(name: 'CSV')
            ]
          )
          ]
        ),
        Option(
          name: '--folder',
          description: 'Specify the folder to run from a collection. Can be specified multiple times to run multiple folders',
          isRepeatable: true,
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--global-var',
          description: 'Allows the specification of global variables via the command line, in a key=value format',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        ),
        Option(
          name: '--env-var',
          description: 'Allows the specification of environment variables via the command line, in a key=value format',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        ),
        Option(
          name: '--export-environment',
          description: 'Exports the final environment to a file after completing the run',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--export-globals',
          description: 'Exports the final globals to a file after completing the run',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--export-collection',
          description: 'Exports the executed collection to a file after completing the run',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--postman-api-key',
          description: 'API Key used to load the resources from the Postman API',
          args: [
            Arg(
            name: 'apiKe'
          )
          ]
        ),
        Option(
          name: '--bail',
          description: 'Specify whether or not to gracefully stop a collection run on encountering an error and whether to end the run with an error based on the optional modifier',
          args: [
            Arg(
            name: 'modifiers'
          )
          ]
        ),
        Option(
          name: '--ignore-redirects',
          description: 'Prevents Newman from automatically following 3XX redirect responses'
        ),
        Option(
          name: ['-x', '--suppress-exit-code'],
          description: 'Specify whether or not to override the default exit code for the current run'
        ),
        Option(
          name: '--silent',
          description: 'Prevents Newman from showing output to CLI'
        ),
        Option(
          name: '--disable-unicode',
          description: 'Forces Unicode compliant symbols to be replaced by their plain text equivalents'
        ),
        Option(
          name: '--color',
          description: 'Enable/Disable colored output (auto|on|off)',
          args: [
            Arg(
            name: 'value',
            defaultValue: 'auto',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'on'),
              FigSuggestion(name: 'off')
            ]
          )
          ]
        ),
        Option(
          name: '--delay-request',
          description: 'Specify the extent of delay between requests (milliseconds)',
          args: [
            Arg(
            name: 'n'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Specify a timeout for collection run (milliseconds)',
          args: [
            Arg(
            name: 'n'
          )
          ]
        ),
        Option(
          name: '--timeout-request',
          description: 'Specify a timeout for requests (milliseconds)',
          args: [
            Arg(
            name: 'n'
          )
          ]
        ),
        Option(
          name: '--timeout-script',
          description: 'Specify a timeout for scripts (milliseconds)',
          args: [
            Arg(
            name: 'n'
          )
          ]
        ),
        Option(
          name: '--working-dir',
          description: 'Specify the path to the working directory',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--no-insecure-file-read',
          description: 'Prevents reading the files situated outside of the working directory'
        ),
        Option(
          name: ['-k', '--insecure'],
          description: 'Disables SSL validations'
        ),
        Option(
          name: '--ssl-client-cert-list',
          description: 'Specify the path to a client certificates configurations (JSON)',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--ssl-client-cert',
          description: 'Specify the path to a client certificate (PEM)',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--ssl-client-key',
          description: 'Specify the path to a client certificate private key',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--ssl-client-passphrase',
          description: 'Specify the client certificate passphrase (for protected key)',
          args: [
            Arg(
            name: 'passphras'
          )
          ]
        ),
        Option(
          name: '--ssl-extra-ca-certs',
          description: 'Specify additionally trusted CA certificates (PEM)',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cookie-jar',
          description: 'Specify the path to a custom cookie jar (serialized tough-cookie JSON)',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--export-cookie-jar',
          description: 'Exports the cookie jar to a file after completing the run',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: 'Show detailed information of collection run and each request sent'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'collection',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        template: 'help'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['-v', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
