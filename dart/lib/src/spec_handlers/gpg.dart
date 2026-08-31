// Hand-written dynamic handlers migrated from src/gpg.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gpgCipherAlgorithmsPostProcessHandler =
    'manual.src_gpg.definition.getcipheralgorithms.postprocess';
const gpgDigestAlgorithmsPostProcessHandler =
    'manual.src_gpg.definition.getdigestalgorithms.postprocess';

/// `gpg --version` output: take the substring between the `Cypher: ` and
/// `Hash: ` markers, remove all whitespace, and split on commas.
///
/// Faithful to the TS source, including its `Cypher: ` spelling. Output that
/// lacks either marker (for example an empty or truncated `gpg --version`
/// listing) yields no suggestions.
List<FigSuggestion> _cipherAlgorithms(String output, [List<String>? tokens]) {
  final cipherStart = output.indexOf('Cypher: ');
  final hashStart = output.indexOf('Hash: ');
  if (cipherStart == -1 || hashStart == -1) return const [];
  final cyphers = output
      .substring(cipherStart + 8, hashStart)
      .replaceAll(RegExp(r'\s+'), '');
  return cyphers
      .split(',')
      .where((cypher) => cypher.isNotEmpty)
      .map((cypher) => FigSuggestion(name: cypher))
      .toList();
}

/// `gpg --version` output: take the substring between the `Hash: ` and
/// `Compression: ` markers, remove all whitespace, and split on commas.
///
/// The `+ 8` offset past the six-character `Hash: ` marker is a faithful port
/// of the TS source, which drops the first two characters of the first digest.
/// Output without both markers yields no suggestions.
List<FigSuggestion> _digestAlgorithms(String output, [List<String>? tokens]) {
  final hashStart = output.indexOf('Hash: ');
  final compressionStart = output.indexOf('Compression: ');
  if (hashStart == -1 || compressionStart == -1) return const [];
  final digests = output
      .substring(hashStart + 8, compressionStart)
      .replaceAll(RegExp(r'\s+'), '');
  return digests
      .split(',')
      .where((digest) => digest.isNotEmpty)
      .map((digest) => FigSuggestion(name: digest))
      .toList();
}

/// Registers the gpg generators referenced by the shipped gpg JSON.
void registerGpgHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      gpgCipherAlgorithmsPostProcessHandler, _cipherAlgorithms);
  registry.registerPostProcess(
      gpgDigestAlgorithmsPostProcessHandler, _digestAlgorithms);
}
