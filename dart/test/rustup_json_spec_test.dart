import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rustup.dart';
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

/// The canonical `rustup toolchain list` fixture used across the custom
/// handler tests. Deliberately NOT newline-terminated so no trailing empty
/// entry is produced (the source keeps `split("\n")` empties).
const _toolchainListOutput = 'stable-x86_64-apple-darwin (default)\n'
    '1.82.0-x86_64-unknown-linux-gnu\n'
    'nightly-x86_64-apple-darwin';

const _targetListOutput = 'aarch64-apple-darwin\n'
    'x86_64-apple-darwin (installed)\n'
    'wasm32-unknown-unknown';

/// Collects every `handler` string referenced under `generators`, `postProcess`,
/// or `generateSpec` anywhere in the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
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

Future<List<FigSuggestion>> _runCustom(
  JsonHandlerRegistry registry,
  String id,
  String stdout, {
  int status = 0,
}) {
  return registry.custom(id)!(
    const ['rustup', 'update', ''],
    (input) async =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: status),
    null,
  );
}

void main() {
  test('rustup JSON binds every dynamic value to the declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRustupHandlers(handlers);
    final source = await File('assets/specs/r/rustup.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'rustup');
    expect(_referencedHandlers(document), {
      rustupUpdateArgGeneratorsHandler,
      rustupDefaultArgGeneratorsHandler,
      rustupTargetAddToolchainArgGeneratorsHandler,
      rustupTargetAddArgGeneratorsHandler,
      rustupTargetRemoveToolchainArgGeneratorsHandler,
      rustupTargetRemoveArgGeneratorsHandler,
      rustupToolchainInstallTargetArgGeneratorsHandler,
      rustupToolchainAllPostProcessHandler,
      rustupToolchainUninstallArgGeneratorsHandler,
      rustupOverrideSetArgGeneratorsHandler,
      rustupRunToolchainArgGeneratorsHandler,
      rustupWhichToolchainArgGeneratorsHandler,
      rustupDocToolchainArgGeneratorsHandler,
      rustupManToolchainArgGeneratorsHandler,
      rustupSetDefaultHostArgGeneratorsHandler,
      rustupGenerateSpecHandler,
    });
    for (final id in _referencedHandlers(document)) {
      expect(source, contains(id));
    }
  });

  test('toolchain list prepends the short channel names', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions = await _runCustom(
        registry, rustupUpdateArgGeneratorsHandler, _toolchainListOutput);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['stable', '1.82.0', 'nightly', 'stable-x86_64-apple-darwin',
            '1.82.0-x86_64-unknown-linux-gnu', 'nightly-x86_64-apple-darwin']);
  });

  test('toolchain list de-duplicates the short channel names only', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions = await _runCustom(registry,
        rustupUpdateArgGeneratorsHandler, 'stable-x86_64-apple-darwin\n'
            'stable-aarch64-apple-darwin');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['stable', 'stable-x86_64-apple-darwin', 'stable-aarch64-apple-darwin']);
  });

  test('toolchain list keeps split empties on a trailing newline', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions = await _runCustom(
        registry, rustupUpdateArgGeneratorsHandler, 'stable-x86_64-apple-darwin\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['stable', '', 'stable-x86_64-apple-darwin', '']);
  });

  test('toolchain uninstall omits the short channel names', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions = await _runCustom(
        registry, rustupToolchainUninstallArgGeneratorsHandler,
        _toolchainListOutput);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['stable-x86_64-apple-darwin', '1.82.0-x86_64-unknown-linux-gnu',
            'nightly-x86_64-apple-darwin']);
  });

  test('toolchain list returns empty on empty output and command failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    expect(await _runCustom(
        registry, rustupUpdateArgGeneratorsHandler, ''), isEmpty);
    expect(await _runCustom(registry, rustupUpdateArgGeneratorsHandler, '',
            status: 1),
        isEmpty);
  });

  test('target list takes the first token of every line', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions =
        await _runCustom(registry, rustupTargetAddArgGeneratorsHandler,
            _targetListOutput);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['aarch64-apple-darwin', 'x86_64-apple-darwin',
            'wasm32-unknown-unknown']);
  });

  test('target list keeps only installed targets when requested', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions =
        await _runCustom(registry, rustupTargetRemoveArgGeneratorsHandler,
            _targetListOutput);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['x86_64-apple-darwin']);
  });

  test('target list returns empty on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    expect(await _runCustom(
        registry, rustupTargetAddArgGeneratorsHandler, ''), isEmpty);
  });

  test('toolchain all leads with stable/beta/nightly then the releases',
      () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final suggestions = registry.postProcess(
        rustupToolchainAllPostProcessHandler)!(
      '[{"tag_name":"v1.82.0","name":"1.82.0",'
      '"published_at":"2024-08-28T17:23:21Z"},'
      '{"tag_name":"v1.83.0","name":"1.83.0",'
      '"published_at":"2024-09-05T17:23:21Z"}]',
    );
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['stable', 'beta', 'nightly', 'v1.82.0', 'v1.83.0']);
    expect(suggestions[3].description, '1.82.0 - 8/28/2024');
    expect(suggestions[4].description, '1.83.0 - 9/5/2024');
  });

  test('toolchain all post-processor returns empty on empty or invalid JSON',
      () {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);
    final handler = registry.postProcess(rustupToolchainAllPostProcessHandler)!;

    expect(handler(''), isEmpty);
    expect(handler('not json'), isEmpty);
    expect(handler('{"not":"an array"}'), isEmpty);
  });

  test('generateSpec exposes toolchains as +channel cargo options', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final spec = await registry.generateSpec(rustupGenerateSpecHandler)!(
      const ['rustup', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'stable-x86_64-apple-darwin (default)\n'
            'nightly-x86_64-apple-darwin',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'cargo');
    expect(spec.options!.map((option) => option.nameList.first),
        ['+stable', '+nightly']);
    expect(spec.options!.first.icon, '🧰');
    expect(spec.options!.first.description, 'stable-x86_64-apple-darwin (default)');
  });

  test('generateSpec returns an empty cargo spec on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);

    final spec = await registry.generateSpec(rustupGenerateSpecHandler)!(
      const ['rustup', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'cargo');
    expect(spec.options, isEmpty);
  });

  test('toolchain list generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRustupHandlers(registry);
    final adapter = _FakeAdapter({
      'rustup toolchain list': const ProcessRunResult(
        stdout: _toolchainListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rustup.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final update = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'update');
    final generator = update.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rustup', tokenLength: 6, complete: true),
        CommandToken(token: 'update', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['stable', '1.82.0', 'nightly', 'stable-x86_64-apple-darwin',
            '1.82.0-x86_64-unknown-linux-gnu', 'nightly-x86_64-apple-darwin']);
  });
}
