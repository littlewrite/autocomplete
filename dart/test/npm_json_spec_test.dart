import 'dart:convert';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/npm.dart';
import 'package:test/test.dart';

void main() {
  test('npm search handler returns package and version suggestions', () async {
    final registry = JsonHandlerRegistry();
    registerNpmHandlers(registry);
    final handler = registry.custom(npmSearchHandlerIds.first)!;

    final packages = await handler(['npm', 'install', 'dart'], (input) async {
      expect(input.command, 'curl');
      expect(input.args.last, contains('search/suggestions?q=dart'));
      return const ExecuteCommandOutput(
        stdout: '[{"package":{"name":"dart","description":"SDK"}}]',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(packages.single.nameSingle, 'dart');
    expect(packages.single.description, 'SDK');

    final versions = await handler(['npm', 'install', 'dart@'], (input) async {
      expect(input.args.last, 'https://registry.npmjs.org/dart');
      return const ExecuteCommandOutput(
        stdout:
            '{"dist-tags":{"latest":"2.0.0"},"versions":{"1.0.0":{},"2.0.0":{}}}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(
        versions.map((item) => item.nameSingle), ['latest', '2.0.0', '1.0.0']);
  });

  test('npm workspace and dependency handlers read package metadata', () async {
    final registry = JsonHandlerRegistry();
    registerNpmHandlers(registry);
    Future<ExecuteCommandOutput> execute(ExecuteCommandInput input) async {
      if (input.command == 'npm') {
        return const ExecuteCommandOutput(
          stdout: '/project\n',
          stderr: '',
          status: 0,
        );
      }
      expect(input, isA<ExecuteCommandInput>());
      return const ExecuteCommandOutput(
        stdout:
            '{"workspaces":["apps/*"],"dependencies":{"a":"1"},"devDependencies":{"b":"1"},"optionalDependencies":{"c":"1"}}',
        stderr: '',
        status: 0,
      );
    }

    final workspaces = await registry.custom(npmWorkspaceHandlerIds.first)!(
      ['npm', 'install'],
      execute,
      null,
    );
    expect(workspaces.single.nameSingle, 'apps/*');

    final dependencies = await registry.custom(npmDependenciesHandler)!(
      ['npm', 'explore', 'a'],
      execute,
      null,
    );
    expect(dependencies.map((item) => item.nameSingle), ['b', 'c']);
    expect(dependencies.map((item) => item.description),
        ['devDependency', 'optionalDependency']);
  });

  test('npm scripts post-processes scripts and fig overrides', () {
    final registry = JsonHandlerRegistry();
    registerNpmHandlers(registry);
    final handler = registry.postProcess(npmScriptsPostProcessHandler)!;
    final suggestions = handler(jsonEncode({
      'scripts': {'build': 'dart compile'},
      'fig': {
        'build': {'description': 'Custom build', 'priority': 80}
      }
    }));
    expect(suggestions.single.nameSingle, 'build');
    expect(suggestions.single.description, 'Custom build');
    expect(suggestions.single.priority, 80);
  });

  test('npm trigger handlers are registered with their source semantics', () {
    final registry = JsonHandlerRegistry();
    registerNpmHandlers(registry);

    final searchTrigger = registry.trigger(npmSearchTriggerHandlerIds.first)!;
    expect(searchTrigger('dart@', 'dart'), isTrue);
    expect(searchTrigger('dart@next', 'dart@'), isFalse);
    expect(searchTrigger('@scope/pkg@', '@scope/pkg'), isTrue);

    final dependenciesTrigger =
        registry.trigger(npmDependenciesTriggerHandler)!;
    expect(dependenciesTrigger('--global', ''), isTrue);
    expect(dependenciesTrigger('package', ''), isFalse);
  });
}
