// AI-generated from TypeScript source: ns.ts
import 'package:autocomplete/src/spec.dart';

final FigOption cleanOption = FigOption(
  name: ['--clean'],
  description: 'Forces rebuilding the native application',
);

final FigOption timeoutOption = FigOption(
  name: ['--timeout'],
  description:
      'Sets the number of seconds that the NativeScript CLI will wait for the debugger to boot. If not set, the default timeout is 90 seconds',
  args: [FigArg(name: 'seconds')],
);

final FigOption emulatorOption = FigOption(
  name: ['--emulator'],
  description: 'Specifies that you want to debug the app in an emulator',
);

final FigOption deviceOption = FigOption(
  name: ['--device'],
  description: 'Specifies a connected device/emulator to start and run the app',
  args: [FigArg(name: 'device id')],
);

final FigOption forceOption = FigOption(
  name: ['--force'],
  description:
      'Skips the application compatibility checks and forces npm i to ensure all dependencies are installed',
);

final FigOption noHmrOption = FigOption(
  name: ['--no-hmr'],
  description: 'Disables Hot Module Replacement (HMR)',
);

final FigOption frameworkPathOption = FigOption(
  name: ['--framework-path'],
  description:
      'Sets the path to a NativeScript runtime for the specified platform that you want to use instead of the default runtime. <File Path> must point to a valid npm package',
  args: [FigArg(name: 'path', template: 'filepaths')],
);

final FigOption jsonOption = FigOption(
  name: ['--json'],
  description: 'Show the output of the command in JSON format',
);

final FigOption justLaunchOption = FigOption(
  name: ['--justlaunch'],
  description: 'Does not print the application output in the console',
);

final FigOption releaseOption = FigOption(
  name: ['--release'],
  description:
      'Produces a release build by running webpack in production mode and native build in release mode. Otherwise, produces a debug build',
);

final FigOption bundleOption = FigOption(
  name: ['--bundle'],
  description: 'Bundle the application',
);

FigOption helpOption(String label) {
  return FigOption(
    name: ['--help', '-h'],
    description: 'Show help for the $label subcommand',
    priority: 0,
  );
}

final List<FigOption> androidGeneralOptions = [
  FigOption(
    name: ['--aab'],
    description:
        'Specifies that the command will produce and deploy an Android App Bundle',
  ),
  FigOption(
    name: ['--env.snapshot'],
    description:
        'Creates a V8 Snapshot decreasing the app start time (only for release builds for Android)',
    dependsOn: ['--release'],
  ),
  FigOption(
    name: ['--env.compileSnapshot'],
    description:
        'Compiles the static assets produced by --env.snapshot into .so files allowing the native build to split them per architecture. This will reduce the app size when using the --aab option',
    dependsOn: ['--env.snapshot', '--aab'],
  ),
  FigOption(
    name: ['--env.appComponents'],
    description: 'Allows passing additional App Components for android',
  ),
];

final List<FigOption> androidKeyOptions = [
  FigOption(
    name: ['--key-store-path'],
    description:
        'Specifies the file path to the keystore file (P12) which you want to use to code sign your APK',
    args: [FigArg(name: 'path', template: 'filepaths')],
    dependsOn: ['--release'],
  ),
  FigOption(
    name: ['--key-store-password'],
    description:
        'Provides the password for the keystore file specified with --key-store-path',
    args: [FigArg(name: 'password')],
    dependsOn: ['--release'],
  ),
  FigOption(
    name: ['--key-store-alias'],
    description:
        'Provides the alias for the keystore file specified with --key-store-path',
    args: [FigArg(name: 'alias')],
    dependsOn: ['--release'],
  ),
  FigOption(
    name: ['--key-store-alias-password'],
    description:
        'Provides the password for the alias specified with --key-store-alias-password',
    args: [FigArg(name: 'alias password')],
    dependsOn: ['--release'],
  ),
];

