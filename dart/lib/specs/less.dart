// Auto-generated from TypeScript source: less.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `less` CLI
final FigSpec lessSpec = FigSpec(
  name: 'less',
  description: 'Opposite of more',
  args: [
    Arg(
    isVariadic: true,
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: ['-?', '--help'],
      description: 'This option displays a summary of the commands accepted by less (the same as the h command).  (Depending on how your shell interprets the question mark, it may be necessary to quote the question mark, thus: "-?"'
    ),
    Option(
      name: ['-a', '--search-skip-screen']
    ),
    Option(
      name: ['-A', '--SEARCH-SKIP-SCREEN']
    ),
    Option(
      name: ['-b', '--buffers'],
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: ['-B', '--auto-buffers']
    ),
    Option(
      name: ['-c', '--clear-screen']
    ),
    Option(
      name: ['-C', '--CLEAR-SCREEN']
    ),
    Option(
      name: ['-d', '--dumb']
    ),
    Option(
      name: ['-D', '--color'],
      args: [
        Arg(
        name: 'xcolo'
      )
      ]
    ),
    Option(
      name: ['-e', '--quit-at-eof']
    ),
    Option(
      name: ['-E', '--QUIT-AT-EOF']
    ),
    Option(
      name: ['-f', '--force']
    ),
    Option(
      name: ['-F', '--quit-if-one-screen']
    ),
    Option(
      name: ['-g', '--hilite-search']
    ),
    Option(
      name: ['-G', '--HILITE-SEARCH']
    ),
    Option(
      name: ['-h', '--max-back-scroll'],
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: ['-i', '--ignore-case']
    ),
    Option(
      name: ['-I', '--IGNORE-CASE']
    ),
    Option(
      name: ['-j', '--jump-target'],
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: ['-J', '--status-column']
    ),
    Option(
      name: ['-k', '--lesskey-file'],
      args: [
        Arg(
        name: 'filename',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['-K', '--quit-on-intr']
    ),
    Option(
      name: ['-L', '--no-lessopen']
    ),
    Option(
      name: ['-m', '--long-prompt']
    ),
    Option(
      name: ['-M', '--LONG-PROMPT']
    ),
    Option(
      name: ['-n', '--line-numbers']
    ),
    Option(
      name: ['-N', '--LINE-NUMBERS']
    ),
    Option(
      name: ['-o', '--log-file'],
      args: [
        Arg(
        name: 'filename',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['-O', '--LOG-FILE'],
      args: [
        Arg(
        name: 'filename',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['-p', '--pattern'],
      args: [
        Arg(
        name: 'patter'
      )
      ]
    ),
    Option(
      name: ['-P', '--prompt'],
      args: [
        Arg(
        name: 'promp'
      )
      ]
    ),
    Option(
      name: ['-q', '--quiet', '--silent']
    ),
    Option(
      name: ['-Q', '--QUIET', '--SILENT']
    ),
    Option(
      name: ['-r', '--raw-control-chars']
    ),
    Option(
      name: ['-R', '--RAW-CONTROL-CHARS']
    ),
    Option(
      name: ['-s', '--squeeze-blank-lines']
    ),
    Option(
      name: ['-S', '--chop-long-lines']
    ),
    Option(
      name: ['-t', '--tag'],
      args: [
        Arg(
        name: 'ta'
      )
      ]
    ),
    Option(
      name: ['-T', '--tag-file'],
      args: [
        Arg(
        name: 'tagsfil'
      )
      ]
    ),
    Option(
      name: ['-u', '--underline-special']
    ),
    Option(
      name: ['-U', '--UNDERLINE-SPECIAL']
    ),
    Option(
      name: ['-V', '--version']
    ),
    Option(
      name: ['-w', '--hilite-unread']
    ),
    Option(
      name: ['-W', '--HILITE-UNREAD']
    ),
    Option(
      name: ['-x', '--tabs='],
      args: [
        Arg(
        name: 'n,..'
      )
      ]
    ),
    Option(
      name: ['-X', '--no-init']
    ),
    Option(
      name: ['-y', '--max-forw-scroll'],
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: ['-z', '--window'],
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '--quotes'
    ),
    Option(
      name: ['-~', '--tilde']
    ),
    Option(
      name: ['-#', '--shift']
    ),
    Option(
      name: '--follow-name'
    ),
    Option(
      name: '--incsearch'
    ),
    Option(
      name: '--line-num-width'
    ),
    Option(
      name: '--mouse'
    ),
    Option(
      name: '--MOUSE'
    ),
    Option(
      name: '--no-keypad'
    ),
    Option(
      name: '--no-histdups'
    ),
    Option(
      name: '--rscroll'
    ),
    Option(
      name: '--save-marks'
    ),
    Option(
      name: '--status-col-width'
    ),
    Option(
      name: '--use-backslash'
    ),
    Option(
      name: '--use-color'
    ),
    Option(
      name: '--wheel-lines',
      args: [
        Arg(
        name: ''
      )
      ]
    )
  ]
);
