// AI-generated from TypeScript source: magento.ts

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final completionSpec = FigSpec(
  name: "magento",
  description: "Open-source E-commerce",
  generateSpec: (List<String> tokens, dynamic executeShellCommand) async {
    var stdout = "";
    try {
      final result = await executeShellCommand(
        command: "bin/magento",
        args: ["list", "--format=json", "--raw"],
      );
      stdout = result.stdout;
    } catch (e) {
      return FigSpec(name: "magento");
    }

    final magento = jsonDecode(stdout) as Map<String, dynamic>;

    List<String> cacheTypes = [];
    try {
      final envResult = await executeShellCommand(
        command: "php",
        args: ["-r", "print(json_encode(require \"app/etc/env.php\"));"],
      );
      final env = jsonDecode(envResult.stdout);
      if (env['cache_types'] != null) {
        cacheTypes = (env['cache_types'] as Map).keys.cast<String>().toList();
      }
    } catch (_) {}

    final commands = (magento['commands'] as List).cast<Map<String, dynamic>>();

    return FigSpec(
      name: "magento",
      description: "Open-source E-commerce",
      subcommands: commands.map((command) {
        final def = command['definition'];
        final argsData = def['arguments'];
        final optionsData = def['options'];

        final List<FigArg> args = [];
        if (argsData is Map) {
          args.addAll(argsData.values.map((arg) {
            List<String> suggestions = [];
            if ((command['name'] as String).startsWith("cache:") &&
                arg['name'] == "types") {
              suggestions.addAll(cacheTypes);
            }

            return FigArg(
              name: arg['name'],
              description: arg['description'],
              isOptional: !(arg['is_required'] as bool),
              defaultValue: arg['default']?.toString(),
              isVariadic: arg['is_array'],
              suggestions:
                  suggestions.map((s) => FigSuggestion(name: s)).toList(),
            );
          }));
        }

        final List<FigOption> options = [];
        if (optionsData is Map) {
          options.addAll(optionsData.values.map((option) {
            final shortcuts = (option['shortcut'] as String?)?.split("|") ?? [];
            return FigOption(
              name: [option['name'], ...shortcuts],
              description: option['description'],
              isRequired: option['is_value_required'],
              requiresSeparator: option['accept_value'],
            );
          }));
        }

        return FigSubcommand(
          name: command['name'],
          description: command['description'],
          args: args,
          options: options,
        );
      }).toList(),
    );
  },
);
