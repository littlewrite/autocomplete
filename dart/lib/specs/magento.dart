// Auto-generated from TypeScript source: magento.ts
import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/src/spec.dart';

Future<Map<String, dynamic>> getEnvConfig() async {
  final result = await Process.run(
    'php',
    ['-r', "print(json_encode(require \"app/etc/env.php\"));"],
    runInShell: true,
  );
  try {
    return jsonDecode(result.stdout as String) as Map<String, dynamic>;
  } catch (e) {
    return {};
  }
}

Future<List<String>> getCacheTypes() async {
  final env = await getEnvConfig();
  final cacheTypes = env['cache_types'] as Map<String, dynamic>?;
  return cacheTypes?.keys.toList() ?? [];
}

final FigSpec magentoSpec = FigSpec(
  name: 'magento',
  description: 'Open-source E-commerce',
  generateSpec: (List<String> tokens, [dynamic executeShellCommand]) async {
    try {
      final result = await Process.run(
        'bin/magento',
        ['list', '--format=json', '--raw'],
        runInShell: true,
      );
      final magento =
          jsonDecode(result.stdout as String) as Map<String, dynamic>;
      final cacheTypes = await getCacheTypes();

      final commands = (magento['commands'] as List<dynamic>).map((command) {
        final cmd = command as Map<String, dynamic>;
        final definition = cmd['definition'] as Map<String, dynamic>;

        // Handle arguments
        final argsMap = definition['arguments'];
        final List<FigArg> argsList = [];

        if (argsMap is Map) {
          argsMap.forEach((key, value) {
            final arg = value as Map<String, dynamic>;
            final suggestions = <String>[];

            if ((cmd['name'] as String).startsWith('cache:') &&
                arg['name'] == 'types') {
              suggestions.addAll(cacheTypes);
            }

            argsList.add(FigArg(
              name: arg['name'],
              description: arg['description'],
              isOptional: !(arg['is_required'] as bool),
              defaultValue: arg['default']?.toString(),
              isVariadic: arg['is_array'] as bool,
              suggestions: suggestions,
            ));
          });
        }

        // Handle options
        final optionsMap = definition['options'];
        final List<FigOption> optionsList = [];

        if (optionsMap is Map) {
          optionsMap.forEach((key, value) {
            final opt = value as Map<String, dynamic>;
            final shortcuts = (opt['shortcut'] as String?)?.split('|') ?? [];
            final names = [opt['name'], ...shortcuts];

            optionsList.add(FigOption(
              name: names,
              description: opt['description'],
              isRequired: opt['is_value_required'] as bool,
              requiresSeparator: opt['accept_value'] as bool,
            ));
          });
        }

        return FigSubcommand(
          name: cmd['name'],
          description: cmd['description'],
          args: argsList,
          options: optionsList,
        );
      }).toList();

      return FigSpec(
        name: 'magento',
        description: 'Open-source E-commerce',
        subcommands: commands,
      );
    } catch (e) {
      // Fallback if bin/magento is not found or fails
      return FigSpec(
        name: 'magento',
        description: 'Open-source E-commerce (failed to load commands)',
      );
    }
  },
);
