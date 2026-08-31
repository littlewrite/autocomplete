import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/watson.dart';
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

void main() {
  test('watson JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerWatsonHandlers(handlers);
    final source = await File('assets/specs/w/watson.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(watsonListProjectsPostProcessHandler));
    expect(source, contains(watsonListTagsPostProcessHandler));
    expect(source, contains(watsonListFramesPostProcessHandler));
    expect(document['name'], 'watson');

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
    expect(ids.toSet(), {
      watsonListProjectsPostProcessHandler,
      watsonListTagsPostProcessHandler,
      watsonListFramesPostProcessHandler,
    });
  });

  test('projects post-processor splits output into project suggestions', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    final output = 'website\nmobile\nwebsite-mobile';

    final projects =
        registry.postProcess(watsonListProjectsPostProcessHandler)!(output);
    expect(projects.map((item) => item.nameSingle),
        ['website', 'mobile', 'website-mobile']);
    expect(projects.every((item) => item.icon == '🗂'), isTrue);
  });

  test('projects post-processor drops trailing newline and empty output', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);

    final withTrailingNewline =
        registry.postProcess(watsonListProjectsPostProcessHandler)!(
            'website\nmobile\n');
    expect(withTrailingNewline.map((item) => item.nameSingle),
        ['website', 'mobile']);

    final empty =
        registry.postProcess(watsonListProjectsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('tags post-processor splits output into tag suggestions', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    final output = 'backend\nfrontend\ndocs';

    final tags = registry.postProcess(watsonListTagsPostProcessHandler)!(output);
    expect(tags.map((item) => item.nameSingle),
        ['backend', 'frontend', 'docs']);
    expect(tags.every((item) => item.icon == '🏷'), isTrue);

    final empty = registry.postProcess(watsonListTagsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('frames post-processor parses JSON into short id suggestions', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    const output = '[{"id":"9a3f2c1d8b","project":"website",'
        '"start":"2022-03-04 12:00:00"},'
        '{"id":"b7e90a4123","project":"mobile",'
        '"start":"2022-03-05 09:00:00"}]';

    final frames =
        registry.postProcess(watsonListFramesPostProcessHandler)!(output);
    expect(frames.map((item) => item.nameSingle), ['9a3f2c1', 'b7e90a4']);
    expect(frames.map((item) => item.displayName), [
      '9a3f2c1 - website - 2022-03-04 12:00:00',
      'b7e90a4 - mobile - 2022-03-05 09:00:00',
    ]);
    expect(frames.every((item) => item.icon == '⏲'), isTrue);
  });

  test('frames post-processor clamps short ids like JS substring', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    const output = '[{"id":"abc","project":"website","start":"2022-03-04"}]';

    final frames =
        registry.postProcess(watsonListFramesPostProcessHandler)!(output);
    expect(frames.map((item) => item.nameSingle), ['abc']);
    expect(frames.single.displayName, 'abc - website - 2022-03-04');
  });

  test('frames post-processor returns empty list for bad output', () {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);

    final parseError =
        registry.postProcess(watsonListFramesPostProcessHandler)!('not json');
    expect(parseError, isEmpty);

    final empty =
        registry.postProcess(watsonListFramesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final objectNotList =
        registry.postProcess(watsonListFramesPostProcessHandler)!('{"a":1}');
    expect(objectNotList, isEmpty);

    // A frame missing its id would make the source throw on substring; the
    // handler degrades to an empty list instead.
    final missingId = registry
        .postProcess(watsonListFramesPostProcessHandler)!(
            '[{"project":"website","start":"2022-03-04"}]');
    expect(missingId, isEmpty);
  });

  test('projects generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    final adapter = _FakeAdapter({
      'watson projects': const ProcessRunResult(
        stdout: 'website\nmobile\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/w/watson.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'watson projects';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'watson', tokenLength: 6, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['website', 'mobile']);
  });

  test('frames generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerWatsonHandlers(registry);
    final adapter = _FakeAdapter({
      'watson log --json --reverse': const ProcessRunResult(
        stdout: '[{"id":"9a3f2c1d8b","project":"website",'
            '"start":"2022-03-04 12:00:00"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/w/watson.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.join(' ') == 'watson log --json --reverse';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'watson', tokenLength: 6, complete: true),
        CommandToken(token: 'edit', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['9a3f2c1']);
  });
}
