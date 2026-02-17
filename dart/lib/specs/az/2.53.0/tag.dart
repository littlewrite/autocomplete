// Auto-generated from TypeScript source: tag.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tag` CLI
final FigSpec tagSpec = FigSpec(
  name: 'tag',
  description: 'Tag Management on a resource',
  subcommands: [

    Subcommand(
      name: 'add-value',
      description: 'Create a tag value',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The tag name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--value',
          description: 'The tag value',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create tags on a specific resource',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the tag to create',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged',
          args: [
            Arg(
            name: 'resource-i'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to be applied on the resource',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete tags on a specific resource',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the tag to be deleted',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged',
          args: [
            Arg(
            name: 'resource-i'
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
      name: 'list',
      description: 'List the entire set of tags on a specific resource',
      options: [

        Option(
          name: '--resource-id',
          description: 'The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged',
          args: [
            Arg(
            name: 'resource-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove-value',
      description: 'Deletes a predefined tag value for a predefined tag name',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The tag name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--value',
          description: 'The tag value',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Selectively update the set of tags on a specific resource',
      options: [

        Option(
          name: '--operation',
          description: 'The update operation. Options are Merge, Replace and Delete',
          args: [
            Arg(
            name: 'operation',
            suggestions: [

              FigSuggestion(name: 'Delete'),
              FigSuggestion(name: 'Merge'),
              FigSuggestion(name: 'Replace')
            ]
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged',
          args: [
            Arg(
            name: 'resource-i'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to be updated on the resource',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    )
  ]
);
