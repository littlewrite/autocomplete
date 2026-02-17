// Auto-generated from TypeScript source: fzf.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fzf` CLI
final FigSpec fzfSpec = FigSpec(
  name: 'fzf',
  description: 'Commands to select active or default objects via fzf.\n\n\t\tSelect your active subscription or set defaults with an easy selection interface (fzf).\nSearch syntax:\nToken    Match type                  Description\n\nsbtrkt   fuzzy-match                 Items that match sbtrkt\n\'wild    exact-match (quoted)        Items that include wild\n^music   prefix-exact-match          Items that start with music\n.mp3\$    suffix-exact-match          Items that end with .mp3\n!fire    inverse-exact-match         Items that do not include fire\n!^music  inverse-prefix-exact-match  Items that do not start with music\n!.mp3\$   inverse-suffix-exact-match  Items that do not end with .mp3\nMore information about search syntax or fzf in general can be found on the fzf project page: https://github.com/junegunn/fzf#search-syntax',
  subcommands: [

    Subcommand(
      name: 'group',
      description: 'Select default resource group',
      options: [

        Option(
          name: ['--filter', '-f'],
          description: 'A filter string to pass to fzf',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: ['--no-default', '-d'],
          description: 'Don\'t change the active or default, just return selected item'
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Download and install the fzf command',
      options: [

        Option(
          name: ['--install-dir', '-i'],
          description: 'Path to the directory where fzf should be installed',
          args: [
            Arg(
            name: 'install-di'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'Version of fzf to install',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'location',
      description: 'Select default location',
      options: [

        Option(
          name: ['--filter', '-f'],
          description: 'A filter string to pass to fzf',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: ['--no-default', '-d'],
          description: 'Don\'t change the active or default, just return selected item'
        )
      ]
    ),
    Subcommand(
      name: 'subscription',
      description: 'Select default subscription',
      options: [

        Option(
          name: ['--filter', '-f'],
          description: 'A filter string to pass to fzf',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: ['--no-default', '-d'],
          description: 'Don\'t change the active or default, just return selected item'
        )
      ]
    )
  ]
);
