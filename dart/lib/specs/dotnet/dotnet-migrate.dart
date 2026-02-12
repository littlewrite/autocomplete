// Auto-generated from TypeScript source: dotnet-migrate.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `migrate` CLI
final FigSpec migrateSpec = FigSpec(
  name: 'migrate',
  args: [
    Arg(
    name: 'project',
    description: 'The project or solution file to operate on. If not specified, the command searches the current directory for one. If more than one solution or project is found, an error is thrown',
    isOptional: true
  )
  ],
  options: [
    Option(
      name: '--format-report-file-json',
      description: 'Output migration report file as JSON rather than user messages',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-r', '--report'],
      description: 'Output migration report to a file in addition to the console',
      args: [
        Arg(
        name: 'report_file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-s', '--skip-project-references'],
      description: 'Skip migrating project references. By default, project references are migrated recursively',
      args: [
        Arg(
        name: 'type',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'Debug'),
          FigSuggestion(name: 'Release')
        ]
      )
      ]
    ),
    Option(
      name: '--skip-backup',
      description: 'Skip moving project.json, global.json, and *.xproj to a backup directory after successful migration'
    ),
    Option(
      name: ['-t', '--template-file'],
      description: 'Template csproj file to use for migration. By default, the same template as the one dropped by dotnet new console is used',
      args: [
        Arg(
        name: 'file'
      )
      ]
    ),
    Option(
      name: ['-v', '--sdk-package-version'],
      description: 'The version of the sdk package that\'s referenced in the migrated app. The default is the version of the SDK in dotnet new',
      args: [
        Arg(
        name: 'version'
      )
      ]
    ),
    Option(
      name: ['-x', '--xproj-file'],
      description: 'The path to the xproj file to use. Required when there is more than one xproj in a project directory',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    )
  ]
);
