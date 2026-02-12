// Auto-generated from TypeScript source: fzf.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fzf` CLI
final FigSpec fzfSpec = FigSpec(
  name: 'fzf',
  description: 'A general-purpose command-line fuzzy finder',
  options: [
    Option(
      name: ['-x', '--extended'],
      description: 'Enables extended-search mode',
      exclusiveOn: ['+x', '--no-extended']
    ),
    Option(
      name: ['+x', '--no-extended'],
      description: 'Disables extended-search mode',
      exclusiveOn: ['-x', '--extended']
    ),
    Option(
      name: ['-e', '--exact'],
      description: 'Enables Exact-match'
    ),
    Option(
      name: '--algo',
      description: 'Fuzzy matching algorithm',
      args: [
        Arg(
        name: 'type',
        defaultValue: 'v2',
        suggestions: [
          FigSuggestion(name: 'v1'),
          FigSuggestion(name: 'v2')
        ]
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Case-insensitive match (default: smart-case match)',
      exclusiveOn: ['+i']
    ),
    Option(
      name: '+i',
      description: 'Case-sensitive match (default: smart-case match)',
      exclusiveOn: ['-i']
    ),
    Option(
      name: '--literal',
      description: 'Do not normalize latin script letters before matching'
    ),
    Option(
      name: ['-n', '--nth'],
      description: 'Comma-separated list of field index expressions for limiting search scope',
      args: [
        Arg(
        name: 'index expressions',
        description: 'Non-zero integer or range expression ([BEGIN]..[END])'
      )
      ]
    ),
    Option(
      name: '--with-nth',
      description: 'Transform the presentation of each line using field index expressions',
      args: [
        Arg(
        name: 'index expressions',
        description: 'Non-zero integer or range expression ([BEGIN]..[END])'
      )
      ]
    ),
    Option(
      name: ['-d', '--delimiter'],
      description: 'Field delimiter regex (default: AWK-style)',
      args: [
        Arg(
        name: 'STR',
        defaultValue: 'AWK-style'
      )
      ]
    ),
    Option(
      name: ['+s', '--no-sort'],
      description: 'Do not sort the result'
    ),
    Option(
      name: '--tac',
      description: 'Reverse the order of the input'
    ),
    Option(
      name: '--disabled',
      description: 'Do not perform search'
    ),
    Option(
      name: '--tiebreak',
      description: 'Comma-separated list of sort criteria to apply when the scores are tied',
      args: [
        Arg(
        name: 'criteria',
        defaultValue: 'length',
        suggestions: [
          FigSuggestion(name: 'length'),
          FigSuggestion(name: 'begin'),
          FigSuggestion(name: 'end'),
          FigSuggestion(name: 'index')
        ]
      )
      ]
    ),
    Option(
      name: ['-m', '--multi'],
      description: 'Enable multi-select with tab/shift-tab',
      args: [
        Arg(
        name: 'MAX',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--no-mouse',
      description: 'Disable mouse'
    ),
    Option(
      name: '--bind',
      description: 'Custom key bindings. Refer to the man page',
      args: [
        Arg(
        name: 'keybinds'
      )
      ]
    ),
    Option(
      name: '--cycle',
      description: 'Enable cyclic scroll'
    ),
    Option(
      name: '--keep-right',
      description: 'Keep the right end of the line visible on overflow'
    ),
    Option(
      name: '--no-hscroll',
      description: 'Disable horizontal scroll'
    ),
    Option(
      name: '--hscroll-off',
      description: 'Number of screen columns to keep to the right of the highlighted substring',
      args: [
        Arg(
        name: 'columns',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: '--filepath-word',
      description: 'Make word-wise movements respect path separators'
    ),
    Option(
      name: '--jump-labels',
      description: 'Label characters for jump and jump-accept',
      args: [
        Arg(
        name: 'characters'
      )
      ]
    ),
    Option(
      name: '--height',
      description: 'Display fzf window below the cursor with the given height instead of using fullscreen',
      args: [
        Arg(
        name: 'height',
        description: 'Height[%]'
      )
      ]
    ),
    Option(
      name: '--min-height',
      description: 'Minimum height when --height is given in percent',
      args: [
        Arg(
        name: 'height',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: '--layout',
      description: 'Choose layout',
      args: [
        Arg(
        name: 'layout',
        defaultValue: 'default',
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'reverse'),
          FigSuggestion(name: 'reverse-list')
        ]
      )
      ]
    ),
    Option(
      name: '--border',
      description: 'Draw border around the finder',
      args: [
        Arg(
        name: 'style',
        isOptional: true,
        defaultValue: 'rounded',
        suggestions: [
          FigSuggestion(name: 'rounded'),
          FigSuggestion(name: 'sharp'),
          FigSuggestion(name: 'horizontal'),
          FigSuggestion(name: 'vertical'),
          FigSuggestion(name: 'top'),
          FigSuggestion(name: 'bottom'),
          FigSuggestion(name: 'left'),
          FigSuggestion(name: 'right'),
          FigSuggestion(name: 'none')
        ]
      )
      ]
    ),
    Option(
      name: '--margin',
      description: 'Screen margin (TRBL | TB,RL | T,RL,B | T,R,B,L)',
      args: [
        Arg(
        name: 'margin',
        description: 'Number'
      )
      ]
    ),
    Option(
      name: '--padding',
      description: 'Padding inside border (TRBL | TB,RL | T,RL,B | T,R,B,L)',
      args: [
        Arg(
        name: 'padding',
        description: 'Number'
      )
      ]
    ),
    Option(
      name: '--info',
      description: 'Finder info style',
      args: [
        Arg(
        name: 'style',
        defaultValue: 'default',
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'inline'),
          FigSuggestion(name: 'hidden')
        ]
      )
      ]
    ),
    Option(
      name: '--prompt',
      description: 'Input prompt',
      args: [
        Arg(
        name: 'string',
        defaultValue: '\'> \''
      )
      ]
    ),
    Option(
      name: '--pointer',
      description: 'Pointer to the current line',
      args: [
        Arg(
        name: 'string',
        defaultValue: '\'>\''
      )
      ]
    ),
    Option(
      name: '--marker',
      description: 'Multi-select marker',
      args: [
        Arg(
        name: 'string',
        defaultValue: '\'>\''
      )
      ]
    ),
    Option(
      name: '--header',
      description: 'String to print as header',
      args: [
        Arg(
        name: 'string'
      )
      ]
    ),
    Option(
      name: '--header-lines',
      description: 'The first N lines of the input are treated as header',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '--ansi',
      description: 'Enable processing of ANSI color codes'
    ),
    Option(
      name: '--tabstop',
      description: 'Number of spaces for a tab character',
      args: [
        Arg(
        name: 'spaces',
        defaultValue: '8'
      )
      ]
    ),
    Option(
      name: '--color',
      description: 'Base scheme',
      args: [
        Arg(
        name: 'color scheme',
        description: '(dark|light|16|bw) and/or custom colors',
        suggestions: [
          FigSuggestion(name: 'dark'),
          FigSuggestion(name: 'light'),
          FigSuggestion(name: '16'),
          FigSuggestion(name: 'bw')
        ]
      )
      ]
    ),
    Option(
      name: '--no-bold',
      description: 'Do not use bold text'
    ),
    Option(
      name: '--history',
      description: 'History file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--history-size',
      description: 'Maximum number of history entries',
      args: [
        Arg(
        name: 'number',
        defaultValue: '1000'
      )
      ]
    ),
    Option(
      name: '--preview',
      description: 'Command to preview highlighted line ({})',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Option(
      name: '--preview-window',
      description: 'Preview window layout',
      args: [
        Arg(
        name: 'options',
        isVariadic: true,
        defaultValue: 'default: right:50%',
        suggestions: [
          FigSuggestion(name: 'up'),
          FigSuggestion(name: 'down'),
          FigSuggestion(name: 'left'),
          FigSuggestion(name: 'right'),
          FigSuggestion(name: 'nowrap'),
          FigSuggestion(name: 'wrap'),
          FigSuggestion(name: 'nocycle'),
          FigSuggestion(name: 'cycle'),
          FigSuggestion(name: 'nofollow'),
          FigSuggestion(name: 'follow'),
          FigSuggestion(name: 'nohidden'),
          FigSuggestion(name: 'hidden'),
          FigSuggestion(name: 'default')
        ]
      )
      ]
    ),
    Option(
      name: ['-q', '--query'],
      description: 'Start the finder with the given query',
      args: [
        Arg(
        name: 'string'
      )
      ]
    ),
    Option(
      name: ['-1', '--select-1'],
      description: 'Automatically select the only match'
    ),
    Option(
      name: ['-0', '--exit-0'],
      description: 'Exit immediately when there\'s no match'
    ),
    Option(
      name: ['-f', '--filter'],
      description: 'Filter mode. Do not start interactive finder',
      args: [
        Arg(
        name: 'string'
      )
      ]
    ),
    Option(
      name: '--print-query',
      description: 'Print query as the first line'
    ),
    Option(
      name: '--expect',
      description: 'Comma-separated list of keys to complete fzf',
      args: [
        Arg(
        name: 'keys'
      )
      ]
    ),
    Option(
      name: '--read0',
      description: 'Read input delimited by ASCII NUL characters'
    ),
    Option(
      name: '--print0',
      description: 'Print output delimited by ASCII NUL characters'
    ),
    Option(
      name: '--sync',
      description: 'Synchronous search for multi-staged filtering'
    ),
    Option(
      name: '--version',
      description: 'Display version information and exit'
    )
  ]
);
