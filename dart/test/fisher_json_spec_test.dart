import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/fisher.dart';
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

/// `fisher list` prints a right-aligned `plugins` header, so the first 19
/// characters of its output are leading indentation (see src/fisher.ts).
String _header() => List.filled(19, ' ').join();

void main() {
  test('fisher JSON binds every generator to the two postProcess IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFisherHandlers(handlers);
    final source = await File('assets/specs/f/fisher.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(fisherInstalledPluginsRemovePostProcessHandler));
    expect(source, contains(fisherInstalledPluginsUpdatePostProcessHandler));
    expect(document['name'], 'fisher');

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
      fisherInstalledPluginsRemovePostProcessHandler,
      fisherInstalledPluginsUpdatePostProcessHandler,
    });
  });

  test('installed plugins post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerFisherHandlers(registry);
    final suggestions = registry
        .postProcess(fisherInstalledPluginsRemovePostProcessHandler)!('');
    expect(suggestions, isEmpty);
  });

  test('installed plugins post-processor drops the header offset and trims',
      () {
    final registry = JsonHandlerRegistry();
    registerFisherHandlers(registry);
    final output = '${_header()}plugins\n'
        'jorgebucaran/hydro\n'
        'jethrokuan/z';
    final suggestions = registry
        .postProcess(fisherInstalledPluginsUpdatePostProcessHandler)!(output);
    // Faithful to src/fisher.ts: substring(19) removes the header indentation,
    // then every remaining line is trimmed into a plugin suggestion (the
    // "plugins" header text is kept, matching the original implementation).
    expect(suggestions.map((s) => s.nameSingle),
        ['plugins', 'jorgebucaran/hydro', 'jethrokuan/z']);
    expect(suggestions.first.icon, 'fig://icon?type=package');
    expect(suggestions.first.description, 'Plugin');
  });

  test('fisher installed plugins generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerFisherHandlers(registry);
    final adapter = _FakeAdapter({
      'fish -c fisher list': ProcessRunResult(
        stdout: '${_header()}plugins\n'
            'jorgebucaran/hydro\n'
            'pure-fish/pure',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/fisher.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'fish -c fisher list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'fisher', tokenLength: 6, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['plugins', 'jorgebucaran/hydro', 'pure-fish/pure']);
  });
}
