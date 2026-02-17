// AI-generated from TypeScript source: artisan.ts

import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

final completionSpec = FigSpec(
  name: "artisan",
  description: "Laravel Artisan Command",
  generateSpec: (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    final output = await executeShellCommand(ExecuteCommandInput(
      command: "php",
      args: ["artisan", "list", "--format=json"],
    ));

    final subcommands = <Subcommand>[];

    try {
      final commandDefinition = jsonDecode(output.stdout);
      // In TS: commandDefinition.commands.filter...
      // We assume commands is a List
      final commands = commandDefinition['commands'] as List;

      for (final command in commands) {
        if (command['name'] == '_complete') continue;

        final definition = command['definition'];
        // arguments and options are objects in TS code (Object.keys used)
        final argsData = definition['arguments'];
        final optionsData = definition['options'];

        final argsList = <Arg>[];
        if (argsData is Map) {
            for (final key in argsData.keys) {
                final argument = argsData[key];
                argsList.add(Arg(
                    name: argument['name'],
                    description: argument['description'],
                    isOptional: !(argument['is_required'] as bool),
                ));
            }
        } else if (argsData is List) {
             // Handle case where it might be an empty list [] instead of object
        }

        final optionsList = <Option>[];
        if (optionsData is Map) {
            for (final key in optionsData.keys) {
                final option = optionsData[key];
                final names = [option['name'] as String];
                final shortcut = option['shortcut'] as String?;
                
                if (shortcut != null && shortcut.isNotEmpty) {
                    names.add(shortcut);
                }

                optionsList.add(Option(
                    name: names,
                    description: option['description'],
                ));
            }
        }

        subcommands.add(Subcommand(
          name: command['name'],
          description: command['description'],
          icon: "https://web.tinkerwell.app/img/laravel.3cab6a56.png",
          args: argsList,
          options: optionsList,
        ));
      }
    } catch (err) {
      // ignore
    }

    return FigSpec(
      name: "artisan",
      // debounce: true, // Not supported in Dart FigSpec yet
      subcommands: subcommands,
    );
  },
);
