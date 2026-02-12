// Auto-generated from TypeScript source: rscript.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `Rscript` CLI
final FigSpec RscriptSpec = FigSpec(
  name: 'Rscript',
  description: 'Scripting Front-End for R',
  icon: 'https://www.r-project.org/favicon-32x32.png',
  options: [
    Option(
      name: '-e',
      description: 'R expression to run',
      isRepeatable: true,
      args: [
        Arg(
        name: 'expression',
        description: 'R expression'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Print usage and exit'
    ),
    Option(
      name: '--version',
      description: 'Print version and exit'
    ),
    Option(
      name: '--verbose',
      description: 'Print information on progress'
    ),
    Option(
      name: '--no-echo',
      description: 'Run as quietly as possible'
    ),
    Option(
      name: '--no-restore',
      description: 'Don\'t restore anything'
    ),
    Option(
      name: '--save',
      description: 'Do save workspace at the end of the session'
    ),
    Option(
      name: '--no-environ',
      description: 'Don\'t read the site and user environment files'
    ),
    Option(
      name: '--no-site-file',
      description: 'Don\'t read the site-wide Rprofile'
    ),
    Option(
      name: '--no-init-file',
      description: 'Don\'t read the user R profile'
    ),
    Option(
      name: '--restore',
      description: 'Do restore previously saved objects at startup'
    ),
    Option(
      name: '--vanilla',
      description: 'Combine --no-save, --no-restore, --no-site-file --no-init-file and --no-environ'
    ),
    Option(
      name: '--default-packages',
      description: 'Comma separated list of default packages',
      args: [
        Arg(
        name: 'packages',
        description: 'A comma-separated set of package names, or \'NULL\''
      )
      ]
    )
  ],
  args: [
    Arg(
      name: 'file',
      description: 'R script to run'
    ),
    Arg(
      name: 'args',
      description: 'Arguments to pass to the script',
      isVariadic: true
    )
  ]
);