final List<FigOption> platformEnvOptions = [
  FigOption(
    name: ['--env.aot'],
    description: 'Creates an Ahead-Of-Time build (Angular only)',
  ),
  FigOption(
    name: ['--env.uglify'],
    description: 'Provides basic obfuscation and smaller app size',
  ),
  FigOption(
    name: ['--env.report'],
    description:
        'Creates a Webpack report inside a /report folder in the root folder',
  ),
  FigOption(
    name: ['--env.sourceMap'],
    description: 'Creates inline source maps',
  ),
  FigOption(
    name: ['--env.hiddenSourceMap'],
    description:
        'Creates sources maps in the root folder (useful for Crashlytics usage with bundled app in release)',
  ),
  FigOption(
    name: ['--env.verbose'],
    description: 'Prints verbose logs and the internal config before building',
  ),
  FigOption(
    name: ['--env.production'],
    description: 'Enable production mode (will minify the code)',
  ),
  FigOption(
    name: ['--env.replace=from:to'],
    description:
        'Add file replacement rules. For source files (.js and .ts) this will add a new alias to the config, for everything else, this will add a new copy rule',
    insertValue: '--env.replace={cursor}:',
    requiresSeparator: true,
  ),
];

final List<FigOption> platformGeneralOptions = [
  ...platformEnvOptions,
  noHmrOption,
  forceOption,
  deviceOption,
  cleanOption,
  emulatorOption,
  timeoutOption,
];

final List<FigOption> runBothOptions = [
  ...platformGeneralOptions,
  justLaunchOption,
  releaseOption,
  bundleOption,
];

final List<FigOption> runIosOptions = [
  FigOption(
    name: ['--sdk'],
    description: "Specifies the target simulator's sdk",
    args: [FigArg(name: 'sdk')],
  ),
];

final List<FigOption> runAndroidOptions = [
  ...androidGeneralOptions,
  ...androidKeyOptions,
];

final List<FigOption> debugBothOptions = [
  ...platformGeneralOptions,
  FigOption(
    name: ['--debug-brk'],
    description:
        'Prepares, builds and deploys the application package on a device or in an emulator, and stops at the first JavaScript line until either the debugger frontend connects or a 30 seconds timeout elapses',
  ),
  FigOption(
    name: ['--start'],
    description: 'Attaches the debug tools to a deployed and running app',
  ),
  FigOption(
    name: ['--no-watch'],
    description: 'Changes in your code will not be livesynced',
  ),
];

final List<FigOption> debugIosOptions = [
  FigOption(
    name: ['--no-client'],
    description:
        'The NativeScript CLI attaches the debug tools but does not launch the developer tools in Safari. Could be used on already started Safari Web Inspector',
  ),
  FigOption(
    name: ['--inspector'],
    description:
        'The developer tools in the Safari Web Inspector are used for debugging the application',
  ),
];

final List<FigOption> debugAndroidOptions = androidGeneralOptions;

final List<FigOption> testBothOptions = [
  FigOption(
    name: ['--watch'],
    description:
        'When you save changes to the project, changes are automatically synchronized to the connected device and tests are re-run',
  ),
  FigOption(
    name: ['--debug-brk'],
    description:
        'Runs the tests under the debugger. The debugger will break just before your tests are executed, so you have a chance to place breakpoints',
  ),
  justLaunchOption,
  forceOption,
  deviceOption,
  emulatorOption,
];

final List<FigOption> testIosOptions = [];
final List<FigOption> testAndroidOptions = androidGeneralOptions;

final List<FigOption> buildBothOptions = [
  ...platformEnvOptions,
  releaseOption,
  FigOption(
    name: ['--copy-to'],
    description:
        'Specifies the file path where the built .ipa|.apk will be copied. If it points to a non-existent directory path, it will be created. If the specified value is existing directory, the original file name will be used',
    args: [FigArg(name: 'path', template: 'folders')],
  ),
  FigOption(
    name: ['--path'],
    description:
        'Specifies the directory where you want to create the project, if different from the current directory',
    args: [FigArg(name: 'directory', template: 'folders')],
  ),
  forceOption,
  cleanOption,
  deviceOption,
];

