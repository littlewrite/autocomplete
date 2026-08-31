// Hand-written dynamic handlers migrated from src/atuin.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// The `atuin import` shell subcommands (zsh, zsh-hist-db, bash, resh, fish,
/// nu, nu-hist-db). The source builds them with a `.map()` over a shell list,
/// which the materializer could not expand statically, so the JSON stores a
/// bare handler reference as the second subcommand of `import`.
const atuinImportSubcommandsHandler =
    'manual.src_atuin.spec.subcommands_1_.subcommands_1_';

/// The `import` shell choices from src/atuin.ts. Each shell is suggested with
/// `name: shell` and a description built from the pretty shell name (the
/// `-hist-db` suffix stripped). Ignored invocation context: the source
/// produces a static list.
Future<List<FigSuggestion>> _importSubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  const shells = [
    'zsh',
    'zsh-hist-db',
    'bash',
    'resh',
    'fish',
    'nu',
    'nu-hist-db',
  ];
  return shells
      .map((shell) {
        final prettyShellName = shell.replaceAll('-hist-db', '');
        return FigSuggestion(
          name: shell,
          description: 'Import history from the $prettyShellName history file',
          type: SuggestionType.subcommand,
        );
      })
      .toList();
}

/// Registers the atuin handlers referenced by the shipped atuin JSON.
void registerAtuinHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(atuinImportSubcommandsHandler, _importSubcommands);
}
