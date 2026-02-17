// AI-generated from TypeScript source: please.ts

import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

final completionSpec = FigSpec(
  name: "please",
  description: "Statamic Please command",
  generateSpec: (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    final output = await executeShellCommand(ExecuteCommandInput(
      command: "php",
      args: ["please", "list", "--format=json"],
    ));

    final subcommands = <Subcommand>[];

    try {
      final commandDefinition = jsonDecode(output.stdout);
      // commands is likely a list
      final commands = commandDefinition['commands'] as List;

      for (final command in commands) {
        final definition = command['definition'];
        final argsData = definition['arguments'];
        final optionsData = definition['options'];

        final argsList = <Arg>[];
        if (argsData is Map) {
            for (final value in argsData.values) {
                argsList.add(Arg(
                    name: value['name'],
                    description: value['description'],
                    isOptional: !(value['is_required'] as bool),
                ));
            }
        } else if (argsData is List) {
             // Handle list case
        }

        final optionsList = <Option>[];
        if (optionsData is Map) {
            for (final value in optionsData.values) {
                final names = [value['name'] as String];
                final shortcut = value['shortcut'] as String?;
                
                if (shortcut != null && shortcut.isNotEmpty) {
                    names.add(shortcut);
                }

                optionsList.add(Option(
                    name: names,
                    description: value['description'],
                ));
            }
        } else if (optionsData is List) {
             // Handle list case
        }

        subcommands.add(Subcommand(
          name: command['name'],
          description: command['description'],
          args: argsList,
          options: optionsList,
        ));
      }
    } catch (err) {
      print(err);
    }

    return FigSpec(
      name: "please",
      // debounce: true, // Not supported in Dart FigSpec yet
      subcommands: subcommands,
    );
  },
);
