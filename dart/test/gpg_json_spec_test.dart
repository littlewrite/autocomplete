import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/gpg.dart';
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

/// Representative `gpg --version` output. The cypher/digest lists span a
/// newline before the next marker so the handlers must strip whitespace to
/// reconstruct the comma-separated names.
const _versionOutput = 'gpg (GnuPG) 2.2.27\n'
    'Supported algorithms:\n'
    'Cypher: IDEA, 3DES, CAST5, BLOWFISH, AES\n'
    'Hash: SHA1, RIPEMD160, SHA256\n'
    'Compression: Uncompressed, ZIP, ZLIB, BZIP2\n';

void main() {
  test('gpg JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerGpgHandlers(handlers);
    final source = await File('assets/specs/g/gpg.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gpgCipherAlgorithmsPostProcessHandler));
    expect(source, contains(gpgDigestAlgorithmsPostProcessHandler));
    expect(document['name'], 'gpg');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['script', 'postProcess']) {
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
    expect(ids.toSet(), {
      gpgCipherAlgorithmsPostProcessHandler,
      gpgDigestAlgorithmsPostProcessHandler,
    });
  });

  test(
      'cipher algorithms post-processor splits the list after the Cypher '
      'marker', () {
    final registry = JsonHandlerRegistry();
    registerGpgHandlers(registry);

    final ciphers = registry
        .postProcess(gpgCipherAlgorithmsPostProcessHandler)!(_versionOutput);
    expect(ciphers.map((item) => item.nameSingle),
        ['IDEA', '3DES', 'CAST5', 'BLOWFISH', 'AES']);
  });

  test('digest algorithms post-processor keeps the source +8 offset quirk',
      () {
    final registry = JsonHandlerRegistry();
    registerGpgHandlers(registry);

    final digests = registry
        .postProcess(gpgDigestAlgorithmsPostProcessHandler)!(_versionOutput);
    // The TS source slices `Hash: ` offset by 8 instead of 6, dropping the
    // first two characters ("SH") of the first digest and leaving its "A1".
    expect(digests.map((item) => item.nameSingle),
        ['A1', 'RIPEMD160', 'SHA256']);
  });

  test('post-processors tolerate empty or partial output', () {
    final registry = JsonHandlerRegistry();
    registerGpgHandlers(registry);
    final cipher = registry.postProcess(gpgCipherAlgorithmsPostProcessHandler)!;
    final digest = registry.postProcess(gpgDigestAlgorithmsPostProcessHandler)!;

    // Empty output: neither marker is present.
    expect(cipher(''), isEmpty);
    expect(digest(''), isEmpty);
    // Missing the `Cypher: ` marker (real gpg prints `Cipher: `) yields nothing.
    expect(cipher('Hash: SHA1, SHA256\nCompression: ZIP\n'), isEmpty);
    // Missing the `Compression: ` marker.
    expect(digest('Hash: SHA1, SHA256\n'), isEmpty);
  });

  test(
      'cipher-algo generator runs gpg --version through the adapter end to '
      'end', () async {
    final registry = JsonHandlerRegistry();
    registerGpgHandlers(registry);
    final adapter = _FakeAdapter({
      'gpg --version': const ProcessRunResult(
        stdout: _versionOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/gpg.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.options!
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'gpg --version';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'gpg', tokenLength: 3, complete: true),
        CommandToken(token: '--cipher-algo', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['IDEA', '3DES', 'CAST5', 'BLOWFISH', 'AES']);
  });
}
