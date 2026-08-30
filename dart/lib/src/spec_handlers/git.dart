// Hand-written handlers for the first git JSON vertical slice.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gitGenerateSpecHandler = 'manual.src_git.spec.generatespec';
const gitConfigPostProcessHandler =
    'manual.src_git.spec.subcommands_3_.args_0_.generators.postprocess';
const gitAliasHandler = 'manual.src_git.spec.args.parserdirectives.alias';

void registerGitHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(gitGenerateSpecHandler,
      (tokens, executeCommand) async {
    final result = await executeCommand(const ExecuteCommandInput(
      command: 'git',
      args: ['help', '-a'],
    ));
    if (result.status != 0) return null;

    final lines = result.stdout.trim().split('\n');
    final start = lines
        .indexWhere((line) => line.toLowerCase().contains('external commands'));
    if (start < 0) return null;
    final commands = <FigSubcommand>[];
    for (var i = start + 1; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) break;
      final name = line.split(RegExp(r'\s+')).first;
      if (name.isNotEmpty) commands.add(FigSubcommand(name: name));
    }
    return FigSpec(name: 'git', subcommands: commands);
  });

  // The source filters out names already present in configSuggestions. The
  // generated JSON intentionally omits that unresolved expression, so this
  // handler keeps the executable post-process boundary and returns the same
  // line-derived suggestion shape until the static list is ported.
  registry.registerPostProcess(gitConfigPostProcessHandler, (output, [tokens]) {
    return output
        .trim()
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final separator = line.indexOf(' ');
          final name =
              (separator < 0 ? line : line.substring(0, separator)).trim();
          return FigSuggestion(name: name, icon: '⚙️');
        })
        .where((suggestion) => suggestion.name.isNotEmpty)
        .toList();
  });

  registry.registerAlias(gitAliasHandler, (token, executeCommand) async {
    final result = await executeCommand(ExecuteCommandInput(
      command: 'git',
      args: ['config', '--get', 'alias.$token'],
    ));
    if (result.status != 0) {
      throw StateError('Failed parsing git alias: $token');
    }
    return result.stdout;
  });
}