final List<FigOption> buildAndroidOptions = [
  ...androidGeneralOptions,
  FigOption(
    name: ['--compileSdk'],
    description: 'Sets the Android SDK that will be used to build the project',
    args: [FigArg(name: 'api level')],
  ),
  ...androidKeyOptions,
];

final List<FigOption> buildIosOptions = [
  FigOption(
    name: ['--for-device'],
    description:
        'Produces an application package that you can deploy on device. Otherwise, produces a build that you can run only in the native iOS Simulator',
  ),
  FigOption(
    name: ['--i-cloud-container-environment'],
    description:
        'Adds the passed iCloudContainerEnvironment when exporting an application package with the --for-device option',
    dependsOn: ['--for-device'],
  ),
  FigOption(
    name: ['--team-id'],
    description:
        'If used without parameter, lists all team names and ids. If used with team name or id, it will switch to automatic signing mode and configure the .xcodeproj file of your app. In this case .xcconfig should not contain any provisioning/team id flags',
    args: [FigArg(name: 'team id', isOptional: true)],
  ),
  FigOption(
    name: ['--provision'],
    description:
        'If used without parameter, lists all eligible provisioning profiles. If used with UUID or name of your provisioning profile, it will switch to manual signing mode and configure the .xcodeproj file of your app',
    args: [FigArg(name: 'uuid', isOptional: true)],
  ),
];

final List<FigOption> deployBothOptions = [
  deviceOption,
  cleanOption,
  forceOption,
  releaseOption,
  ...platformEnvOptions,
];

final List<FigOption> deployIosOptions = [];
final List<FigOption> deployAndroidOptions = [
  ...androidGeneralOptions,
  ...androidKeyOptions,
];

final FigSubcommand helpCommand = FigSubcommand(
  name: ['help'],
  description: "Open the CLI's documentation in your web browser",
  options: [helpOption('help')],
);

final FigSubcommand infoCommand = FigSubcommand(
  name: ['info'],
  description:
      'Displays version information about the NativeScript CLI, core modules, and runtimes',
  options: [helpOption('info')],
);

final FigSubcommand updateCommand = FigSubcommand(
  name: ['update'],
  description:
      'Updates the project with the latest versions of platform runtimes, cross-platform modules and webpack',
  isDangerous: true,
  subcommands: [
    FigSubcommand(
      name: ['next'],
      description: 'The latest development release',
    ),
  ],
  args: [
    FigArg(
        name: 'version',
        description: 'The version to update the project to',
        isOptional: true)
  ],
  options: [helpOption('update')],
);

final FigSubcommand packageManagerCommand = FigSubcommand(
  name: ['package-manager'],
  description: 'Prints the value of the current package manager',
  subcommands: [
    FigSubcommand(
      name: ['get'],
      description: 'Prints the value of the current package manager',
    ),
    FigSubcommand(
      name: ['set'],
      description:
          'Enables the specified package manager for the NativeScript CLI. Supported values are npm, yarn and pnpm',
    ),
  ],
  options: [helpOption('package-manager')],
);

final FigSubcommand doctorCommand = FigSubcommand(
  name: ['doctor'],
  description:
      'Checks your system for configuration problems which might prevent the NativeScript CLI from working properly for the specified platform, if configured',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      description: 'Check your system configuration for android',
    ),
    FigSubcommand(
      name: ['ios'],
      description: 'Check your system configuration for ios',
    ),
  ],
  options: [helpOption('doctor')],
);

final FigSubcommand migrateCommand = FigSubcommand(
  name: ['migrate'],
  description:
      'Migrates the app dependencies to a form compatible with NativeScript 6.0',
  isDangerous: true,
  options: [helpOption('migrate')],
);

