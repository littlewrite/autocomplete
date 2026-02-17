// AI-generated from TypeScript source: src/flutter.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator emulatorsGenerator = FigGenerator(
  script: ['flutter', 'emulators'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.contains('•'))
        .map((line) {
          final parts = line.split('•').map((s) => s.trim()).toList();
          if (parts.length < 4) return null;
          return FigSuggestion(
            name: '${parts[1]} • ${parts[2]} • ${parts[3]}',
            icon: '📱',
            description: 'Available emulators',
            insertValue: parts[0],
          );
        })
        .whereType<FigSuggestion>()
        .toList();
  },
);

final FigOption help = FigOption(
  name: ['-h', '--help'],
  description: 'Print this usage information',
);

final FigOption verbose = FigOption(
  name: ['-v', '--verbose'],
  description:
      'Noisy logging, including all shell commands executed. If used with --help, shows hidden options',
);

final FigOption deviceId = FigOption(
  name: ['-d', '--device-id'],
  insertValue: "--device-id '{cursor}'",
  description: 'Target device id or name (prefixes allowed)',
  args: [
    FigArg(
      name: 'device id',
      description: 'Target device id or name (prefixes allowed)',
      generators: [emulatorsGenerator],
    ),
  ],
);

final FigOption version = FigOption(
  name: ['--version'],
  description: 'Reports the version of this tool',
);

final FigOption suppressAnalytics = FigOption(
  name: ['--suppress-analytics'],
  description: 'Suppress analytics reporting when this command runs',
);

final List<FigOption> globalOpts = [help, verbose, deviceId, suppressAnalytics];

final List<FigOption> pub = [
  FigOption(
    name: ['--pub'],
    description: "Run 'flutter pub get' before executing this command",
  ),
  FigOption(
    name: ['--no-pub'],
    description: "Don't run 'flutter pub get' before executing this command",
  ),
];

final List<FigOption> currentPackage = [
  FigOption(
    name: ['--current-package'],
    description: 'Analyze the current project, if applicable',
  ),
  FigOption(
    name: ['--no-current-package'],
    description: "Don't analyze the current project, if applicable",
  ),
];

final List<FigOption> congratulate = [
  FigOption(
    name: ['--congratulate'],
    description:
        'Show output even when there are no errors, warnings, hints, or lints. Ignored if --watch is specified',
  ),
  FigOption(
    name: ['--no-congratulate'],
    description:
        'Hide output even when there are no errors, warnings, hints, or lints. Ignored if --watch is specified',
  ),
];

final List<FigOption> preamble = [
  FigOption(
    name: ['--preamble'],
    description:
        'When analyzing the flutter repository, display the number of files that will be analyzed. Ignored if --watch is specified',
  ),
  FigOption(
    name: ['--no-preamble'],
    description:
        "When analyzing the flutter repository, don't display the number of files that will be analyzed. Ignored if --watch is specified",
  ),
];

final List<FigOption> fatalInfos = [
  FigOption(
    name: ['--fatal-infos'],
    description: 'Treat info level issues as fatal',
  ),
  FigOption(
    name: ['--no-fatal-infos'],
    description: "Don't treat info level issues as fatal",
  ),
];

final List<FigOption> fatalWarnings = [
  FigOption(
    name: ['--fatal-warnings'],
    description: 'Treat warning level issues as fatal',
  ),
  FigOption(
    name: ['--no-fatal-warnings'],
    description: "Don't treat warning level issues as fatal",
  ),
];

final List<FigOption> nullAssertions = [
  FigOption(
    name: ['--null-assertions'],
    description:
        'Perform additional null assertions on the boundaries of migrated and un-migrated code. This setting is not currently supported on desktop devices',
  ),
  FigOption(
    name: ['--no-null-assertions'],
    description:
        'Not performing additional null assertions on the boundaries of migrated and un-migrated code. This setting is not currently supported on desktop devices',
  ),
];

final List<FigOption> trackWidgetCreation = [
  FigOption(
    name: ['--track-widget-creation'],
    description:
        'Track widget creation locations. This enables features such as the widget inspector. This parameter is only functional in debug mode (i.e. when compiling JIT, not AOT)',
  ),
  FigOption(
    name: ['--no-track-widget-creation'],
    description:
        'No tracking widget creation locations. This disables features such as the widget inspector. This parameter is only functional in debug mode (i.e. when compiling JIT, not AOT)',
  ),
];

final List<FigOption> testAssets = [
  FigOption(
    name: ['--test-assets'],
    description:
        'Build the assets bundle for testing. Consider using --no-test-assets if assets are not required',
  ),
  FigOption(
    name: ['--no-test-assets'],
    description: 'Exclude the assets bundle for build testing',
  ),
];

final List<FigOption> uninstallOnly = [
  FigOption(
    name: ['--uninstall-only'],
    description: 'Uninstall the app if already on the device. Skip install',
  ),
  FigOption(
    name: ['--no-uninstall-only'],
  ),
];

final List<FigOption> useDeferredLoading = [
  FigOption(
    name: ['--use-deferred-loading'],
    description:
        "Generate the Dart localization file with locales imported as deferred, allowing for lazy loading of each locale in Flutter web. \n\nThis can reduce a web app’s initial startup time by decreasing the size of the JavaScript bundle. When this flag is set to true, the messages for a particular locale are only downloaded and loaded by the Flutter app as they are needed. For projects with a lot of different locales and many localization strings, it can be an performance improvement to have deferred loading. For projects with a small number of locales, the difference is negligible, and might slow down the start up compared to bundling the localizations with the rest of the application. \n\nNote that this flag does not affect other platforms such as mobile or desktop",
  ),
  FigOption(
    name: ['--no-use-deferred-loading'],
    description:
        "Don't generate the Dart localization file with locales imported as deferred",
  ),
];

final List<FigOption> syntheticPackage = [
  FigOption(
    name: ['--synthetic-package'],
    description:
        "Determines that the generated output files will be generated as a synthetic package or at a specified directory in the Flutter project. \n\nThis flag is set to true by default. \n\nWhen synthetic-package is set to false, it will generate the localizations files in the directory specified by arb-dir by default. \n\nIf output-dir is specified, files will be generated there",
  ),
  FigOption(
    name: ['--no-synthetic-package'],
  ),
];

