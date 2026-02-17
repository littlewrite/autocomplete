// AI-generated from TypeScript source: firebase.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigGenerator projectAliasesGenerator = FigGenerator(
  script: ['firebase', 'projects:list'],
  cache: FigCache(
    ttl: 1000 * 60 * 30, // 缓存 30 分钟，因为命令较慢
    strategy: 'stale-while-revalidate',
  ),
  scriptTimeout: 15000, // 15 秒超时
  postProcess: (String out, [List<String>? tokens]) {
    // 检查输出是否为空或包含错误
    if (out.trim().isEmpty) {
      return <FigSuggestion>[];
    }

    // 尝试多种方式解析输出
    final suggestions = <FigSuggestion>[];

    try {
      // 方法1：正则表达式匹配表格格式
      final tableRowRegex = RegExp(r'^│\s+([^│]+?)\s+│', multiLine: true);
      final matches = tableRowRegex.allMatches(out);

      bool foundHeader = false;

      for (final match in matches) {
        final cellContent = match.group(1)?.trim() ?? '';

        // 跳过表头（通常包含 "Project"、"Alias" 等标题）
        if (!foundHeader &&
            (cellContent.contains('Project') ||
                cellContent.contains('Alias') ||
                cellContent.contains('Display Name'))) {
          foundHeader = true;
          continue;
        }

        if (foundHeader && cellContent.isNotEmpty) {
          suggestions.add(FigSuggestion(
            name: cellContent,
            description: 'Project Alias',
            icon: '🔥',
            priority: 50,
          ));
        }
      }

      // 如果没有找到表格格式，尝试其他格式
      if (suggestions.isEmpty) {
        // 方法2：按行分割，查找项目名称
        final lines = out.split('\n');
        for (final line in lines) {
          final trimmed = line.trim();
          if (trimmed.isNotEmpty &&
              !trimmed.startsWith('│') &&
              !trimmed.startsWith('┌') &&
              !trimmed.startsWith('└') &&
              !trimmed.contains('Project') &&
              !trimmed.contains('Alias')) {
            // 提取可能的项目名称（假设是第一列）
            final parts = trimmed.split(RegExp(r'\s+'));
            if (parts.isNotEmpty) {
              suggestions.add(FigSuggestion(
                name: parts[0],
                description: 'Project',
                icon: '🔥',
                priority: 40,
              ));
            }
          }
        }
      }

      return suggestions;
    } catch (e) {
      print('Error parsing Firebase projects: $e');
      return <FigSuggestion>[];
    }
  },
);

