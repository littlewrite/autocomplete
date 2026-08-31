import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/passwd.dart';
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

/// The static `dscl` script shipped by the passwd JSON.
const _usersScript = r"dscl . -list /Users | grep -E -v '^_'";

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching root args, options, and the subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? fromArgs(List<FigArg>? args) {
    if (args == null) return null;
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  FigGenerator? fromOptions(List<FigOption>? options) {
    if (options == null) return null;
    for (final option in options) {
      final found = fromArgs(option.args);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? fromSubcommands(List<FigSubcommand>? subcommands) {
    if (subcommands == null) return null;
    for (final subcommand in subcommands) {
      final inArgs = fromArgs(subcommand.args);
      if (inArgs != null) return inArgs;
      final inOptions = fromOptions(subcommand.options);
      if (inOptions != null) return inOptions;
      final nested = fromSubcommands(subcommand.subcommands);
      if (nested != null) return nested;
    }
    return null;
  }

  final inRootArgs = fromArgs(spec.args);
  if (inRootArgs != null) return inRootArgs;
  final inRootOptions = fromOptions(spec.options);
  if (inRootOptions != null) return inRootOptions;
  return fromSubcommands(spec.subcommands);
}

void main() {
  test('passwd JSON binds every generator to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPasswdHandlers(handlers);
    final source = await File('assets/specs/p/passwd.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(passwdUsersPostProcessHandler));
    expect(document['name'], 'passwd');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
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
    expect(ids.toSet(), {passwdUsersPostProcessHandler});
  });

  test('post-processor trims the whole output and keeps each user name', () {
    final registry = JsonHandlerRegistry();
    registerPasswdHandlers(registry);
    final output = 'guest\n'
        'paul\n'
        'shared\n';

    final users = registry.postProcess(passwdUsersPostProcessHandler)!(output);
    expect(users.map((item) => item.nameSingle), ['guest', 'paul', 'shared']);
    expect(users.first.icon, '👤');
  });

  test('post-processor drops empty lines and returns empty for blank output',
      () {
    final registry = JsonHandlerRegistry();
    registerPasswdHandlers(registry);
    final output = 'guest\n'
        '\n'
        'paul\n';

    final users = registry.postProcess(passwdUsersPostProcessHandler)!(output);
    expect(users.map((item) => item.nameSingle), ['guest', 'paul']);

    expect(registry.postProcess(passwdUsersPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(passwdUsersPostProcessHandler)!('   \n'), isEmpty);
  });

  test('passwd user generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPasswdHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_usersScript': const ProcessRunResult(
        stdout: 'guest\n'
            'paul\n'
            'shared\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/passwd.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'bash -c $_usersScript');
    expect(generator, isNotNull,
        reason: 'no generator for the passwd users script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'passwd', tokenLength: 6, complete: true),
        CommandToken(token: '-u', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['guest', 'paul', 'shared']);
  });
}
