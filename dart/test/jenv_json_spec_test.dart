import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/jenv.dart';
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

/// The `find $PATH` script baked into the jenv JSON, verbatim after JSON
/// decoding. A raw string keeps the literal backslash-n that the bash -c
/// script uses to split the PATH.
const _findScript =
    r'for i in $(echo $PATH | tr ":" "\n"); do [[ -d "$i" ]] && '
    r'find "$i" -maxdepth 1 -type f -perm -111 && '
    r'find "$i" -maxdepth 1 -type l -perm -111; done';

void main() {
  test('jenv JSON binds every generator to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerJenvHandlers(handlers);
    final source = await File('assets/specs/j/jenv.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(jenvAllCommandsPostProcessHandler));
    expect(source, contains(jenvAllShimsPostProcessHandler));
    expect(source, contains(jenvAllPluginsPostProcessHandler));
    expect(source, contains(jenvVersionsPostProcessHandler));
    expect(source, contains(jenvProgramGeneratorPostProcessHandler));
    expect(document['name'], 'jenv');

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
    expect(ids.toSet(), {
      jenvAllCommandsPostProcessHandler,
      jenvAllShimsPostProcessHandler,
      jenvAllPluginsPostProcessHandler,
      jenvVersionsPostProcessHandler,
      jenvProgramGeneratorPostProcessHandler,
    });
  });

  test('commands post-processor drops blank lines and --version', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final output = 'commands\nhelp\n\n  \n--version\ninfo\n';

    final commands =
        registry.postProcess(jenvAllCommandsPostProcessHandler)!(output);
    expect(commands.map((item) => item.nameSingle), ['commands', 'help', 'info']);
    expect(commands.map((item) => item.icon),
        ['fig://icon?type=command', 'fig://icon?type=command', 'fig://icon?type=command']);
    expect(commands.map((item) => item.priority), [51, 51, 51]);
  });

  test('shims post-processor drops blank lines', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final output = 'java\nmvn\n\n  \ngradle\n';

    final shims = registry.postProcess(jenvAllShimsPostProcessHandler)!(output);
    expect(shims.map((item) => item.nameSingle), ['java', 'mvn', 'gradle']);
    expect(shims.map((item) => item.icon),
        ['fig://icon?type=command', 'fig://icon?type=command', 'fig://icon?type=command']);
    expect(shims.map((item) => item.priority), [51, 51, 51]);
  });

  test('plugins post-processor adds an enable description', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final output = 'export\nmaven\n\n';

    final plugins =
        registry.postProcess(jenvAllPluginsPostProcessHandler)!(output);
    expect(plugins.map((item) => item.nameSingle), ['export', 'maven']);
    expect(plugins.map((item) => item.description),
        ['Enable export plugin', 'Enable maven plugin']);
    expect(plugins.map((item) => item.priority), [51, 51]);
  });

  test('versions post-processor adds the Java version description', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final output = '1.8\n11.0.1\n\n  \n';

    final versions =
        registry.postProcess(jenvVersionsPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle), ['1.8', '11.0.1']);
    expect(versions.map((item) => item.description),
        ['Java Version 1.8', 'Java Version 11.0.1']);
    expect(versions.map((item) => item.icon), ['☕️', '☕️']);
    expect(versions.map((item) => item.priority), [51, 51]);
  });

  test('program post-processor maps absolute paths to basenames', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final output = '/usr/bin/java\n/usr/local/bin/mvn\nnot-a-path\n/usr/bin/\n';

    final programs =
        registry.postProcess(jenvProgramGeneratorPostProcessHandler)!(output);
    expect(programs.map((item) => item.nameSingle), ['java', 'mvn', '']);
    expect(programs.map((item) => item.description),
        ['Executable file', 'Executable file', 'Executable file']);
    expect(programs.map((item) => item.type),
        [SuggestionType.arg, SuggestionType.arg, SuggestionType.arg]);
  });

  test('empty output yields no suggestions', () {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    expect(registry.postProcess(jenvAllCommandsPostProcessHandler)!(''),
        isEmpty);
    expect(registry.postProcess(jenvAllShimsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(jenvAllPluginsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(jenvVersionsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(jenvProgramGeneratorPostProcessHandler)!(''),
        isEmpty);
  });

  test('jenv global versions generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final adapter = _FakeAdapter({
      'jenv versions --bare': const ProcessRunResult(
        stdout: '1.8\n11.0.1\n\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/j/jenv.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final global = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('global'));
    final generator = global.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'jenv', tokenLength: 4, complete: true),
        CommandToken(token: 'global', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['1.8', '11.0.1']);
  });

  test('jenv exec program generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerJenvHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_findScript': const ProcessRunResult(
        stdout: '/usr/bin/java\n/usr/bin/python3\n/usr/local/bin/mvn\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/j/jenv.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'bash -c $_findScript';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'jenv', tokenLength: 4, complete: true),
        CommandToken(token: 'exec', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(),
        ['java', 'python3', 'mvn']);
  });
}
