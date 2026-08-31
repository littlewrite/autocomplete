// Hand-written dynamic handlers migrated from src/trivy.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const trivySeverityCustomHandler =
    'manual.src_trivy.definition.severityoption.args.generators.custom';
const trivyVulnTypeCustomHandler =
    'manual.src_trivy.definition.scanoptions_6_.args.generators.custom';
const trivySecurityChecksCustomHandler =
    'manual.src_trivy.definition.scanoptions_7_.args.generators.custom';

/// Filters [candidates] against the current token's comma-separated list,
/// dropping any candidate the user has already selected.
///
/// Mirrors the source `custom` generators, which read `ctx[ctx.length - 1]`,
/// split it on `,`, and hide suggestions already present. An empty or missing
/// token keeps every candidate.
List<FigSuggestion> _commaSeparatedCandidates(
  List<String> candidates,
  List<String> tokens,
) {
  if (tokens.isEmpty) {
    return candidates.map((name) => FigSuggestion(name: name)).toList();
  }
  final currentToken = tokens.last;
  final selected = currentToken.split(',');
  return candidates
      .where((name) => !selected.contains(name))
      .map((name) => FigSuggestion(name: name))
      .toList();
}

/// `--severity` (and `-s`): the five severity levels, minus those already
/// typed, e.g. `--severity LOW,` suggests UNKNOWN, MEDIUM, HIGH, CRITICAL.
Future<List<FigSuggestion>> _severities(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _commaSeparatedCandidates(
      const ['UNKNOWN', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL'], tokens);
}

/// `--vuln-type`: `os` and `library`, minus those already typed.
Future<List<FigSuggestion>> _vulnTypes(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _commaSeparatedCandidates(const ['os', 'library'], tokens);
}

/// `--security-checks`: `vuln` and `config`, minus those already typed.
Future<List<FigSuggestion>> _securityChecks(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _commaSeparatedCandidates(const ['vuln', 'config'], tokens);
}

/// Registers the trivy generators referenced by the shipped trivy JSON.
void registerTrivyHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(trivySeverityCustomHandler, _severities);
  registry.registerCustom(trivyVulnTypeCustomHandler, _vulnTypes);
  registry.registerCustom(trivySecurityChecksCustomHandler, _securityChecks);
}
