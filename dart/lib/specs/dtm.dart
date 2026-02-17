// AI-generated from TypeScript source: dtm.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 自定义文件路径生成器
FigGenerator createFilepathsGenerator({
  List<String>? extensions,
  bool? directories,
  bool? files,
}) {
  return FigGenerator(
    template: ['filepaths'],
    filterTemplateSuggestions: (suggestions, context) {
      return suggestions.whereType<FigSuggestion>().where((suggestion) {
        final name = suggestion.nameSingle;
        if (name == null) return false;

        // 检查是否是目录（以 / 结尾）
        final isDirectory = name.endsWith('/');

        // 根据参数过滤
        if (directories != null && directories && !isDirectory) return false;
        if (files != null && files && isDirectory) return false;

        // 检查文件扩展名
        if (extensions != null && !isDirectory) {
          final hasExtension = extensions.any((ext) => name.endsWith(ext));
          if (!hasExtension) return false;
        }

        return true;
      }).toList();
    },
  );
}

/// 使用自定义生成器
Map<String, FigGenerator> dtmGenerators = {
  'plugins': FigGenerator(
    script: ['dtm', 'list', 'plugins'],
    postProcess: (String output, [List<String>? tokens]) {
      if (output.startsWith('fatal:')) {
        return <FigSuggestion>[];
      }
      return output
          .split('\n')
          .where((plugin) => plugin.trim().isNotEmpty)
          .map((plugin) => FigSuggestion(
                name: plugin.trim(),
                description: 'Plugin',
              ))
          .toList();
    },
  ),
  'yamlFiles': createFilepathsGenerator(
    extensions: ['.yaml', '.yml'],
    files: true,
  ),
};

