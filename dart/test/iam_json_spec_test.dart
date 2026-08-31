import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/iam.dart';
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
  test('iam JSON binds every suggestions reference to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerIamHandlers(handlers);
    final source = await File('assets/specs/i/iam.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(iamCreateRoleMaxSessionDurationHandler));
    expect(source, contains(iamUpdateRoleMaxSessionDurationHandler));
    expect(document['name'], 'iam');

    final ids = <String>{};
    _collectSuggestionHandlerIds(document, ids);
    expect(ids, {
      iamCreateRoleMaxSessionDurationHandler,
      iamGetServiceLastAccessedDetailsWithEntitiesServiceNamespaceHandler,
      iamListPoliciesGrantingServiceAccessServiceNamespacesHandler,
      iamUpdateRoleMaxSessionDurationHandler,
    });
  });

  test('create-role max-session-duration handler offers 1..12 hours', () async {
    final registry = JsonHandlerRegistry();
    registerIamHandlers(registry);

    final suggestions =
        await registry.custom(iamCreateRoleMaxSessionDurationHandler)!(
      ['aws', 'iam', 'create-role', '--max-session-duration', ''],
      null,
      null,
    );
    expect(suggestions.map((item) => item.name).toList(),
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12']);
  });

  test('update-role max-session-duration handler offers 1..12 hours', () async {
    final registry = JsonHandlerRegistry();
    registerIamHandlers(registry);

    final suggestions =
        await registry.custom(iamUpdateRoleMaxSessionDurationHandler)!(
      ['aws', 'iam', 'update-role', '--max-session-duration', ''],
      null,
      null,
    );
    expect(suggestions.map((item) => item.name).toList(),
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12']);
  });

  test('service-namespace handlers offer awsPrincipals prefixes', () async {
    final registry = JsonHandlerRegistry();
    registerIamHandlers(registry);

    final namespaces =
        await registry.custom(
            iamGetServiceLastAccessedDetailsWithEntitiesServiceNamespaceHandler)!(
      ['aws', 'iam', 'get-service-last-accessed-details-with-entities',
          '--service-namespace', ''],
      null,
      null,
    );
    expect(namespaces.map((item) => item.name).take(6).toList(),
        ['a4b', 'acm-pca', 'acm', 'alexa-appkit', 'alexa-connectedhome',
            'amazonmq']);
    expect(namespaces.last.name, 'xray');
    // Duplicate prefixes from the source mapping are preserved.
    expect(
        namespaces
            .map((item) => item.name)
            .where((name) => name == 'codedeploy')
            .length,
        2);
    expect(namespaces.length, 178);

    final listNamespaces =
        await registry.custom(
            iamListPoliciesGrantingServiceAccessServiceNamespacesHandler)!(
      ['aws', 'iam', 'list-policies-granting-service-access',
          '--service-namespaces', ''],
      null,
      null,
    );
    expect(listNamespaces.map((item) => item.name).take(3).toList(),
        ['a4b', 'acm-pca', 'acm']);
  });

  test('service-namespaces handler runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerIamHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/i/iam.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final listPolicies = spec.subcommands!.firstWhere(
        (subcommand) =>
            subcommand.nameList.contains('list-policies-granting-service-access'));
    final namespacesOption = listPolicies.options!.firstWhere(
        (option) => option.nameList.contains('--service-namespaces'));
    final generator = namespacesOption.args!.single.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'aws', tokenLength: 3, complete: true),
        CommandToken(token: 'iam', tokenLength: 3, complete: true),
        CommandToken(
            token: 'list-policies-granting-service-access',
            tokenLength: 35,
            complete: true),
        CommandToken(token: '--service-namespaces', tokenLength: 20,
            complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((s) => s.name).toList();
    expect(names.take(6).toList(),
        ['a4b', 'acm-pca', 'acm', 'alexa-appkit', 'alexa-connectedhome',
            'amazonmq']);
    expect(names, contains('ec2'));
    expect(names.length, 178);
  });
}