final List<FigOption> requiredResourceAttributes = [
  FigOption(
    name: ['--required-resource-attributes'],
    description:
        "Requires all resource ids to contain a corresponding resource attribute. \n\nBy default, simple messages will not require metadata, but it is highly recommended as this provides context for the meaning of a message to readers. \n\nResource attributes are still required for plural messages",
  ),
  FigOption(
    name: ['--no-required-resource-attributes'],
  ),
];

final List<FigOption> startPaused = [
  FigOption(
    name: ['--start-paused'],
    description: 'Start in a paused mode and wait for a debugger to connect',
  ),
  FigOption(
    name: ['--no-start-paused'],
  ),
];

final List<FigOption> keepAppRunning = [
  FigOption(
    name: ['--keep-app-running'],
    description:
        'Will keep the Flutter application running when done testing. By default, "flutter drive" stops the application after tests are finished, and --keep-app-running overrides this. On the other hand, if --use-existing-app is specified, then "flutter drive" instead defaults to leaving the application running, and --no-keep-app-running overrides it',
  ),
  FigOption(
    name: ['--no-keep-app-running'],
  ),
];

final List<FigOption> build = [
  FigOption(
    name: ['--build'],
    description:
        '(Deprecated) Build the app before running. To use an existing app, pass the --use-application-binary flag with an existing APK (defaults to on)',
  ),
  FigOption(
    name: ['--no-build'],
  ),
];

final List<FigOption> headless = [
  FigOption(
    name: ['--headless'],
    description:
        'Whether the driver browser is going to be launched in headless mode. Defaults to true',
  ),
  FigOption(
    name: ['--no-headless'],
  ),
];

final List<FigOption> androidEmulator = [
  FigOption(
    name: ['--android-emulator'],
    description:
        "Whether to perform Flutter Driver testing on Android Emulator.Works only if 'browser-name' is set to 'android-chrome'",
  ),
  FigOption(
    name: ['--no-android-emulator'],
  ),
];

final List<FigOption> awaitFirstFrameWhenTracing = [
  FigOption(
    name: ['--await-first-frame-when-tracing'],
    description:
        'Whether to wait for the first frame when tracing startup ("--trace-startup"), or just dump the trace as soon as the application is running. The first frame is detected by looking for a Timeline event with the name "Rasterized first useful frame". By default, the widgets library\'s binding takes care of sending this event',
  ),
  FigOption(
    name: ['--no-await-first-frame-when-tracing'],
  ),
];

final List<FigOption> useTestFonts = [
  FigOption(
    name: ['--use-test-fonts'],
    description:
        'Enable (and default to) the "Ahem" font. This is a special font used in tests to remove any dependencies on the font metrics. It is enabled when you use "flutter test". Set this flag when running a test using "flutter run" for debugging purposes. This flag is only available when running in debug mode',
  ),
  FigOption(
    name: ['--no-use-test-fonts'],
  ),
];

final List<FigOption> hot = [
  FigOption(
    name: ['--hot'],
    description:
        'Run with support for hot reloading. Only available for debug mode. Not available with "--trace-startup"',
  ),
  FigOption(
    name: ['--no-hot'],
  ),
];

final List<FigOption> fastStart = [
  FigOption(
    name: ['--fast-start'],
    description:
        'Whether to quickly bootstrap applications with a minimal app. Currently this is only supported on Android devices. This option cannot be paired with --use-application-binary',
  ),
  FigOption(
    name: ['--no-fast-start'],
  ),
];

final List<FigOption> offline = [
  FigOption(
    name: ['--offline'],
    description:
        'When "flutter pub get" is run by the create command, this indicates whether to run it in offline mode or not. In offline mode, it will need to have all dependencies already available in the pub cache to succeed',
  ),
  FigOption(
    name: ['--no-offline'],
  ),
];

final List<FigOption> withDriverTest = [
  FigOption(
    name: ['--with-driver-test'],
    description:
        "(Deprecated) Also add a flutter_driver dependency and generate a sample 'flutter drive' test. This flag has been deprecated, instead see package:integration_test at https://pub.dev/packages/integration_test",
  ),
  FigOption(
    name: ['--no-with-driver-test'],
  ),
];

final List<FigOption> overwrite = [
  FigOption(
    name: ['--overwrite'],
    description: 'When performing operations, overwrite existing files',
  ),
  FigOption(
    name: ['--no-overwrite'],
  ),
];

final List<FigOption> analytics = [
  FigOption(
    name: ['--analytics'],
    description:
        'Enable reporting anonymously tool usage statistics and crash reports',
  ),
  FigOption(
    name: ['--no-analytics'],
    description:
        'Disable reporting anonymously tool usage statistics and crash reports',
  ),
];

final List<FigOption> enableWeb = [
  FigOption(
    name: ['--enable-web'],
    description:
        'Enable Flutter for web. This setting will take effect on the master, dev, beta, and stable channels',
  ),
  FigOption(
    name: ['--no-enable-web'],
    description:
        'Disable Flutter for web. This setting will take effect on the master, dev, beta, and stable channels',
  ),
];

