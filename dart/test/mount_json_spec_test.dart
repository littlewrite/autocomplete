import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mount.dart';
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

/// Recursively finds the first generator whose static script matches [script],
/// searching root args, option args, and subcommands.
FigGenerator generatorByScript(FigSpec spec, String script) {
  FigGenerator? found;
  void visitArgs(List<FigArg>? args) {
    if (args == null || found != null) return;
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final rawScript = generator.script;
        if (rawScript is List && rawScript.join(' ') == script) {
          found = generator;
          return;
        }
      }
    }
  }

  void visitOptions(List<FigOption>? options) {
    if (options == null || found != null) return;
    for (final option in options) {
      visitArgs(option.args);
      if (found != null) return;
    }
  }

  void visitSubcommands(List<FigSubcommand>? subcommands) {
    if (subcommands == null || found != null) return;
    for (final subcommand in subcommands) {
      visitArgs(subcommand.args);
      if (found != null) return;
      visitOptions(subcommand.options);
      if (found != null) return;
      visitSubcommands(subcommand.subcommands);
    }
  }

  visitArgs(spec.args);
  visitOptions(spec.options);
  visitSubcommands(spec.subcommands);
  return found!;
}

void main() {
  test('mount JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMountHandlers(handlers);
    final source = await File('assets/specs/m/mount.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mountPartitionsPostProcessHandler));
    expect(source, contains(mountMapperDevicesPostProcessHandler));
    expect(document['name'], 'mount');

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
      mountPartitionsPostProcessHandler,
      mountMapperDevicesPostProcessHandler,
    });
  });

  test('partitions post-processor skips the header and maps /dev names', () {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);
    const output = 'major minor  #blocks  name\n'
        '\n'
        '   8        0  500107608 sda\n'
        '   8        1     524288 sda1\n'
        ' 253        0  10485760 nvme0n1\n';

    final partitions =
        registry.postProcess(mountPartitionsPostProcessHandler)!(output);
    expect(partitions.map((item) => item.nameSingle ?? ''),
        ['/dev/sda', '/dev/sda1', '/dev/nvme0n1']);
    expect(partitions.map((item) => item.description),
        ['Block device', 'Block device', 'Block device']);
  });

  test('partitions post-processor returns empty on short or empty output', () {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);

    final empty = registry.postProcess(mountPartitionsPostProcessHandler)!('');
    expect(empty, isEmpty);

    final headerOnly =
        registry.postProcess(mountPartitionsPostProcessHandler)!('header\n');
    expect(headerOnly, isEmpty);
  });

  test('partitions post-processor drops lines whose last token is empty', () {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);
    // A middle line with trailing whitespace maps its last token to "" and
    // therefore to "/dev/", which is filtered out.
    const output = 'major minor  #blocks  name\n'
        '\n'
        '   8        0  500107608 sda\n'
        '   8        1     524288 sda1  \n'
        '   8        2     524288 sdb\n';

    final partitions =
        registry.postProcess(mountPartitionsPostProcessHandler)!(output);
    expect(partitions.map((item) => item.nameSingle ?? ''),
        ['/dev/sda', '/dev/sdb']);
  });

  test('mapper post-processor prefixes /dev/mapper and filters empty lines', () {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);
    const output = '\ncryptroot\n\nvm-swap\n';

    final devices =
        registry.postProcess(mountMapperDevicesPostProcessHandler)!(output);
    expect(devices.map((item) => item.nameSingle ?? ''),
        ['/dev/mapper/cryptroot', '/dev/mapper/vm-swap']);
    expect(devices.map((item) => item.description),
        ['Mapped block device', 'Mapped block device']);
  });

  test('mapper post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);

    final empty =
        registry.postProcess(mountMapperDevicesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final whitespace =
        registry.postProcess(mountMapperDevicesPostProcessHandler)!('  \n\n ');
    expect(whitespace, isEmpty);
  });

  test('each mount generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMountHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /proc/partitions': const ProcessRunResult(
        stdout: 'major minor  #blocks  name\n'
            '\n'
            '   8        0  500107608 sda\n'
            '   8        1     524288 sda1\n',
        stderr: '',
        exitCode: 0,
      ),
      'ls -1 /dev/mapper': const ProcessRunResult(
        stdout: 'cryptroot\nvm-swap\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mount.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'mount', tokenLength: 5, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('cat /proc/partitions', ['/dev/sda', '/dev/sda1']);
    await runGenerator('ls -1 /dev/mapper',
        ['/dev/mapper/cryptroot', '/dev/mapper/vm-swap']);
  });
}
