// Auto-generated from TypeScript source: create-block.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `@wordpress/create-block` CLI
final FigSpec wordpressCreateBlockSpec = FigSpec(
  name: '@wordpress/create-block',
  description: 'Generates PHP, JS and CSS code for registering a WordPress plugin with blocks',
  args: [
    Arg(
    name: 'slug',
    description: 'The block slug used for identification, output location, and plugin name',
    isOptional: true
  )
  ],
  options: [
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-t', '--template'],
      description: 'Project template type name',
      args: [
        Arg(
        name: 'name',
        suggestions: [
          FigSuggestion(name: 'standard'),
          FigSuggestion(name: 'es5')
        ]
      )
      ]
    ),
    Option(
      name: '--namespace',
      description: 'Internal namespace for the block name',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--title',
      description: 'Display title for the block and the WordPress plugin',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--short-description',
      description: 'Short description for the block and the WordPress plugin',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--category',
      description: 'Category name for the block',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--wp-scripts',
      description: 'Enable integration with `@wordpress/scripts` package'
    ),
    Option(
      name: '--no-wp-scripts',
      description: 'Disable integration with `@wordpress/scripts` package'
    ),
    Option(
      name: '--wp-env',
      description: 'Enable integration with `@wordpress/env` package'
    ),
    Option(
      name: '--no-plugin',
      description: 'Scaffold only block files'
    ),
    Option(
      name: '--variant',
      description: 'The variant of the template to use',
      args: [
        Arg(
        name: 'variant'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command'
    )
  ]
);
