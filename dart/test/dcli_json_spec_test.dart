import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/dcli.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
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
  test('dcli JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerDcliHandlers(handlers);
    final source = await File('assets/specs/d/dcli.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(dcliDeviceGeneratorPostProcessHandler));
    expect(source, contains(dcliTeamCredentialGeneratorPostProcessHandler));
    expect(document['name'], 'dcli');

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
      dcliDeviceGeneratorPostProcessHandler,
      dcliTeamCredentialGeneratorPostProcessHandler,
    });
  });

  test('devices post-processor sorts by last activity, newest first', () {
    final registry = JsonHandlerRegistry();
    registerDcliHandlers(registry);
    const output = '['
        '{"deviceId":"dev-a","deviceName":"Phone","devicePlatform":"ios",'
        '"creationDateUnix":1,"lastUpdateDateUnix":2,'
        '"lastActivityDateUnix":1000,"temporary":false,'
        '"isBucketOwner":false,"isCurrentDevice":true},'
        '{"deviceId":"dev-b","deviceName":"Work Laptop",'
        '"devicePlatform":"linux","creationDateUnix":1,'
        '"lastUpdateDateUnix":2,"lastActivityDateUnix":5000,'
        '"temporary":false,"isBucketOwner":true,"isCurrentDevice":false}'
        ']';

    final devices = registry
        .postProcess(dcliDeviceGeneratorPostProcessHandler)!(output);
    expect(devices.map((item) => item.nameSingle ?? ''),
        ['Work Laptop', 'Phone']);
    expect(devices.map((item) => item.insertValue), ['dev-b', 'dev-a']);
    expect(devices.first.description, startsWith('Last activity: '));
  });

  test('devices post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDcliHandlers(registry);
    final postProcess =
        registry.postProcess(dcliDeviceGeneratorPostProcessHandler)!;

    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{}'), isEmpty);
    expect(postProcess(''), isEmpty);
  });

  test('team credentials post-processor sorts by creation date, newest first',
      () {
    final registry = JsonHandlerRegistry();
    registerDcliHandlers(registry);
    const output = '['
        '{"accessKey":"ak-old","deviceName":"Laptop","platform":"macos",'
        '"creationDateUnix":1000,"updateDateUnix":1000,'
        '"lastActivityDateUnix":1000},'
        '{"accessKey":"ak-new","deviceName":"CI Runner","platform":"linux",'
        '"creationDateUnix":3000,"updateDateUnix":3000,'
        '"lastActivityDateUnix":3000}'
        ']';

    final credentials = registry
        .postProcess(dcliTeamCredentialGeneratorPostProcessHandler)!(output);
    expect(credentials.map((item) => item.nameSingle ?? ''),
        ['CI Runner (ak-new)}', 'Laptop (ak-old)}']);
    expect(credentials.map((item) => item.insertValue), ['ak-new', 'ak-old']);
    expect(credentials.first.description, startsWith('Created: '));
  });

  test('team credentials post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDcliHandlers(registry);
    final postProcess =
        registry.postProcess(dcliTeamCredentialGeneratorPostProcessHandler)!;

    expect(postProcess('not json'), isEmpty);
    expect(postProcess('[]'), isEmpty);
  });

  test('dcli generators run through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDcliHandlers(registry);
    final adapter = _FakeAdapter({
      'dcli devices list --json': const ProcessRunResult(
        stdout: '['
            '{"deviceId":"dev-a","deviceName":"Phone","devicePlatform":"ios",'
            '"creationDateUnix":1,"lastUpdateDateUnix":2,'
            '"lastActivityDateUnix":1000,"temporary":false,'
            '"isBucketOwner":false,"isCurrentDevice":true},'
            '{"deviceId":"dev-b","deviceName":"Work Laptop",'
            '"devicePlatform":"linux","creationDateUnix":1,'
            '"lastUpdateDateUnix":2,"lastActivityDateUnix":5000,'
            '"temporary":false,"isBucketOwner":true,"isCurrentDevice":false}'
            ']',
        stderr: '',
        exitCode: 0,
      ),
      'dcli team credentials list --json': const ProcessRunResult(
        stdout: '['
            '{"accessKey":"ak-new","deviceName":"CI Runner",'
            '"platform":"linux","creationDateUnix":3000,'
            '"updateDateUnix":3000,"lastActivityDateUnix":3000}'
            ']',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/dcli.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final devices = generatorByScript(spec, 'dcli devices list --json');
    expect(devices, isNotNull);
    final deviceSuggestions = await runGeneratorSuggestions(
      devices,
      const [
        CommandToken(token: 'dcli', tokenLength: 4, complete: true),
        CommandToken(token: 'devices', tokenLength: 7, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(deviceSuggestions.map((suggestion) => suggestion.name).toList(),
        ['Work Laptop', 'Phone']);

    final credentials =
        generatorByScript(spec, 'dcli team credentials list --json');
    expect(credentials, isNotNull);
    final credentialSuggestions = await runGeneratorSuggestions(
      credentials,
      const [
        CommandToken(token: 'dcli', tokenLength: 4, complete: true),
        CommandToken(token: 'team', tokenLength: 4, complete: true),
        CommandToken(token: 'credentials', tokenLength: 11, complete: true),
        CommandToken(token: 'revoke', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(credentialSuggestions.map((suggestion) => suggestion.name).toList(),
        ['CI Runner (ak-new)}']);
  });
}
