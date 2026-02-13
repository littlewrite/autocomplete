// Auto-generated from TypeScript source: chmod.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `chmod` CLI
final FigSpec chmodSpec = FigSpec(
  name: 'chmod',
  description: 'Change file modes or Access Control Lists',
  args: [

    Arg(
      name: 'mode',
      suggestions: [

        FigSuggestion(
          name: 'u+x',
          description: 'Give execute permission for the user',
          icon: '🔐'
        ),
        FigSuggestion(
          name: 'a+rx',
          description: 'Adds read and execute permissions for all classes',
          icon: '🔐'
        ),
        FigSuggestion(
          name: '744',
          description: 'Sets read, write, and execute permissions for user, and sets read permission for Group and Others',
          icon: '🔐'
        ),
        FigSuggestion(
          name: '664',
          description: 'Sets read and write permissions for user and Group, and provides read to Others',
          icon: '🔐'
        ),
        FigSuggestion(
          name: '777',
          description: '⚠️ allows all actions for all users',
          icon: '🔐'
        )
      ]
    ),
    Arg(
      template: 'filepaths'
    )
  ],
  options: [

    Option(
      name: '-f',
      description: 'Do not display a diagnostic message if chmod could not modify the mode for file, nor modify the exit status to reflect such failures'
    ),
    Option(
      name: '-H',
      description: 'If the -R option is specified, symbolic links on the command line are followed and hence unaffected by the command.  (Symbolic links encountered during tree traversal are not followed.)'
    ),
    Option(
      name: '-h',
      description: 'If the file is a symbolic link, change the mode of the link itself rather than the file that the link points to'
    ),
    Option(
      name: '-L',
      description: 'If the -R option is specified, all symbolic links are followed'
    ),
    Option(
      name: '-P',
      description: 'If the -R option is specified, no symbolic links are followed. This is the default'
    ),
    Option(
      name: '-R',
      description: 'Change the modes of the file hierarchies rooted in the files, instead of just the files themselves. Beware of unintentionally matching the ``..\'\' hard link to the parent directory when using wildcards like ``.*\'\''
    ),
    Option(
      name: '-v',
      description: 'Cause chmod to be verbose, showing filenames as the mode is modified. If the -v flag is specified more than once, the old and new modes of the file will also be printed, in both octal and symbolic notation'
    )
  ]
);
