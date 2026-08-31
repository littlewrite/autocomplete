// Hand-written dynamic handlers migrated from src/ykman.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `ykman config mode` MODE argument: suggest USB interface modes that are not
/// already present in the comma... plus-joined mode string being typed.
const ykmanConfigModeCustomHandler =
    'manual.src_ykman.spec.subcommands_2_.subcommands_0_.args.generators.custom';

/// `ykman -d/--device` SERIAL argument: post-processes
/// `ykman list | sed -rn 's/.*Serial: (.*)/\1/p'` output into serial numbers.
const ykmanDeviceSerialPostProcessHandler =
    'manual.src_ykman.spec.options_0_.args.generators.postprocess';

/// `ykman -r/--reader` NAME argument: post-processes `ykman list --readers`
/// output into smart card reader names.
const ykmanReaderPostProcessHandler =
    'manual.src_ykman.spec.options_1_.args.generators.postprocess';

/// Every possible USB interface mode, in the same insertion order the TypeScript
/// Set yields: shortcuts and full names interleaved.
const List<String> _allModes = <String>['o', 'OTP', 'f', 'FIDO', 'c', 'CCID'];

/// Alias map mirroring src/ykman.ts: a full mode name and its single-letter
/// shortcut map to each other.
const Map<String, List<String>> _modeAliases = <String, List<String>>{
  'OTP': <String>['o'],
  'o': <String>['OTP'],
  'FIDO': <String>['f'],
  'f': <String>['FIDO'],
  'CCID': <String>['c'],
  'c': <String>['CCID'],
};

/// `ykman config mode` MODE custom generator.
///
/// The currently typed token is a '+' joined list of already selected modes
/// (for example `OTP+FIDO`). Modes already added, and their aliases, are
/// removed from the possible suggestions.
Future<List<FigSuggestion>> _configMode(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final previous = tokens.isEmpty ? '' : tokens.last;
  final previouslyAdded = previous.split('+');

  final removed = <String>{};
  for (final token in previouslyAdded) {
    removed.add(token);
    final aliases = _modeAliases[token];
    if (aliases != null) {
      removed.addAll(aliases);
    }
  }

  return _allModes
      .where((mode) => !removed.contains(mode))
      .map((mode) => FigSuggestion(name: mode))
      .toList();
}

/// `ykman -d/--device` SERIAL post-processor.
List<FigSuggestion> _deviceSerials(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  return output
      .split('\n')
      .map((serial) => FigSuggestion(
            name: serial,
            description: 'Yubikey serial',
          ))
      .toList();
}

/// `ykman -r/--reader` NAME post-processor.
List<FigSuggestion> _readers(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  return output
      .split('\n')
      .map((readerName) => FigSuggestion(
            name: readerName,
            description: 'Yubikey name',
          ))
      .toList();
}

/// Registers the ykman generators referenced by the shipped ykman JSON.
void registerYkmanHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(ykmanConfigModeCustomHandler, _configMode);
  registry.registerPostProcess(
      ykmanDeviceSerialPostProcessHandler, _deviceSerials);
  registry.registerPostProcess(ykmanReaderPostProcessHandler, _readers);
}
