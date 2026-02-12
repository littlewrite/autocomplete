// Auto-generated from TypeScript source: pkg-config.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pkg-config` CLI
final FigSpec pkgConfigSpec = FigSpec(
  name: 'pkg-config',
  description: 'Return metainformation about installed libraries',
  args: [
    Arg(
    name: 'libraries...',
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: '--mod-version',
      description: 'Display the version information of the libraries specified on the command line'
    ),
    Option(
      name: '--version',
      description: 'Display the version of pkg-config and terminates'
    ),
    Option(
      name: '--atleast-pkgconfig-version',
      description: 'Require at least the given version of pkg-config',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Displays a help message and terminates'
    ),
    Option(
      name: '--print-errors',
      description: 'Print errors if modules cannot be found or if an error occurs in parsing a .pc file'
    ),
    Option(
      name: '--short-errors',
      description: 'Print short error messages'
    ),
    Option(
      name: '--silence-errors',
      description: 'Print errors if modules cannot be found or if an error occurs in parsing a .pc file'
    ),
    Option(
      name: '--errors-to-stdout',
      description: 'If printing errors, print them to stdout rather than the default stderr'
    ),
    Option(
      name: '--debug',
      description: 'Print debugging information'
    ),
    Option(
      name: '--cflags',
      description: 'Print pre-processor and compile flags required to compile the packages on the command line'
    ),
    Option(
      name: '--cflags-only-I',
      description: 'Print parts of "--cflags" that define the header search path'
    ),
    Option(
      name: '--cflags-only-other',
      description: 'Print parts of "--cflags" not covered by "--cflags-only-I"'
    ),
    Option(
      name: '--libs',
      description: 'Print link flags required to compile the packages on the command line'
    ),
    Option(
      name: '--libs-only-L',
      description: 'Print parts of "-libs" that define library search path'
    ),
    Option(
      name: '--libs-only-l',
      description: 'Print parts of "-libs" that specify which libraries to link to'
    ),
    Option(
      name: '--libs-only-other',
      description: 'Print parts of "-libs" not covered by "--libs-only-L" and "--libs-only-l"'
    ),
    Option(
      name: '--variable',
      description: 'Return the value of a variable defined in a package\'s .pc file',
      args: [
        Arg(
        name: 'variable-name'
      )
      ]
    ),
    Option(
      name: '--define-variable',
      description: 'Set a global value for a variable, overriding the value in any .pc files',
      args: [
        Arg(
        name: 'variable'
      )
      ]
    ),
    Option(
      name: '--print-variables',
      description: 'Return a list of all variables defined in the package'
    ),
    Option(
      name: '--uninstalled',
      description: 'Return successfully if any "-uninstalled" packages are being used, and return failure otherwise'
    ),
    Option(
      name: '--exists',
      description: 'Test whether the packages on the command line exist'
    ),
    Option(
      name: '--atleast-version',
      description: 'Test whether the packages on the command line exist and are at least the specified version',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: '--exact-version',
      description: 'Test whether the packages on the command line exist and are exactly the specified version',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: '--max-version',
      description: 'Test whether the packages on the command line exist and are at most the specified version',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: '--validate',
      description: 'Check the syntax of a package\'s .pc file for validity'
    ),
    Option(
      name: '--msvc-syntax',
      description: 'Output -l and -L flags in the form recognized by the Microsoft Visual C++ command-line compiler'
    ),
    Option(
      name: '--define-prefix',
      description: 'Use the installed location of the .pc file to determine the prefix'
    ),
    Option(
      name: '--dont-define-prefix',
      description: 'Use the specified prefix variable value defined in the .pc file as the prefix'
    ),
    Option(
      name: '--prefix-variable',
      description: 'Set the name of the variable to be overridden instead of prefix when using --define-prefix',
      args: [
        Arg(
        name: 'variable-name'
      )
      ]
    ),
    Option(
      name: '--static',
      description: 'Output libraries suitable for static linking'
    ),
    Option(
      name: '--list-all',
      description: 'List all modules found in the pkg-config path'
    ),
    Option(
      name: '--print-provides',
      description: 'List all modules the given packages provides'
    ),
    Option(
      name: '--print-requires',
      description: 'List all modules the given packages requires'
    ),
    Option(
      name: '--print-requires-private',
      description: 'List all modules the given packages requires for static linking'
    )
  ]
);
