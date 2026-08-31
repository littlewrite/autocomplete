import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ykman.dart';
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

/// Collects every `handler` id referenced anywhere in a JSON document.
void _collectHandlerIds(dynamic node, Set<String> ids) {
  if (node is Map) {
    final handler = node['handler'];
    if (handler is String) ids.add(handler);
    for (final value in node.values) {
      _collectHandlerIds(value, ids);
    }
  } else if (node is List) {
    for (final item in node) {
      _collectHandlerIds(item, ids);
    }
  }
}

void main() {
  test('ykman JSON binds every handler to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerYkmanHandlers(handlers);
    final source = await File('assets/specs/y/ykman.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'ykman');

    final ids = <String>{};
    _collectHandlerIds(document, ids);
    expect(ids, {
      ykmanConfigModeCustomHandler,
      ykmanDeviceSerialPostProcessHandler,
      ykmanReaderPostProcessHandler,
    });
  });

  test('config mode custom generator drops selected modes and their aliases',
      () async {
    final registry = JsonHandlerRegistry();
    registerYkmanHandlers(registry);
    final custom = registry.custom(ykmanConfigModeCustomHandler)!;

    // Fresh token: every mode is offered.
    final all = await custom(['ykman', 'config', 'mode', ''], null, null);
    expect(all.map((s) => s.name).toList(),
        ['o', 'OTP', 'f', 'FIDO', 'c', 'CCID']);

    // OTP and its shortcut o are removed.
    final otp = await custom(['ykman', 'config', 'mode', 'OTP'], null, null);
    expect(otp.map((s) => s.name).toList(), ['f', 'FIDO', 'c', 'CCID']);

    // Shortcuts o+c remove o/OTP and c/CCID.
    final shortcut =
        await custom(['ykman', 'config', 'mode', 'o+c'], null, null);
    expect(shortcut.map((s) => s.name).toList(), ['f', 'FIDO']);

    // A fully selected mode list leaves nothing to suggest.
    final full =
        await custom(['ykman', 'config', 'mode', 'OTP+FIDO+CCID'], null, null);
    expect(full, isEmpty);
  });

  test('device serial post-processor maps serial numbers to suggestions', () {
    final registry = JsonHandlerRegistry();
    registerYkmanHandlers(registry);
    final postProcess =
        registry.postProcess(ykmanDeviceSerialPostProcessHandler)!;

    final serials = postProcess('1234567\n87654321');
    expect(serials.map((s) => s.name).toList(), ['1234567', '87654321']);
    expect(serials.every((s) => s.description == 'Yubikey serial'), isTrue);

    // A trailing newline yields a trailing empty suggestion, mirroring the
    // TypeScript split('\n') faithfully.
    final trailing = postProcess('1234567\n');
    expect(trailing.map((s) => s.name).toList(), ['1234567', '']);
  });

  test('reader post-processor maps reader names to suggestions', () {
    final registry = JsonHandlerRegistry();
    registerYkmanHandlers(registry);
    final postProcess = registry.postProcess(ykmanReaderPostProcessHandler)!;

    final readers = postProcess('YubiKey OTP+FIDO+CCID\nVirtual reader');
    expect(readers.map((s) => s.name).toList(),
        ['YubiKey OTP+FIDO+CCID', 'Virtual reader']);
    expect(readers.every((s) => s.description == 'Yubikey name'), isTrue);
  });

  test('ykman -d serial generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerYkmanHandlers(registry);
    final adapter = _FakeAdapter({
      "bash -c ykman list | sed -rn 's/.*Serial: (.*)/\\1/p'":
          const ProcessRunResult(stdout: '1234567\n87654321'),
    });

    final source = await File('assets/specs/y/ykman.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.options![0].args![0].generatorsList
        .firstWhere((g) => g.script is List && g.postProcess != null);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ykman', tokenLength: 5, complete: true),
        CommandToken(token: '-d', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['1234567', '87654321']);
  });

  test('ykman config mode custom generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerYkmanHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/y/ykman.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands![2].subcommands![0].args![0]
        .generatorsList
        .firstWhere((g) => g.custom is Function);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ykman', tokenLength: 5, complete: true),
        CommandToken(token: 'config', tokenLength: 6, complete: true),
        CommandToken(token: 'mode', tokenLength: 4, complete: true),
        CommandToken(token: 'OTP+FIDO', tokenLength: 8, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['c', 'CCID']);
  });
}
