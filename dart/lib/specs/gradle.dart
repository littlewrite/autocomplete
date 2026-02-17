// AI-generated from TypeScript source: src/gradle.ts
import 'package:autocomplete/src/spec.dart';

final FigArg consoleModeArg = FigArg(
  name: 'mode',
  defaultValue: 'auto',
  suggestions: [
    FigSuggestion(
      name: 'auto',
      description:
          'Enables color and other rich output in the console output when the build process is attached to a console, or to generate plain text only when not attached to a console',
    ),
    FigSuggestion(
      name: 'plain',
      description:
          'Disables all color and other rich output in the console output. This is the default when Gradle is not attached to a terminal',
    ),
    FigSuggestion(
      name: 'rich',
      description:
          'Enables color and other rich output in the console output, regardless of whether the build process is not attached to a console',
    ),
    FigSuggestion(
      name: 'verbose',
      description:
          'Enables color and other rich output like the rich, but output task names and outcomes at the lifecycle log level, as is done by default in Gradle 3.5 and earlier',
    ),
  ],
);

final FigArg warningModeArg = FigArg(
  name: 'mode',
  defaultValue: 'summary',
  suggestions: [
    FigSuggestion(
      name: 'all',
      description: 'Log all warnings',
    ),
    FigSuggestion(
      name: 'fail',
      description:
          'Log all warnings and fail the build if there are any warnings',
    ),
    FigSuggestion(
      name: 'summary',
      description:
          'Suppress all warnings and log a summary at the end of the build',
    ),
    FigSuggestion(
      name: 'none',
      description:
          'Suppress all warnings, including the summary at the end of the build',
    ),
  ],
);

