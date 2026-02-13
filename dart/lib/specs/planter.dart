// Auto-generated from TypeScript source: planter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `planter` CLI
final FigSpec planterSpec = FigSpec(
  name: 'planter',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a new project using a planter or public repo',
      options: [

        Option(
          name: ['-f', '--force'],
          description: 'Force the created directory to overwrite an existing one'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'source',
          description: 'The name of a planter or a public repo',
          isOptional: true
        ),
        Arg(
          name: 'dir',
          description: 'Directory of the new project',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List available planters',
      options: [

        Option(
          name: ['-a', '--alphanumeric'],
          description: 'Sorts list of planters alphanumerically'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Add a planter to your list',
      options: [

        Option(
          name: ['-L', '--local'],
          description: 'Treat the location as a local repo instead of a remote repo'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'name',
          description: 'Name of the planter to use as a reference'
        ),
        Arg(
          name: 'location',
          description: 'The repo URL or name'
        )
      ]
    ),
    Subcommand(
      name: 'edit',
      description: 'Edit a planter in your list',
      options: [

        Option(
          name: ['-n', '--name'],
          description: 'Edit the name of a planter',
          args: [
            Arg(
            name: 'new-nam'
          )
          ]
        ),
        Option(
          name: ['-l', '--location'],
          description: 'Edit the location of a planter',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['-d', '--delete'],
          description: 'Remove a planter from your list'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Edit something... dangerously. (Force the edit without any prompts.)'
        ),
        Option(
          name: ['-R', '--remote'],
          description: 'Set the location type to remote'
        ),
        Option(
          name: ['-L', '--local'],
          description: 'Set the location type to local'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'Name of the planter to edi'
      )
      ]
    ),
    Subcommand(
      name: 'pin',
      description: 'Pins a planter to the top of your list',
      options: [

        Option(
          name: ['-u', '--unpin'],
          description: 'Removes position from the planter'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'name',
          description: 'Name of the planter to pin'
        ),
        Arg(
          name: 'position',
          description: 'Specific position to set the planter at. (1 being the top of the list.)',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Prints all info about a planter in your list',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'name',
        description: 'Name of the planter to show info for'
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
