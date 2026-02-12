// Auto-generated from TypeScript source: gatsby.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gatsby` CLI
final FigSpec gatsbySpec = FigSpec(
  name: 'gatsby',
  description: 'Gatsby CLI',
  subcommands: [
    Subcommand(
      name: 'develop',
      description: 'Start the Gatsby development server',
      options: [
        Option(
          name: ['-S', '--https'],
          description: 'Use HTTPS'
        ),
        Option(
          name: '--inspect',
          description: 'Opens a port for debugging'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Compile your application and make it ready for deployment',
      options: [
        Option(
          name: '--prefix-paths',
          description: 'Build site with link paths prefixed (set pathPrefix in your config)'
        ),
        Option(
          name: '--no-uglify',
          description: 'Build site without uglifying JS bundles (for debugging)'
        ),
        Option(
          name: '--profile',
          description: 'Build site with react profiling'
        ),
        Option(
          name: '--open-tracing-config-file',
          description: 'Use Tracer configuration file'
        ),
        Option(
          name: '--graphql-tracing',
          description: 'Trace every graphql resolver, may have performance implications'
        ),
        Option(
          name: ['--no-color', '--no-colors'],
          description: 'Disables colored terminal output'
        )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Serve the production build of your site for testing',
      options: [
        Option(
          name: '--prefix-paths',
          description: 'Serve site with link paths prefixed'
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Wipe out the cache (.cache folder) and public directories'
    ),
    Subcommand(
      name: 'info',
      description: 'Get helpful environment information',
      options: [
        Option(
          name: ['-C', '--clipboard'],
          description: 'Copy environment information to your clipboard'
        )
      ]
    ),
    Subcommand(
      name: 'plugin',
      description: 'Run commands pertaining to gatsby plugins',
      options: [
        Option(
          name: 'docs',
          description: 'Documentation about using and creating plugins'
        )
      ]
    ),
    Subcommand(
      name: 'repl',
      description: 'Gatsby will prompt you to type in commands and explore'
    )
  ],
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'View your current Gatsby CLI version'
    )
  ]
);
