// Hand-written dynamic handler migrated from src/chown.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const chownUsersAndGroupsHandler =
    'manual.src_chown.spec.args_0_.generators.custom';

/// Registers the macOS `dscl` generator used by the JSON chown spec.
void registerChownHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    chownUsersAndGroupsHandler,
    (tokens, executeCommand, context) async {
      if (executeCommand == null) return const <FigSuggestion>[];

      final hasGroupSeparator = tokens.any((token) => token.contains(':'));
      final usesNumericIds = tokens.any(
        (token) => RegExp(r'^-.*n.*').hasMatch(token),
      );
      final query = hasGroupSeparator
          ? const ExecuteCommandInput(
              command: 'bash',
              args: [
                '-c',
                "dscl . -list /Groups PrimaryGroupID | tr -s ' ' | sort -r",
              ],
            )
          : const ExecuteCommandInput(
              command: 'bash',
              args: [
                '-c',
                "dscl . -list /Users UniqueID | tr -s ' ' | sort -r",
              ],
            );
      final output = await executeCommand(query);
      if (output.status != 0) return const <FigSuggestion>[];

      return output.stdout
          .split('\n')
          .map((line) => line.trim().split(RegExp(r'\s+')))
          .where((columns) => columns.length >= 2 && columns[0].isNotEmpty)
          .map(
            (columns) => FigSuggestion(
              name: usesNumericIds ? columns[1] : columns[0],
              description: hasGroupSeparator
                  ? 'Group - ${usesNumericIds ? columns[0] : 'gid: ${columns[1]}'}'
                  : 'User - ${usesNumericIds ? columns[0] : 'uid: ${columns[1]}'}',
              icon: hasGroupSeparator ? '👥' : '👤',
              priority: 90,
            ),
          )
          .toList();
    },
  );
}
