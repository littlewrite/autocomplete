import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/nextflow.dart';
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

void main() {
  test('nextflow JSON binds every generator to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNextflowHandlers(handlers);
    final source = await File('assets/specs/n/nextflow.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(nextflowRunnamePostProcessHandler));
    expect(source, contains(nextflowSessionidPostProcessHandler));
    expect(source, contains(nextflowProjectnameCustomHandler));
    expect(source, contains(nextflowDockerimageCustomHandler));
    expect(source, contains(nextflowSecretnameCustomHandler));
    expect(document['name'], 'nextflow');

    final ids = <String>{};
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final map = generator as Map;
          // A whole-generator handler reference (projectname/dockerimage/
          // secretname) and a postProcess handler reference (runname/sessionid)
          // both live under a `generators` key.
          if (map['handler'] is String) {
            ids.add(map['handler'] as String);
          }
          final postProcess = map['postProcess'];
          if (postProcess is Map && postProcess['handler'] is String) {
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
    expect(ids, {
      nextflowRunnamePostProcessHandler,
      nextflowSessionidPostProcessHandler,
      nextflowProjectnameCustomHandler,
      nextflowDockerimageCustomHandler,
      nextflowSecretnameCustomHandler,
    });
  });

  test('runname post-processor strips the first asterisk and trims', () {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final output = '  run_a * \nrun_b  \n*current';

    final suggestions =
        registry.postProcess(nextflowRunnamePostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['run_a', 'run_b', 'current']);
    expect(suggestions.first.description, 'Run name');
  });

  test('sessionid post-processor strips the first asterisk and trims', () {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final output = ' 7f3a2b1c\n9b2c*dead  \n*current';

    final suggestions =
        registry.postProcess(nextflowSessionidPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['7f3a2b1c', '9b2cdead', 'current']);
    expect(suggestions.first.description, 'Session ID');
  });

  test('post-processors return an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    expect(registry.postProcess(nextflowRunnamePostProcessHandler)!(''),
        isEmpty);
    expect(registry.postProcess(nextflowSessionidPostProcessHandler)!(''),
        isEmpty);
  });

  test('runname post-processor keeps the trailing empty entry from a newline',
      () {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    // The source splits on '\n' without filtering empty entries, so a trailing
    // newline yields a trailing empty-named suggestion.
    final suggestions =
        registry.postProcess(nextflowRunnamePostProcessHandler)!('run_a\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['run_a', '']);
  });

  test('projectname custom handler runs the bash find command and parses lines',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final handler = registry.custom(nextflowProjectnameCustomHandler)!;

    final suggestions =
        await handler(['nextflow', 'run', ''], (input) async {
      expect(input.command, 'bash');
      expect(input.args.first, '-c');
      expect(input.args.last, contains('find * -maxdepth 0'));
      expect(input.args.last, contains('grep -v assets'));
      return const ExecuteCommandOutput(
        stdout: 'foo.nf\nnf-core',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['foo.nf', 'nf-core']);
    expect(suggestions.first.description, 'Project name');
  });

  test('dockerimage custom handler runs docker images and parses lines',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final handler = registry.custom(nextflowDockerimageCustomHandler)!;

    final suggestions = await handler(
        ['nextflow', 'run', '-with-docker', ''], (input) async {
      expect(input.command, 'bash');
      expect(
          input.args,
          [
            '-c',
            'docker images | cut -w -f 1 | grep -v REPOSITORY',
          ]);
      return const ExecuteCommandOutput(
        stdout: 'nginx\nredis',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['nginx', 'redis']);
    expect(suggestions.first.description, 'Docker image');
  });

  test('secretname custom handler greps the secrets store and parses lines',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final handler = registry.custom(nextflowSecretnameCustomHandler)!;

    final suggestions = await handler(
        ['nextflow', 'secrets', 'get', ''], (input) async {
      expect(input.command, 'bash');
      expect(input.args.first, '-c');
      expect(input.args.last, contains('store.json'));
      expect(input.args.last, contains('tr -d'));
      return const ExecuteCommandOutput(
        stdout: 'FOO\nBAR',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['FOO', 'BAR']);
    expect(suggestions.first.description, 'Secret name');
  });

  test('custom handlers return empty when executeCommand is unavailable',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final projectname = registry.custom(nextflowProjectnameCustomHandler)!;
    expect(await projectname(['nextflow', 'run', ''], null, null), isEmpty);
  });

  test('custom handlers return empty when the command fails', () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final dockerimage = registry.custom(nextflowDockerimageCustomHandler)!;
    final suggestions = await dockerimage(
        ['nextflow', 'run', ''], (input) async {
      return const ExecuteCommandOutput(stdout: '', stderr: 'boom', status: 1);
    }, null);
    expect(suggestions, isEmpty);
  });

  test('run generator runs the projectname custom handler end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final projectCommand =
        "{ find * -maxdepth 0 -type f -name '*.nf' 2> /dev/null && "
        "find \$HOME/.nextflow/assets/* -maxdepth 1 -type d | "
        "cut -d/ -f6,7 | grep / | grep -v assets; } 2> /dev/null";
    final adapter = _FakeAdapter({
      'bash -c $projectCommand': const ProcessRunResult(
        stdout: 'foo.nf\nnf-core',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/nextflow.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final run = spec.subcommands!.firstWhere((s) => s.nameList.contains('run'));
    final projectNameGenerator = run.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      projectNameGenerator,
      const [
        CommandToken(token: 'nextflow', tokenLength: 8, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['foo.nf', 'nf-core']);
  });

  test('run -resume generator runs the sessionid post-processor end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerNextflowHandlers(registry);
    final adapter = _FakeAdapter({
      "bash -c cat .nextflow/history | awk '{ print \$7 }'":
          const ProcessRunResult(
        stdout: '7f3a2b1c\n9b2cdead',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/nextflow.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final run = spec.subcommands!.firstWhere((s) => s.nameList.contains('run'));
    final resume =
        run.options!.firstWhere((o) => o.nameList.contains('-resume'));
    final sessionGenerator = resume.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      sessionGenerator,
      const [
        CommandToken(token: 'nextflow', tokenLength: 8, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '-resume', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['7f3a2b1c', '9b2cdead']);
  });
}
