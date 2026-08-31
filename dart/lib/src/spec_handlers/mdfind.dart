// Hand-written dynamic handlers migrated from src/mdfind.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `smartFolderGenerator.custom` (src/mdfind.ts): `mdfind -s` only accepts
/// smart folders in `~/Library/Saved Searches/`.
const mdfindSmartFolderCustomHandler =
    'manual.src_mdfind.spec.options_7_.args.generators.custom';

/// `smartFolderGenerator` from src/mdfind.ts: lists `~/Library/Saved Searches/`
/// and keeps the `.savedSearch` files, stripping the extension from the
/// suggestion name (the extension is re-added by mdfind).
Future<List<FigSuggestion>> _smartFolders(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? '';
  if (home.isEmpty) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'ls',
    args: ['-1A', '$home/Library/Saved Searches/'],
  ));
  return result.stdout
      .split('\n')
      .where((file) => file.endsWith('savedSearch'))
      .map((path) {
    final components = path.split('/');
    final filename = components[components.length - 1];
    return FigSuggestion(
      name: filename.substring(0, filename.indexOf('.')),
      displayName: filename,
      icon: 'fig://$path',
      description: 'Smart folder',
    );
  }).toList();
}

/// Registers the dynamic handler referenced by the shipped mdfind JSON.
void registerMdfindHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(mdfindSmartFolderCustomHandler, _smartFolders);
}
