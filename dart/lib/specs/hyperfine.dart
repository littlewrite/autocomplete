// Auto-generated from TypeScript source: hyperfine.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hyperfine` CLI
final FigSpec hyperfineSpec = FigSpec(
  name: 'hyperfine',
  description: 'A command-line benchmarking tool',
  options: [

    Option(
      name: ['--warmup', '-w'],
      description: 'Perform warmupruns (number) before the actual benchmarking starts',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: ['--min-runs', '-m'],
      description: 'Perform at least NUM runs for each command',
      args: [
        Arg(
        name: 'NUM',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['--max-runs', '-M'],
      description: 'Perform at most NUM runs for each command. Default: no limit',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: ['--runs', '-r'],
      description: 'Perform exactly NUM runs for each command',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: ['--setup', '-s'],
      description: 'Execute cmd once before each set of timing runs',
      args: [
        Arg(
        name: 'CMD'
      )
      ],
      isRepeatable: false
    ),
    Option(
      name: ['--prepare', '-p'],
      description: 'Execute cmd before each timing run. This is useful for clearing disk caches, for example',
      args: [
        Arg(
        name: 'CMD ...'
      )
      ]
    ),
    Option(
      name: ['--cleanup', '-c'],
      description: 'Execute cmd after the completion of all benchmarking runs for each individual command to be benchmarked',
      args: [
        Arg(
        name: 'CMD'
      )
      ]
    ),
    Option(
      name: ['--parameter-scan', '-P'],
      description: 'Perform benchmark runs for each value in the range min..max',
      args: [

        Arg(
          name: 'VAR'
        ),
        Arg(
          name: 'MIN'
        ),
        Arg(
          name: 'MAX'
        )
      ]
    ),
    Option(
      name: ['--parameter-step-size', '-D'],
      description: 'This argument requires --parameter-scan to be specified as well. Traverse the range min..max in steps of delta',
      args: [
        Arg(
        name: 'delta'
      )
      ],
      dependsOn: ['--parameter-scan', '-P']
    ),
    Option(
      name: ['--parameter-list', '-L'],
      description: 'Perform benchmark runs for each value in the comma-separated list of values',
      args: [

        Arg(
          name: 'VAR'
        ),
        Arg(
          name: 'VALS'
        )
      ]
    ),
    Option(
      name: '--style',
      description: 'Set output style type',
      args: [
        Arg(
        name: 'STYLE',
        suggestions: [

          FigSuggestion(
            name: 'basic',
            description: 'Disable output coloring and interactive elements'
          ),
          FigSuggestion(
            name: 'full',
            description: 'Enable all effects even if no interactive terminal was detected'
          ),
          FigSuggestion(
            name: 'nocolor',
            description: 'Keep the interactive output without any colors'
          ),
          FigSuggestion(
            name: 'color',
            description: 'Keep the colors without any interactive output'
          ),
          FigSuggestion(
            name: 'none',
            description: 'Disable all the output of the tool'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['--shell', '-S'],
      description: 'Set the shell to use for executing benchmarked commands',
      args: [
        Arg(
        name: 'SHELL',
        suggestions: [

          FigSuggestion(
            name: 'bash',
            description: 'Use bash as the shell'
          ),
          FigSuggestion(
            name: 'zsh',
            description: 'Use zsh as the shell'
          ),
          FigSuggestion(
            name: 'sh',
            description: 'Use sh as the shell'
          ),
          FigSuggestion(
            name: 'fish',
            description: 'Use fish as the shell'
          ),
          FigSuggestion(
            name: 'pwsh',
            description: 'Use pwsh as the shell'
          ),
          FigSuggestion(
            name: 'powershell',
            description: 'Use powershell as the shell'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['--ignore-failure', '-i'],
      description: 'Ignore non-zero exit codes of the benchmarked commands'
    ),
    Option(
      name: ['--time-unit', '-u'],
      description: 'Set the time unit to use for the benchmark results',
      args: [
        Arg(
        name: 'UNIT',
        suggestions: [

          FigSuggestion(name: 'millisecond'),
          FigSuggestion(name: 'second')
        ],
        defaultValue: 'second'
      )
      ]
    ),
    Option(
      name: '--export-asciidoc',
      description: 'Export the timing summary statistics as an AsciiDoc table to the given file',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--export-csv',
      description: 'Export the timing summary statistics as CSV to the given file',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--export-json',
      description: 'Export the timing summary statistics and timings of individual runs as JSON to the given file',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--export-markdown',
      description: 'Export the timing summary statistics as a Markdown table to the given file',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--show-output',
      description: 'Print the stdout and stderr of the benchmark instead of suppressing it'
    ),
    Option(
      name: '--command-name',
      description: 'Identify a command with the given name',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Prints help message'
    ),
    Option(
      name: '--version',
      description: 'Shows version information'
    )
  ],
  args: [
    Arg(
    name: 'CMD',
    description: 'Command to benchmark'
  )
  ]
);
