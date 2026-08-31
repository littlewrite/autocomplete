import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kamal.dart';
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

/// The exact `bash -c` probe from src/kamal.ts that walks up looking for a
/// `bin/kamal` file.
const _binKamalProbeScript =
    'while [ ! -f "\$PWD/bin/kamal" ] && [ "\$PWD" != "/" ]; do cd ..; done; '
    '[ -f "\$PWD/bin/kamal" ] && echo "true" || echo "false"';

/// Collects every `handler` string referenced under a dynamic field
/// (`generators`, `postProcess`, `custom`, or `generateSpec`) anywhere in the
/// JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

/// Parses the shipped kamal JSON with [registry] and runs its root
/// [generateSpec], simulating a `bin/kamal` probe that prints
/// [detectionStdout].
Future<FigSpec> _generateSpec(JsonHandlerRegistry registry,
    {required String detectionStdout}) async {
  final source = await File('assets/specs/k/kamal.json').readAsString();
  final spec = figSpecFromJsonString(source, handlers: registry);
  final generateSpec = spec.generateSpec;
  expect(generateSpec, isNotNull);
  final generated = await generateSpec!(
    const ['kamal', ''],
    (input) async => ExecuteCommandOutput(
      stdout: detectionStdout,
      stderr: '',
      status: 0,
    ),
  );
  expect(generated, isNotNull);
  return generated!;
}

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching root options and the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? fromOptions(List<FigOption>? options) {
    for (final option in options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
    }
    return null;
  }

  final root = fromOptions(spec.options);
  if (root != null) return root;

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final fromSubcommandOptions = fromOptions(subcommand.options);
      if (fromSubcommandOptions != null) return fromSubcommandOptions;
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  return visit(spec.subcommands ?? const []);
}

