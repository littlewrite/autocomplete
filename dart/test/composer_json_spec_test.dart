import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/composer.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    final key = [executable, ...arguments].join(' ');
    return _results[key] ?? const ProcessRunResult(stdout: '');
  }
}

/// `composer list --format=json` fixture with two commands: `require` (a
/// required variadic arg plus a shortcut option and a value-taking option) and
/// `remove` (an optional arg with a string default).
const _composerListJson = '{"commands":['
    '{"name":"require","description":"Adds required packages to your composer.json",'
    '"definition":{"arguments":{"packages":{"name":"packages","is_required":true,'
    '"is_array":true,"description":"Packages to install","default":null}},'
    '"options":{"dev":{"name":"--dev","shortcut":"-D","accept_value":false,'
    '"is_value_required":false,"description":"Add requirement to require-dev",'
    '"default":null},"with-version":{"name":"--with-version","shortcut":"",'
    '"accept_value":true,"is_value_required":true,"description":"Version constraint",'
    '"default":null}}}},'
    '{"name":"remove","description":"Removes a package from composer.json",'
    '"definition":{"arguments":{"package":{"name":"package","is_required":false,'
    '"is_array":false,"description":"Package to remove","default":"vendor/pkg"}},'
    '"options":{}}}]}';

/// Collects every `handler` string referenced under `generators`, `postProcess`,
/// `custom`, `script`, `trigger`, `suggestions`, or `generateSpec` anywhere in
/// the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'script' ||
                key == 'trigger' ||
                key == 'suggestions' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

/// Parses the shipped composer JSON and runs its generateSpec against the
/// adapter, returning the generated spec.
Future<FigSpec> _generateSpec(
  JsonHandlerRegistry registry,
  CompleteAdapter adapter,
) async {
  final source = await File('assets/specs/c/composer.json').readAsString();
  final spec = figSpecFromJsonString(source, handlers: registry);
  final generated = await spec.generateSpec!(
    const ['composer', ''],
    (input) async {
      final result = await adapter.runProcess(input.command, input.args);
      return ExecuteCommandOutput(
        stdout: result.stdout,
        stderr: result.stderr,
        status: result.exitCode,
      );
    },
  );
  return generated!;
}

/// Returns the first generator of [command]'s first argument.
FigGenerator _argGenerator(FigSpec spec, String command) {
  final subcommand =
      spec.subcommands!.firstWhere((item) => item.nameList.first == command);
  return subcommand.args!.first.generatorsList.first;
}

