// Auto-generated from TypeScript source: premake.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `premake` CLI
final FigSpec premakeSpec = FigSpec(
  name: 'premake',
  description: 'Premake CLI',
  subcommands: [
    Subcommand(
      name: 'clean',
      description: 'Remove all binaries and generated files'
    ),
    Subcommand(
      name: 'vs2022',
      description: 'Generate Visual Studio 2022 project files'
    ),
    Subcommand(
      name: 'vs2019',
      description: 'Generate Visual Studio 2019 project files'
    ),
    Subcommand(
      name: 'vs2017',
      description: 'Generate Visual Studio 2017 project files'
    ),
    Subcommand(
      name: 'vs2015',
      description: 'Generate Visual Studio 2015 project files'
    ),
    Subcommand(
      name: 'vs2013',
      description: 'Generate Visual Studio 2013 project files'
    ),
    Subcommand(
      name: 'vs2012',
      description: 'Generate Visual Studio 2012 project files'
    ),
    Subcommand(
      name: 'vs2010',
      description: 'Generate Visual Studio 2010 project files'
    ),
    Subcommand(
      name: 'vs2008',
      description: 'Generate Visual Studio 2008 project files'
    ),
    Subcommand(
      name: 'vs2005',
      description: 'Generate Visual Studio 2005 project files'
    ),
    Subcommand(
      name: 'gmake',
      description: 'Generate GNU Makefiles (This generator is deprecated by gmake2)'
    ),
    Subcommand(
      name: 'gmake2',
      description: 'Generate GNU Makefiles (including Cygwin and MinGW)'
    ),
    Subcommand(
      name: 'xcode4',
      description: 'Generate Apple Xcode 4 project files'
    ),
    Subcommand(
      name: 'codelite',
      description: 'Generate CodeLite project files'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Shows a complete list of the actions supported'
    ),
    Option(
      name: '--version',
      description: 'Display version information'
    )
  ]
);
