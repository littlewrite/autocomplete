// Auto-generated from TypeScript source: command-change.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `command-change` CLI
final FigSpec commandChangeSpec = FigSpec(
  name: 'command-change',
  description: 'Commands for CLI modules metadata management',
  subcommands: [

    Subcommand(
      name: 'meta-diff',
      description: 'Diff command meta between provided meta files',
      options: [

        Option(
          name: '--base-meta-file',
          description: 'Command meta json file',
          args: [
            Arg(
            name: 'base-meta-fil'
          )
          ]
        ),
        Option(
          name: '--diff-meta-file',
          description: 'Command meta json file to diff',
          args: [
            Arg(
            name: 'diff-meta-fil'
          )
          ]
        ),
        Option(
          name: '--only-break',
          description: 'Whether include non breaking changes'
        ),
        Option(
          name: '--output-file',
          description: 'Command meta diff json file path to store',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: '--output-type',
          description: 'Format to print diff and suggest message',
          args: [
            Arg(
            name: 'output-type',
            suggestions: [

              FigSuggestion(name: 'dict'),
              FigSuggestion(name: 'text'),
              FigSuggestion(name: 'tree')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version-diff',
      description: 'Diff command meta data between different cli versions',
      options: [

        Option(
          name: '--base-version',
          description: 'Azure cli version as base',
          args: [
            Arg(
            name: 'base-versio'
          )
          ]
        ),
        Option(
          name: '--diff-version',
          description: 'Azure cli version to diff',
          args: [
            Arg(
            name: 'diff-versio'
          )
          ]
        ),
        Option(
          name: '--only-break',
          description: 'Whether include non breaking changes'
        ),
        Option(
          name: '--output-type',
          description: 'Command meta diff format to store',
          args: [
            Arg(
            name: 'output-typ'
          )
          ]
        ),
        Option(
          name: '--target-module',
          description: 'Module chosen to diff between different cli versions',
          args: [
            Arg(
            name: 'target-modul'
          )
          ]
        ),
        Option(
          name: '--use-cache',
          description: 'Whether use cached metadata files'
        ),
        Option(
          name: '--version-diff-file',
          description: 'Command meta version diff file path to store',
          args: [
            Arg(
            name: 'version-diff-fil'
          )
          ]
        )
      ]
    )
  ]
);
