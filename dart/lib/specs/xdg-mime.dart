// Auto-generated from TypeScript source: xdg-mime.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xdg-mime` CLI
final FigSpec xdgMimeSpec = FigSpec(
  name: 'xdg-mime',
  description: 'Command line tool for querying information about file type handling and adding descriptions for new file types',
  subcommands: [
    Subcommand(
      name: 'query',
      description: 'Returns information related to file types',
      args: [
        Arg(
        name: 'filetype | default',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'default',
      description: 'Ask the desktop environment to make application the default application for opening files of type mimetype',
      args: [
        Arg(
          name: 'application'
        ),
        Arg(
          name: 'mimetype(s)',
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Adds the file type descriptions provided in mimetypes-file to the desktop environment',
      options: [
        Option(
          name: '--mode',
          args: [
            Arg(
            name: 'mode',
            suggestions: [
              FigSuggestion(name: 'user'),
              FigSuggestion(name: 'system')
            ]
          )
          ]
        ),
        Option(
          name: '--novendor',
          description: 'Disables xdg-mime checks that the mimetypes-file to be installed has a proper vendor prefix'
        )
      ],
      args: [
        Arg(
        name: 'mimetypes-file',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Removes the file type descriptions provided in mimetypes-file and previously added with xdg-mime install from the desktop environment',
      options: [
        Option(
          name: '--mode',
          args: [
            Arg(
            name: 'mode',
            suggestions: [
              FigSuggestion(name: 'user'),
              FigSuggestion(name: 'system')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'mimetypes-file',
        template: 'filepaths'
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--help',
      description: 'Show command synopsis'
    ),
    Option(
      name: '--manual',
      description: 'Show manual page'
    ),
    Option(
      name: '--version',
      description: 'Show the xdg-utils version information'
    )
  ]
);
