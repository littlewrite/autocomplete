// Auto-generated from TypeScript source: ts.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ts` CLI
final FigSpec tsSpec = FigSpec(
  name: 'ts',
  description: 'Manage template specs at subscription or resource group scope',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a template spec and or template spec version',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the parent template spec',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: ['--display-name', '-d'],
          description: 'The display name of the template spec',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'The location to store the template-spec and template-spec version(s). Cannot be changed after creation',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: ['--template-file', '-f'],
          description: 'A path to a template file or Bicep file in the file system',
          args: [
            Arg(
            name: 'template-fil'
          )
          ]
        ),
        Option(
          name: '--ui-form-definition',
          description: 'The uiFormDefinition file path in the file system for the template spec version',
          args: [
            Arg(
            name: 'ui-form-definitio'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The template spec version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--version-description',
          description: 'The description of the template spec version',
          args: [
            Arg(
            name: 'version-descriptio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a specified template spec or template spec version by name or resource ID',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--template-spec', '-s'],
          description: 'The template spec resource id',
          args: [
            Arg(
            name: 'template-spe'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The template spec version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Export the specified template spec version and artifacts (if any) to the specified output folder',
      options: [

        Option(
          name: '--output-folder',
          description: 'Existing folder to output export(s)',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--template-spec', '-s'],
          description: 'The template spec resource id',
          args: [
            Arg(
            name: 'template-spe'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The template spec version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List template specs or template spec versions',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the specified template spec or template spec version',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--template-spec', '-s'],
          description: 'The template spec resource id',
          args: [
            Arg(
            name: 'template-spe'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The template spec version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a template spec version',
      options: [

        Option(
          name: '--description',
          description: 'The description of the parent template spec',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: ['--display-name', '-d'],
          description: 'The display name of the template spec',
          args: [
            Arg(
            name: 'display-nam'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the template spec',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: ['--template-file', '-f'],
          description: 'A path to a template file or Bicep file in the file system',
          args: [
            Arg(
            name: 'template-fil'
          )
          ]
        ),
        Option(
          name: ['--template-spec', '-s'],
          description: 'The template spec resource id',
          args: [
            Arg(
            name: 'template-spe'
          )
          ]
        ),
        Option(
          name: '--ui-form-definition',
          description: 'The uiFormDefinition file path in the file system for the template spec version',
          args: [
            Arg(
            name: 'ui-form-definitio'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'The template spec version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--version-description',
          description: 'The description of the template spec version',
          args: [
            Arg(
            name: 'version-descriptio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    )
  ]
);
