import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/limactl.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, [this._entries = const []]);

  final Map<String, ProcessRunResult> _results;
  final List<FileSystemEntry> _entries;

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
  }) async {
    return _entries.where((entry) {
      if (foldersOnly && !entry.isDirectory) return false;
      if (!entry.isDirectory &&
          extensions != null &&
          !extensions.any(
              (ext) => entry.name.toLowerCase().endsWith('.$ext'))) {
        return false;
      }
      return true;
    }).toList();
  }

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
  test('limactl JSON references exactly the registered generator handlers',
      () async {
    final handlers = JsonHandlerRegistry();
    registerLimactlHandlers(handlers);
    final source = await File('assets/specs/l/limactl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(limactlInstanceNamesDeleteHandler));
    expect(source, contains(limactlInstanceNamesShellHandler));
    expect(source, contains(limactlInstanceNamesShowSshHandler));
    expect(source, contains(limactlInstanceNamesStopHandler));
    expect(source, contains(limactlYamlFilepathsGeneratorHandler));
    expect(document['name'], 'limactl');

    final ids = <String>{};
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          if (generator is Map && generator['handler'] is String) {
            ids.add(generator['handler'] as String);
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
      limactlInstanceNamesDeleteHandler,
      limactlInstanceNamesShellHandler,
      limactlInstanceNamesShowSshHandler,
      limactlInstanceNamesStopHandler,
      limactlYamlFilepathsGeneratorHandler,
    });
  });

  test('instance-name generator runs limactl list --quiet', () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async {
      expect(input.command, 'limactl');
      expect(input.args, ['list', '--quiet']);
      return const ExecuteCommandOutput(
        stdout: 'default\nfoo\n',
        stderr: '',
        status: 0,
      );
    }

    final suggestions =
        await registry.custom(limactlInstanceNamesDeleteHandler)!(
      ['limactl', 'delete', ''],
      executeCommand,
      null,
    );
    expect(suggestions.map((s) => s.name).toList(), ['default', 'foo']);
    final first = suggestions.first;
    expect(first.description, 'Instance name');
    expect(first.priority, 76);
    expect(first.isDangerous, isTrue);
  });

  test('destructive instance-name generators flag suggestions as dangerous',
      () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async =>
        const ExecuteCommandOutput(
          stdout: 'default\n',
          stderr: '',
          status: 0,
        );

    final shell =
        await registry.custom(limactlInstanceNamesShellHandler)!(
      ['limactl', 'shell', ''],
      executeCommand,
      null,
    );
    expect(shell.single.isDangerous, isTrue);

    final stop =
        await registry.custom(limactlInstanceNamesStopHandler)!(
      ['limactl', 'stop', ''],
      executeCommand,
      null,
    );
    expect(stop.single.isDangerous, isTrue);
  });

  test('show-ssh instance-name generator is not dangerous', () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async {
      expect(input.args, ['list', '--quiet']);
      return const ExecuteCommandOutput(
        stdout: 'default\n',
        stderr: '',
        status: 0,
      );
    }

    final suggestions =
        await registry.custom(limactlInstanceNamesShowSshHandler)!(
      ['limactl', 'show-ssh', ''],
      executeCommand,
      null,
    );
    expect(suggestions.single.name, 'default');
    expect(suggestions.single.description, 'Instance name');
    expect(suggestions.single.priority, 76);
    expect(suggestions.single.isDangerous, isFalse);
  });

  test('instance-name generator returns empty on command failure', () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async =>
        const ExecuteCommandOutput(stdout: '', stderr: 'boom', status: 1);

    final suggestions =
        await registry.custom(limactlInstanceNamesStopHandler)!(
      ['limactl', 'stop', ''],
      executeCommand,
      null,
    );
    expect(suggestions, isEmpty);
  });

  test('yaml filepaths generator lists yaml/yml files in the working dir',
      () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    final adapter = _FakeAdapter(
      const {},
      const [
        FileSystemEntry(name: 'lima.yaml', isDirectory: false),
        FileSystemEntry(name: 'config.yml', isDirectory: false),
        FileSystemEntry(name: 'examples', isDirectory: true),
        FileSystemEntry(name: 'README.md', isDirectory: false),
      ],
    );
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: adapter,
    );

    final suggestions =
        await registry.custom(limactlYamlFilepathsGeneratorHandler)!(
      ['limactl', 'validate', ''],
      null,
      context,
    );
    expect(suggestions.map((s) => s.name).toList(),
        ['lima.yaml', 'config.yml', 'examples/']);
    final file = suggestions.first;
    expect(file.priority, 76);
    expect(file.type, SuggestionType.file);
    final folder = suggestions.last;
    expect(folder.type, SuggestionType.folder);
  });

  test('yaml filepaths generator is a no-op without a generator context',
      () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);

    final suggestions =
        await registry.custom(limactlYamlFilepathsGeneratorHandler)!(
      ['limactl', 'validate', ''],
      null,
      null,
    );
    expect(suggestions, isEmpty);
  });

  test('delete instance-name generator runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerLimactlHandlers(registry);
    final adapter = _FakeAdapter({
      'limactl list --quiet': const ProcessRunResult(
        stdout: 'default\nfoo\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/limactl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final delete =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('delete'));
    final generator = delete.args!.first.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'limactl', tokenLength: 7, complete: true),
        CommandToken(token: 'delete', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['default', 'foo']);
  });

  test('completion subcommand exposes the four shell subcommands', () async {
    final registry = JsonHandlerRegistry();
    registerLimactlHandlers(registry);
    final source = await File('assets/specs/l/limactl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    // The `completion` subcommand's whole-`subcommands` slot resolves to the
    // `["bash", "fish", "powershell", "zsh"].map(...)` list from src/limactl.ts.
    final completion = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('completion'));
    expect(
      completion.subcommands!.map((shell) => shell.nameList.first).toList(),
      ['bash', 'fish', 'powershell', 'zsh'],
    );

    for (final shell in completion.subcommands!) {
      final name = shell.nameList.first;
      expect(
        shell.description,
        'Generate the autocompletion script for $name',
      );
      final noDescriptions = shell.options!
          .firstWhere((option) => option.nameList.contains('--no-descriptions'));
      expect(noDescriptions.description, 'Disable completion descriptions');
      // The global flags are present with the shell name embedded in help.
      expect(shell.options!.map((o) => o.nameList).expand((n) => n).toSet(),
          containsAll(<String>['-h', '--help', '--debug']));
      expect(
        shell.options!
            .firstWhere((option) => option.nameList.contains('--help'))
            .description,
        'Help for $name',
      );
    }
  });

  test('limactl JSON rejects an unregistered completion subcommands handler',
      () async {
    final registry = JsonHandlerRegistry();
    final source = await File('assets/specs/l/limactl.json').readAsString();
    expect(() => figSpecFromJsonString(source, handlers: registry),
        throwsA(isA<JsonSpecFormatException>()));
  });
}