final FigSubcommand proxyCommand = FigSubcommand(
  name: ['proxy'],
  description: 'Displays the current proxy settings of the NativeScript CLI',
  subcommands: [
    FigSubcommand(
      name: ['clear'],
      description:
          'Clears the currently configured proxy settings of the NativeScript CLI',
    ),
    FigSubcommand(
      name: ['set'],
      description: 'Sets the proxy settings of the NativeScript CLI',
      args: [
        FigArg(
            name: 'proxy url',
            description:
                'Full url of the proxy. For example, http://127.0.0.1:8888. If you do not provide the url when running the command, the NativeScript CLI will prompt you to provide it'),
        FigArg(
            name: 'username',
            description: 'Credentials for the proxy',
            isOptional: true),
        FigArg(
            name: 'password',
            description: 'Credentials for the proxy',
            isOptional: true),
      ],
      options: [
        FigOption(
          name: ['--insecure'],
          description:
              "Allows insecure SSL connections and transfers to be performed. In case your proxy doesn't have a CA certificate or has an invalid one you need to use this flag",
        ),
      ],
    ),
  ],
  options: [helpOption('proxy')],
);

final FigSubcommand usageReportingCommand = FigSubcommand(
  name: ['usage-reporting'],
  description:
      'Configures anonymous usage reporting for the NativeScript CLI. All data gathered is used strictly for improving the product and will never be used to identify or contact you',
  subcommands: [
    FigSubcommand(
      name: ['status'],
      description:
          'Shows the current configuration for anonymous usage reporting for the NativeScript CLI',
    ),
    FigSubcommand(
      name: ['enable'],
      description: 'Enables anonymous usage reporting',
    ),
    FigSubcommand(
      name: ['disable'],
      description: 'Disables anonymous usage reporting',
    ),
  ],
  options: [helpOption('usage-reporting')],
  priority: 1,
);

final FigSubcommand errorReportingCommand = FigSubcommand(
  name: ['error-reporting'],
  description:
      'Configures anonymous error reporting for the NativeScript CLI. All data gathered is used strictly for improving the product and will never be used to identify or contact you',
  subcommands: [
    FigSubcommand(
      name: ['status'],
      description:
          'Shows the current configuration for anonymous error reporting for the NativeScript CLI',
    ),
    FigSubcommand(
      name: ['enable'],
      description: 'Enables anonymous error reporting',
    ),
    FigSubcommand(
      name: ['disable'],
      description: 'Disables anonymous error reporting',
    ),
  ],
  options: [helpOption('error-reporting')],
  priority: 1,
);

final FigSubcommand createCommand = FigSubcommand(
  name: ['create'],
  description:
      'Create a new Nativescript project. Press Enter for an interactive walkthrough',
  args: [
    FigArg(
        name: 'application name',
        description: 'The name of the Nativescript project',
        isOptional: true)
  ],
  options: [
    FigOption(
      name: ['--template'],
      description: 'Create a project using a predefined template',
      args: [
        FigArg(
          name: 'template',
          // Note: Generator logic omitted for brevity/complexity in manual conversion.
          // Consider implementing if needed.
        ),
      ],
    ),
    FigOption(
        name: ['--angular', '--ng'],
        description: 'Create a project using the Angular template'),
    FigOption(
        name: ['--react'],
        description: 'Create a project using the React template'),
    FigOption(
        name: ['--vue', '--vuejs'],
        description: 'Create a project using the Vue template'),
    FigOption(
        name: ['--svelte'],
        description: 'Create a project using the Svelte template'),
    FigOption(
        name: ['--typescript', '--tsc', '--ts'],
        description: 'Create a project using plain TypeScript'),
    FigOption(
        name: ['--javascript', '--js'],
        description: 'Create a project using plain JavaScript'),
    FigOption(
      name: ['--path'],
      description:
          'Specifies the directory where you want to create the project, if different from the current directory. <directory> is the absolute path to an empty directory in which you want to create the project',
      priority: 10,
      args: [FigArg(name: 'directory', template: 'folders')],
    ),
    FigOption(
      name: ['--appid'],
      description:
          'Sets the application identifier of your project. <appid> is the value of the application identifier and it must meet the specific requirements of each platform that you want to target. If not specified, the application identifier is set to org.nativescript.<Project Name>. The application identifier must be a domain name in reverse',
      args: [FigArg(name: 'identifier')],
    ),
    helpOption('create'),
  ],
);

