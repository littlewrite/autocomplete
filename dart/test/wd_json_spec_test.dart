import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/wd.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.envs = const {'HOME': '/home/test'}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> envs;

  @override
  Map<String, String> getEnvs() => envs;

  @override
  String? getEnv(String envKey) => envs[envKey];

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

FigGeneratorContext _context(CompleteAdapter adapter) =>
    FigGeneratorContext(currentWorkingDirectory: '/work', adapter: adapter);

void main() {
  test('wd JSON binds every generator to the warp points custom handler',
      () async {
    final handlers = JsonHandlerRegistry();
    registerWdHandlers(handlers);
    final source = await File('assets/specs/w/wd.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(wdWarpPointsCustomHandler));
    expect(document['name'], 'wd');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) ids.add(custom['handler'] as String);
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
    expect(ids.toSet(), {wdWarpPointsCustomHandler});
  });

  test('warp points handler reads \$HOME/.warprc and extracts point names',
      () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      (input) async {
        expect(input.command, 'cat');
        expect(input.args, ['/home/test/.warprc']);
        return const ExecuteCommandOutput(
          stdout: 'my_proj /home/u/my_proj\n'
              'other /home/u/other\n'
              '# a comment line\n'
              '\n'
              '2nd_point /tmp/two',
          stderr: '',
          status: 0,
        );
      },
      _context(_FakeAdapter(const {})),
    );

    expect(points.map((s) => s.nameSingle ?? '').toList(),
        ['my_proj', 'other', '2nd_point']);
    expect(points.first.description, 'Warp point');
    expect(points.first.icon, '🔘');
    expect(points.first.priority, 76);
  });

  test('warp points handler returns empty for empty warprc', () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
      _context(_FakeAdapter(const {})),
    );

    expect(points, isEmpty);
  });

  test('warp points handler skips malformed lines', () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '  indented /x\n'
            '-dash /x\n'
            'ok /x',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {})),
    );

    expect(points.map((s) => s.nameSingle ?? '').toList(), ['ok']);
  });

  test('warp points handler returns empty when cat fails', () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'broken /x',
        stderr: 'cat: no such file',
        status: 1,
      ),
      _context(_FakeAdapter(const {})),
    );

    expect(points, isEmpty);
  });

  test('warp points handler returns empty without executeCommand', () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      null,
      _context(_FakeAdapter(const {})),
    );

    expect(points, isEmpty);
  });

  test('warp points handler returns empty when HOME is unset', () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final handler = registry.custom(wdWarpPointsCustomHandler)!;

    final points = await handler(
      const ['wd', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'ignored /x',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {}, envs: const {})),
    );

    expect(points, isEmpty);
  });

  test('warp points generator runs cat through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerWdHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /home/test/.warprc': const ProcessRunResult(
        stdout: 'my_proj /home/u/my_proj\n'
            'other /home/u/other\n'
            '# ignored\n'
            '2nd_point /tmp/two',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/w/wd.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'wd', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my_proj', 'other', '2nd_point']);
  });
}
