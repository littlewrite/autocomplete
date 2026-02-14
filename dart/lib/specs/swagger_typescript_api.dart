// AI-generated from TypeScript source: swagger-typescript-api.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec swaggerTypescriptApiSpec = FigSpec(
  name: 'swagger-typescript-api',
  description: 'Generate api via swagger scheme',
  icon: 'https://static1.smartbear.co/swagger/media/assets/swagger_fav.png',
  subcommands: [
    FigSubcommand(
      name: 'generate-templates',
      description: 'Generate ".ejs" templates needed for generate api',
      options: [
        FigOption(
          name: ['--output', '-o'],
          description: 'Output path of generated templates',
          args: [
            FigArg(
              name: 'Path',
              template: 'folders',
            ),
          ],
        ),
        FigOption(
          name: ['--modular', '-m'],
          description:
              'Generate templates needed to separate files for http client, data contracts, and routes',
        ),
        FigOption(
          name: ['--http-client'],
          description: 'Http client type',
          args: [
            FigArg(
              name: 'Http client',
              suggestions: [
                FigSuggestion(name: 'fetch'),
                FigSuggestion(name: 'axios'),
              ],
              defaultValue: 'fetch',
            ),
          ],
        ),
        FigOption(
          name: ['--clean-output', '-c'],
          description: 'Clean output folder before generate template',
          isDangerous: true,
        ),
        FigOption(
          name: ['--rewrite', '-r'],
          description: 'Rewrite content in existing templates',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--version', '-v'],
      description: 'Output the current version',
    ),
    FigOption(
      name: ['--path', '-p'],
      description: 'Path/url to swagger scheme',
      args: [
        FigArg(
          name: 'Path',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--output', '-o'],
      description: 'Output path of typescript api file (default: "./")',
      args: [
        FigArg(
          name: 'Path',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--name', '-n'],
      description: 'Name of output typescript api file (default: "Api.ts")',
      args: [
        FigArg(
          name: 'Name',
        ),
      ],
    ),
    FigOption(
      name: ['--templates', '-t'],
      description: 'Path to folder containing templates',
      args: [
        FigArg(
          name: 'Path',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--default-as-success', '-d'],
      description: 'Use "default" response status code as success response too',
    ),
    FigOption(
      name: ['--responses', '-r'],
      description: 'Generate additional information about request responses',
    ),
    FigOption(
      name: ['--union-enums'],
      description: 'Generate all "enum" types as union types (T1 | T2 | TN)',
    ),
    FigOption(
      name: ['--add-readonly'],
      description: 'Generate readonly properties',
    ),
    FigOption(
      name: ['--route-types'],
      description: 'Generate type definitions for API routes',
    ),
    FigOption(
      name: ['--no-client'],
      description: 'Do not generate an API class',
    ),
    FigOption(
      name: ['--enum-names-as-values'],
      description:
          'Use values in \'x-enumNames\' as enum values (not only as keys)',
    ),
    FigOption(
      name: ['--extract-request-params'],
      description: 'Extract request params to data contract',
    ),
    FigOption(
      name: ['--extract-request-body'],
      description: 'Extract request body type to data contract',
    ),
    FigOption(
      name: ['--extract-response-body'],
      description: 'Extract response body type to data contract',
    ),
    FigOption(
      name: ['--extract-response-error'],
      description: 'Extract response error type to data contract',
    ),
    FigOption(
      name: ['--modular'],
      description:
          'Generate separated files for http client, data contracts, and routes',
    ),
    FigOption(
      name: ['--js'],
      description: 'Generate js api module with declaration file',
    ),
    FigOption(
      name: ['--module-name-index'],
      description:
          'Determines which path index should be used for routes separation',
      args: [
        FigArg(
          name: 'Index',
        ),
      ],
    ),
    FigOption(
      name: ['--module-name-first-tag'],
      description: 'Splits routes based on the first tag',
    ),
    FigOption(
      name: ['--disableStrictSSL'],
      description: 'Disabled strict SSL',
    ),
    FigOption(
      name: ['--disableProxy'],
      description: 'Disabled proxy',
    ),
    FigOption(
      name: ['--axios'],
      description: 'Generate axios http client',
    ),
    FigOption(
      name: ['--unwrap-response-data'],
      description: 'Unwrap the data item from the response',
    ),
    FigOption(
      name: ['--disable-throw-on-error'],
      description:
          'Do not throw an error when response.ok is not true (default: false)',
    ),
    FigOption(
      name: ['--single-http-client'],
      description:
          'Ability to send HttpClient instance to Api constructor (default: false)',
    ),
    FigOption(
      name: ['--silent'],
      description: 'Output only errors to console',
      isPersistent: true,
    ),
    FigOption(
      name: ['--default-response'],
      description: 'Default type for empty response schema',
      args: [
        FigArg(
          name: 'Type',
        ),
      ],
    ),
    FigOption(
      name: ['--type-prefix'],
      description: 'Data contract name prefix',
      args: [
        FigArg(
          name: 'Prefix',
        ),
      ],
    ),
    FigOption(
      name: ['--type-suffix'],
      description: 'Data contract name suffix',
      args: [
        FigArg(
          name: 'Suffix',
        ),
      ],
    ),
    FigOption(
      name: ['--clean-output'],
      description:
          'Clean output folder before generate api. WARNING: May cause data loss (default: false)',
    ),
    FigOption(
      name: ['--api-class-name'],
      description: 'Name of the api class',
      args: [
        FigArg(
          name: 'Name',
        ),
      ],
    ),
    FigOption(
      name: ['--patch'],
      description:
          'Fix up small errors in the swagger source definition (default: false)',
    ),
    FigOption(
      name: ['--debug'],
      description:
          'Additional information about processes inside this tool (default: false)',
    ),
    FigOption(
      name: ['--another-array-type'],
      description:
          'Generate array types as Array<Type> (by default Type[]) (default: false)',
    ),
    FigOption(
      name: ['--sort-types'],
      description: 'Sort fields and types (default: false)',
    ),
    FigOption(
      name: ['--extract-enums'],
      description:
          'Extract all enums from inline interface\\type content to typescript enum construction (default: false)',
    ),
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for swagger-typescript-api',
      isPersistent: true,
    ),
  ],
);
