import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/trivy.dart';
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

/// The trivy scan options (--severity, --vuln-type, ...) are modelled in the
/// JSON as `subcommands` of each scan subcommand, so look there for the option.
FigGenerator _optionGenerator(FigSubcommand subcommand, String optionName) {
  final option = subcommand.subcommands!
      .firstWhere((candidate) => candidate.nameList.contains(optionName));
  return option.args!.single.generators!.single;
}

void main() {
  test('trivy JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTrivyHandlers(handlers);
    final source = await File('assets/specs/t/trivy.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(trivySeverityCustomHandler));
    expect(source, contains(trivyVulnTypeCustomHandler));
    expect(source, contains(trivySecurityChecksCustomHandler));
    expect(document['name'], 'trivy');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'script', 'postProcess', 'trigger']) {
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
      trivySeverityCustomHandler,
      trivyVulnTypeCustomHandler,
      trivySecurityChecksCustomHandler,
    });
  });

  test('severity custom handler hides already-selected severities', () async {
    final registry = JsonHandlerRegistry();
    registerTrivyHandlers(registry);
    final custom = registry.custom(trivySeverityCustomHandler)!;

    Future<List<String>> names(List<String> tokens) async =>
        (await custom(tokens, null, null)).map((s) => s.nameSingle ?? '').toList();

    expect(await names(const ['trivy', 'image', '--severity', 'LOW,']),
        ['UNKNOWN', 'MEDIUM', 'HIGH', 'CRITICAL']);
    expect(
        await names(
            const ['trivy', 'image', '--severity', 'LOW,HIGH,CRITICAL']),
        ['UNKNOWN', 'MEDIUM']);
    // An empty token keeps every severity.
    expect(await names(const ['trivy', 'image', '--severity', '']),
        ['UNKNOWN', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL']);
    // A bare flag has no comma-selected value, so nothing is hidden.
    expect(await names(const ['trivy', 'image', '--severity']),
        ['UNKNOWN', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL']);
    // No tokens at all still yields the full set.
    expect(await names(const []),
        ['UNKNOWN', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL']);
  });

  test('vuln-type custom handler hides already-selected types', () async {
    final registry = JsonHandlerRegistry();
    registerTrivyHandlers(registry);
    final custom = registry.custom(trivyVulnTypeCustomHandler)!;

    Future<List<String>> names(List<String> tokens) async =>
        (await custom(tokens, null, null)).map((s) => s.nameSingle ?? '').toList();

    expect(await names(const ['trivy', 'image', '--vuln-type', 'os']),
        ['library']);
    expect(await names(const ['trivy', 'image', '--vuln-type', 'os,library']),
        isEmpty);
    expect(await names(const ['trivy', 'image', '--vuln-type', '']),
        ['os', 'library']);
    // Matching is exact: a differently-cased token hides nothing.
    expect(await names(const ['trivy', 'image', '--vuln-type', 'OS']),
        ['os', 'library']);
  });

  test('security-checks custom handler hides already-selected checks', () async {
    final registry = JsonHandlerRegistry();
    registerTrivyHandlers(registry);
    final custom = registry.custom(trivySecurityChecksCustomHandler)!;

    Future<List<String>> names(List<String> tokens) async =>
        (await custom(tokens, null, null)).map((s) => s.nameSingle ?? '').toList();

    expect(await names(const ['trivy', 'image', '--security-checks', 'vuln']),
        ['config']);
    expect(
        await names(
            const ['trivy', 'image', '--security-checks', 'vuln,config']),
        isEmpty);
    expect(await names(const ['trivy', 'image', '--security-checks', '']),
        ['vuln', 'config']);
  });

  test('severity generator runs end to end from the image subcommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerTrivyHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/t/trivy.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final image =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('image'));
    final generator = _optionGenerator(image, '--severity');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'trivy', tokenLength: 5, complete: true),
        CommandToken(token: 'image', tokenLength: 5, complete: true),
        CommandToken(token: '--severity', tokenLength: 10, complete: true),
        CommandToken(token: 'LOW,', tokenLength: 4, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['UNKNOWN', 'MEDIUM', 'HIGH', 'CRITICAL']);
  });

  test('vuln-type generator runs end to end from the rootfs subcommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerTrivyHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/t/trivy.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final rootfs =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('rootfs'));
    final generator = _optionGenerator(rootfs, '--vuln-type');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'trivy', tokenLength: 5, complete: true),
        CommandToken(token: 'rootfs', tokenLength: 6, complete: true),
        CommandToken(token: '--vuln-type', tokenLength: 11, complete: true),
        CommandToken(token: 'os,', tokenLength: 3, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['library']);
  });
}
