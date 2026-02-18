// Auto-generated from TypeScript source: bicep.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bicep` CLI
final FigSpec bicepSpec = FigSpec(
  name: 'bicep',
  description: 'Bicep CLI command group.\n\n\t\tBicep CLI command group. There are two configurations that can be set for the command group, including bicep.check_version and bicep.use_binary_from_path:\n[1] az config set bicep.check_version=True/False\nTurn on/off Bicep CLI version check when executing az bicep commands.\n[2] az config set bicep.use_binary_from_path=True/False/if_found_in_ci\nSpecify whether to use Bicep CLI from PATH or not. The default value is if_found_in_ci',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Build a Bicep file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the Bicep file to build in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--no-restore',
          description: 'When set, builds the bicep file without restoring external modules',
          args: [
            Arg(
            name: 'no-restor'
          )
          ]
        ),
        Option(
          name: '--outdir',
          description: 'When set, saves the output at the specified directory',
          args: [
            Arg(
            name: 'outdi'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'When set, saves the output as the specified file path',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'When set, prints all output to stdout instead of corresponding files',
          args: [
            Arg(
            name: 'stdou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'build-params',
      description: 'Build .bicepparam file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the .bicepparam file to build in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--no-restore',
          description: 'When set, builds the .bicepparam file without restoring external modules',
          args: [
            Arg(
            name: 'no-restor'
          )
          ]
        ),
        Option(
          name: '--outdir',
          description: 'When set, saves the output at the specified directory',
          args: [
            Arg(
            name: 'outdi'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'When set, saves the output as the specified file path',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'When set, prints all output to stdout instead of corresponding files',
          args: [
            Arg(
            name: 'stdou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'decompile',
      description: 'Attempt to decompile an ARM template file to a Bicep file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the ARM template to decompile in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Allows overwriting the output file if it exists',
          args: [
            Arg(
            name: 'forc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'decompile-params',
      description: 'Decompile a parameters .json file to .bicepparam',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the parameters file to build in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--bicep-file',
          description: 'Path to the bicep template file (relative to the .bicepparam file) that will be referenced in the using declaration',
          args: [
            Arg(
            name: 'bicep-fil'
          )
          ]
        ),
        Option(
          name: '--outdir',
          description: 'When set, saves the output at the specified directory',
          args: [
            Arg(
            name: 'outdi'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'When set, saves the output as the specified file path',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'When set, prints all output to stdout instead of corresponding files',
          args: [
            Arg(
            name: 'stdou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'format',
      description: 'Format a Bicep file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the Bicep file to format in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--indent-kind',
          description: 'Set indentation kind. Valid values are ( Space | Tab )',
          args: [
            Arg(
            name: 'indent-kin'
          )
          ]
        ),
        Option(
          name: '--indent-size',
          description: 'Number of spaces to indent with (Only valid with --indent-kind set to Space)',
          args: [
            Arg(
            name: 'indent-siz'
          )
          ]
        ),
        Option(
          name: '--insert-final-newline',
          description: 'Insert a final newline',
          args: [
            Arg(
            name: 'insert-final-newlin'
          )
          ]
        ),
        Option(
          name: '--newline',
          description: 'Set newline char. Valid values are ( Auto | LF | CRLF | CR )',
          args: [
            Arg(
            name: 'newlin'
          )
          ]
        ),
        Option(
          name: '--outdir',
          description: 'When set, saves the output at the specified directory',
          args: [
            Arg(
            name: 'outdi'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'When set, saves the output as the specified file path',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'When set, prints all output to stdout instead of corresponding files',
          args: [
            Arg(
            name: 'stdou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'generate-params',
      description: 'Generate parameters file for a Bicep file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the Bicep file to generate the parameters file from in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--include-params',
          description: 'Set include params. Valid values are ( all | required-only )',
          args: [
            Arg(
            name: 'include-param'
          )
          ]
        ),
        Option(
          name: '--no-restore',
          description: 'When set, generates the parameters file without restoring external modules',
          args: [
            Arg(
            name: 'no-restor'
          )
          ]
        ),
        Option(
          name: '--outdir',
          description: 'When set, saves the output at the specified directory',
          args: [
            Arg(
            name: 'outdi'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'When set, saves the output as the specified file path',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--output-format',
          description: 'Set output format. Valid values are ( json | bicepparam )',
          args: [
            Arg(
            name: 'output-forma'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'When set, prints all output to stdout instead of corresponding files',
          args: [
            Arg(
            name: 'stdou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install Bicep CLI',
      options: [

        Option(
          name: ['--target-platform', '-t'],
          description: 'The platform the Bicep CLI will be running on. Set this to skip automatic platform detection if it does not work properly',
          args: [
            Arg(
            name: 'target-platform',
            suggestions: [

              FigSuggestion(name: 'linux-arm64'),
              FigSuggestion(name: 'linux-musl-x64'),
              FigSuggestion(name: 'linux-x64'),
              FigSuggestion(name: 'osx-arm64'),
              FigSuggestion(name: 'osx-x64'),
              FigSuggestion(name: 'win-x64')
            ]
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The version of Bicep CLI to be installed. Default to the latest if not specified',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-versions',
      description: 'List out all available versions of Bicep CLI'
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish a bicep file to a remote module registry',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the Bicep module file to publish in the file system',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--target', '-t'],
          description: 'The target location where the Bicep module will be published',
          args: [
            Arg(
            name: 'targe'
          )
          ]
        ),
        Option(
          name: ['--documentationUri', '-d'],
          description: 'The documentation uri of the Bicep module',
          args: [
            Arg(
            name: 'documentationUr'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Allow overwriting an existing Bicep module version',
          args: [
            Arg(
            name: 'forc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Restore external modules for a bicep file',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'The path to the Bicep file to restore external modules for',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Allows overwriting the cached external modules',
          args: [
            Arg(
            name: 'forc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall Bicep CLI'
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade Bicep CLI to the latest version',
      options: [

        Option(
          name: ['--target-platform', '-t'],
          description: 'The platform the Bicep CLI will be running on. Set this to skip automatic platform detection if it does not work properly',
          args: [
            Arg(
            name: 'target-platform',
            suggestions: [

              FigSuggestion(name: 'linux-arm64'),
              FigSuggestion(name: 'linux-musl-x64'),
              FigSuggestion(name: 'linux-x64'),
              FigSuggestion(name: 'osx-arm64'),
              FigSuggestion(name: 'osx-x64'),
              FigSuggestion(name: 'win-x64')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Show the installed version of Bicep CLI'
    )
  ]
);