final FigSubcommand cleanCommand = FigSubcommand(
  name: ['clean'],
  description: 'Clean your Nativescript project',
  options: [helpOption('clean')],
);

final FigSubcommand previewCommand = FigSubcommand(
  name: ['preview'],
  description:
      'Produces a QR code which can be used to preview the app on a device',
  options: [forceOption, noHmrOption, helpOption('preview')],
);

final FigSubcommand platformCommand = FigSubcommand(
  name: ['platform'],
  description:
      'Lists all platforms that the project currently targets. You can build and deploy your project only for these target platforms',
  subcommands: [
    FigSubcommand(
      name: ['list'],
      description:
          'Lists all platforms that the project currently targets. You can build and deploy your project only for these target platforms',
    ),
    FigSubcommand(
      name: ['add'],
      description:
          'Configures the current project to target the selected platform',
      subcommands: [
        FigSubcommand(
          name: ['android'],
          description: 'The latest android platform',
          options: [frameworkPathOption],
        ),
        FigSubcommand(
          name: ['android@[Version]'],
          insertValue: 'android@{cursor}',
          description: 'The defined android platform eg. 1.0.0',
          options: [frameworkPathOption],
        ),
        FigSubcommand(
          name: ['ios'],
          description: 'The latest ios platform',
          options: [frameworkPathOption],
        ),
        FigSubcommand(
          name: ['ios@[Version]'],
          insertValue: 'ios@{cursor}',
          description: 'The defined ios platform eg. 1.0.0',
          options: [frameworkPathOption],
        ),
      ],
    ),
    FigSubcommand(
      name: ['remove'],
      description:
          'Removes the selected platform from the platforms that the project currently targets',
      subcommands: [
        FigSubcommand(
            name: ['android'], description: 'The latest android platform'),
        FigSubcommand(name: ['ios'], description: 'The latest ios platform'),
      ],
    ),
    FigSubcommand(
      name: ['update'],
      description:
          'Updates the NativeScript runtime for the specified platform',
      subcommands: [
        FigSubcommand(
            name: ['android'], description: 'The latest android platform'),
        FigSubcommand(name: ['ios'], description: 'The latest ios platform'),
      ],
    ),
  ],
  options: [helpOption('platform')],
);

final FigSubcommand runCommand = FigSubcommand(
  name: ['run'],
  description:
      'Runs your project on all connected devices or in native emulators for the selected platform',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      description: 'The latest android platform',
      options: [...runBothOptions, ...runAndroidOptions],
      priority: 90,
    ),
    FigSubcommand(
      name: ['ios'],
      description: 'The latest ios platform',
      options: [...runBothOptions, ...runIosOptions],
      priority: 90,
    ),
  ],
  options: [...runBothOptions, helpOption('run')],
);

final FigSubcommand debugCommand = FigSubcommand(
  name: ['debug'],
  description:
      'Initiates a debugging session for your project on a connected device or native emulator',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      description:
          'Start a debugging session for your project on a connected Android device or Android emulator',
      options: [...debugBothOptions, ...debugAndroidOptions],
      priority: 90,
    ),
    FigSubcommand(
      name: ['ios'],
      description:
          'Start a debugging session for your project on a connected iOS device or in the native iOS simulator',
      options: [...debugBothOptions, ...debugIosOptions],
      priority: 90,
    ),
  ],
  options: [helpOption('debug')],
);

