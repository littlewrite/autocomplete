// Auto-generated from TypeScript source: gradle.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> sharedOptions = [

  Option(
    name: ['-?', '-h', '--help'],
    description: 'Shows a help message with all available CLI options'
  ),
  Option(
    name: ['-v', '--version'],
    description: 'Prints Gradle, Groovy, Ant, JVM, and operating system version information'
  ),
  Option(
    name: ['-S', '--full-stacktrace'],
    description: 'Print out the full (very verbose) stacktrace for any exceptions'
  ),
  Option(
    name: ['-s', '--stacktrace'],
    description: 'Print out the stacktrace also for user exceptions (e.g. compile error)'
  ),
  Option(
    name: '--scan',
    description: 'Create a build scan with fine-grained information about all aspects of your Gradle build'
  ),
  Option(
    name: '-Dorg.gradle.debug',
    description: 'Debug Gradle client (non-Daemon) process. Gradle will wait for you to attach a debugger at localhost:5005 by default'
  ),
  Option(
    name: '-Dorg.gradle.daemon.debug',
    description: 'Debug Gradle Daemon process'
  ),
  Option(
    name: '--build-cache',
    description: 'Toggles the Gradle build cache. Gradle will try to reuse outputs from previous builds. Default is off',
    exclusiveOn: ['--no-build-cache']
  ),
  Option(
    name: '--no-build-cache',
    description: 'Toggles the Gradle build cache. Gradle will try to reuse outputs from previous builds. Default is off',
    exclusiveOn: ['--build-cache']
  ),
  Option(
    name: '--configure-on-demand',
    description: 'Toggles Configure-on-demand. Only relevant projects are configured in this build run. Default is off',
    exclusiveOn: ['--configure-on-demand']
  ),
  Option(
    name: '--no-configure-on-demand',
    description: 'Toggles Configure-on-demand. Only relevant projects are configured in this build run. Default is off',
    exclusiveOn: ['--configure-on-demand']
  ),
  Option(
    name: '--max-workers',
    description: 'Sets maximum number of workers that Gradle may use. Default is number of processors',
    args: [
      Arg(
      name: 'number'
    )
    ]
  ),
  Option(
    name: '--parallel',
    description: 'Build projects in parallel. For limitations of this option, see Parallel Project Execution. Default is off',
    exclusiveOn: ['--no-parallel']
  ),
  Option(
    name: '--no-parallel',
    description: 'Disables --parallel',
    exclusiveOn: ['--parallel']
  ),
  Option(
    name: '--priority',
    description: 'Specifies the scheduling priority for the Gradle daemon and all processes launched by it',
    args: [
      Arg(
      name: 'priority',
      defaultValue: 'normal',
      suggestions: [

        FigSuggestion(name: 'normal'),
        FigSuggestion(name: 'low')
      ]
    )
    ]
  ),
  Option(
    name: '--profile',
    description: 'Generates a high-level performance report in the \$buildDir/reports/profile directory. --scan is preferred'
  ),
  Option(
    name: '--scan',
    description: 'Generate a build scan with detailed performance diagnostics'
  ),
  Option(
    name: '--watch-fs',
    description: 'Toggles watching the file system. When enabled Gradle re-uses information it collects about the file system between builds. Enabled by default on operating systems where Gradle supports this feature',
    exclusiveOn: ['--no-watch-fs']
  ),
  Option(
    name: '--no-watch-fs',
    description: 'Toggles watching the file system. When enabled Gradle re-uses information it collects about the file system between builds. Enabled by default on operating systems where Gradle supports this feature',
    exclusiveOn: ['--watch-fs']
  ),
  Option(
    name: '--daemon',
    description: 'Use the Gradle Daemon to run the build. Starts the daemon if not running or existing daemon busy. Default is on',
    exclusiveOn: ['--no-daemon']
  ),
  Option(
    name: '--no-daemon',
    description: 'Disables --daemon',
    exclusiveOn: ['--daemon']
  ),
  Option(
    name: '--foreground',
    description: 'Starts the Gradle Daemon in a foreground process'
  ),
  Option(
    name: '-Dorg.gradle.daemon.idletimeout',
    description: 'Gradle Daemon will stop itself after this number of milliseconds of idle time',
    args: [
      Arg(
      name: 'milliseconds',
      defaultValue: '10800000'
    )
    ]
  ),
  Option(
    name: '-Dorg.gradle.logging.level',
    description: 'Set logging level via Gradle properties',
    args: [
      Arg(
      name: 'level',
      suggestions: [

        FigSuggestion(name: 'quiet'),
        FigSuggestion(name: 'warn'),
        FigSuggestion(name: 'lifecycle'),
        FigSuggestion(name: 'info'),
        FigSuggestion(name: 'debug')
      ]
    )
    ]
  ),
  Option(
    name: ['-q', '--quiet'],
    description: 'Log errors only'
  ),
  Option(
    name: ['-w', '--warn'],
    description: 'Set log level to warn'
  ),
  Option(
    name: ['-i', '--info'],
    description: 'Set log level to info'
  ),
  Option(
    name: ['-d', '--debug'],
    description: 'Log in debug mode (includes normal stacktrace)'
  ),
  Option(
    name: '-Dorg.gradle.console',
    description: 'Specify console mode via Gradle properties'
  ),
  Option(
    name: '--console',
    description: 'Specifies which type of console output to generate'
  ),
  Option(
    name: '-Dorg.gradle.warning.mode',
    description: 'Specify warning mode via Gradle properties'
  ),
  Option(
    name: '--warning-mode',
    description: 'Specifies how to log warning'
  ),
  Option(
    name: '--include-build',
    description: 'Run the build as a composite, including the specified build'
  ),
  Option(
    name: '--offline',
    description: 'Specifies that the build should operate without accessing network resources'
  ),
  Option(
    name: '--refresh-dependencies',
    description: 'Refresh the state of dependencies'
  ),
  Option(
    name: '--dry-run',
    description: 'Run Gradle with all task actions disabled. Use this to show which task would have executed'
  ),
  Option(
    name: '--write-locks',
    description: 'Indicates that all resolved configurations that are lockable should have their lock state persisted'
  ),
  Option(
    name: '--update-locks',
    description: 'Indicates that versions for the specified modules have to be updated in the lock file',
    args: [
      Arg(
      name: 'group:name',
      isVariadic: true
    )
    ]
  ),
  Option(
    name: '--no-rebuild',
    description: 'Do not rebuild project dependencies. Useful for debugging and fine-tuning buildSrc, but can lead to wrong results. Use with caution',
    isDangerous: true
  ),
  Option(
    name: ['-b', '--build-file'],
    description: 'Specifies the build file. For example: gradle --build-file=foo.gradle',
    args: [
      Arg(
      name: 'file',
      defaultValue: 'build.gradle',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-c', '--settings-file'],
    description: 'Specifies the settings file. For example: gradle --settings-file=somewhere/else/settings.gradle',
    args: [
      Arg(
      name: 'file',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-g', '--gradle-user-home'],
    description: 'Specifies the Gradle user home directory. The default is the .gradle directory in the user’s home directory',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: ['-p', '--project-dir'],
    description: 'Specifies the start directory for Gradle',
    args: [
      Arg(
      name: 'directory',
      defaultValue: './',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--project-cache-dir',
    description: 'Specifies the project-specific cache directory. Default value is .gradle in the root project directory',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: ['-D', '--system-prop'],
    description: 'Sets a system property of the JVM, for example -Dmyprop=myvalue',
    args: [
      Arg(
      name: 'system property'
    )
    ]
  ),
  Option(
    name: ['-I', '--init-script'],
    description: 'Specifies an initialization script'
  ),
  Option(
    name: ['-P', '--project-prop'],
    description: 'Sets a project property of the root project, for example -Pmyprop=myvalue',
    args: [
      Arg(
      name: 'system property'
    )
    ]
  ),
  Option(
    name: '-Dorg.gradle.jvmargs',
    description: 'Set JVM arguments',
    args: [
      Arg(
      name: 'arguments'
    )
    ]
  ),
  Option(
    name: '-Dorg.gradle.java.home',
    description: 'Set JDK home dir',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  )
];

/// Completion spec for `gradle` CLI
final FigSpec gradleSpec = FigSpec(
  name: 'gradle',
  description: 'Gradle is an open-source build automation tool that is designed to be flexible enough to build almost any type of software',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Compute all outputs',
      options: sharedOptions
    ),
    Subcommand(
      name: 'run',
      description: 'Run applications',
      options: sharedOptions
    ),
    Subcommand(
      name: 'check',
      description: 'Run all checks',
      options: sharedOptions
    ),
    Subcommand(
      name: 'clean',
      description: 'Clear the contents of the build directory',
      options: sharedOptions
    ),
    Subcommand(
      name: 'projects',
      description: 'List of all sub-projects',
      options: sharedOptions
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
        ),
        ...sharedOptions
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
        ),
        ...sharedOptions
      ]
    ),
    Subcommand(
      name: 'dependencies',
      description: 'Gives you a list of the dependencies of the selected project, broken down by configuration',
      options: sharedOptions
    ),
    Subcommand(
      name: 'buildEnvironment',
      description: 'Visualises the buildscript dependencies of the selected project',
      options: sharedOptions
    ),
    Subcommand(
      name: 'dependencyInsight',
      description: 'Gives you an insight into a particular dependency (or dependencies) that match specified input',
      options: sharedOptions
    ),
    Subcommand(
      name: 'properties',
      description: 'Gives you a list of the properties of the selected project',
      options: sharedOptions
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
        ),
        ...sharedOptions
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
        ),
        ...sharedOptions
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
        ),
        ...sharedOptions
      ]
    )
  ],
  options: [

    ...sharedOptions
  ],
  args: [
    Arg(
    name: 'task name',
    isVariadic: true,
    isOptional: true
  )
  ]
);