final List<FigOption> sharedOptions = [
  FigOption(
    name: ['-?', '-h', '--help'],
    description: 'Shows a help message with all available CLI options',
  ),
  FigOption(
    name: ['-v', '--version'],
    description:
        'Prints Gradle, Groovy, Ant, JVM, and operating system version information',
  ),
  FigOption(
    name: ['-S', '--full-stacktrace'],
    description:
        'Print out the full (very verbose) stacktrace for any exceptions',
  ),
  FigOption(
    name: ['-s', '--stacktrace'],
    description:
        'Print out the stacktrace also for user exceptions (e.g. compile error)',
  ),
  FigOption(
    name: ['--scan'],
    description:
        'Create a build scan with fine-grained information about all aspects of your Gradle build',
  ),
  FigOption(
    name: ['-Dorg.gradle.debug'],
    description:
        'Debug Gradle client (non-Daemon) process. Gradle will wait for you to attach a debugger at localhost:5005 by default',
  ),
  FigOption(
    name: ['-Dorg.gradle.daemon.debug'],
    description: 'Debug Gradle Daemon process',
  ),
  FigOption(
    name: ['--build-cache'],
    description:
        'Toggles the Gradle build cache. Gradle will try to reuse outputs from previous builds. Default is off',
    exclusiveOn: ['--no-build-cache'],
  ),
  FigOption(
    name: ['--no-build-cache'],
    description:
        'Toggles the Gradle build cache. Gradle will try to reuse outputs from previous builds. Default is off',
    exclusiveOn: ['--build-cache'],
  ),
  FigOption(
    name: ['--configure-on-demand'],
    description:
        'Toggles Configure-on-demand. Only relevant projects are configured in this build run. Default is off',
    exclusiveOn: ['--configure-on-demand'],
  ),
  FigOption(
    name: ['--no-configure-on-demand'],
    description:
        'Toggles Configure-on-demand. Only relevant projects are configured in this build run. Default is off',
    exclusiveOn: ['--configure-on-demand'],
  ),
  FigOption(
    name: ['--max-workers'],
    description:
        'Sets maximum number of workers that Gradle may use. Default is number of processors',
    args: [FigArg(name: 'number')],
  ),
  FigOption(
    name: ['--parallel'],
    description:
        'Build projects in parallel. For limitations of this option, see Parallel Project Execution. Default is off',
    exclusiveOn: ['--no-parallel'],
  ),
  FigOption(
    name: ['--no-parallel'],
    description: 'Disables --parallel',
    exclusiveOn: ['--parallel'],
  ),
  FigOption(
    name: ['--priority'],
    description:
        'Specifies the scheduling priority for the Gradle daemon and all processes launched by it',
    args: [
      FigArg(
        name: 'priority',
        defaultValue: 'normal',
        suggestions: ['normal', 'low'],
      ),
    ],
  ),
  FigOption(
    name: ['--profile'],
    description:
        'Generates a high-level performance report in the \$buildDir/reports/profile directory. --scan is preferred',
  ),
  FigOption(
    name: ['--scan'],
    description: 'Generate a build scan with detailed performance diagnostics',
  ),
  FigOption(
    name: ['--watch-fs'],
    description:
        'Toggles watching the file system. When enabled Gradle re-uses information it collects about the file system between builds. Enabled by default on operating systems where Gradle supports this feature',
    exclusiveOn: ['--no-watch-fs'],
  ),
  FigOption(
    name: ['--no-watch-fs'],
    description:
        'Toggles watching the file system. When enabled Gradle re-uses information it collects about the file system between builds. Enabled by default on operating systems where Gradle supports this feature',
    exclusiveOn: ['--watch-fs'],
  ),
  FigOption(
    name: ['--daemon'],
    description:
        'Use the Gradle Daemon to run the build. Starts the daemon if not running or existing daemon busy. Default is on',
    exclusiveOn: ['--no-daemon'],
  ),
  FigOption(
    name: ['--no-daemon'],
    description: 'Disables --daemon',
    exclusiveOn: ['--daemon'],
  ),
  FigOption(
    name: ['--foreground'],
    description: 'Starts the Gradle Daemon in a foreground process',
  ),
  FigOption(
    name: ['-Dorg.gradle.daemon.idletimeout'],
    description:
        'Gradle Daemon will stop itself after this number of milliseconds of idle time',
    args: [
      FigArg(
        name: 'milliseconds',
        defaultValue: '10800000',
      ),
    ],
  ),
  FigOption(
    name: ['-Dorg.gradle.logging.level'],
    description: 'Set logging level via Gradle properties',
    args: [
      FigArg(
        name: 'level',
        suggestions: ['quiet', 'warn', 'lifecycle', 'info', 'debug'],
      ),
    ],
  ),
  FigOption(
    name: ['-q', '--quiet'],
    description: 'Log errors only',
  ),
  FigOption(
    name: ['-w', '--warn'],
    description: 'Set log level to warn',
  ),
  FigOption(
    name: ['-i', '--info'],
    description: 'Set log level to info',
  ),
  FigOption(
    name: ['-d', '--debug'],
    description: 'Log in debug mode (includes normal stacktrace)',
  ),
  FigOption(
    name: ['-Dorg.gradle.console'],
    description: 'Specify console mode via Gradle properties',
    args: [consoleModeArg],
  ),
  FigOption(
    name: ['--console'],
    description: 'Specifies which type of console output to generate',
    args: [consoleModeArg],
  ),
  FigOption(
    name: ['-Dorg.gradle.warning.mode'],
    description: 'Specify warning mode via Gradle properties',
    args: [warningModeArg],
  ),
  FigOption(
    name: ['--warning-mode'],
    description: 'Specifies how to log warning',
    args: [warningModeArg],
  ),
  FigOption(
    name: ['--include-build'],
    description: 'Run the build as a composite, including the specified build',
  ),
  FigOption(
    name: ['--offline'],
    description:
        'Specifies that the build should operate without accessing network resources',
  ),
  FigOption(
    name: ['--refresh-dependencies'],
    description: 'Refresh the state of dependencies',
  ),
  FigOption(
    name: ['--dry-run'],
    description:
        'Run Gradle with all task actions disabled. Use this to show which task would have executed',
  ),
  FigOption(
    name: ['--write-locks'],
    description:
        'Indicates that all resolved configurations that are lockable should have their lock state persisted',
  ),
  FigOption(
    name: ['--update-locks'],
    description:
        'Indicates that versions for the specified modules have to be updated in the lock file',
    args: [
      FigArg(
        name: 'group:name',
        isVariadic: true,
      ),
    ],
  ),
  FigOption(
    name: ['--no-rebuild'],
    description:
        'Do not rebuild project dependencies. Useful for debugging and fine-tuning buildSrc, but can lead to wrong results. Use with caution',
    isDangerous: true,
  ),
  FigOption(
    name: ['-b', '--build-file'],
    description:
        'Specifies the build file. For example: gradle --build-file=foo.gradle',
    args: [
      FigArg(
        name: 'file',
        defaultValue: 'build.gradle',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['-c', '--settings-file'],
    description:
        'Specifies the settings file. For example: gradle --settings-file=somewhere/else/settings.gradle',
    args: [
      FigArg(
        name: 'file',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['-g', '--gradle-user-home'],
    description:
        'Specifies the Gradle user home directory. The default is the .gradle directory in the user’s home directory',
    args: [
      FigArg(
        name: 'directory',
        template: 'folders',
      ),
    ],
  ),
  FigOption(
    name: ['-p', '--project-dir'],
    description: 'Specifies the start directory for Gradle',
    args: [
      FigArg(
        name: 'directory',
        defaultValue: './',
        template: 'folders',
      ),
    ],
  ),
  FigOption(
    name: ['--project-cache-dir'],
    description:
        'Specifies the project-specific cache directory. Default value is .gradle in the root project directory',
    args: [
      FigArg(
        name: 'directory',
        template: 'folders',
      ),
    ],
  ),
  FigOption(
    name: ['-D', '--system-prop'],
    description:
        'Sets a system property of the JVM, for example -Dmyprop=myvalue',
    args: [
      FigArg(
        name: 'system property',
      ),
    ],
  ),
  FigOption(
    name: ['-I', '--init-script'],
    description: 'Specifies an initialization script',
  ),
  FigOption(
    name: ['-P', '--project-prop'],
    description:
        'Sets a project property of the root project, for example -Pmyprop=myvalue',
    args: [
      FigArg(
        name: 'system property',
      ),
    ],
  ),
  FigOption(
    name: ['-Dorg.gradle.jvmargs'],
    description: 'Set JVM arguments',
    args: [
      FigArg(
        name: 'arguments',
      ),
    ],
  ),
  FigOption(
    name: ['-Dorg.gradle.java.home'],
    description: 'Set JDK home dir',
    args: [
      FigArg(
        name: 'directory',
        template: 'folders',
      ),
    ],
  ),
];

final FigSpec gradleSpec = FigSpec(
  name: 'gradle',
  description:
      'Gradle is an open-source build automation tool that is designed to be flexible enough to build almost any type of software',
  subcommands: [
    FigSubcommand(
      name: 'build',
      description: 'Compute all outputs',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'run',
      description: 'Run applications',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'check',
      description: 'Run all checks',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'clean',
      description: 'Clear the contents of the build directory',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'projects',
      description: 'List of all sub-projects',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'tasks',
      description: 'List of main tasks of the selected project',
      options: [
        FigOption(
          name: ['--all'],
          description:
              'By default, this report shows only those tasks which have been assigned to a task group. You can obtain more information in the task listing using the --all option',
        ),
        FigOption(
          name: ['--group'],
          description:
              'If you need to be more precise, you can display only the tasks from a specific group',
          args: [
            FigArg(
              name: 'group',
            ),
          ],
        ),
        ...sharedOptions,
      ],
    ),
    FigSubcommand(
      name: 'help',
      description: 'Display task usage information',
      options: [
        FigOption(
          name: ['--task'],
          isRequired: true,
          args: [
            FigArg(
              name: 'task',
            ),
          ],
        ),
        ...sharedOptions,
      ],
    ),
    FigSubcommand(
      name: 'dependencies',
      description:
          'Gives you a list of the dependencies of the selected project, broken down by configuration',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'buildEnvironment',
      description:
          'Visualises the buildscript dependencies of the selected project',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'dependencyInsight',
      description:
          'Gives you an insight into a particular dependency (or dependencies) that match specified input',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: 'properties',
      description: 'Gives you a list of the properties of the selected project',
      options: sharedOptions,
    ),
    FigSubcommand(
      name: '--status',
      description:
          '(Standalone command) List running and recently stopped Gradle daemons. Only displays daemons of the same Gradle version',
    ),
    FigSubcommand(
      name: '--stop',
      description:
          '(Standalone command) Stop all Gradle Daemons of the same version',
    ),
    FigSubcommand(
      name: 'init',
      description: 'Create new Gradle builds, with new or existing projects',
      options: [
        FigOption(
          name: ['--type'],
          description: 'Specify project type',
          args: [
            FigArg(
              name: 'type',
              defaultValue: 'basic',
              suggestions: ['basic', 'java-library', 'java-application'],
            ),
          ],
        ),
        ...sharedOptions,
      ],
    ),
    FigSubcommand(
      name: 'wrapper',
      description:
          'Generates a script, gradlew, that invokes a declared version of Gradle, downloading it beforehand if necessary',
      options: [
        FigOption(
          name: ['--gradle-version'],
          description:
              'The Gradle version used for downloading and executing the Wrapper',
          args: [
            FigArg(
              name: 'version',
            ),
          ],
        ),
        FigOption(
          name: ['--distribution-type'],
          description: 'The Gradle distribution type used for the Wrapper',
          args: [
            FigArg(
              name: 'type',
              defaultValue: 'bin',
              suggestions: ['bin', 'all'],
            ),
          ],
        ),
        FigOption(
          name: ['--gradle-distribution-url'],
          description: 'The full URL pointing to Gradle distribution ZIP file',
          args: [
            FigArg(
              name: 'url',
            ),
          ],
        ),
        FigOption(
          name: ['--gradle-distribution-sha256-sum'],
          description:
              'The SHA256 hash sum used for verifying the downloaded Gradle distribution',
          args: [
            FigArg(
              name: 'SHA256 hash sum',
            ),
          ],
        ),
        ...sharedOptions,
      ],
    ),
    FigSubcommand(
      name: 'test',
      description: 'Run a test task',
      options: [
        FigOption(
          name: ['--continuous'],
          description:
              'Allows you to automatically re-execute the requested tasks when task inputs change',
        ),
        FigOption(
          name: ['--rerun-tasks'],
          description:
              'This will force test and all task dependencies of test to execute',
        ),
        FigOption(
          name: ['--continue'],
          description:
              'Gradle will execute every task to be executed where all of the dependencies for that task completed without failure',
        ),
        ...sharedOptions,
      ],
    ),
  ],
  options: sharedOptions,
  args: [
    FigArg(
      name: 'task name',
      isVariadic: true,
      isOptional: true,
    ),
  ],
);
