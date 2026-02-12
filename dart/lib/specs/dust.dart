// Auto-generated from TypeScript source: dust.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dust` CLI
final FigSpec dustSpec = FigSpec(
  name: 'dust',
  description: 'Like du but more intuitive',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for dust'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version information'
    ),
    Option(
      name: ['--no-percent-bars', '-b'],
      description: 'No percent bars or percentages will be displayed'
    ),
    Option(
      name: ['--no-colors', '-c'],
      description: 'No colors will be printed (Useful for commands like: watch)'
    ),
    Option(
      name: ['--depth', '-d'],
      description: 'Depth to show',
      args: [
        Arg(
        name: 'depth'
      )
      ]
    ),
    Option(
      name: ['--filter', '-e'],
      description: 'Only include filepaths matching this regex. For png files type: -e "\\.png\$"',
      args: [
        Arg(
        name: 'filter'
      )
      ]
    ),
    Option(
      name: ['--filecount', '-f'],
      description: 'Directory \'size\' is number of child files/dirs not disk size'
    ),
    Option(
      name: ['--si', '-H'],
      description: 'Print sizes in powers of 1000 (e.g., 1.1G)'
    ),
    Option(
      name: ['--ignore_hidden', '-i'],
      description: 'Do not display hidden files'
    ),
    Option(
      name: ['--number-of-lines', '-n'],
      description: 'Number of lines of output to show. (Default is terminal_height - 10)',
      args: [
        Arg(
        name: 'number_of_lines'
      )
      ]
    ),
    Option(
      name: ['--full-paths', '-p'],
      description: 'Subdirectories will not have their path shortened'
    ),
    Option(
      name: ['--reverse', '-r'],
      description: 'Print tree upside down (biggest highest)'
    ),
    Option(
      name: ['--apparent-size', '-s'],
      description: 'Use file length instead of blocks'
    ),
    Option(
      name: '--skip-total',
      description: 'No total row will be displayed'
    ),
    Option(
      name: ['--file_types', '-t'],
      description: 'Show only these file types'
    ),
    Option(
      name: ['--invert-filter', '-v'],
      description: 'Exclude filepaths matching this regex. To ignore png files type: -v "\\.png\$"',
      args: [
        Arg(
        name: 'invert_filter'
      )
      ]
    ),
    Option(
      name: ['--terminal_width', '-w'],
      description: 'Specify width of output overriding the auto detection of terminal width',
      args: [
        Arg(
        name: 'width'
      )
      ]
    ),
    Option(
      name: ['--limit-filesystem', '-x'],
      description: 'Only count the files and directories on the same filesystem as the supplied directory'
    ),
    Option(
      name: ['--ignore-directory', '-X'],
      description: 'Exclude any file or directory with this name',
      args: [
        Arg(
        name: 'ignore_directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['--min-size', '-z'],
      description: 'Minimum size file to include in output',
      args: [
        Arg(
        name: 'min_size'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'inputs',
    template: ['filepaths', 'folders']
  )
  ]
);
