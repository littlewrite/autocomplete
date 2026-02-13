// Auto-generated from TypeScript source: cicada.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cicada` CLI
final FigSpec cicadaSpec = FigSpec(
  name: 'cicada',
  description: 'Write CI/CD Pipelines in TypeScript',
  subcommands: [

    Subcommand(
      name: 'run',
      description: 'Run a cicada pipeline',
      options: [

        Option(
          name: ['-s', '--secret'],
          description: 'Name of the secret to use, these come from environment variables',
          isRepeatable: true,
          args: [
            Arg(
            name: 'secret',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--dotenv',
          description: 'Load a custom .env file',
          isRepeatable: true,
          args: [
            Arg(
            name: 'dotenv',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--secrets-json',
          description: 'Load secrets from a json file',
          isRepeatable: true,
          args: [
            Arg(
            name: 'secrets_json',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--cicada-dockerfile',
          description: 'A custom dockerfile to load the cicada bin from',
          isRepeatable: true,
          args: [
            Arg(
            name: 'cicada_dockerfile',
            isOptional: true,
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--oci-backend',
          description: 'The OCI backend to use',
          isRepeatable: true,
          args: [
            Arg(
            name: 'oci_backend',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'docker'),
              FigSuggestion(name: 'podman')
            ]
          )
          ]
        ),
        Option(
          name: '--no-dotenv',
          description: 'Do not load .env file'
        ),
        Option(
          name: '--no-cache',
          description: 'Disable caching'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help (see more with \'--help\')'
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'step',
      description: 'Run a step in a cicada workflow',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [

        Arg(
          name: 'workflow'
        ),
        Arg(
          name: 'step'
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a cicada project, you can optionally specify a pipeline to create',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'new',
      description: 'Create a cicada pipeline',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [
        Arg(
        name: 'pipeline'
      )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update cicada',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'completions',
      description: 'List all available completions',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [
        Arg(
        name: 'shell',
        suggestions: [

          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'elvish'),
          FigSuggestion(name: 'fish'),
          FigSuggestion(name: 'powershell'),
          FigSuggestion(name: 'zsh')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'fig-completion',
      description: 'Create fig completions',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open a pipeline in your editor',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ],
      args: [
        Arg(
        name: 'pipeline',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'doctor',
      description: 'Check for common issues',
      options: [

        Option(
          name: '--oci-backend',
          description: 'The OCI backend to use',
          isRepeatable: true,
          args: [
            Arg(
            name: 'oci_backend',
            isOptional: true,
            suggestions: [

              FigSuggestion(name: 'docker'),
              FigSuggestion(name: 'podman')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Debug commands',
      subcommands: [

        Subcommand(
          name: 'daemon-info',
          options: [

            Option(
              name: '--oci-backend',
              description: 'The OCI backend to use',
              isRepeatable: true,
              args: [
                Arg(
                name: 'oci_backend',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'docker'),
                  FigSuggestion(name: 'podman')
                ]
              )
              ]
            ),
            Option(
              name: ['-j', '--json']
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: ['disk-usage', 'du'],
          options: [

            Option(
              name: '--oci-backend',
              description: 'The OCI backend to use',
              isRepeatable: true,
              args: [
                Arg(
                name: 'oci_backend',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'docker'),
                  FigSuggestion(name: 'podman')
                ]
              )
              ]
            ),
            Option(
              name: ['-j', '--json']
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: 'workers',
          options: [

            Option(
              name: '--oci-backend',
              description: 'The OCI backend to use',
              isRepeatable: true,
              args: [
                Arg(
                name: 'oci_backend',
                isOptional: true,
                suggestions: [

                  FigSuggestion(name: 'docker'),
                  FigSuggestion(name: 'podman')
                ]
              )
              ]
            ),
            Option(
              name: ['-j', '--json']
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)',
          subcommands: [

            Subcommand(
              name: 'daemon-info'
            ),
            Subcommand(
              name: 'disk-usage'
            ),
            Subcommand(
              name: 'workers'
            ),
            Subcommand(
              name: 'help',
              description: 'Print this message or the help of the given subcommand(s)'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      subcommands: [

        Subcommand(
          name: 'run',
          description: 'Run a cicada pipeline'
        ),
        Subcommand(
          name: 'step',
          description: 'Run a step in a cicada workflow'
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a cicada project, you can optionally specify a pipeline to create'
        ),
        Subcommand(
          name: 'new',
          description: 'Create a cicada pipeline'
        ),
        Subcommand(
          name: 'update',
          description: 'Update cicada'
        ),
        Subcommand(
          name: 'completions',
          description: 'List all available completions'
        ),
        Subcommand(
          name: 'fig-completion',
          description: 'Create fig completions'
        ),
        Subcommand(
          name: 'open',
          description: 'Open a pipeline in your editor'
        ),
        Subcommand(
          name: 'doctor',
          description: 'Check for common issues'
        ),
        Subcommand(
          name: 'debug',
          description: 'Debug commands',
          subcommands: [

            Subcommand(
              name: 'daemon-info'
            ),
            Subcommand(
              name: 'disk-usage'
            ),
            Subcommand(
              name: 'workers'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Print help'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version'
    )
  ]
);
