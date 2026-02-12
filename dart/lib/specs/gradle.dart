// Auto-generated from TypeScript source: gradle.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gradle` CLI
final FigSpec gradleSpec = FigSpec(
  name: 'gradle',
  description: 'Gradle is an open-source build automation tool that is designed to be flexible enough to build almost any type of software',
  subcommands: [
    Subcommand(
      name: 'build',
      description: 'Compute all outputs'
    ),
    Subcommand(
      name: 'run',
      description: 'Run applications'
    ),
    Subcommand(
      name: 'check',
      description: 'Run all checks'
    ),
    Subcommand(
      name: 'clean',
      description: 'Clear the contents of the build directory'
    ),
    Subcommand(
      name: 'projects',
      description: 'List of all sub-projects'
    ),
    Subcommand(
      name: 'tasks',
      description: 'List of main tasks of the selected project',
      options: [
        Option(
          name: '--all',
          description: 'By default, this report shows only those tasks which have been assigned to a task group. You can obtain more information in the task listing using the --all option'
        ),
        Option(
          name: '--group',
          description: 'If you need to be more precise, you can display only the tasks from a specific group',
          args: [
            Arg(
            name: 'group'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display task usage information',
      options: [
        Option(
          name: '--task',
          args: [
            Arg(
            name: 'task'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dependencies',
      description: 'Gives you a list of the dependencies of the selected project, broken down by configuration'
    ),
    Subcommand(
      name: 'buildEnvironment',
      description: 'Visualises the buildscript dependencies of the selected project'
    ),
    Subcommand(
      name: 'dependencyInsight',
      description: 'Gives you an insight into a particular dependency (or dependencies) that match specified input'
    ),
    Subcommand(
      name: 'properties',
      description: 'Gives you a list of the properties of the selected project'
    ),
    Subcommand(
      name: '--status',
      description: '(Standalone command) List running and recently stopped Gradle daemons. Only displays daemons of the same Gradle version'
    ),
    Subcommand(
      name: '--stop',
      description: '(Standalone command) Stop all Gradle Daemons of the same version'
    ),
    Subcommand(
      name: 'init',
      description: 'Create new Gradle builds, with new or existing projects',
      options: [
        Option(
          name: '--type',
          description: 'Specify project type',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'basic',
            suggestions: [
              FigSuggestion(name: 'basic'),
              FigSuggestion(name: 'java-library'),
              FigSuggestion(name: 'java-application')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wrapper',
      description: 'Generates a script, gradlew, that invokes a declared version of Gradle, downloading it beforehand if necessary',
      options: [
        Option(
          name: '--gradle-version',
          description: 'The Gradle version used for downloading and executing the Wrapper',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: '--distribution-type',
          description: 'The Gradle distribution type used for the Wrapper',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'bin',
            suggestions: [
              FigSuggestion(name: 'bin'),
              FigSuggestion(name: 'all')
            ]
          )
          ]
        ),
        Option(
          name: '--gradle-distribution-url',
          description: 'The full URL pointing to Gradle distribution ZIP file',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: '--gradle-distribution-sha256-sum',
          description: 'The SHA256 hash sum used for verifying the downloaded Gradle distribution',
          args: [
            Arg(
            name: 'SHA256 hash sum'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run a test task',
      options: [
        Option(
          name: '--continuous',
          description: 'Allows you to automatically re-execute the requested tasks when task inputs change'
        ),
        Option(
          name: '--rerun-tasks',
          description: 'This will force test and all task dependencies of test to execute'
        ),
        Option(
          name: '--continue',
          description: 'Gradle will execute every task to be executed where all of the dependencies for that task completed without failure'
        )
      ]
    )
  ],
  options: [],
  args: [
    Arg(
    name: 'task name',
    isVariadic: true,
    isOptional: true
  )
  ]
);
