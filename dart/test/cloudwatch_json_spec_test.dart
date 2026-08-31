import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/cloudwatch.dart';
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

/// Collects every `suggestions` handler reference in a decoded JSON document.
void _collectSuggestionHandlerIds(dynamic node, Set<String> ids) {
  if (node is! Map) return;
  final suggestions = node['suggestions'];
  if (suggestions is Map && suggestions['handler'] is String) {
    ids.add(suggestions['handler'] as String);
  }
  for (final value in node.values) {
    if (value is List) {
      for (final item in value) {
        _collectSuggestionHandlerIds(item, ids);
      }
    } else if (value is Map) {
      _collectSuggestionHandlerIds(value, ids);
    }
  }
}

void main() {
  test('cloudwatch JSON binds every suggestions reference to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCloudwatchHandlers(handlers);
    final source =
        await File('assets/specs/c/cloudwatch.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(cloudwatchGetInsightRuleReportMaxContributorCountHandler));
    expect(document['name'], 'cloudwatch');

    final ids = <String>{};
    _collectSuggestionHandlerIds(document, ids);
    expect(ids, {cloudwatchGetInsightRuleReportMaxContributorCountHandler});
  });

  test('max-contributor-count handler offers 1..100', () async {
    final registry = JsonHandlerRegistry();
    registerCloudwatchHandlers(registry);

    final suggestions =
        await registry.custom(
            cloudwatchGetInsightRuleReportMaxContributorCountHandler)!(
      ['aws', 'cloudwatch', 'get-insight-rule-report',
          '--max-contributor-count', ''],
      null,
      null,
    );
    expect(suggestions.first.name, '1');
    expect(suggestions.last.name, '100');
    expect(suggestions.length, 100);
  });

  test('max-contributor-count handler runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerCloudwatchHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source =
        await File('assets/specs/c/cloudwatch.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final report = spec.subcommands!.firstWhere(
        (subcommand) => subcommand.nameList.contains('get-insight-rule-report'));
    final option = report.options!.firstWhere(
        (opt) => opt.nameList.contains('--max-contributor-count'));
    final generator = option.args!.single.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'aws', tokenLength: 3, complete: true),
        CommandToken(token: 'cloudwatch', tokenLength: 10, complete: true),
        CommandToken(token: 'get-insight-rule-report', tokenLength: 24,
            complete: true),
        CommandToken(token: '--max-contributor-count', tokenLength: 24,
            complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((s) => s.name).toList();
    expect(names.first, '1');
    expect(names.last, '100');
    expect(names.length, 100);
  });
}
