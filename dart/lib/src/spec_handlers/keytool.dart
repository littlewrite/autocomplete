// Hand-written dynamic handlers migrated from src/keytool.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const keytoolKeypasswdOptionsHandler =
    'manual.src_keytool.spec.subcommands_10_.options_1_';
const keytoolStorepasswdOptionsHandler =
    'manual.src_keytool.spec.subcommands_15_.options_1_';

/// The options collapsed into the `-keypasswd` and `-storepasswd` option
/// handler slots. The exporter could not inline
/// `...repeatedOptions.filter((opt) => opt.name !== "-protected")`, so the
/// materialized JSON keeps a handler reference at `options[1]` that also
/// absorbs the static `-v` flag from `...commonOptions`. This mirrors that
/// spread exactly: every repeated option except `-protected`, preceded by `-v`.
List<FigSuggestion> _verboseAndRepeatedOptions() {
  return const [
    FigSuggestion(name: '-v', description: 'Verbose output'),
    FigSuggestion(
        name: '-alias', description: 'Alias name of the entry to process'),
    FigSuggestion(name: '-keystore', description: 'Keystore name'),
    FigSuggestion(name: '-storepass', description: 'Keystore password'),
    FigSuggestion(name: '-storetype', description: 'Keystore type'),
    FigSuggestion(name: '-providername', description: 'Provider name'),
    FigSuggestion(
        name: '-addprovider',
        description: 'Add security provider by name (e.g. SunPKCS11)'),
    FigSuggestion(
        name: '-providerclass',
        description: 'Add security provider by fully-qualified class name'),
    FigSuggestion(
        name: '-providerarg',
        description: 'Configure argument for -addprovider or -providerclass'),
    FigSuggestion(name: '-providerpath', description: 'Provider classpath'),
  ];
}

/// The `-keypasswd` options slot replaced by the exporter's manual handler.
/// The runtime has no option-generating slot, so this surfaces the same flags
/// as suggestions; the shipped JSON keeps the original option handler
/// reference intact.
Future<List<FigSuggestion>> _keypasswdOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _verboseAndRepeatedOptions();
}

/// The `-storepasswd` options slot; identical to the `-keypasswd` one.
Future<List<FigSuggestion>> _storepasswdOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  return _verboseAndRepeatedOptions();
}

/// Registers the keytool option handlers referenced by the shipped keytool
/// JSON.
void registerKeytoolHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(keytoolKeypasswdOptionsHandler, _keypasswdOptions);
  registry.registerCustom(keytoolStorepasswdOptionsHandler, _storepasswdOptions);
}