/// Completion spec for `dtm` CLI
final FigSpec dtmSpec = FigSpec(
    name: 'dtm',
    description: 'DevStream is an open-source DevOps toolchain manager',
    subcommands: [
      Subcommand(
          name: 'apply',
          description:
              'Create or update DevOps tools according to DevStream configuration file',
          options: [
            Option(
                name: ['--config-file', '-f'],
                description: 'Config file',
                args: [
                  Arg(
                      name: 'config-file',
                      defaultValue: 'config.yaml',
                      template: ['filepaths'],
                      generators: dtmGenerators['yamlFiles'])
                ]),
            Option(
                name: ['--plugin-dir', '-d'],
                description: 'Plugins directory',
                args: [
                  Arg(name: 'plugin-dir', template: ['folders'])
                ]),
            Option(
                name: ['--yes', '-y'],
                description: 'Apply directly without confirmation')
          ]),
      Subcommand(
          name: 'completion',
          description:
              'Generate the autocompletion script for dtm for the specified shell',
          subcommands: [
            Subcommand(
                name: 'bash',
                description: 'Generate autocompletion script for bash'),
            Subcommand(
                name: 'fish',
                description: 'Generate autocompletion script for fish'),
            Subcommand(
                name: 'powershell',
                description: 'Generate autocompletion script for powershell'),
            Subcommand(
                name: 'zsh',
                description: 'Generate autocompletion script for zsh')
          ]),
      Subcommand(
          name: 'delete',
          description:
              'Delete DevOps tools according to DevStream configuration file',
          options: [
            Option(
                name: ['--config-file', '-f'],
                description: 'Config file',
                args: [
                  Arg(
                      name: 'config-file',
                      defaultValue: 'config.yaml',
                      template: ['filepaths'],
                      generators: dtmGenerators['yamlFiles'])
                ]),
            Option(name: '--force', description: 'Force delete by config'),
            Option(
                name: ['--plugin-dir', '-d'],
                description: 'Plugins directory',
                args: [
                  Arg(name: 'plugin-dir', template: ['folders'])
                ]),
            Option(
                name: ['--yes', '-y'],
                description: 'Delete directly without confirmation')
          ]),
      Subcommand(
          name: 'destroy',
          description:
              'Destroy DevOps tools deployment according to DevStream configuration file & state file',
          options: [
            Option(
                name: ['--config-file', '-f'],
                description: 'Config file',
                args: [
                  Arg(
                      name: 'config-file',
                      defaultValue: 'config.yaml',
                      template: ['filepaths'],
                      generators: dtmGenerators['yamlFiles'])
                ]),
            Option(name: '--force', description: 'Force destroy by config'),
            Option(
                name: ['--plugin-dir', '-d'],
                description: 'Plugins directory',
                args: [Arg(name: 'plugin-di')]),
            Option(
                name: ['--yes', '-y'],
                description: 'Destroy directly without confirmation')
          ]),
      Subcommand(
          name: 'develop',
          description: 'Develop is used for develop a new plugin',
          subcommands: [
            Subcommand(
                name: 'create-plugin',
                description: 'Create a new plugin',
                options: [
                  Option(
                      name: ['--name', '-n'],
                      description: 'Specify name of the plugin to be created',
                      isPersistent: true,
                      args: [Arg(name: 'nam')])
                ]),
            Subcommand(
                name: 'validate-plugin',
                description: 'Validate a plugin',
                options: [
                  Option(
                      name: ['--all', '-a'],
                      description: 'Validate all plugins',
                      isPersistent: true),
                  Option(
                      name: ['--name', '-n'],
                      description: 'Specify name of the plugin to be validated',
                      isPersistent: true,
                      args: [Arg(name: 'nam')])
                ])
          ]),
      Subcommand(
          name: 'init',
          description: 'Download needed plugins according to the config file',
          options: [
            Option(name: ['--all', '-a'], description: 'Download all plugins'),
            Option(
                name: '--arch',
                description: 'Download plugins for specific arch',
                args: [Arg(name: 'arch', defaultValue: 'amd6')]),
            Option(
                name: ['--config-file', '-f'],
                description: 'Config file',
                args: [
                  Arg(
                      name: 'config-file',
                      defaultValue: 'config.yaml',
                      template: ['filepaths'],
                      generators: dtmGenerators['yamlFiles'])
                ]),
            Option(
                name: '--download-only', description: 'Download plugins only'),
            Option(
                name: '--os',
                description: 'Download plugins for specific os',
                args: [Arg(name: 'os', defaultValue: 'linu')]),
            Option(
                name: ['--plugin-dir', '-d'],
                description: 'Plugins directory',
                args: [
                  Arg(name: 'plugin-dir', template: ['folders'])
                ]),
            Option(
                name: ['--plugins', '-p'],
                description: 'The plugins to be downloaded',
                args: [Arg(name: 'plugin')])
          ]),
      Subcommand(
          name: 'list',
          description: 'This command only supports listing plugins now',
          subcommands: [
            Subcommand(
                name: 'plugins',
                description: 'List all plugins',
                options: [
                  Option(
                      name: ['--filter', '-r'],
                      description: 'Filter plugin by regex',
                      isPersistent: true,
                      args: [Arg(name: 'filte')])
                ])
          ]),
      Subcommand(
          name: 'show',
          description:
              'Show is used to print plugins\' configuration templates or status',
          subcommands: [
            Subcommand(
                name: 'config',
                description: 'Show configuration information',
                options: [
                  Option(
                      name: ['--plugin', '-p'],
                      description: 'Specify name with the plugin',
                      args: [
                        Arg(name: 'plugin', generators: dtmGenerators['plugin'])
                      ]),
                  Option(
                      name: ['--template', '-t'],
                      description:
                          'Print a template config, e.g. quickstart/gitops/',
                      args: [Arg(name: 'templat')])
                ]),
            Subcommand(
                name: 'status',
                description: 'Show status information',
                options: [
                  Option(
                      name: ['--all', '-a'],
                      description: 'Show all instances of all plugins status'),
                  Option(
                      name: ['--config-file', '-f'],
                      description: 'Config file',
                      args: [
                        Arg(name: 'config-file', defaultValue: 'config.yam')
                      ]),
                  Option(
                      name: ['--id', '-i'],
                      description: 'Specify id with the plugin instance',
                      args: [Arg(name: 'i')]),
                  Option(
                      name: ['--plugin', '-p'],
                      description: 'Specify name with the plugin',
                      args: [Arg(name: 'plugi')]),
                  Option(
                      name: ['--plugin-dir', '-d'],
                      description: 'Plugins directory',
                      args: [Arg(name: 'plugin-di')])
                ])
          ]),
      Subcommand(
          name: 'upgrade',
          description: 'Upgrade dtm to the latest release version',
          options: [
            Option(
                name: ['--yes', '-y'],
                description: 'Upgrade directly without confirmation')
          ]),
      Subcommand(
          name: 'verify',
          description:
              'Verify DevOps tools according to DevStream config file and state',
          options: [
            Option(
                name: ['--config-file', '-f'],
                description: 'Config file',
                args: [
                  Arg(
                      name: 'config-file',
                      defaultValue: 'config.yaml',
                      template: ['filepaths'],
                      generators: dtmGenerators['yamlFiles'])
                ]),
            Option(
                name: ['--plugin-dir', '-d'],
                description: 'Plugins directory',
                args: [
                  Arg(name: 'plugin-dir', template: ['folders'])
                ])
          ]),
      Subcommand(
          name: 'version',
          description: 'Print the version number of DevStream'),
      Subcommand(
          name: 'help',
          description: 'Help about any command',
          subcommands: [
            Subcommand(
                name: 'apply',
                description:
                    'Create or update DevOps tools according to DevStream configuration file'),
            Subcommand(
                name: 'completion',
                description:
                    'Generate the autocompletion script for dtm for the specified shell',
                subcommands: [
                  Subcommand(
                      name: 'bash',
                      description: 'Generate autocompletion script for bash'),
                  Subcommand(
                      name: 'fish',
                      description: 'Generate autocompletion script for fish'),
                  Subcommand(
                      name: 'powershell',
                      description:
                          'Generate autocompletion script for powershell'),
                  Subcommand(
                      name: 'zsh',
                      description: 'Generate autocompletion script for zsh')
                ]),
            Subcommand(
                name: 'delete',
                description:
                    'Delete DevOps tools according to DevStream configuration file'),
            Subcommand(
                name: 'destroy',
                description:
                    'Destroy DevOps tools deployment according to DevStream configuration file & state file'),
            Subcommand(
                name: 'develop',
                description: 'Develop is used for develop a new plugin',
                subcommands: [
                  Subcommand(
                      name: 'create-plugin',
                      description: 'Create a new plugin'),
                  Subcommand(
                      name: 'validate-plugin', description: 'Validate a plugin')
                ]),
            Subcommand(
                name: 'init',
                description:
                    'Download needed plugins according to the config file'),
            Subcommand(
                name: 'list',
                description: 'This command only supports listing plugins now',
                subcommands: [
                  Subcommand(name: 'plugins', description: 'List all plugins')
                ]),
            Subcommand(
                name: 'show',
                description:
                    'Show is used to print plugins\' configuration templates or status',
                subcommands: [
                  Subcommand(
                      name: 'config',
                      description: 'Show configuration information'),
                  Subcommand(
                      name: 'status', description: 'Show status information')
                ]),
            Subcommand(
                name: 'upgrade',
                description: 'Upgrade dtm to the latest release version'),
            Subcommand(
                name: 'verify',
                description:
                    'Verify DevOps tools according to DevStream config file and state'),
            Subcommand(
                name: 'version',
                description: 'Print the version number of DevStream')
          ])
    ],
    options: [
      Option(
          name: '--debug', description: 'Debug level log', isPersistent: true),
      Option(
          name: ['--help', '-h'],
          description: 'Display help',
          isPersistent: true)
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (dtmGenerators)
// const dtmGenerators: Record<string, Fig.Generator> = {
//   plugins: {
//     script: ["dtm", "list", "plugins"],
//     postProcess: (output) => {
//       if (output.startsWith("fatal:")) {
//         return [];
//       }
//       return output.split("\n").map((plugin) => {
//         return { name: plugin.trim(), description: "Plugin" };
//       });
//     },
//   },
//   yamlFiles: filepaths({ extensions: ["yaml", "yml"] }),
// };
// TS_GENERATOR_BLOCK_END
