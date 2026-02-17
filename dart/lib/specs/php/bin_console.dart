// AI-generated from TypeScript source: bin-console.ts

import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

final completionSpec = FigSpec(
  name: "bin-console",
  description: "Symfony bin/console command",
  generateSpec: (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    final output = await executeShellCommand(ExecuteCommandInput(
      command: "php",
      args: ["bin/console", "list", "--format=json"],
    ));

    final subcommands = <Subcommand>[];

    try {
      final commandDefinitions = jsonDecode(output.stdout);
      final commands = commandDefinitions['commands'] as List;

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
           // Handle list case if necessary (e.g. empty array in JSON)
        }

        final optionsList = <Option>[];
        if (optionsData is Map) {
          for (final value in optionsData.values) {
             final name = [value['name'] as String];
             final shortcut = value['shortcut'] as String?;
             if (shortcut != null && shortcut.isNotEmpty) {
               name.add(shortcut);
             }

             final optionArgs = <Arg>[];
             if (value['accept_value'] == true) {
               optionArgs.add(Arg(
                 name: "arg",
                 isVariadic: value['is_multiple'] as bool,
                 isOptional: !(value['is_value_required'] as bool),
               ));
             }

             optionsList.add(Option(
               name: name,
               args: optionArgs,
               description: value['description'],
             ));
          }
        } else if (optionsData is List) {
            // Handle list case
        }

        subcommands.add(Subcommand(
          name: command['name'],
          description: command['description'],
          icon: "https://cdn.iconscout.com/icon/free/png-128/symfony-282493.png",
          hidden: command['hidden'] ?? false,
          args: argsList,
          options: optionsList,
        ));
      }
    } catch (err) {
      // ignore
      print(err);
    }

    return FigSpec(
      name: "bin-console",
      subcommands: subcommands,
    );
  },
);
