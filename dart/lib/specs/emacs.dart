// Auto-generated from TypeScript source: emacs.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `emacs` CLI
final FigSpec emacsSpec = FigSpec(
  name: 'emacs',
  description: 'An extensible, customizable, free/libre text editor — and more',
  args: [
    Arg(
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      description: 'Do not do interactive display; implies -q',
      name: '--batch',
      dependsOn: ['-q']
    ),
    Option(
      description: 'Change to directory',
      name: '--chdir'
    ),
    Option(
      description: 'Start a server in the background',
      name: ['--daemon', '--bg-daemon']
    ),
    Option(
      description: 'Start a server in the foreground',
      name: '--fg-daemon'
    ),
    Option(
      description: 'Display Emacs version information and exit',
      name: '--version'
    ),
    Option(
      description: 'Display help and exit',
      name: '--help'
    ),
    Option(
      description: 'Do not load an init file',
      name: ['-q', '--no-init-file']
    ),
    Option(
      description: 'Do not use shared memory',
      name: ['-nl', '--no-shared-memory']
    ),
    Option(
      description: 'Do not load the site-wide startup file',
      name: ['--no-site-file', '-nsl']
    ),
    Option(
      description: 'Do not load a saved desktop',
      name: '--no-desktop'
    ),
    Option(
      description: 'Similar to "-q --no-site-file --no-splash",  Also, avoid processing X resources',
      name: ['-Q', '--quick']
    ),
    Option(
      description: 'Do not display a splash screen during start-u',
      name: '--no-splash'
    ),
    Option(
      description: 'Enable Emacs Lisp debugger during the processing of the user init file ~/.emacs.  This is useful for debugging problems in the init file',
      name: '--debug-init'
    ),
    Option(
      description: 'Load user\'s init file',
      name: ['-u', '--user']
    ),
    Option(
      description: 'Use specified file as the terminal instead of using stdin/stdout.  This must be the first argument specified in the command line',
      name: ['-t', '--terminal'],
      args: [
        Arg(
        template: 'filepath'
      )
      ]
    ),
    Option(
      description: 'The same as specifying file directly as an argument',
      name: ['--file', '--find-file', '--visit'],
      args: [
        Arg(
        template: 'filepath'
      )
      ]
    )
  ]
);