void main() {
  test('composer JSON binds every dynamic value to the generateSpec handler ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerComposerHandlers(handlers);
    final source = await File('assets/specs/c/composer.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(composerGenerateSpecHandler));
    expect(document['name'], 'composer');
    expect(_referencedHandlers(document), {composerGenerateSpecHandler});
  });

  test('generateSpec builds a subcommand per listed command plus recipes',
      () async {
    final registry = JsonHandlerRegistry();
    registerComposerHandlers(registry);
    final handler = registry.generateSpec(composerGenerateSpecHandler)!;

    final spec = await handler(
      const ['composer', ''],
      (input) async {
        if (input.command == 'composer') {
          return const ExecuteCommandOutput(
              stdout: _composerListJson, stderr: '', status: 0);
        }
        if (input.command == 'ls') {
          return const ExecuteCommandOutput(
              stdout: '', stderr: '', status: 0);
        }
        return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
      },
    );

    expect(spec, isNotNull);
    expect(spec!.name, 'composer');
    expect(spec.subcommands!.map((item) => item.nameList.first),
        ['require', 'remove', 'recipes', 'recipes:install']);
    expect(spec.subcommands!.first.icon,
        'https://getcomposer.org/img/logo-composer-transparent5.png');

    final require = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'require');
    expect(require.description, 'Adds required packages to your composer.json');
    final requireArg = require.args!.first;
    expect(requireArg.name, 'packages');
    expect(requireArg.isOptional, isFalse);
    expect(requireArg.isVariadic, isTrue);
    expect(requireArg.generatorsList, hasLength(1));
    final dev = require.options!
        .firstWhere((option) => option.nameList.first == '--dev');
    expect(dev.nameList, ['--dev', '-D']);
    expect(dev.description, 'Add requirement to require-dev');
    expect(dev.isRequired, isFalse);
    expect(dev.args, isNull);
    final withVersion = require.options!
        .firstWhere((option) => option.nameList.first == '--with-version');
    expect(withVersion.isRequired, isTrue);
    expect(withVersion.args, hasLength(1));

    final remove = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'remove');
    final removeArg = remove.args!.first;
    expect(removeArg.name, 'package');
    expect(removeArg.isOptional, isTrue);
    expect(removeArg.defaultValue, 'vendor/pkg');
    expect(removeArg.generatorsList, hasLength(1));

    final recipes = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'recipes');
    expect(recipes.nameList, ['recipes', 'symfony:recipes']);
    expect(recipes.args!.first.name, 'package');
    expect(recipes.args!.first.isOptional, isTrue);
    expect(recipes.options!.any((option) => option.nameList.contains('-o')),
        isTrue);

    final recipesInstall = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'recipes:install');
    expect(recipesInstall.args!.first.isVariadic, isTrue);
    final force = recipesInstall.options!
        .firstWhere((option) => option.nameList.first == '--force');
    expect(force.isDangerous, isTrue);
  });

  test('generateSpec omits the symfony recipes subcommands without symfony.lock',
      () async {
    final registry = JsonHandlerRegistry();
    registerComposerHandlers(registry);
    final handler = registry.generateSpec(composerGenerateSpecHandler)!;

    final spec = await handler(
      const ['composer', ''],
      (input) async {
        if (input.command == 'composer') {
          return const ExecuteCommandOutput(
              stdout: _composerListJson, stderr: '', status: 0);
        }
        if (input.command == 'ls') {
          return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
        }
        return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
      },
    );

    expect(spec!.subcommands!.map((item) => item.nameList.first),
        ['require', 'remove']);
  });

  test('generateSpec returns an empty spec on invalid composer list output',
      () async {
    final registry = JsonHandlerRegistry();
    registerComposerHandlers(registry);
    final handler = registry.generateSpec(composerGenerateSpecHandler)!;

    final spec = await handler(
      const ['composer', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'not json', stderr: '', status: 0),
    );

    expect(spec, isNotNull);
    expect(spec!.name, 'composer');
    expect(spec.subcommands, isEmpty);
  });

  test('require search generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerComposerHandlers(registry);
    final adapter = _FakeAdapter({
      'composer list --format=json': const ProcessRunResult(
        stdout: _composerListJson,
        stderr: '',
        exitCode: 0,
      ),
      'ls symfony.lock':
          const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
      'curl -s -H Accept: application/json '
              'https://packagist.org/search.json?q=laravel&per_page=20':
          const ProcessRunResult(
        stdout: '{"results":['
            '{"name":"laravel/framework","description":"The Laravel framework"},'
            '{"name":"laravel/tinker","description":"Tinker with your app"}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final spec = await _generateSpec(registry, adapter);
    final generator = _argGenerator(spec, 'require');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'composer', tokenLength: 8, complete: true),
        CommandToken(token: 'require', tokenLength: 7, complete: true),
        CommandToken(token: 'laravel', tokenLength: 7, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['laravel/framework', 'laravel/tinker']);
    expect(suggestions.first.icon, '📦');
    expect(suggestions.first.description, 'The Laravel framework');
  });

  test('search generator returns empty on empty output, parse errors, and an '
      'empty search term', () async {
    Future<List<Suggestion>> run(String curlKey, String curlStdout,
        {String searchTerm = 'zz'}) async {
      final registry = JsonHandlerRegistry();
      registerComposerHandlers(registry);
      final adapter = _FakeAdapter({
        'composer list --format=json': const ProcessRunResult(
          stdout: _composerListJson,
          stderr: '',
          exitCode: 0,
        ),
        'ls symfony.lock':
            const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
        curlKey: ProcessRunResult(stdout: curlStdout, stderr: '', exitCode: 0),
      });
      final spec = await _generateSpec(registry, adapter);
      final generator = _argGenerator(spec, 'require');
      final suggestions = await runGeneratorSuggestions(
        generator,
        [
          const CommandToken(token: 'composer', tokenLength: 8, complete: true),
          const CommandToken(token: 'require', tokenLength: 7, complete: true),
          CommandToken(
              token: searchTerm,
              tokenLength: searchTerm.length,
              complete: false),
        ],
        '/work',
        adapter,
      );
      return suggestions.toList();
    }

    const url = 'https://packagist.org/search.json?q=zz&per_page=20';
    expect(await run('curl -s -H Accept: application/json $url', 'not json'),
        isEmpty);
    expect(await run('curl -s -H Accept: application/json $url', '{"results":[]}'),
        isEmpty);
    // An empty search term means the source script would return undefined.
    expect(await run('curl -s -H Accept: application/json '
        'https://packagist.org/search.json?q=&per_page=20', '',
        searchTerm: ''),
        isEmpty);
  });

  test('remove packages generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerComposerHandlers(registry);
    final adapter = _FakeAdapter({
      'composer list --format=json': const ProcessRunResult(
        stdout: _composerListJson,
        stderr: '',
        exitCode: 0,
      ),
      'ls symfony.lock':
          const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
      'cat composer.json': const ProcessRunResult(
        stdout: '{"require":{"monolog/monolog":"2.0.0"},'
            '"require-dev":{"phpunit/phpunit":"9.0.0",'
            '"nodeps":"1.0.0"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final spec = await _generateSpec(registry, adapter);
    final generator = _argGenerator(spec, 'remove');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'composer', tokenLength: 8, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    // `nodeps` has no vendor prefix and is filtered out by the package regexp.
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['monolog/monolog', 'phpunit/phpunit']);
  });

  test('packages generator returns empty on empty output and parse errors',
      () async {
    Future<List<Suggestion>> run(String catStdout) async {
      final registry = JsonHandlerRegistry();
      registerComposerHandlers(registry);
      final adapter = _FakeAdapter({
        'composer list --format=json': const ProcessRunResult(
          stdout: _composerListJson,
          stderr: '',
          exitCode: 0,
        ),
        'ls symfony.lock':
            const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
        'cat composer.json': ProcessRunResult(
            stdout: catStdout, stderr: '', exitCode: 0),
      });
      final spec = await _generateSpec(registry, adapter);
      final generator = _argGenerator(spec, 'remove');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'composer', tokenLength: 8, complete: true),
          CommandToken(token: 'remove', tokenLength: 6, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      return suggestions.toList();
    }

    expect(await run(''), isEmpty);
    expect(await run('   \n'), isEmpty);
    expect(await run('not json'), isEmpty);
    expect(await run('{"require":"not a map"}'), isEmpty);
  });
}