void main() {
  test('kamal JSON binds the root generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKamalHandlers(handlers);
    final source = await File('assets/specs/k/kamal.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'kamal');
    expect(source, contains(kamalGenerateSpecHandler));
    expect(_referencedHandlers(document), {kamalGenerateSpecHandler});
  });

  test('generateSpec runs the bin/kamal probe command', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);

    final source = await File('assets/specs/k/kamal.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec(
      const ['kamal', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(
            stdout: 'true', stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'bash');
    expect(seenArgs, '-c $_binKamalProbeScript');
    expect(generated, isNotNull);
    expect(generated!.name, 'kamal');
  });

  test('generateSpec with bin/kamal present keeps the default init priority',
      () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final generated = await _generateSpec(registry, detectionStdout: 'true');

    expect(generated.name, 'kamal');
    expect(generated.options!.map((option) => option.nameList.first), [
      '--verbose',
      '--quiet',
      '--version',
      '--primary',
      '--hosts',
      '--roles',
      '--config_file',
      '-d',
      '--skip_hooks',
    ]);

    final names =
        generated.subcommands!.map((subcommand) => subcommand.nameList.first);
    expect(names, [
      'setup',
      'destinations',
      'deploy',
      'redeploy',
      'rollback',
      'details',
      'audit',
      'config',
      'init',
      'envify',
      'remove',
      'version',
      'accessory',
      'app',
      'build',
      'healthcheck',
      'lock',
      'prune',
      'registry',
      'server',
      'traefik',
    ]);

    final deploy = generated.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'deploy');
    expect(deploy.priority, 80);
    expect(deploy.icon, '🚀');
    expect(deploy.options!.single.nameList, ['-P', '--skip_push']);

    final init = generated.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'init');
    expect(init.priority, isNull);
  });

  test('generateSpec without bin/kamal promotes init to priority 100', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final generated = await _generateSpec(registry, detectionStdout: 'false');

    final init = generated.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'init');
    expect(init.priority, 100);
  });

  test('base options carry the destination generator and config default',
      () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final generated = await _generateSpec(registry, detectionStdout: 'true');

    final configFile = generated.options!
        .firstWhere((option) => option.nameList.contains('--config_file'));
    expect(configFile.args!.first.name, 'config');
    expect(configFile.args!.first.defaultValue, 'config/deploy.yml');

    final destination = generated.options!
        .firstWhere((option) => option.nameList.contains('-d'));
    expect(destination.description, 'Specify destination to use');
    expect(destination.args!.first.name, 'destination');
    expect(destination.args!.first.generatorsList.single.script,
        ['bin/kamal', 'destinations', '--json']);
  });

  test('log options preserve the escaped-quote description', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final generated = await _generateSpec(registry, detectionStdout: 'true');

    final appLogs = generated.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'app')
        .subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'logs');
    final since =
        appLogs.options!.firstWhere((option) => option.nameList.contains('--since'));
    expect(since.description,
        'Show lines since timestamp\\" (e.g. 2013-01-02T13:23:37Z) or '
        'relative (e.g. 42m for 42 minutes)');
  });

  test('nested subcommand trees are materialized', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final generated = await _generateSpec(registry, detectionStdout: 'true');

    FigSubcommand named(List<FigSubcommand> subcommands, String name) =>
        subcommands.firstWhere((subcommand) => subcommand.nameList.first == name);

    final accessory = named(generated.subcommands!, 'accessory');
    expect(accessory.subcommands!.map((item) => item.nameList.first), [
      'boot',
      'upload',
      'directories',
      'reboot',
      'start',
      'stop',
      'restart',
      'details',
      'exec',
      'logs',
      'status',
      'remove',
      'remove_container',
      'remove_image',
      'remove_service_directory',
    ]);
    expect(
        accessory.subcommands!
            .firstWhere((item) => item.nameList.first == 'remove_container')
            .hidden,
        true);

    final traefik = named(generated.subcommands!, 'traefik');
    expect(traefik.icon, '🚦');
    expect(traefik.subcommands!.map((item) => item.nameList.first), [
      'boot',
      'reboot',
      'start',
      'stop',
      'restart',
      'details',
      'logs',
      'remove',
      'remove_container',
      'remove_image',
      'help',
    ]);

    final lock = named(generated.subcommands!, 'lock');
    expect(lock.icon, '🔒');
    final acquire = named(lock.subcommands!, 'acquire');
    expect(acquire.options!.single.nameList, ['message', 'm']);
    expect(acquire.options!.single.args!.first.name, 'message');
  });

  test('destination generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);
    final adapter = _FakeAdapter({
      'bin/kamal destinations --json': const ProcessRunResult(
        stdout: '["staging","production"]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kamal.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['kamal', ''],
      (input) async {
        expect(input.command, 'bash');
        expect(input.args, ['-c', _binKamalProbeScript]);
        return const ExecuteCommandOutput(
            stdout: 'true', stderr: '', status: 0);
      },
    );

    final generator =
        generatorByScript(generated!, 'bin/kamal destinations --json');
    expect(generator, isNotNull,
        reason: 'no destination generator in the generated spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kamal', tokenLength: 5, complete: true),
        CommandToken(token: '-d', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['staging', 'production']);
  });

  test('destination generator yields empty suggestions on bad output', () async {
    final registry = JsonHandlerRegistry();
    registerKamalHandlers(registry);

    Future<List<String>> runWith(String stdout) async {
      final adapter = _FakeAdapter({
        'bin/kamal destinations --json':
            ProcessRunResult(stdout: stdout, stderr: '', exitCode: 0),
      });
      final source = await File('assets/specs/k/kamal.json').readAsString();
      final spec = figSpecFromJsonString(source, handlers: registry);
      final generated = await spec.generateSpec!(
        const ['kamal', ''],
        (input) async =>
            const ExecuteCommandOutput(stdout: 'true', stderr: '', status: 0),
      );
      final generator =
          generatorByScript(generated!, 'bin/kamal destinations --json');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'kamal', tokenLength: 5, complete: true),
          CommandToken(token: '-d', tokenLength: 2, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      return suggestions.map((suggestion) => suggestion.name).toList();
    }

    expect(await runWith(''), isEmpty);
    expect(await runWith('not json'), isEmpty);
    expect(await runWith('{"not":"an array"}'), isEmpty);
  });
}