/// Completion spec for `firebase` CLI
final FigSpec firebaseSpec =
    FigSpec(name: 'firebase', description: '', subcommands: [
  Subcommand(
      name: 'appdistribution:distribute',
      description: 'Upload a distribution',
      args: [
        Arg(name: 'distribution-file')
      ],
      options: [
        Option(
            name: '--app',
            description: 'The app id of your Firebase app',
            args: [Arg()]),
        Option(
            name: '--release-notes',
            description: 'Release notes to include with this distribution'),
        Option(
            name: '--release-notes-file',
            description:
                'Path to file with release notes to include with this distribution',
            args: [Arg()]),
        Option(
            name: '--testers',
            description:
                'A comma separated list of tester emails to distribute to',
            args: [Arg(isVariadic: true)]),
        Option(
            name: '--testers-file',
            description:
                'Path to file with a comma separated list of tester emails to distribute to',
            args: [Arg()]),
        Option(
            name: '--groups',
            description:
                'A comma separated list of group aliases to distribute to',
            args: [Arg(isVariadic: true)]),
        Option(
            name: '--groups-file',
            description:
                'Path to file with a comma separated list of group aliases to distribute to',
            args: [Arg(isVariadic: true)]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'apps:android:sha:create',
      description: 'Add a SHA certificate hash for a given app id',
      args: [
        Arg(name: 'appId'),
        Arg(name: 'shaHash')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'apps:android:sha:delete',
      description: 'Delete a SHA certificate hash for a given app id',
      args: [
        Arg(name: 'appId'),
        Arg(name: 'shaId')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'apps:create',
      description: 'Create a new Firebase app',
      args: [
        Arg(name: 'platform'),
        Arg(name: 'displayName')
      ],
      options: [
        Option(
            name: ['-a', '--package-name'],
            description: 'Required package name for the Android app',
            args: [Arg()]),
        Option(
            name: ['-b', '--bundle-id'],
            description: 'Required bundle id for the iOS app',
            args: [Arg()]),
        Option(
            name: ['-s', '--app-store-id'],
            description: '(optional) app store id for the iOS app',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'auth:export',
      description:
          'Export accounts from your Firebase project into a data file',
      args: [
        Arg(name: 'dataFile', template: 'filepaths')
      ],
      options: [
        Option(
            name: '--format',
            description:
                'Format of exported data (csv, json). Ignored if [dataFile] has format extension',
            args: [
              Arg(suggestions: [
                FigSuggestion(name: 'csv'),
                FigSuggestion(name: 'json')
              ])
            ]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'auth:import',
      description:
          'Import users into your Firebase project from a data file(.csv or .json)',
      args: [
        Arg(name: 'dataFile', template: 'filepaths')
      ],
      options: [
        Option(
            name: '--hash-algo',
            description:
                'Specify the hash algorithm used in password for these accounts',
            args: [Arg()]),
        Option(
            name: '--hash-key',
            description: 'Specify the key used in hash algorithm',
            args: [Arg()]),
        Option(
            name: '--salt-separator',
            description:
                'Specify the salt separator which will be appended to salt when verifying password. only used by SCRYPT now',
            args: [Arg()]),
        Option(
            name: '--rounds',
            description: 'Specify how many rounds for hash calculation',
            args: [Arg()]),
        Option(
            name: '--mem-cost',
            description:
                'Specify the memory cost for firebase scrypt, or cpu/memory cost for standard scrypt',
            args: [Arg()]),
        Option(
            name: '--parallelization',
            description: 'Specify the parallelization for standard scrypt',
            args: [Arg()]),
        Option(
            name: '--block-size',
            description:
                'Specify the block size (normally is 8) for standard scrypt',
            args: [Arg()]),
        Option(
            name: '--dk-len',
            description: 'Specify derived key length for standard scrypt',
            args: [Arg()]),
        Option(
            name: '--hash-input-order',
            description:
                'Specify the order of password and salt. Possible values are SALT_FIRST and PASSWORD_FIRST. MD5, SHA1, SHA256, SHA512, HMAC_MD5, HMAC_SHA1, HMAC_SHA256, HMAC_SHA512 support this flag',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:get',
      description: 'Fetch and print JSON data at the specified path',
      args: [Arg(name: 'path')]),
  Subcommand(
      name: 'database:instances:create',
      description: 'Create a realtime database instance',
      args: [
        Arg(name: 'instanceName')
      ],
      options: [
        Option(
            name: ['-l', '--location'],
            description:
                '(optional) location for the database instance, defaults to us-central1',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:instances:list',
      description:
          'List realtime database instances, optionally filtered by a specified location',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:profile',
      description: 'Profile the Realtime Database and generate a usage report',
      options: [
        Option(
            name: ['-o', '--output'],
            description: 'Save the output to the specified file',
            args: [Arg()]),
        Option(
            name: ['-d', '--duration'],
            description:
                'Collect database usage information for the specified number of seconds',
            args: [Arg()]),
        Option(
            name: '--raw',
            description:
                'Output the raw stats collected as newline delimited json',
            args: [Arg()]),
        Option(
            name: '--no-collapse',
            description:
                'Prevent collapsing similar paths into \$wildcard locations'),
        Option(
            name: ['-i', '--input'],
            description:
                'Generate the report based on the specified file instead of streaming logs from the database',
            args: [Arg()]),
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:push',
      description: 'Add a new JSON object to a list of data in your Firebase',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: ['-d', '--data'],
            description: 'Specify escaped JSON directly',
            args: [Arg()]),
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:remove',
      description: 'Remove data from your Firebase at the specified path',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: ['-y', '--confirm'],
            description: 'Pass this option to bypass confirmation prompt'),
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:set',
      description:
          'Store JSON data at the specified path via STDIN, arg, or file',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: ['-d', '--data'],
            description: 'Specify escaped JSON directly',
            args: [Arg()]),
        Option(
            name: ['-y', '--confirm'],
            description: 'Pass this option to bypass confirmation prompt'),
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:settings:get',
      description:
          'Store JSON data at the specified path via STDIN, arg, or file',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, uses default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:settings:set',
      description: 'Set the realtime database setting at path',
      args: [
        Arg(name: 'path'),
        Arg(name: 'value')
      ],
      options: [
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'database:update',
      description:
          'Update some of the keys for the defined path in your Firebase',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: ['-d', '--data'],
            description: 'Specify escaped JSON directly',
            args: [Arg()]),
        Option(
            name: ['-y', '--confirm'],
            description: 'Pass this option to bypass confirmation prompt'),
        Option(
            name: '--instance',
            description:
                'Use the database <instance>.firebaseio.com (if omitted, use default database instance)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'deploy',
      description: 'Deploy code and assets to your Firebase project',
      options: [
        Option(
            name: ['-p', '--public'],
            description:
                'Override the Hosting public directory specified in firebase.json'),
        Option(
            name: ['-m', '--message'],
            description: 'An optional message describing this deploy',
            args: [Arg()]),
        Option(
            name: ['-f', '--force'],
            description:
                'Delete Cloud Functions missing from the current working directory without confirmation'),
        Option(
            name: '--only',
            description:
                'Only deploy to specified, comma-separated targets (e.g. "hosting,storage"). For functions, can specify filters with colons to scope function deploys to only those functions (e.g. "--only functions:func1,functions:func2"). When filtering based on export groups (the exported module object keys), use dots to specify group names (e.g. "--only functions:group1.subgroup1,functions:group2)"'),
        Option(
            name: '--except',
            description:
                'Deploy to all targets except specified (e.g. "database")',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'emulators:exec',
      description:
          'Start the local Firebase emulators, run a test script, then shut down the emulators',
      args: [
        Arg(name: 'script')
      ],
      options: [
        Option(
            name: '--only',
            description:
                'Only specific emulators. This is a comma separated list of emulator names. Valid options are: ["auth","functions","firestore","database","hosting","pubsub"]',
            args: [Arg()]),
        Option(
            name: '--inspect-functions',
            description:
                'Emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)'),
        Option(
            name: '--import',
            description:
                'Import emulator data from a previous export (see emulators:export)',
            args: [Arg()]),
        Option(
            name: '--export-on-exit',
            description:
                'Automatically export emulator data (emulators:export) when the emulators make a clean exit (SIGINT), when no dir is provided the location of --import [dir] is used'),
        Option(name: '--ui', description: 'Run the Emulator UI'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'emulators:export',
      description: 'Export data from running emulators',
      args: [
        Arg(name: 'path', template: 'filepaths')
      ],
      options: [
        Option(
            name: '--only',
            description:
                'Only specific emulators. This is a comma separated list of emulator names. Valid options are: ["auth","functions","firestore","database","hosting","pubsub"]',
            args: [Arg()]),
        Option(
            name: '--force',
            description: 'Overwrite any export data in the target directory'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'emulators:start',
      description: 'Start the local Firebase emulators',
      options: [
        Option(
            name: '--only',
            description:
                'Only specific emulators. This is a comma separated list of emulator names. Valid options are: ["auth","functions","firestore","database","hosting","pubsub"]',
            args: [Arg()]),
        Option(
            name: '--inspect-functions',
            description:
                'Emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)',
            args: [Arg()]),
        Option(
            name: '--import',
            description:
                'Import emulator data from a previous export (see emulators:export)'),
        Option(
            name: '--export-on-exit',
            description:
                'Automatically export emulator data (emulators:export) when the emulators make a clean exit (SIGINT), when no dir is provided the location of --import [dir] is used'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'experimental:functions:shell',
      description: 'Launch full Node shell with emulated functions',
      options: [
        Option(
            name: ['-p', '--port'],
            description:
                'The port on which to emulate functions (default: 5000) (default: 5000)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'ext:configure',
      description: 'Configure an existing extension instance',
      args: [
        Arg(name: 'extensionInstanceId')
      ],
      options: [
        Option(
            name: '--params',
            description: 'Path of params file with .env format',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'ext:info',
      description:
          'List all the extensions that are installed in your Firebase project',
      args: [
        Arg(name: 'extensionName')
      ],
      options: [
        Option(
            name: '--markdown',
            description:
                'Output info in Markdown suitable for constructing a README file'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'ext:uninstall',
      description:
          'Uninstall an extension that is installed in your Firebase project by instance ID',
      args: [
        Arg(name: 'extensionInstanceId')
      ],
      options: [
        Option(
            name: ['-f', '--force'],
            description:
                'No confirmation. Otherwise, a confirmation prompt will appear'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'ext:update',
      description:
          'Update an existing extension instance to the latest version',
      args: [
        Arg(name: 'extensionInstanceId')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'firestore:delete',
      description: 'Delete data from Cloud Firestore',
      args: [
        Arg(name: 'path')
      ],
      options: [
        Option(
            name: ['-r', '--recursive'],
            description:
                'Recursive. Delete all documents and subcollections at and under the specified level. May not be passed along with'),
        Option(
            name: '--shallow',
            description:
                'Shallow. Delete only documents at the specified level and ignore documents in subcollections. This action can potentially orphan documents nested in subcollections. May not be passed along with -r'),
        Option(
            name: '--all-collections',
            description:
                'Delete all. Deletes the entire Firestore database, including all collections and documents. Any other flags or arguments will be ignored'),
        Option(
            name: ['-y', '--yes'],
            description:
                'No confirmation. Otherwise, a confirmation prompt will appear'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'firestore:indexes',
      description: 'List indexes in your project\'s Cloud Firestore database',
      options: [
        Option(
            name: '--pretty',
            description:
                'Pretty print. When not specified the indexes are printed in the JSON specification format'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'functions:config:clone',
      description: 'Clone environment config from another project',
      options: [
        Option(
            name: '--from',
            description: 'The project from which to clone configuration',
            args: [Arg()]),
        Option(
            name: '--only',
            description: 'A comma-separated list of keys to clone',
            args: [Arg()]),
        Option(
            name: '--except',
            description: 'A comma-separated list of keys to not clone',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'functions:config:get',
      description: 'Fetch environment config stored at the given path',
      args: [
        Arg(name: 'path')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'functions:config:set',
      description: 'Set environment config with key=value syntax',
      args: [
        Arg(name: 'values', isVariadic: true, description: 'Key=value')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'functions:log',
      description: 'Read logs from deployed functions',
      options: [
        Option(
            name: '--only',
            description:
                'Only show logs of specified, comma-separated functions (e.g. "funcA,funcB")',
            args: [Arg()]),
        Option(
            name: ['-n', '--lines'],
            description: 'Specify number of log lines to fetch',
            args: [Arg()]),
        Option(name: '--open', description: 'Open logs page in web browser'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'functions:shell',
      description: 'Launch full Node shell with emulated functions',
      options: [
        Option(
            name: ['-p', '--port'],
            description: 'The port on which to emulate functions',
            args: [Arg()]),
        Option(
            name: '--inspect-functions',
            description:
                'Emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(name: 'help', description: 'Display help information', options: [
    Option(name: ['-h', '--help'], description: 'Output usage information')
  ]),
  Subcommand(
      name: 'hosting:channel:create',
      description: 'Create a Firebase Hosting channel',
      args: [
        Arg(name: 'channelId')
      ],
      options: [
        Option(
            name: ['-e', '--expires'],
            description:
                'Duration string (e.g. 12h or 30d) for channel expiration, max 30d',
            args: [Arg()]),
        Option(
            name: '--site',
            description: 'Site for which to create the channel',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:channel:delete',
      description: 'Delete a Firebase Hosting channel',
      args: [
        Arg(name: 'channelId')
      ],
      options: [
        Option(
            name: '--site',
            description: 'Site in which the channel exists',
            args: [Arg()]),
        Option(
            name: ['-f', '--force'],
            description: 'Delete without confirmation'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:channel:deploy',
      description: 'Deploy to a specific Firebase Hosting channel',
      args: [
        Arg(name: 'channelId')
      ],
      options: [
        Option(
            name: ['-e', '--expires'],
            description:
                'Duration string (e.g. 12h, 30d) for channel expiration, max 30d; defaults to 7d',
            args: [Arg()]),
        Option(
            name: '--only',
            description: 'Only create previews for specified targets'),
        Option(
            name: '--open',
            description: 'Open a browser to the channel after deploying'),
        Option(
            name: '--no-authorized-domains',
            description: 'Do not sync channel domains with Firebase Auth'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:channel:list',
      description: 'List all Firebase Hosting channels for your project',
      options: [
        Option(
            name: '--site',
            description: 'List channels for the specified site',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:channel:open',
      description: 'Opens the URL for a Firebase Hosting channel',
      args: [
        Arg(name: 'channelId')
      ],
      options: [
        Option(
            name: '--site',
            description: 'The site to which the channel belongs',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:clone',
      description: 'Clone a version from one site to another',
      args: [
        Arg(name: 'source'),
        Arg(name: 'targetChannel')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:disable',
      description: 'Stop serving web traffic to your Firebase Hosting site',
      options: [
        Option(name: ['-y', '--confirm'], description: 'Skip confirmation'),
        Option(
            name: ['-s', '--site'],
            description: 'The site to disable',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:sites:create',
      description: 'Create a Firebase Hosting site',
      args: [
        Arg(name: 'siteId')
      ],
      options: [
        Option(
            name: '--app',
            description: 'Specify an existing Firebase Web App ID',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:sites:delete',
      description: 'Delete a Firebase Hosting site',
      args: [
        Arg(name: 'siteId')
      ],
      options: [
        Option(
            name: ['-f', '--force'],
            description: 'Delete without confirmation'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:sites:get',
      description: 'Print info about a Firebase Hosting site',
      args: [
        Arg(name: 'siteId')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'hosting:sites:list',
      description: 'List Firebase Hosting sites',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'init',
      description: 'Setup a Firebase project in the current directory',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(name: 'login', description: 'Log the CLI into Firebase', options: [
    Option(
        name: '--no-localhost',
        description:
            'Copy and paste a code instead of starting a local server for authentication'),
    Option(
        name: '--reauth',
        description: 'Force reauthentication even if already logged in'),
    Option(name: ['-h', '--help'], description: 'Output usage information')
  ]),
  Subcommand(
      name: 'login:add',
      description: 'Authorize the CLI for an additional account',
      args: [
        Arg(name: 'emai')
      ],
      options: [
        Option(
            name: '--no-localhost',
            description:
                'Copy and paste a code instead of starting a local server for authentication'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'login:ci',
      description:
          'Generate an access token for use in non-interactive environments',
      options: [
        Option(
            name: '--no-localhost',
            description:
                'Copy and paste a code instead of starting a local server for authentication'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'login:list',
      description: 'List authorized CLI accounts',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'login:use',
      description: 'Set the default account to use for this project directory',
      args: [
        Arg(name: 'email')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(name: 'logout', description: 'Log the CLI out of Firebase', args: [
    Arg(name: 'email')
  ], options: [
    Option(name: ['-h', '--help'], description: 'Output usage information')
  ]),
  Subcommand(
      name: 'open',
      description: 'Quickly open a browser to relevant project resources',
      args: [
        Arg(name: 'link')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'projects:addfirebase',
      description: 'Add Firebase resources to a Google Cloud Platform project',
      args: [
        Arg(name: 'projectI')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'projects:create',
      description:
          'Creates a new Google Cloud Platform project, then adds Firebase resources to the project',
      args: [
        Arg(name: 'projectI')
      ],
      options: [
        Option(
            name: ['-n', '--display-name'],
            description: '(optional) display name for the project',
            args: [Arg()]),
        Option(
            name: ['-o', '--organization'],
            description:
                '(optional) ID of the parent Google Cloud Platform organization under which to create this project',
            args: [Arg()]),
        Option(
            name: ['-f', '--folder'],
            description:
                '(optional) ID of the parent Google Cloud Platform folder in which to create this project',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'projects:list',
      description: 'List all Firebase projects you have access to',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'remoteconfig:get',
      description: 'Get a Firebase project\'s Remote Config template',
      options: [
        Option(
            name: ['-v', '--version-number'],
            description: 'Grabs the specified version of the template'),
        Option(
            name: ['-o', '--output'],
            description:
                'Write config output to a filename (if omitted, will use the default file path)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'remoteconfig:rollback',
      description:
          'Roll back a project\'s published Remote Config template to the one specified by the provided version number',
      options: [
        Option(
            name: ['-v', '--version-number'],
            description: 'Rollback to the specified version of the template',
            args: [Arg()]),
        Option(
            name: '--force',
            description:
                'Rollback template to the specified version without confirmation'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'remoteconfig:versions:list',
      description:
          'Get a list of Remote Config template versions that have been published for a Firebase project',
      options: [
        Option(
            name: '--limit',
            description:
                'Limit the number of versions being returned. Pass \'0\' to fetch all versions',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'serve',
      description: 'Start a local server for your static assets',
      options: [
        Option(
            name: ['-p', '--port'],
            description:
                'The port on which to listen (default: 5000) (default: 5000)',
            args: [Arg()]),
        Option(
            name: ['-o', '--host'],
            description:
                'The host on which to listen (default: localhost) (default: "localhost")',
            args: [Arg()]),
        Option(
            name: '--only',
            description:
                'Only serve specified targets (valid targets are: hosting, functions)'),
        Option(
            name: '--except',
            description:
                'Serve all except specified targets (valid targets are: hosting, functions)',
            args: [Arg()]),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'setup:emulators:database',
      description: 'Downloads the database emulator',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'setup:emulators:firestore',
      description: 'Downloads the firestore emulator',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'setup:emulators:pubsub',
      description: 'Downloads the pubsub emulator',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'setup:emulators:ui',
      description: 'Downloads the ui emulator',
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'target',
      description: 'Display configured deploy targets for the current project',
      args: [
        Arg(name: 'typ')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'target:apply',
      description: 'Apply a deploy target to a resource',
      args: [
        Arg(name: 'type'),
        Arg(name: 'name'),
        Arg(name: 'resources', isVariadic: true)
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'target:clear',
      description: 'Clear all resources from a named resource target',
      args: [
        Arg(name: 'type'),
        Arg(name: 'target')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'target:remove',
      description: 'Remove a resource target',
      args: [
        Arg(name: 'type'),
        Arg(name: 'resource')
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ]),
  Subcommand(
      name: 'use',
      description: 'Set an active Firebase project for your working directory',
      args: [
        Arg(name: 'alias or project id', generators: projectAliasesGenerator)
      ],
      options: [
        Option(
            name: '--add',
            description: 'Create a new project alias interactively',
            args: [Arg()]),
        Option(
            name: '--alias',
            description: 'Create a new alias for the provided project id',
            args: [Arg()]),
        Option(
            name: '--unalias',
            description: 'Remove an already created project alias',
            args: [Arg()]),
        Option(
            name: '--clear', description: 'Clear the active project selection'),
        Option(name: ['-h', '--help'], description: 'Output usage information')
      ])
]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (projectAliasesGenerator)
// const projectAliasesGenerator: Fig.Generator = {
//   script: ["firebase", "projects:list"], // this calls to a firebase server and is therefore slow
//   postProcess: (out) => {
//     const getAliasRegex = /^│ (\w.*?)│/gm;
//     const aliasesRaw = Array.from(out.matchAll(getAliasRegex));
//     aliasesRaw.shift(); // first element is the table header
//     return aliasesRaw.map((alias) => {
//       return { name: alias[1].trim(), description: "ProjectAlias" };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END
