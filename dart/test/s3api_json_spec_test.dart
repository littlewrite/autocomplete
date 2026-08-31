import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/s3api.dart';
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

/// Collects every `postProcess: {handler}` ID under a `generators` object in
/// the s3api JSON document.
List<String> _collectPostProcessIds(dynamic document) {
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
  return ids;
}

void main() {
  test('s3api JSON binds all 97 bucket postProcess handlers', () async {
    final handlers = JsonHandlerRegistry();
    registerS3apiHandlers(handlers);
    final source = await File('assets/specs/s/s3api.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 's3api');

    final ids = _collectPostProcessIds(document);
    expect(ids.length, 97);
    expect(ids.toSet(), s3apiBucketPostProcessHandlers.toSet());
  });

  test('bucket post-process parses buckets into suggestions', () {
    final registry = JsonHandlerRegistry();
    registerS3apiHandlers(registry);
    final output =
        '{"Buckets":[{"Name":"my-bucket","CreationDate":"2023-01-02T03:04:05Z"}]}';

    final suggestions =
        registry.postProcess(s3apiBucketPostProcessHandlers.first)!(output);
    expect(suggestions, hasLength(1));
    expect(suggestions.single.nameSingle, 'my-bucket');
    expect(suggestions.single.description, contains('Created:'));
  });

  test('bucket post-process returns empty on invalid JSON', () {
    final registry = JsonHandlerRegistry();
    registerS3apiHandlers(registry);
    expect(
      registry.postProcess(s3apiBucketPostProcessHandlers.first)!('not json'),
      isEmpty,
    );
  });

  test('bucket post-process returns empty when Buckets is missing', () {
    final registry = JsonHandlerRegistry();
    registerS3apiHandlers(registry);
    expect(
      registry.postProcess(s3apiBucketPostProcessHandlers.first)!('{}'),
      isEmpty,
    );
  });

  test('s3api --bucket generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerS3apiHandlers(registry);
    final adapter = _FakeAdapter({
      'aws s3api list-buckets': const ProcessRunResult(
        stdout:
            '{"Buckets":[{"Name":"alpha","CreationDate":"2023-01-02T03:04:05Z"},'
            '{"Name":"beta","CreationDate":"2024-05-06T07:08:09Z"}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/s3api.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.options ?? const <FigOption>[])
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'aws s3api list-buckets';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'aws', tokenLength: 3, complete: true),
        CommandToken(token: 's3api', tokenLength: 5, complete: true),
        CommandToken(token: 'list-buckets', tokenLength: 12, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
      suggestions.map((suggestion) => suggestion.name).toList(),
      ['alpha', 'beta'],
    );
  });
}
