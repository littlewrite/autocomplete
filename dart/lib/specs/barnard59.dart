// Auto-generated from TypeScript source: barnard59.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `barnard59` CLI
final FigSpec barnard59Spec = FigSpec(
  name: 'barnard59',
  subcommands: [
    Subcommand(
      name: 'run',
      options: [
        Option(
          name: '--output',
          description: 'Output file',
          args: [
            Arg(
            name: 'filename',
            isOptional: true,
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--pipeline',
          description: 'IRI of the pipeline description',
          args: [
            Arg(
            name: 'iri'
          )
          ]
        ),
        Option(
          name: '--variable',
          description: 'Variable key/value pairs',
          args: [
            Arg(
            name: 'name=valu'
          )
          ]
        ),
        Option(
          name: '--variable-all',
          description: 'Import all environment variables'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Enable diagnostic console output'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Disable all logging'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'filenam'
      )
      ]
    ),
    Subcommand(
      name: 'cube',
      subcommands: [
        Subcommand(
          name: 'fetch-metadata',
          description: 'Retrieves cube and its constraint shape from SPARQL endpoint',
          options: [
            Option(
              name: '--endpoint',
              description: 'SPARQL endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--cube',
              description: 'Cube URI',
              args: [
                Arg(
                name: 'cub'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'check-metadata',
          description: 'Validate input cube and its constraint against profile shapes',
          options: [
            Option(
              name: '--profile',
              description: 'Cube constraint profile URL',
              args: [
                Arg(
                name: 'profile',
                defaultValue: 'https://cube.link/latest/shape/standalone-constraint-constraint'
              )
              ]
            ),
            Option(
              name: '--profileFormat',
              description: 'Override the profile format',
              args: [
                Arg(
                name: 'profileForma'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'fetch-observations',
          description: 'Retrieves cube observations from SPARQL endpoint',
          options: [
            Option(
              name: '--endpoint',
              description: 'SPARQL endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--cube',
              description: 'Cube URI',
              args: [
                Arg(
                name: 'cub'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'check-observations',
          description: 'Validate input observations against cube constraint',
          options: [
            Option(
              name: '--constraint',
              description: 'Cube constraint file',
              args: [
                Arg(
                name: 'constrain'
              )
              ]
            ),
            Option(
              name: '--batchSize',
              description: 'Batch size',
              args: [
                Arg(
                name: 'batchSize',
                defaultValue: '5'
              )
              ]
            ),
            Option(
              name: '--maxViolations',
              description: 'Max number of violations',
              args: [
                Arg(
                name: 'maxViolations',
                defaultValue: '50'
              )
              ]
            ),
            Option(
              name: '--sortChunkSize',
              description: 'Sort chunk size',
              args: [
                Arg(
                name: 'sortChunkSize',
                defaultValue: '10000'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'fetch-constraint',
          description: 'Retrieves cube constraint from SPARQL endpoint',
          options: [
            Option(
              name: '--endpoint',
              description: 'SPARQL endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--cube',
              description: 'Cube URI',
              args: [
                Arg(
                name: 'cub'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'fetch-cube',
          description: 'Retrieves cube with observations from SPARQL endpoint',
          options: [
            Option(
              name: '--endpoint',
              description: 'SPARQL endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--cube',
              description: 'Cube URI',
              args: [
                Arg(
                name: 'cub'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
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
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [
        Option(
          name: ['-V', '--version'],
          description: 'Output the version number'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'graph-store',
      subcommands: [
        Subcommand(
          name: 'put',
          description: 'Upload RDF documents using SPARQL Graph Store Protocol',
          options: [
            Option(
              name: '--source',
              description: 'Glob of RDF documents to upload',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--graph',
              args: [
                Arg(
                name: 'grap'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--user',
              args: [
                Arg(
                name: 'use'
              )
              ]
            ),
            Option(
              name: '--password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
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
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [
        Option(
          name: ['-V', '--version'],
          description: 'Output the version number'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'shacl',
      subcommands: [
        Subcommand(
          name: 'validate',
          description: 'Validates the RDF in standard input against a SHACL document',
          options: [
            Option(
              name: '--shapes',
              description: 'URL or path of the shapes graph',
              args: [
                Arg(
                name: 'shape'
              )
              ]
            ),
            Option(
              name: '--shapesMediaType',
              description: 'Override the shapes graph format',
              args: [
                Arg(
                name: 'shapesMediaTyp'
              )
              ]
            ),
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ]
        ),
        Subcommand(
          name: 'report-summary',
          description: 'Human-readable summary of SHACL validation report',
          options: [
            Option(
              name: '--variable',
              description: 'Variable key/value pairs',
              args: [
                Arg(
                name: 'name=valu'
              )
              ]
            ),
            Option(
              name: '--variable-all',
              description: 'Import all environment variables'
            ),
            Option(
              name: ['-v', '--verbose'],
              description: 'Enable diagnostic console output'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
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
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [
        Option(
          name: ['-V', '--version'],
          description: 'Output the version number'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
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
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--variable',
      description: 'Variable key/value pairs',
      args: [
        Arg(
        name: 'name=valu'
      )
      ]
    ),
    Option(
      name: '--variable-all',
      description: 'Import all environment variables'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Enable diagnostic console output'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Disable all logging'
    ),
    Option(
      name: '--enable-buffer-monitor',
      description: 'Enable histogram of buffer usage'
    ),
    Option(
      name: '--otel-debug',
      description: 'Enable OpenTelemetry console diagnostic output',
      args: [
        Arg(
        name: 'level',
        suggestions: [
          FigSuggestion(name: 'NONE'),
          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'WARN'),
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'DEBUG'),
          FigSuggestion(name: 'VERBOSE'),
          FigSuggestion(name: 'ALL')
        ],
        defaultValue: 'ERROR'
      )
      ]
    ),
    Option(
      name: '--otel-metrics-exporter',
      description: 'OpenTelemetry Metrics exporter to use',
      args: [
        Arg(
        name: 'exporter',
        suggestions: [
          FigSuggestion(name: 'otlp'),
          FigSuggestion(name: 'none')
        ],
        defaultValue: 'none'
      )
      ]
    ),
    Option(
      name: '--otel-metrics-interval',
      description: 'Export Metrics interval',
      args: [
        Arg(
        name: 'milliseconds',
        defaultValue: '1000'
      )
      ]
    ),
    Option(
      name: '--otel-traces-exporter',
      description: 'OpenTelemetry Traces exporter to use',
      args: [
        Arg(
        name: 'exporter',
        suggestions: [
          FigSuggestion(name: 'otlp'),
          FigSuggestion(name: 'none')
        ],
        defaultValue: 'none'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
