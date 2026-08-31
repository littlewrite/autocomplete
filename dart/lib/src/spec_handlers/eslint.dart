// Hand-written dynamic handlers migrated from src/eslint.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const eslintEnvsCustomHandler =
    'manual.src_eslint.spec.options_2_.args.generators.custom';
const eslintPluginsPostProcessHandler =
    'manual.src_eslint.spec.options_9_.args.generators.postprocess';

/// The static list of ESLint environment names in src/eslint.ts.
const _eslintEnvs = [
  'browser',
  'node',
  'commonjs',
  'shared-node-browser',
  'es6',
  'ecmaVersion',
  'es2017',
  'es2020',
  'es2021',
  'worker',
  'amd',
  'mocha',
  'jasmine',
  'jest',
  'phantomjs',
  'protractor',
  'qunit',
  'jquery',
  'prototypejs',
  'shelljs',
  'meteor',
  'mongo',
  'applescript',
  'nashorn',
  'servicerworker',
  'atomtest',
  'embertest',
  'webextensions',
  'greasemonkey',
];

/// `--env` custom generator: multiple envs are separated by `,`, so the last
/// token's already-entered env names are filtered out of the static list.
Future<List<FigSuggestion>> _envs(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  executeCommand;
  context;
  final currentToken = tokens.isNotEmpty ? tokens[tokens.length - 1] : '';
  final entered = currentToken.split(',');
  final result = <FigSuggestion>[];
  for (final name in _eslintEnvs) {
    if (!entered.contains(name)) {
      result.add(FigSuggestion(name: name));
    }
  }
  return result;
}

/// `--plugin` post-processor: every line that names an `eslint-plugin` package
/// is suggested with the `eslint-plugin-` prefix stripped.
List<FigSuggestion> _plugins(String output, [List<String>? tokens]) {
  tokens;
  final plugins = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.startsWith('eslint-plugin')) continue;
    final firstToken = line.split(' ').first;
    // `eslint-plugin-` is 14 characters; skip names too short to carry one.
    if (firstToken.length < 14) continue;
    plugins.add(FigSuggestion(name: firstToken.substring(14)));
  }
  return plugins;
}

/// Registers the eslint generators referenced by the shipped eslint JSON.
void registerEslintHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(eslintEnvsCustomHandler, _envs);
  registry.registerPostProcess(eslintPluginsPostProcessHandler, _plugins);
}
