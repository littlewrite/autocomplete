// Auto-generated from TypeScript source: croc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `croc` CLI
final FigSpec crocSpec = FigSpec(
  name: 'croc',
  description: 'Croc is a tool that allows any two computers to simply and securely transfer files and folders',
  subcommands: [

    Subcommand(
      name: 'send',
      description: 'Send file(s), or folder',
      args: [
        Arg(
        template: ['filepaths', 'folders']
      )
      ],
      options: [

        Option(
          name: ['--code', '-c'],
          description: 'Codephrase used to connect to relay',
          args: [
            Arg(
            name: 'codephras'
          )
          ]
        ),
        Option(
          name: '--hash',
          description: 'Hash algorithm',
          args: [
            Arg(
            suggestions: [

              FigSuggestion(
                name: 'xxhash'
              ),
              FigSuggestion(
                name: 'imohash'
              ),
              FigSuggestion(
                name: 'md5'
              )
            ]
          )
          ]
        ),
        Option(
          name: ['--text', '-t'],
          description: 'Send some text',
          args: [
            Arg(
            name: 'text'
          )
          ]
        ),
        Option(
          name: '--no-local',
          description: 'Disable local relay when sending'
        ),
        Option(
          name: '--no-multi',
          description: 'Disable multiplexing'
        ),
        Option(
          name: '--ports',
          description: 'Ports of the local relay'
        )
      ]
    ),
    Subcommand(
      name: 'relay',
      description: 'Start your own relay',
      options: [

        Option(
          name: '--host',
          description: 'Host of the relay',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        ),
        Option(
          name: '--ports',
          description: 'Ports of the local relay',
          args: [
            Arg(
            name: 'port'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['help', 'h'],
      description: 'Shows a list of commands or help for one command',
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
      name: ['--help', '-h'],
      description: 'Show help for croc',
      isPersistent: true
    ),
    Option(
      name: '--internal-dns',
      description: 'Use a built-in DNS stub resolver rather than the host operating system'
    ),
    Option(
      name: '--remember',
      description: 'Save these settings to reuse next time'
    ),
    Option(
      name: '--debug',
      description: 'Toggle debug mode'
    ),
    Option(
      name: '--yes',
      description: 'Automatically agree to all prompts'
    ),
    Option(
      name: '--stdout',
      description: 'Redirect file to stdout'
    ),
    Option(
      name: '--no-compress',
      description: 'Disable compression'
    ),
    Option(
      name: '--ask',
      description: 'Make sure sender and recipient are prompted'
    ),
    Option(
      name: '--local',
      description: 'Force to use only local connections'
    ),
    Option(
      name: '--ignore-stdin',
      description: 'Ignore piped stdin'
    ),
    Option(
      name: '--overwrite',
      description: 'Do not prompt to overwrite'
    ),
    Option(
      name: '--curve',
      description: 'Choose an encryption curve',
      args: [
        Arg(
        name: 'value',
        suggestions: [

          FigSuggestion(
            name: 'p521'
          ),
          FigSuggestion(
            name: 'p256'
          ),
          FigSuggestion(
            name: 'p384'
          ),
          FigSuggestion(
            name: 'siec'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--ip',
      description: 'Set sender ip if known',
      args: [
        Arg(
        name: 'valu'
      )
      ]
    ),
    Option(
      name: '--relay',
      description: 'Address of the relay',
      args: [
        Arg(
        name: 'ipv4 addres'
      )
      ]
    ),
    Option(
      name: '--relay6',
      description: 'Ipv6 address of the relay',
      args: [
        Arg(
        name: 'ipv6 addres'
      )
      ]
    ),
    Option(
      name: '--out',
      description: 'Specify an output folder to receive the file',
      args: [
        Arg(
        name: 'output folde'
      )
      ]
    ),
    Option(
      name: '--pass',
      description: 'Password for the relay (default: "pass123")',
      args: [
        Arg(
        name: 'passwor'
      )
      ]
    ),
    Option(
      name: '--socks5',
      description: 'Add a socks5 proxy',
      args: [
        Arg(
        name: 'valu'
      )
      ]
    ),
    Option(
      name: '--throttleUpload',
      description: 'Throttle the upload speed e.g. 500k',
      args: [
        Arg(
        name: 'valu'
      )
      ]
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print the version'
    )
  ],
  args: [
    Arg(
    name: 'secret-code',
    description: 'Receive a file using code'
  )
  ]
);
