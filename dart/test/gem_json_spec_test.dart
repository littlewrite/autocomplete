import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/gem.dart';
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
  test('gem JSON binds every generator path to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGemHandlers(handlers);
    final source = await File('assets/specs/g/gem.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gemGemsCustomHandler));
    expect(source, contains(gemGemsTriggerHandler));
    expect(document['name'], 'gem');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'trigger']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
    expect(ids.toSet(), {gemGemsCustomHandler, gemGemsTriggerHandler});
  });

  test('gems custom handler searches RubyGems and skips starred lines',
      () async {
    final registry = JsonHandlerRegistry();
    registerGemHandlers(registry);
    final handler = registry.custom(gemGemsCustomHandler)!;

    final gems = await handler(['gem', 'install', 'dart'], (input) async {
      expect(input.command, 'gem');
      expect(input.args, [
        'search',
        '--both',
        '--no-versions',
        '--no-details',
        '--quiet',
        '--norc',
        'dart',
      ]);
      return const ExecuteCommandOutput(
        stdout: 'dart_library (1.0.0)\ndart-sdk (2.0.0)\n'
            '* local override\n',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(gems.map((item) => item.nameSingle),
        ['dart_library (1.0.0)', 'dart-sdk (2.0.0)']);
  });

  test('gems trigger is always true', () {
    final registry = JsonHandlerRegistry();
    registerGemHandlers(registry);
    final trigger = registry.trigger(gemGemsTriggerHandler)!;
    expect(trigger('', ''), isTrue);
    expect(trigger('dart', 'da'), isTrue);
  });

  test('install generator runs gem search through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerGemHandlers(registry);
    final adapter = _FakeAdapter({
      'gem search --both --no-versions --no-details --quiet --norc dart':
          const ProcessRunResult(
        stdout: 'dart_library (1.0.0)\ndart-sdk (2.0.0)\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/gem.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final install = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('install'));
    final gemsGenerator = install.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      gemsGenerator,
      const [
        CommandToken(token: 'gem', tokenLength: 3, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'dart', tokenLength: 4, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['dart_library (1.0.0)', 'dart-sdk (2.0.0)']);
  });
}