final FigSubcommand testCommand = FigSubcommand(
  name: ['test'],
  description: 'Runs unit tests on the selected mobile platform',
  subcommands: [
    FigSubcommand(
      name: ['init'],
      description: 'Configure your project for unit testing',
      options: [
        FigOption(
          name: ['--framework'],
          description: 'Sets the unit testing framework to install',
          args: [
            FigArg(
              name: 'framework',
              suggestions: [
                FigSuggestion(name: 'mocha'),
                FigSuggestion(name: 'jasmine'),
                FigSuggestion(name: 'qunit')
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: ['android'],
      description:
          'Run unit tests on all connected android devices or native emulators',
      options: [...testBothOptions, ...testAndroidOptions],
      priority: 90,
    ),
    FigSubcommand(
      name: ['ios'],
      description:
          'Run unit tests on all connected ios devices or native emulators',
      options: [...testBothOptions, ...testIosOptions],
      priority: 90,
    ),
  ],
  options: [helpOption('test')],
);

final FigSubcommand pluginCommand = FigSubcommand(
  name: ['plugin'],
  description: 'Manage the plugins for your project',
  subcommands: [
    FigSubcommand(
      name: ['add'],
      description: 'Installs the specified plugin and its dependencies',
      args: [
        FigArg(name: 'plugin', description: 'A valid Nativescript plugin')
      ],
    ),
    FigSubcommand(
      name: ['remove'],
      description: 'Uninstalls the specified plugin and its dependencies',
      args: [
        FigArg(name: 'plugin', description: 'A valid Nativescript plugin')
      ],
    ),
    FigSubcommand(
      name: ['update'],
      description:
          'Uninstalls and installs the specified plugin(s) and its dependencies',
      args: [
        FigArg(name: 'plugin(s)', description: 'A valid Nativescript plugin')
      ],
    ),
    FigSubcommand(
      name: ['build'],
      description: 'Builds the Android parts of a NativeScript plugin',
    ),
    FigSubcommand(
      name: ['create'],
      description: 'Creates a project for building a new NativeScript plugin',
      args: [
        FigArg(
            name: 'plugin repository name',
            description: 'A valid Nativescript plugin repository')
      ],
      options: [
        FigOption(
          name: ['--path'],
          description:
              'Specifies the directory where you want to create the project, if different from the current directory',
          args: [
            FigArg(
                name: 'directory',
                description:
                    'Specifies the directory where you want to create the project, if different from the current directory',
                template: 'folders')
          ],
        ),
        FigOption(
          name: ['--username'],
          description:
              'Specifies the GitHub username, which will be used to build the URLs in the plugin\'s package.json file',
          args: [FigArg(name: 'username', description: 'GitHub username')],
        ),
        FigOption(
          name: ['--pluginName'],
          description:
              'Used to set the default file and class names in the plugin source',
          args: [FigArg(name: 'name')],
        ),
        FigOption(
          name: ['--includeTypeScriptDemo'],
          description: 'Specifies if a TypeScript demo should be created',
        ),
        FigOption(
          name: ['--includeTypeScriptDemo=n'],
          description: 'Specifies if TypeScript demo should NOT be created',
        ),
        FigOption(
          name: ['--includeAngularDemo'],
          description: 'Specifies if an Angular demo should be created',
        ),
        FigOption(
          name: ['--includeAngularDemo=n'],
          description: 'Specifies if Angular demo should NOT be created',
        ),
        FigOption(
          name: ['--template'],
          description:
              'Specifies the custom seed archive, which you want to use to create your plugin',
          args: [
            FigArg(
                name: 'template',
                description: 'Specifies the template for the plugin')
          ],
        ),
      ],
    ),
  ],
  options: [helpOption('plugin')],
);

final FigSubcommand resourcesCommand = FigSubcommand(
  name: ['resources'],
  description: 'Manage the plugins for your project',
  subcommands: [
    FigSubcommand(
      name: ['update'],
      description:
          'Updates the App_Resources\'s internal folder structure to conform to that of an Android Studio project',
    ),
    FigSubcommand(
      name: ['generate'],
      subcommands: [
        FigSubcommand(
          name: ['splashes'],
          args: [
            FigArg(
                name: 'image path',
                description:
                    'Path to an image that will be used to generate all splashscreens',
                template: 'filepaths')
          ],
          options: [
            FigOption(
              name: ['--background'],
              description: 'Sets the background color of the splashscreen',
              args: [FigArg(name: 'color', defaultValue: 'white')],
            ),
          ],
        ),
        FigSubcommand(
          name: ['icons'],
          args: [
            FigArg(
                name: 'image path',
                description:
                    'Path to an image that will be used to generate all splashscreens',
                template: 'filepaths')
          ],
        ),
      ],
    ),
  ],
  options: [helpOption('plugin')],
);

final FigSubcommand prepareCommand = FigSubcommand(
  name: ['prepare'],
  description:
      'Starts a Webpack compilation and prepares the app\'s App_Resources and the plugins platforms directories',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      description: 'Prepares your project for an Android build',
      options: [
        FigOption(
            name: ['--hmr'],
            description: 'Enables the hot module replacement (HMR) feature'),
        forceOption,
      ],
    ),
    FigSubcommand(
      name: ['ios'],
      description: 'Prepares your project for an iOS build',
      options: [
        FigOption(
            name: ['--hmr'],
            description: 'Enables the hot module replacement (HMR) feature'),
        forceOption,
      ],
    ),
  ],
  options: [
    FigOption(
        name: ['--hmr'],
        description: 'Enables the hot module replacement (HMR) feature'),
    forceOption,
    helpOption('prepare'),
  ],
);

final FigSubcommand buildCommand = FigSubcommand(
  name: ['build'],
  description:
      'Builds the project for iOS and produces an APP or IPA that you can manually deploy in the iOS Simulator or on a device',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      options: [...buildBothOptions, ...buildAndroidOptions],
      priority: 90,
    ),
    FigSubcommand(
      name: ['ios'],
      options: [...buildBothOptions, ...buildIosOptions],
      priority: 90,
    ),
  ],
  options: [
    ...buildBothOptions,
    FigOption(
        name: ['--hmr'],
        description: 'Enables the hot module replacement (HMR) feature'),
    justLaunchOption,
    helpOption('build'),
  ],
);

final FigSubcommand deployCommand = FigSubcommand(
  name: ['deploy'],
  description:
      'Prepares, builds and deploys the project to a connected device or native emulator. You must specify the target platform on which you want to deploy. It will deploy the app on all connected devices targeting the selected platform',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      options: [...deployBothOptions, ...deployAndroidOptions],
      priority: 90,
    ),
    FigSubcommand(
      name: ['ios'],
      options: [...deployBothOptions, ...deployIosOptions],
      priority: 90,
    ),
  ],
  options: [helpOption('deploy')],
);

