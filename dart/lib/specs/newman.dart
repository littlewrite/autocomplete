// Auto-generated from TypeScript source: newman.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec newmanSpec = FigSpec(
  name: 'newman',
  description: 'Newman is a command-line collection runner for Postman',
  subcommands: [
    FigSubcommand(
      name: ['run'],
      description: 'Initiate a Postman Collection run from a given URL or path',
      options: [
        FigOption(
          name: ['-e', '--environment'],
          description: 'Specify a URL or path to a Postman Environment',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['-g', '--globals'],
          description:
              'Specify a URL or path to a file containing Postman Globals',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['-r', '--reporters'],
          description: 'Specify the reporters to use for this run',
          args: [
            FigArg(
              name: 'reporters',
              isOptional: true,
              defaultValue: 'cli',
            ),
          ],
        ),
        FigOption(
          name: ['-n', '--iteration-count'],
          description: 'Define the number of iterations to run',
          args: [
            FigArg(
              name: 'n',
            ),
          ],
        ),
        FigOption(
          name: ['-d', '--iteration-data'],
          description:
              'Specify a data file to use for iterations (either JSON or CSV)',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
              suggestions: ['JSON', 'CSV'],
            ),
          ],
        ),
        FigOption(
          name: ['--folder'],
          description:
              'Specify the folder to run from a collection. Can be specified multiple times to run multiple folders',
          isRepeatable: true,
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--global-var'],
          description:
              'Allows the specification of global variables via the command line, in a key=value format',
          args: [
            FigArg(
              name: 'value',
            ),
          ],
        ),
        FigOption(
          name: ['--env-var'],
          description:
              'Allows the specification of environment variables via the command line, in a key=value format',
          args: [
            FigArg(
              name: 'value',
            ),
          ],
        ),
        FigOption(
          name: ['--export-environment'],
          description:
              'Exports the final environment to a file after completing the run',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--export-globals'],
          description:
              'Exports the final globals to a file after completing the run',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--export-collection'],
          description:
              'Exports the executed collection to a file after completing the run',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--postman-api-key'],
          description:
              'API Key used to load the resources from the Postman API',
          args: [
            FigArg(
              name: 'apiKey',
            ),
          ],
        ),
        FigOption(
          name: ['--bail'],
          description:
              'Specify whether or not to gracefully stop a collection run on encountering an error and whether to end the run with an error based on the optional modifier',
          args: [
            FigArg(
              name: 'modifiers',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--ignore-redirects'],
          description:
              'Prevents Newman from automatically following 3XX redirect responses',
        ),
        FigOption(
          name: ['-x', '--suppress-exit-code'],
          description:
              'Specify whether or not to override the default exit code for the current run',
        ),
        FigOption(
          name: ['--silent'],
          description: 'Prevents Newman from showing output to CLI',
        ),
        FigOption(
          name: ['--disable-unicode'],
          description:
              'Forces Unicode compliant symbols to be replaced by their plain text equivalents',
        ),
        FigOption(
          name: ['--color'],
          description: 'Enable/Disable colored output (auto|on|off)',
          args: [
            FigArg(
              name: 'value',
              defaultValue: 'auto',
              suggestions: ['auto', 'on', 'off'],
            ),
          ],
        ),
        FigOption(
          name: ['--delay-request'],
          description:
              'Specify the extent of delay between requests (milliseconds)',
          args: [
            FigArg(
              name: 'n',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--timeout'],
          description: 'Specify a timeout for collection run (milliseconds)',
          args: [
            FigArg(
              name: 'n',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--timeout-request'],
          description: 'Specify a timeout for requests (milliseconds)',
          args: [
            FigArg(
              name: 'n',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--timeout-script'],
          description: 'Specify a timeout for scripts (milliseconds)',
          args: [
            FigArg(
              name: 'n',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--working-dir'],
          description: 'Specify the path to the working directory',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--no-insecure-file-read'],
          description:
              'Prevents reading the files situated outside of the working directory',
        ),
        FigOption(
          name: ['-k', '--insecure'],
          description: 'Disables SSL validations',
        ),
        FigOption(
          name: ['--ssl-client-cert-list'],
          description:
              'Specify the path to a client certificates configurations (JSON)',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--ssl-client-cert'],
          description: 'Specify the path to a client certificate (PEM)',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--ssl-client-key'],
          description: 'Specify the path to a client certificate private key',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--ssl-client-passphrase'],
          description:
              'Specify the client certificate passphrase (for protected key)',
          args: [
            FigArg(
              name: 'passphrase',
            ),
          ],
        ),
        FigOption(
          name: ['--ssl-extra-ca-certs'],
          description: 'Specify additionally trusted CA certificates (PEM)',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--cookie-jar'],
          description:
              'Specify the path to a custom cookie jar (serialized tough-cookie JSON)',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--export-cookie-jar'],
          description:
              'Exports the cookie jar to a file after completing the run',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--verbose'],
          description:
              'Show detailed information of collection run and each request sent',
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49,
        ),
      ],
      args: [
        FigArg(
          name: 'collection',
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: ['help'],
      description: 'Display help for command',
      priority: 49,
      args: [
        FigArg(
          name: 'command',
          template: 'help',
          isOptional: true,
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-v', '--version'],
      description: 'Output the version number',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49,
    ),
  ],
);
