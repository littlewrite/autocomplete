// Auto-generated from TypeScript source: swagger-typescript-api.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `swagger-typescript-api` CLI
final FigSpec swaggerTypescriptApiSpec = FigSpec(
  name: 'swagger-typescript-api',
  description: 'Generate api via swagger scheme',
  icon: 'https://static1.smartbear.co/swagger/media/assets/swagger_fav.png',
  subcommands: [

    Subcommand(
      name: 'generate-templates',
      description: 'Generate ".ejs" templates needed for generate api',
      options: [

        Option(
          name: ['--output', '-o'],
          description: 'Output path of generated templates',
          args: [
            Arg(
            name: 'Path',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['--modular', '-m'],
          description: 'Generate templates needed to separate files for http client, data contracts, and routes'
        ),
        Option(
          name: '--http-client',
          description: 'Http client type',
          args: [
            Arg(
            name: 'Http client',
            suggestions: [

              FigSuggestion(name: 'fetch'),
              FigSuggestion(name: 'axios')
            ],
            defaultValue: 'fetch'
          )
          ]
        ),
        Option(
          name: ['--clean-output', '-c'],
          description: 'Clean output folder before generate template',
          isDangerous: true
        ),
        Option(
          name: ['--rewrite', '-r'],
          description: 'Rewrite content in existing templates'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--version', '-v'],
      description: 'Output the current version'
    ),
    Option(
      name: ['--path', '-p'],
      description: 'Path/url to swagger scheme',
      args: [
        Arg(
        name: 'Path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--output', '-o'],
      description: 'Output path of typescript api file (default: "./")',
      args: [
        Arg(
        name: 'Path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['--name', '-n'],
      description: 'Name of output typescript api file (default: "Api.ts")',
      args: [
        Arg(
        name: 'Name'
      )
      ]
    ),
    Option(
      name: ['--templates', '-t'],
      description: 'Path to folder containing templates',
      args: [
        Arg(
        name: 'Path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['--default-as-success', '-d'],
      description: 'Use "default" response status code as success response too'
    ),
    Option(
      name: ['--responses', '-r'],
      description: 'Generate additional information about request responses'
    ),
    Option(
      name: '--union-enums',
      description: 'Generate all "enum" types as union types (T1 | T2 | TN)'
    ),
    Option(
      name: '--add-readonly',
      description: 'Generate readonly properties'
    ),
    Option(
      name: '--route-types',
      description: 'Generate type definitions for API routes'
    ),
    Option(
      name: '--no-client',
      description: 'Do not generate an API class'
    ),
    Option(
      name: '--enum-names-as-values',
      description: 'Use values in \'x-enumNames\' as enum values (not only as keys)'
    ),
    Option(
      name: '--extract-request-params',
      description: 'Extract request params to data contract'
    ),
    Option(
      name: '--extract-request-body',
      description: 'Extract request body type to data contract'
    ),
    Option(
      name: '--extract-response-body',
      description: 'Extract response body type to data contract'
    ),
    Option(
      name: '--extract-response-error',
      description: 'Extract response error type to data contract'
    ),
    Option(
      name: '--modular',
      description: 'Generate separated files for http client, data contracts, and routes'
    ),
    Option(
      name: '--js',
      description: 'Generate js api module with declaration file'
    ),
    Option(
      name: '--module-name-index',
      description: 'Determines which path index should be used for routes separation',
      args: [
        Arg(
        name: 'Index'
      )
      ]
    ),
    Option(
      name: '--module-name-first-tag',
      description: 'Splits routes based on the first tag'
    ),
    Option(
      name: '--disableStrictSSL',
      description: 'Disabled strict SSL'
    ),
    Option(
      name: '--disableProxy',
      description: 'Disabled proxy'
    ),
    Option(
      name: '--axios',
      description: 'Generate axios http client'
    ),
    Option(
      name: '--unwrap-response-data',
      description: 'Unwrap the data item from the response'
    ),
    Option(
      name: '--disable-throw-on-error',
      description: 'Do not throw an error when response.ok is not true (default: false)'
    ),
    Option(
      name: '--single-http-client',
      description: 'Ability to send HttpClient instance to Api constructor (default: false)'
    ),
    Option(
      name: '--silent',
      description: 'Output only errors to console',
      isPersistent: true
    ),
    Option(
      name: '--default-response',
      description: 'Default type for empty response schema',
      args: [
        Arg(
        name: 'Type'
      )
      ]
    ),
    Option(
      name: '--type-prefix',
      description: 'Data contract name prefix',
      args: [
        Arg(
        name: 'Prefix'
      )
      ]
    ),
    Option(
      name: '--type-suffix',
      description: 'Data contract name suffix',
      args: [
        Arg(
        name: 'Suffix'
      )
      ]
    ),
    Option(
      name: '--clean-output',
      description: 'Clean output folder before generate api. WARNING: May cause data loss (default: false)'
    ),
    Option(
      name: '--api-class-name',
      description: 'Name of the api class',
      args: [
        Arg(
        name: 'Name'
      )
      ]
    ),
    Option(
      name: '--patch',
      description: 'Fix up small errors in the swagger source definition (default: false)'
    ),
    Option(
      name: '--debug',
      description: 'Additional information about processes inside this tool (default: false)'
    ),
    Option(
      name: '--another-array-type',
      description: 'Generate array types as Array<Type> (by default Type[]) (default: false)'
    ),
    Option(
      name: '--sort-types',
      description: 'Sort fields and types (default: false)'
    ),
    Option(
      name: '--extract-enums',
      description: 'Extract all enums from inline interface\type content to typescript enum construction (default: false)'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for swagger-typescript-api',
      isPersistent: true
    )
  ]
);