final FigSubcommand installCommand = FigSubcommand(
  name: ['install'],
  description:
      'Installs all dependencies described in a valid package.json or installs a selected NativeScript development module as a dev dependency',
  subcommands: [
    FigSubcommand(
        name: ['typescript'], description: 'Enable TypeScript support'),
  ],
  args: [
    FigArg(
        name: 'module',
        description:
            'Specifies a NativeScript development module by path to a local directory containing a valid npm module or by name in the npm registry')
  ],
  options: [
    FigOption(
      name: ['--path'],
      description:
          'Specifies the directory which contains the package.json file, if different from the current directory',
      args: [FigArg(name: 'directory', template: 'folders')],
    ),
    helpOption('install'),
  ],
);

final FigSubcommand appStoreCommand = FigSubcommand(
  name: ['appstore'],
  description:
      'Lists all application records in iTunes Connect. The list contains name, version and bundle ID for each application record',
  subcommands: [
    FigSubcommand(
      name: ['upload'],
      description:
          'Uploads project to iTunes Connect. The command either issues a production build and uploads it to iTunes Connect, or uses an already built package to upload',
      args: [
        FigArg(
            name: 'appleId',
            description: 'Apple id for logging in iTunes Connect'),
        FigArg(
            name: 'password',
            description: 'Password for logging in iTunes Connect'),
        FigArg(
            name: 'mobile provisioning profile identifier',
            description:
                'The identifier of the mobile provision(e.g. d5d40f61-b303-4fc8-aea3-fbb229a8171c) which will be used for building. This can easily be acquired through the iPhone Configuration Utility'),
        FigArg(
            name: 'code sign identity',
            description:
                'The code sign identity which will be used for building. You can set it to something generic like \'iPhone Distribution\' to let the build automatically detect a code sign identity'),
      ],
      options: [
        FigOption(
          name: ['--ipa'],
          description:
              'Use the provided .ipa file instead of building the project',
          args: [FigArg(name: 'ipa file path', template: 'filepaths')],
        ),
        FigOption(
          name: ['--appleApplicationSpecificPassword'],
          description:
              'Specifies the password for accessing the information you store in iTunes Transporter application',
          args: [FigArg(name: 'password')],
        ),
        FigOption(
          name: ['--appleSessionBase64'],
          description:
              'The session that will be used instead of triggering a new login each time NativeScript CLI communicates with Apple\'s APIs',
          args: [FigArg(name: 'base64')],
        ),
      ],
    ),
  ],
  args: [
    FigArg(
        name: 'appleId',
        description:
            'Credentials for logging in iTunes Connect. If you do not provide them when running the command, the NativeScript CLI will prompt you to provide them'),
    FigArg(
        name: 'password',
        description: 'Password for logging in iTunes Connect'),
  ],
  options: [
    FigOption(
      name: ['--team-id'],
      description:
          'Specifies the team id for which Xcode will try to find distribution certificate and provisioning profile when exporting for AppStore submission',
      args: [FigArg(name: 'team id')],
    ),
    helpOption('appstore'),
  ],
);

