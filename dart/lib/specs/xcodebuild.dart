// Auto-generated from TypeScript source: xcodebuild.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xcodebuild` CLI
final FigSpec xcodebuildSpec = FigSpec(
  name: 'xcodebuild',
  description: 'Build Xcode projects',
  options: [

    Option(
      name: '-usage',
      description: 'Print brief usage'
    ),
    Option(
      name: '-help',
      description: 'Print complete usage'
    ),
    Option(
      name: '-verbose',
      description: 'Provide additional status output'
    ),
    Option(
      name: '-license',
      description: 'Show the Xcode and SDK license agreements'
    ),
    Option(
      name: '-checkFirstLaunchStatus',
      description: 'Check if any First Launch tasks need to be performed'
    ),
    Option(
      name: '-runFirstLaunch',
      description: 'Install packages and agree to the license'
    ),
    Option(
      name: '-project',
      description: 'Build the project NAME',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-target',
      description: 'Build the target NAME',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-alltargets',
      description: 'Build all targets'
    ),
    Option(
      name: '-workspace',
      description: 'Build the workspace NAME',
      args: [
        Arg(
        name: 'NAME',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-scheme',
      description: 'Build the scheme NAME',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-configuration',
      description: 'Use the build configuration NAME for building each target',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-xcconfig',
      description: 'Apply the build settings defined in the file at PATH as overrides',
      args: [
        Arg(
        name: 'NAME',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-arch',
      description: 'Build each target for the architecture ARCH; this will override architectures defined in the project',
      args: [
        Arg(
        name: 'ARCH',
        suggestions: [

          FigSuggestion(name: 'x86_64'),
          FigSuggestion(name: 'arm64'),
          FigSuggestion(name: 'armv7')
        ]
      )
      ]
    ),
    Option(
      name: '-sdk',
      description: 'Use SDK as the name or path of the base SDK when building the project',
      args: [
        Arg(
        name: 'SDK',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-toolchain',
      description: 'Use the toolchain with identifier or name NAME',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-destination',
      description: 'Use the destination described by DESTINATIONSPECIFIER (a comma-separated set of key=value pairs describing the destination to use)',
      args: [
        Arg(
        name: 'DESTINATION SPECIFIER',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-destination-timeout',
      description: 'Wait for TIMEOUT seconds while searching for the destination device',
      args: [
        Arg(
        name: 'TIMEOUT'
      )
      ]
    ),
    Option(
      name: '-parallelizeTargets',
      description: 'Build independent targets in parallel'
    ),
    Option(
      name: '-jobs',
      description: 'Specify the maximum number of concurrent build operations',
      args: [
        Arg(
        name: 'NUMBER'
      )
      ]
    ),
    Option(
      name: '-maximum-concurrent-test-device-destinations',
      description: 'The maximum number of device destinations to test on concurrently',
      args: [
        Arg(
        name: 'NUMBER'
      )
      ]
    ),
    Option(
      name: '-maximum-concurrent-test-simulator-destinations',
      description: 'The maximum number of simulator destinations to test on concurrently',
      args: [
        Arg(
        name: 'NUMBER'
      )
      ]
    ),
    Option(
      name: '-parallel-testing-enabled',
      description: 'Overrides the per-target setting in the scheme',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-parallel-testing-worker-count',
      description: 'The exact number of test runners that will be spawned during parallel testing',
      args: [
        Arg(
        name: 'NUMBER'
      )
      ]
    ),
    Option(
      name: '-maximum-parallel-testing-workers',
      description: 'The maximum number of test runners that will be spawned during parallel testing',
      args: [
        Arg(
        name: 'NUMBER'
      )
      ]
    ),
    Option(
      name: '-dry-run',
      description: 'Do everything except actually running the commands'
    ),
    Option(
      name: '-quiet',
      description: 'Do not print any output except for warnings and errors'
    ),
    Option(
      name: '-hideShellScriptEnvironment',
      description: 'Don\'t show shell script environment variables in build log'
    ),
    Option(
      name: '-showsdks',
      description: 'Display a compact list of the installed SDKs'
    ),
    Option(
      name: '-showdestinations',
      description: 'Display a list of destinations'
    ),
    Option(
      name: '-showTestPlans',
      description: 'Display a list of test plans'
    ),
    Option(
      name: '-showBuildSettings',
      description: 'Display a list of build settings and values'
    ),
    Option(
      name: '-showBuildSettingsForIndex',
      description: 'Display build settings for the index service'
    ),
    Option(
      name: '-list',
      description: 'Lists the targets and configurations in a project, or the schemes in a workspace'
    ),
    Option(
      name: '-find-executable',
      description: 'Display the full path to executable NAME in the provided SDK and toolchain',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-find-library',
      description: 'Display the full path to library NAME in the provided SDK and toolchain',
      args: [
        Arg(
        name: 'NAME'
      )
      ]
    ),
    Option(
      name: '-version',
      description: 'Display the version of Xcode; with -sdk will display info about one or all installed SDKs'
    ),
    Option(
      name: '-enableAddressSanitizer',
      description: 'Turn the address sanitizer on or off',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-enableThreadSanitizer',
      description: 'Turn the thread sanitizer on or off',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-enableUndefinedBehaviorSanitizer',
      description: 'Turn the undefined behavior sanitizer on or off',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-resultBundlePath',
      description: 'Specifies the directory where a result bundle describing what occurred will be placed',
      args: [
        Arg(
        name: 'PATH',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-resultStreamPath',
      description: 'Specifies the file where a result stream will be written to (the file must already exist)',
      args: [
        Arg(
        name: 'PATH',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-resultBundleVersion',
      description: 'Specifies which result bundle version should be used',
      args: [
        Arg(
        name: 'version',
        defaultValue: '3'
      )
      ]
    ),
    Option(
      name: '-clonedSourcePackagesDirPath',
      description: 'Specifies the directory to which remote source packages are fetch or expected to be found',
      args: [
        Arg(
        name: 'PATH',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-derivedDataPath',
      description: 'Specifies the directory where build products and other derived data will go',
      args: [
        Arg(
        name: 'PATH',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-archivePath',
      description: 'Specifies the directory where any created archives will be placed, or the archive that should be exported',
      args: [
        Arg(
        name: 'PATH',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-exportArchive',
      description: 'Specifies that an archive should be exported'
    ),
    Option(
      name: '-exportNotarizedApp',
      description: 'Export an archive that has been notarized by Apple'
    ),
    Option(
      name: '-exportOptionsPlist',
      description: 'Specifies a path to a plist file that configures archive exporting',
      args: [
        Arg(
        name: 'PATH',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-enableCodeCoverage',
      description: 'Turn code coverage on or off when testing',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-exportPath',
      description: 'Specifies the destination for the product exported from an archive',
      args: [
        Arg(
        name: 'PATH',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-skipUnavailableActions',
      description: 'Specifies that scheme actions that cannot be performed should be skipped instead of causing a failure'
    ),
    Option(
      name: '-exportLocalizations',
      description: 'Exports completed and outstanding project localizations'
    ),
    Option(
      name: '-importLocalizations',
      description: 'Imports localizations for a project, assuming any necessary localized resources have been created in Xcode'
    ),
    Option(
      name: '-localizationPath',
      description: 'Specifies a path to XLIFF localization file',
      args: [
        Arg(
        name: 'PATH',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-exportLanguage',
      description: 'Specifies multiple optional ISO 639-1 languages included in a localization export',
      args: [
        Arg(
        name: 'languages',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '-xcroot',
      description: 'Specifies a path to a .xcroot to use for building and/or testing',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-xctestrun',
      description: 'Specifies a path to a test run specification',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-testPlan',
      description: 'Specifies the name of the test plan associated with the scheme to use for testing',
      args: [
        Arg(
        name: 'test plan'
      )
      ]
    ),
    Option(
      name: '-only-testing',
      description: 'Constrains testing by specifying tests to include, and excluding other tests',
      exclusiveOn: ['-skip-testing']
    ),
    Option(
      name: '-only-testing:',
      insertValue: '-only-testing:{cursor}',
      description: 'Constrains testing by specifying tests to include, and excluding other tests',
      args: [
        Arg(
        name: 'Test Identifier'
      )
      ],
      exclusiveOn: ['-skip-testing']
    ),
    Option(
      name: '-skip-testing',
      description: 'Constrains testing by specifying tests to exclude, but including other tests',
      exclusiveOn: ['-only-testing']
    ),
    Option(
      name: '-skip-testing:',
      insertValue: '-skip-testing:{cursor}',
      description: 'Constrains testing by specifying tests to exclude, but including other tests',
      args: [
        Arg(
        name: 'Test Identifier'
      )
      ],
      exclusiveOn: ['-only-testing']
    ),
    Option(
      name: '-test-timeouts-enabled',
      description: 'Enable or disable test timeout behavior',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'YES'),
          FigSuggestion(name: 'NO')
        ]
      )
      ]
    ),
    Option(
      name: '-default-test-execution-time-allowance',
      description: 'The default execution time an individual test is given to execute, if test timeouts are enabled',
      args: [
        Arg(
        name: 'SECONDS'
      )
      ]
    ),
    Option(
      name: '-maximum-test-execution-time-allowance',
      description: 'The maximum execution time an individual test is given to execute, regardless of the test\'s preferred allowance',
      args: [
        Arg(
        name: 'SECONDS'
      )
      ]
    ),
    Option(
      name: '-only-test-configuration',
      description: 'Constrains testing by specifying test configurations to include, and excluding other test configurations'
    ),
    Option(
      name: '-skip-test-configuration',
      description: 'Constrains testing by specifying test configurations to exclude, but including other test configurations'
    ),
    Option(
      name: '-testLanguage',
      description: 'Constrains testing by specifying ISO 639-1 language in which to run the tests'
    ),
    Option(
      name: '-testRegion',
      description: 'Constrains testing by specifying ISO 3166-1 region in which to run the tests'
    ),
    Option(
      name: '-resolvePackageDependencies',
      description: 'Resolves any Swift package dependencies referenced by the project or workspace'
    ),
    Option(
      name: '-disableAutomaticPackageResolution',
      description: 'Prevents packages from automatically being resolved to versions other than those recorded in the `Package.resolved` file'
    ),
    Option(
      name: '-json',
      description: 'Output as JSON'
    ),
    Option(
      name: '-allowProvisioningUpdates',
      description: 'Allow xcodebuild to communicate with the Apple Developer website. For automatically signed targets, xcodebuild will create and update profiles, app IDs, and certificates. For manually signed targets, xcodebuild will download missing or updated provisioning profiles. Requires a developer account to have been added in Xcode\'s Accounts preference pane'
    ),
    Option(
      name: '-allowProvisioningDeviceRegistration',
      description: 'Allow xcodebuild to register your destination device on the developer portal if necessary. This flag only takes effect if -allowProvisioningUpdates is also passed'
    ),
    Option(
      name: '-scmProvider',
      description: 'Which implementation to use for Git operations (system/xcode)',
      args: [
        Arg(
        name: 'Implementation',
        suggestions: [

          FigSuggestion(name: 'system'),
          FigSuggestion(name: 'xcode')
        ]
      )
      ]
    ),
    Option(
      name: '-showBuildTimingSummary',
      description: 'Display a report of the timings of all the commands invoked during the build'
    ),
    Option(
      name: '-create-xcframework',
      description: 'Create an xcframework from prebuilt libraries; -help for more information'
    ),
    Option(
      name: 'build',
      description: 'Build the target in the build root (SYMROOT).  This is the default build action'
    ),
    Option(
      name: 'installsrc',
      description: 'Copy the source of the project to the source root (SRCROOT)'
    ),
    Option(
      name: 'install',
      description: 'Build the target and install it into the target\'s installation directory in the distribution root (DSTROOT)'
    ),
    Option(
      name: 'clean',
      description: 'Remove build products and intermediate files from the build root (SYMROOT)'
    )
  ]
);
