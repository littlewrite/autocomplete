import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kubectl.dart';
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

const _createJobFromTokens = [
  CommandToken(token: 'kubectl', tokenLength: 7, complete: true),
  CommandToken(token: 'create', tokenLength: 6, complete: true),
  CommandToken(token: 'job', tokenLength: 3, complete: true),
  CommandToken(token: '--from', tokenLength: 6, complete: true),
  CommandToken(token: '', tokenLength: 0, complete: false),
];

const _createRolebindingRoleTokens = [
  CommandToken(token: 'kubectl', tokenLength: 7, complete: true),
  CommandToken(token: 'create', tokenLength: 6, complete: true),
  CommandToken(token: 'rolebinding', tokenLength: 11, complete: true),
  CommandToken(token: '--role', tokenLength: 6, complete: true),
  CommandToken(token: '', tokenLength: 0, complete: false),
];

void main() {
  test('kubectl JSON binds every generator to the four declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKubectlHandlers(handlers);
    final source = await File('assets/specs/k/kubectl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(kubectlCreateJobFromScriptHandler));
    expect(source, contains(kubectlCreateJobFromPostProcessHandler));
    expect(source, contains(kubectlCreateRolebindingRoleScriptHandler));
    expect(source, contains(kubectlCreateRolebindingRolePostProcessHandler));
    expect(document['name'], 'kubectl');

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
      kubectlCreateJobFromScriptHandler,
      kubectlCreateJobFromPostProcessHandler,
      kubectlCreateRolebindingRoleScriptHandler,
      kubectlCreateRolebindingRolePostProcessHandler,
    });
  });

  test('create job --from script handler lists cronjobs', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final script = registry.script(kubectlCreateJobFromScriptHandler)!;

    expect(script(['kubectl', 'create', 'job', '--from', '']),
        ['kubectl', 'get', 'cronjob', '-o', 'custom-columns=:.metadata.name']);
  });

  test('create rolebinding --role script handler lists roles', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final script = registry.script(kubectlCreateRolebindingRoleScriptHandler)!;

    expect(script(['kubectl', 'create', 'rolebinding', '--role', '']),
        ['kubectl', 'get', 'roles', '-o', 'custom-columns=:.metadata.name']);
  });

  test('rolebinding post-processor maps lines to suggestions', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final output = 'admin\neditor\nviewer';

    final results = registry
        .postProcess(kubectlCreateRolebindingRolePostProcessHandler)!(output);
    expect(results.map((item) => item.nameSingle), ['admin', 'editor', 'viewer']);
    expect(results.every((item) => item.icon == 'fig://icon?type=kubernetes'),
        isTrue);
  });

  test('rolebinding post-processor returns empty on connection error', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);

    final results = registry
        .postProcess(kubectlCreateRolebindingRolePostProcessHandler)!(
            'The connection to the server localhost:8080 was refused');
    expect(results, isEmpty);
  });

  test('rolebinding post-processor returns empty on general error', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);

    final results = registry
        .postProcess(kubectlCreateRolebindingRolePostProcessHandler)!(
            'error: the server does not allow access');
    expect(results, isEmpty);
  });

  test('rolebinding post-processor keeps the trailing empty entry from a newline',
      () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);

    final results = registry
        .postProcess(kubectlCreateRolebindingRolePostProcessHandler)!(
            'admin\neditor\n');
    expect(results.map((item) => item.nameSingle), ['admin', 'editor', '']);
  });

  test('create job --from post-processor prefixes names with cronjob/', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final output = 'nginx\nweb';

    final results =
        registry.postProcess(kubectlCreateJobFromPostProcessHandler)!(output);
    expect(results.map((item) => item.nameSingle),
        ['cronjob/nginx', 'cronjob/web']);
    expect(results.first.icon, 'fig://icon?type=kubernetes');
  });

  test('create job --from post-processor returns empty on error', () {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);

    final results =
        registry.postProcess(kubectlCreateJobFromPostProcessHandler)!(
            'The connection to the server was refused');
    expect(results, isEmpty);
  });

  test('create job --from generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final adapter = _FakeAdapter({
      'kubectl get cronjob -o custom-columns=:.metadata.name':
          const ProcessRunResult(
            stdout: 'nginx\nweb',
            stderr: '',
            exitCode: 0,
          ),
    });

    final source = await File('assets/specs/k/kubectl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final job =
        create.subcommands!.firstWhere((s) => s.nameList.contains('job'));
    final fromOption =
        job.options!.firstWhere((option) => option.nameList.contains('--from'));
    final generator = fromOption.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      _createJobFromTokens,
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['cronjob/nginx', 'cronjob/web']);
  });

  test('create job --from generator returns empty on error output', () async {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final adapter = _FakeAdapter({
      'kubectl get cronjob -o custom-columns=:.metadata.name':
          const ProcessRunResult(
            stdout: 'error: the server has asked for the client to provide credentials',
            stderr: '',
            exitCode: 1,
          ),
    });

    final source = await File('assets/specs/k/kubectl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final job =
        create.subcommands!.firstWhere((s) => s.nameList.contains('job'));
    final fromOption =
        job.options!.firstWhere((option) => option.nameList.contains('--from'));
    final generator = fromOption.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      _createJobFromTokens,
      '/work',
      adapter,
    );

    expect(suggestions, isEmpty);
  });

  test('create rolebinding --role generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerKubectlHandlers(registry);
    final adapter = _FakeAdapter({
      'kubectl get roles -o custom-columns=:.metadata.name':
          const ProcessRunResult(
            stdout: 'admin\neditor\nviewer',
            stderr: '',
            exitCode: 0,
          ),
    });

    final source = await File('assets/specs/k/kubectl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final create = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('create'));
    final rolebinding = create.subcommands!
        .firstWhere((s) => s.nameList.contains('rolebinding'));
    final roleOption = rolebinding.options!
        .firstWhere((option) => option.nameList.contains('--role'));
    final generator = roleOption.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      _createRolebindingRoleTokens,
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['admin', 'editor', 'viewer']);
  });
}