final FigSubcommand deviceCommand = FigSubcommand(
  name: ['device', 'devices'],
  description:
      'Lists all recognized connected Android or iOS devices with serial number and index, grouped by platform',
  subcommands: [
    FigSubcommand(
      name: ['android'],
      description:
          'Lists all recognized connected Android physical and running Android virtual devices',
      options: [
        timeoutOption,
        FigOption(
            name: ['--available-devices'],
            description: 'Lists all available Android devices'),
        jsonOption,
      ],
    ),
    FigSubcommand(
      name: ['ios'],
      description:
          'Lists all recognized connected iOS devices with serial number and index',
      options: [
        timeoutOption,
        FigOption(
            name: ['--available-devices'],
            description: 'Lists all available iOS devices'),
        jsonOption,
      ],
    ),
    FigSubcommand(
      name: ['log'],
      description:
          'Opens the device log stream for a selected connected device',
      options: [deviceOption],
    ),
    FigSubcommand(
      name: ['list-applications'],
      description:
          'Lists the installed applications on all connected Android or iOS devices',
      options: [deviceOption],
    ),
    FigSubcommand(
      name: ['run'],
      description:
          'Runs the selected application on a connected Android or iOS device',
      args: [
        FigArg(
            name: 'application id', description: 'The application identifier'),
      ],
      options: [deviceOption],
    ),
  ],
  options: [
    FigOption(
        name: ['--available-devices'],
        description: 'Lists all available devices'),
    jsonOption,
    helpOption('device'),
  ],
);

final FigSpec nsSpec = FigSpec(
  name: 'ns',
  description:
      'The NativeScript CLI lets you create, build, and deploy NativeScript based apps on iOS and Android devices',
  subcommands: [
    helpCommand,
    infoCommand,
    updateCommand,
    packageManagerCommand,
    doctorCommand,
    migrateCommand,
    usageReportingCommand,
    errorReportingCommand,
    proxyCommand,
    createCommand,
    cleanCommand,
    previewCommand,
    platformCommand,
    runCommand,
    debugCommand,
    testCommand,
    pluginCommand,
    resourcesCommand,
    prepareCommand,
    buildCommand,
    deployCommand,
    installCommand,
    appStoreCommand,
    deviceCommand,
  ],
  options: [
    FigOption(
      name: ['-v', '--version'],
      description: 'View your current Nativescript CLI version',
    ),
  ],
);
