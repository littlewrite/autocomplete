import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/lerna.dart';
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

const _allHandlerIds = {
  lernaGetPackagesPostProcessHandler,
  lernaGetBranchesPostProcessHandler,
  lernaGetAllScriptsFromPackagesPostProcessHandler,
  lernaGitRemotePostProcessHandler,
  lernaLoglevelSuggestionsHandler,
  lernaSemverNounsSuggestionsHandler,
  lernaPackageScopesSuggestionsHandler,
};

void main() {
  test('lerna JSON binds every handler reference to a declared ID', () async {
    final handlers = JsonHandlerRegistry();
    registerLernaHandlers(handlers);
    final source = await File('assets/specs/l/lerna.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'lerna');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is Map) {
        if (node['handler'] is String) ids.add(node['handler'] as String);
        for (final value in node.values) {
          collectHandlers(value);
        }
      } else if (node is List) {
        for (final item in node) {
          collectHandlers(item);
        }
      }
    }

    collectHandlers(document);
    expect(ids.toSet(), _allHandlerIds);
  });

  test('getPackages post-processor splits on newlines keeping empty entries',
      () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry.postProcess(lernaGetPackagesPostProcessHandler)!;

    final packages = postProcess('@scope/pkg-a\npkg-b');
    expect(packages.map((item) => item.nameSingle ?? ''),
        ['@scope/pkg-a', 'pkg-b']);
    expect(packages.first.icon, 'fig://icon?type=string');

    // A trailing newline yields a trailing empty suggestion, exactly like the
    // source's plain `split("\n")`.
    final trailing = postProcess('pkg-a\npkg-b\n');
    expect(trailing.map((item) => item.nameSingle ?? ''),
        ['pkg-a', 'pkg-b', '']);
  });

  test('getBranches post-processor strips the marker and trims each line', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry.postProcess(lernaGetBranchesPostProcessHandler)!;

    final branches = postProcess('  main\n* feature\n  develop');
    expect(branches.map((item) => item.nameSingle ?? ''),
        ['main', 'feature', 'develop']);
    expect(branches.first.description, 'Branch');
    expect(branches.first.icon, 'fig://icon?type=git');
  });

  test('getBranches returns nothing for a fatal git error', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry.postProcess(lernaGetBranchesPostProcessHandler)!;

    expect(postProcess('fatal: not a git repository (or any of the parent '
            'directories): .git'),
        isEmpty);
  });

  test('getAllScriptsFromPackages merges and deduplicates package scripts', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry
        .postProcess(lernaGetAllScriptsFromPackagesPostProcessHandler)!;

    final output = '{"name":"pkg-a","scripts":{"build":"tsc","test":"jest"}}'
        'END'
        '{"name":"pkg-b","scripts":{"build":"tsc","lint":"eslint"}}'
        'END';
    final scripts = postProcess(output);
    expect(scripts.map((item) => item.nameSingle ?? ''),
        ['build', 'test', 'lint']);
    expect(scripts.first.icon, 'fig://icon?type=npm');
  });

  test('getAllScriptsFromPackages returns nothing on empty output', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry
        .postProcess(lernaGetAllScriptsFromPackagesPostProcessHandler)!;

    expect(postProcess(''), isEmpty);
  });

  test('getAllScriptsFromPackages returns nothing on a parse error', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess = registry
        .postProcess(lernaGetAllScriptsFromPackagesPostProcessHandler)!;

    expect(postProcess('not json}END{"name":"pkg","scripts":{"x":"y"}}'),
        isEmpty);
    // A package body without a scripts object is likewise unusable.
    expect(postProcess('{"name":"pkg"}'), isEmpty);
  });

  test('git-remote post-processor names each remote', () {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final postProcess =
        registry.postProcess(lernaGitRemotePostProcessHandler)!;

    final remotes = postProcess('origin\nupstream');
    expect(remotes.map((item) => item.nameSingle ?? ''),
        ['origin', 'upstream']);
    expect(remotes.first.description, 'Remote');
    expect(remotes.first.icon,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/'
        'Git_icon.svg/1024px-Git_icon.svg.png');
  });

  test('loglevel suggestions handler yields the seven log levels', () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final handler = registry.custom(lernaLoglevelSuggestionsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['silent', 'error', 'warn', 'success', 'info', 'verbose', 'silly']);
    expect(suggestions.first.icon, 'fig://icon?type=string');
  });

  test('semver suggestions handler yields the seven version nouns', () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final handler = registry.custom(lernaSemverNounsSuggestionsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['major', 'minor', 'patch', 'premajor', 'preminor', 'prepatch',
            'prerelease']);
    expect(suggestions.first.icon, 'fig://icon?type=npm');
  });

  test('package-scopes suggestions handler yields the two access scopes',
      () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final handler = registry.custom(lernaPackageScopesSuggestionsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['public', 'restricted']);
    expect(suggestions.first.icon, 'fig://icon?type=string');
  });

  test('lerna ls generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final adapter = _FakeAdapter({
      'lerna ls': const ProcessRunResult(
        stdout: '@scope/pkg-a\npkg-b',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/lerna.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'lerna ls';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'lerna', tokenLength: 5, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['@scope/pkg-a', 'pkg-b']);
  });

  test('getAllScriptsFromPackages generator runs through the adapter '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    const script =
        'lerna list -p | while read p; do\n \\cat \$p/package.json '
        '&& echo END\ndone';
    final adapter = _FakeAdapter({
      'bash -c $script': const ProcessRunResult(
        stdout: '{"name":"pkg-a","scripts":{"build":"tsc","test":"jest"}}'
            'END'
            '{"name":"pkg-b","scripts":{"build":"tsc","lint":"eslint"}}'
            'END',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/lerna.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.isNotEmpty && script.first == 'bash';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'lerna', tokenLength: 5, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test', 'lint']);
  });

  test('loglevel suggestions handler runs through the parsed spec end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerLernaHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/l/lerna.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final run =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('run'));
    final loglevel =
        run.options!.firstWhere((o) => o.nameList.contains('--loglevel'));
    final generator = loglevel.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'lerna', tokenLength: 5, complete: true),
        CommandToken(token: 'version', tokenLength: 7, complete: true),
        CommandToken(token: '--loglevel', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['silent', 'error', 'warn', 'success', 'info', 'verbose', 'silly']);
  });
}
