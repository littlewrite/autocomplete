import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/phpunit_watcher.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching subcommands and their options.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? match(FigGenerator generator) {
    final script = generator.script;
    if (script is List && script.join(' ') == scriptCommand) return generator;
    return null;
  }

  FigGenerator? fromArg(FigArg arg) {
    for (final generator in arg.generatorsList) {
      final found = match(generator);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? visitSubcommand(FigSubcommand sub) {
    for (final arg in sub.args ?? const <FigArg>[]) {
      final found = fromArg(arg);
      if (found != null) return found;
    }
    for (final option in sub.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        final found = fromArg(arg);
        if (found != null) return found;
      }
    }
    if (sub.subcommands != null) {
      for (final nested in sub.subcommands!) {
        final found = visitSubcommand(nested);
        if (found != null) return found;
      }
    }
    return null;
  }

  for (final arg in spec.args ?? const <FigArg>[]) {
    final found = fromArg(arg);
    if (found != null) return found;
  }
  for (final sub in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visitSubcommand(sub);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('phpunit-watcher JSON binds its generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPhpunitWatcherHandlers(handlers);
    final source =
        await File('assets/specs/p/phpunit-watcher.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(phpunitWatcherTestsPostProcessHandler));
    expect(document['name'], 'phpunit-watcher');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), {phpunitWatcherTestsPostProcessHandler});
  });

  test('test post-processor extracts the method after the double colon', () {
    final registry = JsonHandlerRegistry();
    registerPhpunitWatcherHandlers(registry);
    final output = 'PHPUnit 9.5.20 by Sebastian Bergmann and contributors.\n'
        '\n'
        'Available test(s):\n'
        ' - App\\Tests\\ExampleTest::test_example\n'
        ' - App\\Tests\\ExampleTest::test_another\n'
        ' - App\\Tests\\UserTest::test_creates_user\n';

    final tests = registry
        .postProcess(phpunitWatcherTestsPostProcessHandler)!(output);
    expect(tests.map((item) => item.nameSingle),
        ['test_example', 'test_another', 'test_creates_user']);
    expect(tests.map((item) => item.description),
        ['test_example', 'test_another', 'test_creates_user']);
  });

  test('test post-processor drops lines without a double colon', () {
    final registry = JsonHandlerRegistry();
    registerPhpunitWatcherHandlers(registry);
    final output = '::leading\n'
        ' - ExampleTest::test_one\n'
        'no separator here\n'
        ' - ExampleTest::test_two\n';

    final tests = registry
        .postProcess(phpunitWatcherTestsPostProcessHandler)!(output);
    expect(tests.map((item) => item.nameSingle), ['test_one', 'test_two']);
  });

  test('test post-processor returns empty on fatal output and empty input', () {
    final registry = JsonHandlerRegistry();
    registerPhpunitWatcherHandlers(registry);
    expect(
        registry
            .postProcess(phpunitWatcherTestsPostProcessHandler)!
            ('fatal: no tests found'),
        isEmpty);
    expect(registry.postProcess(phpunitWatcherTestsPostProcessHandler)!(''),
        isEmpty);
  });

  test('phpunit-watcher filter generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpunitWatcherHandlers(registry);
    final adapter = _FakeAdapter({
      'phpunit --list-tests': const ProcessRunResult(
        stdout: ' - App\\Tests\\ExampleTest::test_example\n'
            ' - App\\Tests\\ExampleTest::test_another\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/p/phpunit-watcher.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'phpunit --list-tests');
    expect(generator, isNotNull,
        reason: 'no generator for phpunit --list-tests in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'phpunit-watcher', tokenLength: 15, complete: true),
        CommandToken(token: 'watch', tokenLength: 5, complete: true),
        CommandToken(token: '--filter', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['test_example', 'test_another']);
  });
}
