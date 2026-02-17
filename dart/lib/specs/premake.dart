// Auto-generated from TypeScript source: premake.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> options = [

  Option(
    name: '--file',
    description: 'The premake5.lua file',
    args: [
      Arg(
      name: 'file',
      description: 'Path to the premake5.lua file',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--debugger',
    description: 'Start MobDebug remote debugger. Works with ZeroBrane Studio'
  ),
  Option(
    name: '--fatal',
    description: 'Treat warnings from project scripts as errors'
  ),
  Option(
    name: '--insecure',
    description: 'Forfit SSH certification checks'
  ),
  Option(
    name: '--interactive',
    description: 'Interactive command prompt'
  ),
  Option(
    name: '--os',
    description: 'Generate files for a different operating system',
    args: [
      Arg(
      name: 'os',
      description: 'The operating system',
      suggestions: [

        FigSuggestion(name: 'aix'),
        FigSuggestion(name: 'android'),
        FigSuggestion(name: 'bsd'),
        FigSuggestion(name: 'haiku'),
        FigSuggestion(name: 'hurd'),
        FigSuggestion(name: 'ios'),
        FigSuggestion(name: 'linux'),
        FigSuggestion(name: 'macosx'),
        FigSuggestion(name: 'solaris'),
        FigSuggestion(name: 'windows')
      ]
    )
    ]
  ),
  Option(
    name: '--scripts',
    description: 'Search for additional scripts on the given path',
    args: [
      Arg(
      name: 'path',
      description: 'The path to the scripts',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--systemscript',
    description: 'Override default system script (premake5-system.lua)',
    args: [
      Arg(
      name: 'script',
      description: 'The system script',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--verbose',
    description: 'Generate extra debug text output'
  ),
  Option(
    name: '--cc',
    description: 'Choose a C/C++ compiler set',
    args: [
      Arg(
      name: 'cc',
      description: 'The C/C++ compiler set',
      suggestions: [

        FigSuggestion(name: 'clang'),
        FigSuggestion(name: 'gcc'),
        FigSuggestion(name: 'mingw')
      ]
    )
    ]
  ),
  Option(
    name: '--dc',
    description: 'Choose a D compiler',
    args: [
      Arg(
      name: 'dc',
      description: 'The D compiler set',
      suggestions: [

        FigSuggestion(name: 'dmd'),
        FigSuggestion(name: 'gdc'),
        FigSuggestion(name: 'ldc')
      ]
    )
    ]
  ),
  Option(
    name: '--dotnet',
    description: 'Choose a .NET compiler set',
    args: [
      Arg(
      name: 'dotnet',
      description: 'The .NET compiler set',
      suggestions: [

        FigSuggestion(name: 'mono'),
        FigSuggestion(name: 'msnet'),
        FigSuggestion(name: 'pnet')
      ]
    )
    ]
  )
];

/// Completion spec for `premake` CLI
final FigSpec premakeSpec = FigSpec(
  name: 'premake',
  description: 'Premake CLI',
  subcommands: [

    Subcommand(
      name: 'clean',
      description: 'Remove all binaries and generated files',
      options: options
    ),
    Subcommand(
      name: 'vs2022',
      description: 'Generate Visual Studio 2022 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2019',
      description: 'Generate Visual Studio 2019 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2017',
      description: 'Generate Visual Studio 2017 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2015',
      description: 'Generate Visual Studio 2015 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2013',
      description: 'Generate Visual Studio 2013 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2012',
      description: 'Generate Visual Studio 2012 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2010',
      description: 'Generate Visual Studio 2010 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2008',
      description: 'Generate Visual Studio 2008 project files',
      options: options
    ),
    Subcommand(
      name: 'vs2005',
      description: 'Generate Visual Studio 2005 project files',
      options: options
    ),
    Subcommand(
      name: 'gmake',
      description: 'Generate GNU Makefiles (This generator is deprecated by gmake2)',
      options: options
    ),
    Subcommand(
      name: 'gmake2',
      description: 'Generate GNU Makefiles (including Cygwin and MinGW)',
      options: options
    ),
    Subcommand(
      name: 'xcode4',
      description: 'Generate Apple Xcode 4 project files',
      options: options
    ),
    Subcommand(
      name: 'codelite',
      description: 'Generate CodeLite project files',
      options: options
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
