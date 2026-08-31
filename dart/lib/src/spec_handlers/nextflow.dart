// Hand-written dynamic handlers migrated from src/nextflow.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const nextflowRunnamePostProcessHandler =
    'manual.src_nextflow.definition.runname.postprocess';
const nextflowSessionidPostProcessHandler =
    'manual.src_nextflow.definition.sessionid.postprocess';
const nextflowProjectnameCustomHandler =
    'manual.src_nextflow.generator.projectname';
const nextflowDockerimageCustomHandler =
    'manual.src_nextflow.generator.dockerimage';
const nextflowSecretnameCustomHandler =
    'manual.src_nextflow.generator.secretname';

/// Shared postProcess used by every nextflow generator: return nothing for an
/// empty stream, otherwise split on newlines and, per entry, drop the first
/// `*` (the source uses JS `replace("*", "")`) and trim.
List<FigSuggestion> _lineSuggestions(
  String output, {
  required String description,
}) {
  if (output.isEmpty) return const [];
  return output.split('\n').map((line) {
    return FigSuggestion(
      name: line.replaceFirst('*', '').trim(),
      description: description,
    );
  }).toList();
}

/// `.nextflow/history` column 4 is the run name.
List<FigSuggestion> _runname(String output, [List<String>? tokens]) =>
    _lineSuggestions(output, description: 'Run name');

/// `.nextflow/history` column 7 is the session id.
List<FigSuggestion> _sessionid(String output, [List<String>? tokens]) =>
    _lineSuggestions(output, description: 'Session ID');

/// Runs [command] through `bash -c` and turns its stdout into one suggestion
/// per line, mirroring the source generators' script + postProcess shape.
Future<List<FigSuggestion>> _runBashLineGenerator(
  String command,
  String description,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'bash',
    args: ['-c', command],
  ));
  if (result.status != 0) return const [];
  return _lineSuggestions(result.stdout, description: description);
}

/// Local `.nf` files plus the downloaded `.nextflow/assets/*` projects.
Future<List<FigSuggestion>> _projectname(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runBashLineGenerator(
    "{ find * -maxdepth 0 -type f -name '*.nf' 2> /dev/null && "
        "find \$HOME/.nextflow/assets/* -maxdepth 1 -type d | "
        "cut -d/ -f6,7 | grep / | grep -v assets; } 2> /dev/null",
    'Project name',
    executeCommand,
  );
}

/// `docker images` first column without the REPOSITORY header.
Future<List<FigSuggestion>> _dockerimage(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runBashLineGenerator(
    'docker images | cut -w -f 1 | grep -v REPOSITORY',
    'Docker image',
    executeCommand,
  );
}

/// `"name": ...` values extracted from the nextflow secrets store.
Future<List<FigSuggestion>> _secretname(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runBashLineGenerator(
    "grep -o '\"name\": *\"[^\"]*\"' \$HOME/.nextflow/secrets/store.json | "
        "grep -o '\"[^\"]*\"\$' | tr -d \\\"",
    'Secret name',
    executeCommand,
  );
}

/// Registers the nextflow generators referenced by the shipped nextflow JSON.
void registerNextflowHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(nextflowRunnamePostProcessHandler, _runname);
  registry.registerPostProcess(
      nextflowSessionidPostProcessHandler, _sessionid);
  registry.registerCustom(nextflowProjectnameCustomHandler, _projectname);
  registry.registerCustom(nextflowDockerimageCustomHandler, _dockerimage);
  registry.registerCustom(nextflowSecretnameCustomHandler, _secretname);
}
