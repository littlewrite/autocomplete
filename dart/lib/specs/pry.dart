// Auto-generated from TypeScript source: pry.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pry` CLI
final FigSpec prySpec = FigSpec(
  name: 'pry',
  description: 'Interactive Ruby',
  options: [

    Option(
      name: ['-e', '--exec'],
      description: 'A line of code to execute in context before the session starts',
      args: [
        Arg(
        name: 'cod'
      )
      ]
    ),
    Option(
      name: '--no-pager',
      description: 'Disable pager for long output'
    ),
    Option(
      name: '--no-history',
      description: 'Disable history loading'
    ),
    Option(
      name: '--no-color',
      description: 'Disable syntax highlighting for session'
    ),
    Option(
      name: '-f',
      description: 'Suppress loading of pryrc'
    ),
    Option(
      name: ['-s', '--select-plugin'],
      description: 'Only load specified plugin (and no others)',
      args: [
        Arg(
        name: 'plugi'
      )
      ]
    ),
    Option(
      name: ['-d', '--disable-plugin'],
      description: 'Disable a specific plugin',
      args: [
        Arg(
        name: 'plugi'
      )
      ]
    ),
    Option(
      name: '--no-plugins',
      description: 'Suppress loading of plugins'
    ),
    Option(
      name: '--plugins',
      description: 'List installed plugins'
    ),
    Option(
      name: '--simple-prompt',
      description: 'Enable simple prompt mode'
    ),
    Option(
      name: '--noprompt',
      description: 'No prompt mode'
    ),
    Option(
      name: ['-r', '--require'],
      description: '`require` a Ruby script at startup',
      args: [
        Arg(
        name: 'scrip'
      )
      ]
    ),
    Option(
      name: '-I',
      description: 'Add a path to the \$LOAD_PATH',
      args: [
        Arg(
        name: 'pat'
      )
      ]
    ),
    Option(
      name: '--gem',
      description: 'Shorthand for -I./lib -rgemname',
      args: [
        Arg(
        name: 'gemnam'
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Display the Pry version'
    ),
    Option(
      name: ['-c', '--context'],
      description: 'Start the session in the specified context. Equivalent to `context.pry` in a session',
      args: [
        Arg(
        name: 'contex'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display this help message'
    )
  ]
);
