// Hand-written dynamic handlers migrated from src/aws/ecs.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ecsRunTaskCountHandler =
    'manual.src_aws_ecs.spec.subcommands_42_.options_2_.args.suggestions';

/// `run-task --count` values 1..10, mirroring
/// `Array.from({ length: 10 }, (_, i) => i + 1).map((number) => number.toString())`.
List<FigSuggestion> _taskCounts() {
  return List.generate(10, (index) => FigSuggestion(name: '${index + 1}'));
}

/// Registers the ecs suggestions handler referenced by the shipped ecs JSON.
void registerEcsHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(ecsRunTaskCountHandler,
      (tokens, executeCommand, context) async => _taskCounts());
}