final List<FigOption> enableLinuxDesktop = [
  FigOption(
    name: ['--enable-linux-desktop'],
    description:
        'Enable beta-quality support for desktop on Linux. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
  FigOption(
    name: ['--no-enable-linux-desktop'],
    description:
        'Disable beta-quality support for desktop on Linux. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
];

final List<FigOption> enableMacosDesktop = [
  FigOption(
    name: ['--enable-macos-desktop'],
    description:
        'Enable beta-quality support for desktop on macOS. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
  FigOption(
    name: ['--no-enable-macos-desktop'],
    description:
        'Disable beta-quality support for desktop on macOS. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
];

final List<FigOption> enableWindowsDesktop = [
  FigOption(
    name: ['--enable-windows-desktop'],
    description:
        'Enable beta-quality support for desktop on Windows. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
  FigOption(
    name: ['--no-enable-windows-desktop'],
    description:
        'Disable beta-quality support for desktop on Windows. This setting will take effect on the master, dev, beta, and stable channels. Newer beta versions are available on the beta channel',
  ),
];

final List<FigOption> singleWidgetReloadOptimization = [
  FigOption(
    name: ['--single-widget-reload-optimization'],
    description:
        'Enable Hot reload optimization for changes to class body of a single widget. This setting will take effect on the master, dev, and beta channels',
  ),
  FigOption(
    name: ['--no-single-widget-reload-optimization'],
    description:
        'Disable Hot reload optimization for changes to class body of a single widget. This setting will take effect on the master, dev, and beta channels',
  ),
];

final List<FigOption> enableAndroid = [
  FigOption(
    name: ['--enable-android'],
    description:
        'Enable Flutter for Android. This setting will take effect on the master, dev, beta, and stable channels',
  ),
  FigOption(
    name: ['--no-enable-android'],
    description:
        'Disable Flutter for Android. This setting will take effect on the master, dev, beta, and stable channels',
  ),
];

final List<FigOption> enableIos = [
  FigOption(
    name: ['--enable-ios'],
    description:
        'Enable Flutter for iOS. This setting will take effect on the master, dev, beta, and stable channels',
  ),
  FigOption(
    name: ['--no-enable-ios'],
    description:
        'Disable Flutter for iOS. This setting will take effect on the master, dev, beta, and stable channels',
  ),
];

final List<FigOption> enabledFuchsia = [
  FigOption(
    name: ['--enable-fuchsia'],
    description:
        'Enable Flutter for Fuchsia. This setting will take effect on the master channel',
  ),
  FigOption(
    name: ['--no-enable-fuchsia'],
    description:
        'Disable Flutter for Fuchsia. This setting will take effect on the master channel',
  ),
];

final List<FigOption> experimentalInvalidationStrategy = [
  FigOption(
    name: ['--experimental-invalidation-strategy'],
    description:
        'Enable Hot reload optimization that reduces incremental artifact size. This setting will take effect on the master, dev, and beta channels',
  ),
  FigOption(
    name: ['--no-experimental-invalidation-strategy'],
    description:
        'Disable Hot reload optimization that reduces incremental artifact size. This setting will take effect on the master, dev, and beta channels',
  ),
];

final FigOption deviceUser = FigOption(
  name: ['--device-user'],
  description:
      'Identifier number for a user or work profile on Android only. Run "adb shell pm list users" for available identifiers',
  args: [FigArg(name: 'seconds')],
);

final FigOption deviceTimeout = FigOption(
  name: ['--device-timeout'],
  description:
      'Time in seconds to wait for devices to attach. Longer timeouts may be necessary for networked devices',
  args: [FigArg(name: 'seconds')],
);

final Option debug = FigOption(
  name: ['--debug'],
  description: 'Build a debug version of your app (default mode)',
);

final FigOption profile = FigOption(
  name: ['--profile'],
  description:
      'Build a version of your app specialized for performance profiling',
);

final FigOption target = FigOption(
  name: ['-t', '--target'],
  insertValue: '--target ',
  description:
      'The main entry-point file of the application, as run on the device. If the --target option is omitted, but a file name is provided on the command line, then that is used instead. (defaults to "lib/main.dart")',
  args: [
    FigArg(
      name: '.dart file path',
      template: 'filepaths',
    ),
  ],
);

final FigOption observatoryPort = FigOption(
  name: ['--observatory-port'],
  description:
      '(deprecated use host-vmservice-port instead) Listen to the given port for an observatory debugger connection. Specifying port 0 (the default) will find a random free port',
);

final FigOption deviceVmservicePort = FigOption(
  name: ['--device-vmservice-port'],
  description:
      'Look for vmservice connections only from the specified port. Specifying port 0 (the default) will accept the first vmservice discovered',
);

final FigOption hostVmServicePort = FigOption(
  name: ['--host-vmservice-port'],
  description:
      'When a device-side vmservice port is forwarded to a host-side port, use this value as the host port. Specifying port 0 (the default) will find a random free host port',
);

final FigOption dartDefine = FigOption(
  name: ['--dart-define'],
  description:
      'Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, int.fromEnvironment, and double.fromEnvironment constructors',
  args: [FigArg(name: 'foo=bar')],
);

final List<FigOption> run = [
  debug,
  profile,
  FigOption(
    name: ['--release'],
    description: 'Build a release version of your app',
  ),
  dartDefine,
  FigOption(
    name: ['--flavor'],
    description:
        'Build a custom app flavor as defined by platform-specific build setup. Supports the use of product flavors in Android Gradle scripts, and the use of custom Xcode schemes',
  ),
  FigOption(
    name: ['--web-renderer'],
    description:
        'The renderer implementation to use when building for the web. Possible values are: html - always use the HTML renderer. This renderer uses a combination of HTML, CSS, SVG, 2D Canvas, and WebGL. This is the default. canvaskit - always use the CanvasKit renderer. This renderer uses WebGL and WebAssembly to render graphics. auto - use the HTML renderer on mobile devices, and CanvasKit on desktop devices. [auto (default), canvaskit, html]',
  ),
  FigOption(
    name: ['--trace-startup'],
    description:
        'Trace application startup, then exit, saving the trace to a file',
  ),
  FigOption(
    name: ['--verbose-system-logs'],
    description: 'Include verbose logging from the flutter engine',
  ),
  FigOption(
    name: ['--cache-sksl'],
    description: 'Only cache the shader in SkSL instead of binary or GLSL',
  ),
  FigOption(
    name: ['--dump-skp-on-shader-compilation'],
    description:
        'Automatically dump the skp that triggers new shader compilations. This is useful for writing custom ShaderWarmUp to reduce jank. By default, this is not enabled to reduce the overhead. This is only available in profile or debug build',
  ),
  FigOption(
    name: ['--purge-persistent-cache'],
    description:
        'Removes all existing persistent caches. This allows reproducing shader compilation jank that normally only happens the first time an app is run, or for reliable testing of compilation jank fixes (e.g. shader warm-up)',
  ),
  FigOption(
    name: ['--route'],
    description: 'Which route to load when running the app',
  ),
  FigOption(
    name: ['--vmservice-out-file'],
    description:
        'A file to write the attached vmservice uri to after an application is started. e.g. project/example/out.txt',
    args: [
      FigArg(
        name: '.txt output file path',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['--use-application-binary'],
    description:
        'Specify a pre-built application binary to use when running. For android applications, this must be the path to an APK. For iOS applications, the path to an IPA. Other device types do not yet support prebuilt application binaries. e.g. path/to/app.apk',
    args: [
      FigArg(
        name: 'file path to .apk',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['--endless-trace-buffer'],
    description:
        'Enable tracing to the endless tracer. This is useful when recording huge amounts of traces. If we need to use endless buffer to record startup traces, we can combine the ("--trace-startup"). For example, flutter run --trace-startup --endless-trace-buffer',
  ),
  FigOption(
    name: ['--trace-systrace'],
    description:
        'Enable tracing to the system tracer. This is only useful on platforms where such a tracer is available (Android and Fuchsia)',
  ),
  FigOption(
    name: ['--trace-skia'],
    description:
        'Enable tracing of Skia code. This is useful when debugging the raster thread (formerly known as the GPU thread). By default, Flutter will not log skia code',
  ),
  FigOption(
    name: ['-a', '--dart-entrypoint-args'],
    insertValue: '--dart-entrypoint-args',
    description:
        'Pass a list of arguments to the Dart entrypoint at application startup. By default this is main(List<String> args). Specify this option multiple times each with one argument to pass multiple arguments to the Dart entrypoint. Currently this is only supported on desktop platforms',
    isRepeatable: true,
  ),
  target,
  observatoryPort,
  deviceVmservicePort,
  hostVmServicePort,
  ...pub,
  ...trackWidgetCreation,
  ...nullAssertions,
  deviceUser,
  deviceTimeout,
  FigOption(
    name: ['--dds-port'],
    description:
        'When this value is provided, the Dart Development Service (DDS) will be bound to the provided port. Specifying port 0 (the default) will find a random free port',
  ),
  FigOption(
    name: ['--devtools-server-address'],
    description:
        'When this value is provided, the Flutter tool will not spin up a new DevTools server instance, but instead will use the one provided at this address',
  ),
];

final FigSpec flutterSpec = FigSpec(
  name: 'flutter',
  description: 'Run flutter command',
  subcommands: [
    FigSubcommand(
      name: 'analyze',
      description: "Analyze the project's Dart code",
      options: [
        ...globalOpts,
        ...currentPackage,
        FigOption(
          name: ['--watch'],
          description:
              'Run analysis continuously, watching the filesystem for changes',
        ),
        FigOption(
          name: ['--write'],
          description:
              'Also output the results to a file. This is useful with --watch if you want a file to always contain the latest results',
          args: [
            FigArg(
              name: 'file path',
              template: 'filepaths',
            ),
          ],
        ),
        ...pub,
        ...congratulate,
        ...preamble,
        ...fatalInfos,
        ...fatalWarnings,
      ],
    ),
    FigSubcommand(
      name: 'assemble',
      description: 'Assemble and build Flutter resources',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-d', '--define'],
          description:
              'Allows passing configuration to a target with --define=target=key=value',
          insertValue: '--define',
        ),
        FigOption(
          name: ['--performance-measurement-file'],
          description: 'Output individual target performance to a JSON file',
        ),
        FigOption(
          name: ['-i', '--input'],
          description: 'Treat warning level issues as fatal',
          insertValue: '--input',
        ),
        FigOption(
          name: ['--depfile'],
          description:
              'A file path where a depfile will be written. This contains all build inputs and outputs in a make style syntax',
        ),
        FigOption(
          name: ['--build-inputs'],
          description:
              'A file path where a newline separated file containing all inputs used will be written after a build. This file is not included as a build input or output. This file is not written if the build fails for any reason',
        ),
        FigOption(
          name: ['--build-outputs'],
          description:
              'A file path where a newline separated file containing all outputs used will be written after a build. This file is not included as a build input or output. This file is not written if the build fails for any reason',
        ),
        FigOption(
          name: ['-o', '--output'],
          description:
              'A directory where output files will be written. Must be either absolute or relative from the root of the current Flutter project',
          insertValue: '--output',
        ),
        FigOption(name: ['--ExtraGenSnapshotOptions']),
        FigOption(name: ['--ExtraFrontEndOptions']),
        FigOption(name: ['--DartDefines']),
        FigOption(
          name: ['--resource-pool-size'],
          description:
              'The maximum number of concurrent tasks the build system will run',
        ),
      ],
    ),
    FigSubcommand(
      name: 'attach',
      description: 'Attach to a running app',
      options: [
        ...globalOpts,
        debug,
        profile,
        target,
        observatoryPort,
        deviceVmservicePort,
        hostVmServicePort,
        dartDefine,
        deviceUser,
        ...nullAssertions,
        FigOption(
          name: ['--debug-uri'],
          description: 'The URI at which the observatory is listening',
        ),
        FigOption(
          name: ['--app-id'],
          description:
              'The package name (Android) or bundle identifier (iOS) for the app. This can be specified to avoid being prompted if multiple observatory ports are advertised. If you have multiple devices or emulators running, you should include the device hostname as well, e.g. "com.example.myApp@my-iphone". This parameter is case-insensitive',
        ),
        FigOption(
          name: ['--pid-file'],
          description:
              'Specify a file to write the process id to. You can send SIGUSR1 to trigger a hot reload and SIGUSR2 to trigger a hot restart',
        ),
        ...trackWidgetCreation,
        FigOption(
          name: ['--dds-port'],
          description:
              'When this value is provided, the Dart Development Service (DDS) will be bound to the provided port. Specifying port 0 (the default) will find a random free port',
        ),
        FigOption(
          name: ['--devtools-server-address'],
          description:
              'When this value is provided, the Flutter tool will not spin up a new DevTools server instance, but instead will use the one provided at this address',
        ),
        deviceTimeout,
      ],
    ),
    FigSubcommand(
      name: 'bash-completion',
      description: 'Output command line shell completion setup scripts',
      options: [...globalOpts, ...overwrite],
    ),
    FigSubcommand(
      name: 'build',
      description: 'Build an executable app or install bundle',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-t', '--target'],
          insertValue: '--target ',
          description:
              'The main entry-point file of the application, as run on the device.\n If the --target option is omitted, but a file name is provided on the command line, then that is used instead.\n(defaults to "lib/main.dart")',
          args: [
            FigArg(
              name: 'path',
              template: 'filepaths',
            ),
          ],
        ),
      ],
      args: [
        FigArg(
          name: 'executable-type',
          description: '',
          suggestions: [
            const FigSuggestion(
              name: 'aar',
              description:
                  'Build a repository containing an AAR and a POM file',
              type: SuggestionType.arg,
              icon: '📦',
            ),
            FigSuggestion(
              name: 'apk',
              description: 'Build an Android APK file from your app',
              type: SuggestionType.arg,
              icon: '🤖',
            ),
            FigSuggestion(
              name: 'appbundle',
              description: 'Build an Android App Bundle file from your app',
              type: SuggestionType.arg,
              icon: '🤖',
            ),
            FigSuggestion(
              name: 'bundle',
              description: 'Build the Flutter assets directory from your app',
              type: SuggestionType.arg,
              icon: '📦',
            ),
            FigSuggestion(
              name: 'ios',
              description:
                  'Build an iOS application bundle (Mac OS X host only)',
              type: SuggestionType.arg,
              icon: '📱',
            ),
            FigSuggestion(
              name: 'ios-framework',
              description:
                  'Produces .xcframeworks for a Flutter project and its plugins for integration into existing, plain Xcode projects',
              type: SuggestionType.arg,
              icon: '📱',
            ),
            FigSuggestion(
              name: 'ipa',
              description: 'Build an iOS archive bundle (Mac OS X host only)',
              type: SuggestionType.arg,
              icon: '📱',
            ),
            FigSuggestion(
              name: 'web',
              description: 'Build a web application bundle',
              type: SuggestionType.arg,
              icon: '🌎',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'channel',
      description: 'List or switch Flutter channels',
      args: [
        FigArg(
          name: 'channel-name',
          description:
              'Switch to <channel name>. Leave this blank to see available channels',
          generators: [
            FigGenerator(
              script: ['flutter', 'channel'],
              postProcess: (String out, [List<String>? tokens]) {
                return out
                    .split('\n')
                    .where((channel) => channel.trim().isNotEmpty)
                    .map((channel) {
                      final match = RegExp(r'\w+').firstMatch(channel);
                      if (match == null) return null;
                      final name = match.group(0)!;
                      final active = channel.contains('*');
                      return FigSuggestion(
                        name: '$name${active ? " ✅" : ""}',
                        icon: '🐦',
                        description: 'Available channels',
                        insertValue: name,
                      );
                    })
                    .whereType<FigSuggestion>()
                    .toList();
              },
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'clean',
      description: 'Delete the build/ and .dart_tool/ directories',
      options: globalOpts,
    ),
    FigSubcommand(
      name: 'config',
      description: 'Configure Flutter settings',
      options: [
        ...globalOpts,
        ...analytics,
        FigOption(
          name: ['--clear-ios-signing-cert'],
          description:
              'Clear the saved development certificate choice used to sign apps for iOS device deployment',
        ),
        FigOption(
          name: ['--android-sdk'],
          description: 'The Android SDK directory',
        ),
        FigOption(
          name: ['--android-studio-dir'],
          description: 'The Android Studio install directory',
        ),
        FigOption(
          name: ['--build-dir'],
          description:
              'The relative path to override a projects build directory',
          args: [
            FigArg(
              name: 'path',
              template: 'folders',
            ),
          ],
        ),
        ...enableWeb,
        ...enableLinuxDesktop,
        ...enableMacosDesktop,
        ...enableWindowsDesktop,
        ...singleWidgetReloadOptimization,
        ...enableAndroid,
        ...enableIos,
        ...enabledFuchsia,
        ...experimentalInvalidationStrategy,
        FigOption(
          name: ['--clear-features'],
          description:
              'Remove all configured features and restore them to the default values',
        ),
      ],
    ),
    FigSubcommand(
      name: 'create',
      description: 'Create a new Flutter project',
      options: [
        ...globalOpts,
        ...pub,
        ...offline,
        ...withDriverTest,
        ...overwrite,
        FigOption(
          name: ['--description'],
          description:
              'The description to use for your new Flutter project. This string ends up in the pubspec.yaml file. (defaults to "A new Flutter project.")',
        ),
        FigOption(
          name: ['--org'],
          description:
              'The organization responsible for your new Flutter project, in reverse domain name notation. This string is used in Java package names and as prefix in the iOS bundle identifier. (defaults to "com.example")',
        ),
        FigOption(
          name: ['--project-name'],
          description:
              'The project name for this new Flutter project. This must be a valid dart package name',
        ),
        FigOption(
          name: ['-i', '--ios-language'],
          insertValue: '--ios-language ',
          description: '[objc, swift (default)]',
          args: [
            FigArg(
              suggestions: [
                FigSuggestion(
                  name: 'objc',
                  type: SuggestionType.arg,
                  icon: '📱',
                ),
                FigSuggestion(
                  name: 'swift (default)',
                  insertValue: 'swift',
                  type: SuggestionType.arg,
                  icon: '📱',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['-a', '--android-language'],
          insertValue: '--android-language ',
          description: '[java, kotlin (default)]',
          args: [
            FigArg(
              suggestions: [
                FigSuggestion(
                  name: 'java',
                  type: SuggestionType.arg,
                  icon: '🤖',
                ),
                FigSuggestion(
                  name: 'kotlin (default)',
                  insertValue: 'kotlin',
                  type: SuggestionType.arg,
                  icon: '🤖',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--platforms'],
          description:
              'The platforms supported by this project. This argument only works when the --template is set to app or plugin. Platform folders (e.g. android/) will be generated in the target project. When adding platforms to a plugin project, the pubspec.yaml will be updated with the requested platform. Adding desktop platforms requires the corresponding desktop config setting to be enabled. [ios (default), android (default), windows (default), linux (default), macos (default), web (default)]',
          args: [
            FigArg(
              suggestions: [
                FigSuggestion(
                  name: 'web',
                  type: SuggestionType.arg,
                  icon: '🌍',
                ),
                FigSuggestion(
                  name: 'macos',
                  type: SuggestionType.arg,
                  icon: '🖥',
                ),
                FigSuggestion(
                  name: 'linux',
                  type: SuggestionType.arg,
                  icon: '🐧',
                ),
                FigSuggestion(
                  name: 'windows',
                  type: SuggestionType.arg,
                  icon: '🪟',
                ),
                FigSuggestion(
                  name: 'android',
                  type: SuggestionType.arg,
                  icon: '🤖',
                ),
                FigSuggestion(
                  name: 'ios',
                  type: SuggestionType.arg,
                  icon: '📱',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['-t', '--template'],
          insertValue: '--template ',
          description:
              'Specify the type of project to create. [app] (default) Generate a Flutter application. [module] Generate a project to add a Flutter module to an existing Android or iOS application. [package]            Generate a shareable Flutter project containing modular Dart code. [plugin] Generate a shareable Flutter project containing an API in Dart code with a platform-specific implementation for Android, for iOS code, or for both',
          args: [
            FigArg(
              name: 'type',
              suggestions: [
                FigSuggestion(
                  name: 'app (default)',
                  insertValue: 'app',
                  type: SuggestionType.arg,
                  icon: '📱',
                ),
                FigSuggestion(
                  name: 'module',
                  type: SuggestionType.arg,
                  icon: '🧩',
                ),
                FigSuggestion(
                  name: 'package',
                  type: SuggestionType.arg,
                  icon: '📦',
                ),
                FigSuggestion(
                  name: 'plugin',
                  type: SuggestionType.arg,
                  icon: '🔧',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['-s', '--sample'],
          insertValue: '--sample ',
          description:
              'Specifies the Flutter code sample to use as the main.dart for an application. Implies --template=app. The value should be the sample ID of the desired sample from the API documentation website (http://docs.flutter.dev). An example can be found at https://master-api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html',
          args: [FigArg(name: 'id')],
        ),
        FigOption(
          name: ['--list-samples'],
          description:
              'Specifies a JSON output file for a listing of Flutter code samples that can be created with --sample',
          args: [
            FigArg(
              name: 'file path',
              template: 'filepaths',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'devices',
      description: 'List all connected devices',
      options: [
        ...globalOpts,
        FigOption(
          name: ['--machine'],
          description:
              'Output device information in machine readable structured JSON format',
        ),
        FigOption(
          name: ['-t', '--timeout'],
          description: '(deprecated) Use --device-timeout instead',
        ),
        deviceTimeout,
      ],
    ),
    FigSubcommand(
      name: 'doctor',
      description: 'Show information about the installed tooling',
      options: [
        ...globalOpts,
        FigOption(
          name: ['--android-licenses'],
          description:
              "Run the Android SDK manager tool to accept the SDK's licenses",
        ),
      ],
    ),
    FigSubcommand(
      name: 'downgrade',
      description:
          'Downgrade Flutter to the last active version for the current channel',
      options: globalOpts,
    ),
    FigSubcommand(
      name: 'drive',
      description:
          'Run integration tests for the project on an attached device or emulator',
      options: [
        ...globalOpts,
        ...run,
        ...keepAppRunning,
        FigOption(
          name: ['--use-existing-app'],
          description:
              'Connect to an already running instance via the given observatory URL. If this option is given, the application will not be automatically started, and it will only be stopped if --no-keep-app-running is explicitly set',
          args: [FigArg(name: 'URL')],
        ),
        FigOption(
          name: ['--driver'],
          description:
              'The test file to run on the host (as opposed to the target file to run on the device). By default, this file has the same base name as the target file, but in the "test_driver/" directory instead, and with "_test" inserted just before the extension, so e.g. if the target is "lib/main.dart", the driver will be "test_driver/main_test.dart"',
          args: [FigArg(name: 'driver')],
        ),
        ...build,
        FigOption(
          name: ['--driver-port'],
          description:
              'The port where Webdriver server is launched at. Defaults to 4444',
          args: [FigArg(name: 'port number')],
        ),
        ...headless,
        FigOption(
          name: ['--browser-name'],
          description:
              'Name of browser where tests will be executed. Following browsers are supported: Chrome, Firefox, Safari (macOS and iOS) and Edge. Defaults to Chrome. [android-chrome, chrome (default), edge, firefox, ios-safari, safari]',
        ),
        FigOption(
          name: ['--browser-dimension'],
          description:
              'The dimension of browser when running Flutter Web test. This will affect screenshot and all offset-related actions. By default. it is set to 1600,1024 (1600 by 1024). (defaults to "1600,1024")',
        ),
        ...androidEmulator,
        FigOption(
          name: ['--chrome-binary'],
          description:
              "Location of Chrome binary. Works only if 'browser-name' is set to 'chrome'",
        ),
        FigOption(
          name: ['--write-sksl-on-exit'],
          description:
              'Attempts to write an SkSL file when the drive process is finished to the provided file, overwriting it if necessary',
        ),
        FigOption(
          name: ['--test-arguments'],
          description:
              'Additional arguments to pass to the Dart VM running The test script',
        ),
      ],
    ),
    FigSubcommand(
      name: 'emulators',
      description: 'List, launch and create emulators',
      options: [
        ...globalOpts,
        FigOption(
          name: ['--launch'],
          insertValue: "--launch '{cursor}'",
          description: 'The full or partial ID of the emulator to launch',
          args: [
            FigArg(
              name: 'emulator id',
              generators: [emulatorsGenerator],
            ),
          ],
        ),
        FigOption(
          name: ['--create'],
          description: 'Creates a new Android emulator based on a Pixel device',
        ),
        FigOption(
          name: ['--name'],
          description:
              'Used with flag --create. Specifies a name for the emulator being created',
        ),
      ],
    ),
    FigSubcommand(
      name: 'format',
      description: 'Format one or more Dart files',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-n', '--dry-run'],
          description: 'Show which files would be modified but make no changes',
        ),
        FigOption(
          name: ['--set-exit-if-changed'],
          description: 'Return exit code 1 if there are any formatting changes',
        ),
        FigOption(
          name: ['-m', '--machine'],
          description: 'Produce machine-readable JSON output',
        ),
        FigOption(
          name: ['-l', '--line-length'],
          description:
              'Wrap lines longer than this length. Defaults to 80 characters. (defaults to "80")',
        ),
      ],
    ),
    FigSubcommand(
      name: 'gen-l10n',
      description: 'Generate localizations for the current project',
      options: [
        ...globalOpts,
        FigOption(
          name: ['--arb-dir'],
          description:
              'The directory where the template and translated arb files are located. (defaults to "lib/l10n")',
        ),
        FigOption(
          name: ['--output-dir'],
          description:
              "The directory where the generated localization classes will be written if the synthetic-package flag is set to false. If output-dir is specified and the synthetic-package flag is enabled, this option will be ignored by the tool. The app must import the file specified in the 'output-localization-file' option from this directory. If unspecified, this defaults to",
        ),
        FigOption(
          name: ['--template-arb-file'],
          description:
              'The template arb file that will be used as the basis for generating the Dart localization and messages files. (defaults to "app_en.arb")',
        ),
        FigOption(
          name: ['--output-localization-file'],
          description:
              'The filename for the output localization and localizations delegate classes. (defaults to "app_localizations.dart")',
        ),
        FigOption(
          name: ['--untranslated-messages-file'],
          description:
              'The location of a file that describes the localization messages have not been translated yet. Using this option will create a JSON file at the target location, in the following format: "locale": ["message_1", "message_2" ... "message_n"] If this option is not specified, a summary of the messages that have not been translated will be printed on the command line',
        ),
        FigOption(
          name: ['--output-class'],
          description:
              'The Dart class name to use for the output localization and localizations delegate classes. (defaults to "AppLocalizations")',
        ),
        FigOption(
          name: ['--preferred-supported-locales'],
          description:
              "The list of preferred supported locales for the application. By default, the tool will generate the supported locales list in alphabetical order. Use this flag if you would like to default to a different locale. For example, pass in `en_US` if you would like your app to default to American English if a device supports it.(Pass this option multiple times for defining multiple items",
          args: [FigArg(name: 'locale')],
        ),
        FigOption(
          name: ['--header'],
          description:
              'The header to prepend to the generated Dart localizations files. This option takes in a string. For example, pass in "/// All localized files." if you would like this string prepended to the generated Dart file. Alternatively, see the `header-file` option to pass in a text file for longer headers',
        ),
        FigOption(
          name: ['--header-file'],
          description:
              "The header to prepend to the generated Dart localizations files. The value of this option is the name of the file that contains the header text which will be inserted at the top of each generated Dart file. Alternatively, see the `header` option to pass in a string for a simpler header. This file should be placed in the directory specified in 'arb-dir'",
        ),
        ...useDeferredLoading,
        FigOption(
          name: ['--gen-inputs-and-outputs-list'],
          description:
              "When specified, the tool generates a JSON file containing the tool's inputs and outputs named gen_l10n_inputs_and_outputs.json. \n\nThis can be useful for keeping track of which files of the Flutter project were used when generating the latest set of localizations. For example, the Flutter tool's build system uses this file to keep track of when to call gen_l10n during hot reload. \n\nThe value of this option is the directory where the JSON file will be generated. \n\nWhen null, the JSON file will not be generated",
          args: [
            FigArg(
              name: 'path to output directory',
              template: 'filepaths',
            ),
          ],
        ),
        ...syntheticPackage,
        FigOption(
          name: ['--project-dir'],
          description:
              "When specified, the tool uses the path passed into this option as the directory of the root Flutter project. \n\nWhen null, the relative path to the present working directory will be used",
          args: [
            FigArg(
              name: 'absolute path to flutter project',
              template: 'filepaths',
            ),
          ],
        ),
        ...requiredResourceAttributes,
      ],
    ),
    FigSubcommand(
      name: 'install',
      description: 'Install a Flutter app on an attached device',
      options: [...globalOpts, deviceUser, deviceTimeout],
    ),
    FigSubcommand(
      name: 'logs',
      description: 'Show log output for running Flutter apps',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-c', '--clear'],
          insertValue: '--clear',
          description: 'Clear log history before reading from logs',
        ),
        deviceTimeout,
      ],
    ),
    FigSubcommand(
      name: 'pub',
      description: 'Commands for managing Flutter packages',
      options: [
        ...globalOpts,
        FigOption(
          name: ['add'],
          description: 'Add a dependency to pubspec.yaml',
        ),
        FigOption(
          name: ['cache'],
          description: 'Work with the Pub system cache',
        ),
        FigOption(
          name: ['deps'],
          description: 'Print package dependencies',
        ),
        FigOption(
          name: ['downgrade'],
          description: 'Downgrade packages in a Flutter project',
        ),
        FigOption(
          name: ['get'],
          description: 'Get packages in a Flutter project',
        ),
        FigOption(
          name: ['global'],
          description: 'Work with Pub global packages',
        ),
        FigOption(
          name: ['login'],
          description: 'Log into pub.dev',
        ),
        FigOption(
          name: ['logout'],
          description: 'Log out of pub.dev',
        ),
        FigOption(
          name: ['outdated'],
          description:
              'Analyze dependencies to find which ones can be upgraded',
        ),
        FigOption(
          name: ['pub'],
          description: 'Pass the remaining arguments to Dart\'s "pub" tool',
        ),
        FigOption(
          name: ['publish'],
          description: 'Publish the current package to pub.dartlang.org',
        ),
        FigOption(
          name: ['remove'],
          description: 'Removes a dependency from the current package',
        ),
        FigOption(
          name: ['run'],
          description: 'Run an executable from a package',
        ),
        FigOption(
          name: ['test'],
          description: 'Run the "test" package',
        ),
        FigOption(
          name: ['upgrade'],
          description:
              "Upgrade the current package's dependencies to latest versions",
        ),
        FigOption(
          name: ['uploader'],
          description: 'Manage uploaders for a package on pub.dev',
        ),
        FigOption(
          name: ['version'],
          description: 'Print Pub version',
        ),
      ],
    ),
    FigSubcommand(
      name: 'run',
      description: 'Run your Flutter app on an attached device',
      options: [
        ...globalOpts,
        ...run,
        FigOption(
          name: ['--enable-software-rendering'],
          description:
              'Enable rendering using the Skia software backend. This is useful when testing Flutter on emulators. By default, Flutter will attempt to either use OpenGL or Vulkan and fall back to software when neither is available',
        ),
        FigOption(
          name: ['--skia-deterministic-rendering'],
          description:
              'When combined with --enable-software-rendering, provides 100% deterministic Skia rendering',
        ),
        ...awaitFirstFrameWhenTracing,
        ...useTestFonts,
        ...build,
        FigOption(
          name: ['--pid-file'],
          description:
              'Specify a file to write the process id to. You can send SIGUSR1 to trigger a hot reload and SIGUSR2 to trigger a hot restart',
        ),
        ...fastStart,
      ],
    ),
    FigSubcommand(
      name: 'screenshot',
      description: 'Take a screenshot from a connected device',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-o', '--out'],
          insertValue: '--out ',
          description: 'Location to write the screenshot',
          args: [
            FigArg(
              name: 'path to file',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--observatory-uri'],
          description:
              'The observatory URI to connect to. This is required when --type is "skia" or "rasterizer". To find the observatory URI, use "flutter run" and look for "An Observatory ... is available at" in the output',
          args: [FigArg(name: 'URI')],
        ),
        FigOption(
          name: ['--type'],
          description:
              'The type of screenshot to retrieve. [device] (default)    Delegate to the device\'s native screenshot capabilities. This screenshots the entire screen currently being displayed (including content not rendered by Flutter, like the device status bar). [rasterizer]          Render the Flutter app using the rasterizer. Requires --observatory-uri [skia]                Render the Flutter app as a Skia picture. Requires --observatory-uri',
          args: [
            FigArg(
              name: 'type',
              suggestions: [
                FigSuggestion(
                  name: 'device (default)',
                  insertValue: 'device',
                  type: SuggestionType.arg,
                  icon: '🌠',
                ),
                FigSuggestion(
                  name: 'rasterizer',
                  type: SuggestionType.arg,
                  icon: '🌠',
                ),
                FigSuggestion(
                  name: 'skia',
                  type: SuggestionType.arg,
                  icon: '🌠',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--device-timeout'],
          description:
              'Time in seconds to wait for devices to attach. Longer timeouts may be necessary for networked devices',
          args: [FigArg(name: 'seconds')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'symbolize',
      description: 'Symbolize a stack trace from an AOT-compiled Flutter app',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-d', '--debug-info'],
          insertValue: '--debug-info ',
          description:
              'A path to the symbols file generated with "--split-debug-info". e.g. /out/android/app.arm64.symbols',
          args: [
            FigArg(
              name: 'file path of .symbols',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['-i', '--input'],
          insertValue: '--input ',
          description:
              'A file path containing a Dart stack trace. e.g. /crashes/stack_trace.err',
          args: [
            FigArg(
              name: 'file path',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['-o', '--output'],
          insertValue: '--output ',
          args: [
            FigArg(
              name: 'file path',
              description:
                  'A file path for a symbolized stack trace to be written to',
              template: 'filepaths',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'test',
      description: 'Run Flutter unit tests for the current project',
      options: [
        ...globalOpts,
        ...pub,
        ...nullAssertions,
        ...trackWidgetCreation,
        dartDefine,
        FigOption(
          name: ['--web-renderer'],
          description:
              'The renderer implementation to use when building for the web. Possible values are: html - always use the HTML renderer. This renderer uses a combination of HTML, CSS, SVG, 2D Canvas, and WebGL. This is the default. canvaskit - always use the CanvasKit renderer. This renderer uses WebGL and WebAssembly to render graphics. auto - use the HTML renderer on mobile devices, and CanvasKit on desktop devices. [auto (default), canvaskit, html]',
        ),
        FigOption(
          name: ['--name'],
          description:
              'A regular expression matching substrings of the names of tests to run',
          args: [FigArg(name: 'regexp')],
        ),
        FigOption(
          name: ['--plain-name'],
          description: 'A plain-text substring of the names of tests to run',
          args: [FigArg(name: 'substring')],
        ),
        FigOption(
          name: ['-t', '--tags'],
          insertValue: '--tags',
          description: 'Run only tests associated with tags',
        ),
        FigOption(
          name: ['-x', '--exclude-tags'],
          insertValue: '--exclude-tags',
          description: 'Run only tests WITHOUT given tags',
        ),
        FigOption(
          name: ['--start-paused'],
          description:
              'Start in a paused mode and wait for a debugger to connect. You must specify a single test file to run, explicitly. Instructions for connecting with a debugger are printed to the console once the test has started',
        ),
        FigOption(
          name: ['--coverage'],
          description: 'Whether to collect coverage information',
        ),
        FigOption(
          name: ['--merge-coverage'],
          description:
              'Whether to merge coverage data with "coverage/lcov.base.info". Implies collecting coverage data. (Requires lcov)',
        ),
        FigOption(
          name: ['--coverage-path'],
          description:
              'Where to store coverage information (if coverage is enabled). (defaults to "coverage/lcov.info")',
        ),
        FigOption(
          name: ['--update-goldens'],
          description:
              'Whether matchesGoldenFile() calls within your test methods should update the golden files rather than test for an existing match',
        ),
        FigOption(
          name: ['--j', '--concurrency'],
          insertValue: '--concurrency ',
          description:
              'The number of concurrent test processes to run. (defaults to "6")',
          args: [FigArg(name: 'jobs')],
        ),
        ...testAssets,
        FigOption(
          name: ['--test-randomize-ordering-seed'],
          description:
              'The seed to randomize the execution order of test cases. Must be a 32bit unsigned integer or "random". If "random", pick a random seed to use. If not passed, do not randomize test case execution order',
        ),
        FigOption(
          name: ['-r', '--reporter'],
          insertValue: '--reporter',
          description:
              'Set how to print test results.\n[compact] (default) A single line, updated continuously.\n[expanded] A separate line for each update.\n[json] A machine-readable format (see https://dart.dev/go/test-docs/json_reporter.md).\n(defaults to "compact")',
          args: [
            FigArg(
              name: 'reporter',
              suggestions: [
                FigSuggestion(
                  name: 'compact (default)',
                  insertValue: 'compact',
                  type: SuggestionType.arg,
                ),
                FigSuggestion(
                  name: 'expanded',
                  type: SuggestionType.arg,
                ),
                FigSuggestion(
                  name: 'json',
                  type: SuggestionType.arg,
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--timeout'],
          description:
              'The default test timeout. For example: 15s, 2x, none. Defaults to "30s"',
        ),
        FigOption(
          name: ['--dds-port'],
          description:
              'When this value is provided, the Dart Development Service (DDS) will be bound to the provided port. Specifying port 0 (the default) will find a random free port',
        ),
      ],
    ),
    FigSubcommand(
      name: 'upgrade',
      description: 'Upgrade your copy of Flutter',
      options: [
        ...globalOpts,
        FigOption(
          name: ['-f', '--force'],
          insertValue: '--force',
          description:
              'Force upgrade the flutter branch, potentially discarding local changes',
        ),
        FigOption(
          name: ['--verify-only'],
          description:
              'Verifies for any new flutter update, without fetching the update',
        ),
      ],
    ),
  ],
  options: globalOpts,
);
