// Hand-written dynamic handlers migrated from src/phpunit-watcher.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const phpunitWatcherTestsPostProcessHandler =
    'manual.src_phpunit-watcher.spec.subcommands_0_.options_0_.args.generators.postprocess';

/// `phpunit --list-tests` output: lines contain `::` separating the test class
/// from the method. The method name (text after `::`) is both the suggestion
/// name and its description, mirroring the source.
List<FigSuggestion> _tests(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) return const [];
  final tests = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final index = line.indexOf('::');
    if (index <= 0) continue;
    final name = line.substring(index + 2);
    tests.add(FigSuggestion(name: name, description: name));
  }
  return tests;
}

/// Registers the phpunit-watcher generator referenced by the shipped
/// phpunit-watcher JSON.
void registerPhpunitWatcherHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(phpunitWatcherTestsPostProcessHandler, _tests);
}
