import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/m.dart';
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

/// Returns the first generator whose `custom` field is a callback (the
/// `m timezone set` suggestion generator).
FigGenerator? customGenerator(FigSpec spec) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          if (generator.custom is Function) return generator;
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
  test('m JSON binds every dynamic value to the seven declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMHandlers(handlers);
    final source = await File('assets/specs/m/m.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mGenerateDisksPostProcessHandler));
    expect(source, contains(mGenerateVolumesPostProcessHandler));
    expect(source, contains(mGenerateUsersPostProcessHandler));
    expect(source, contains(mGenerateGroupsPostProcessHandler));
    expect(source, contains(mGeneratePidsPostProcessHandler));
    expect(source, contains(mGenerateWifiNetworksPostProcessHandler));
    expect(source, contains(mTimezoneSuggestionsHandler));
    expect(document['name'], 'm');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final postProcess = node['postProcess'];
      if (postProcess is Map && postProcess['handler'] is String) {
        ids.add(postProcess['handler'] as String);
      }
      final suggestions = node['suggestions'];
      if (suggestions is Map && suggestions['handler'] is String) {
        ids.add(suggestions['handler'] as String);
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids.toSet(), {
      mGenerateDisksPostProcessHandler,
      mGenerateVolumesPostProcessHandler,
      mGenerateUsersPostProcessHandler,
      mGenerateGroupsPostProcessHandler,
      mGeneratePidsPostProcessHandler,
      mGenerateWifiNetworksPostProcessHandler,
      mTimezoneSuggestionsHandler,
    });
  });

  test('disks post-processor keeps only /dev/disk* lines', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = '/dev/disk0\n'
        '/dev/disk1s2\n'
        'disk0s1\n'
        'some text\n';

    final disks =
        registry.postProcess(mGenerateDisksPostProcessHandler)!(output);
    expect(disks.map((item) => item.nameSingle), ['/dev/disk0', '/dev/disk1s2']);
    expect(disks.map((item) => item.icon), ['💽', '💽']);
    expect(disks.map((item) => item.priority), [100, 100]);
  });

  test('volumes post-processor drops Macintosh HD and prefixes the rest', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = 'Macintosh HD\n'
        'Backup\n'
        'Data\n';

    final volumes =
        registry.postProcess(mGenerateVolumesPostProcessHandler)!(output);
    expect(volumes.map((item) => item.nameSingle),
        ['/Volumes/Backup', '/Volumes/Data']);
    expect(volumes.map((item) => item.type),
        [SuggestionType.file, SuggestionType.file]);
    expect(volumes.map((item) => item.priority), [100, 100]);
  });

  test('users post-processor hides underscore-prefixed accounts', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = 'alice\n'
        '_daemon\n'
        'carol\n';

    final users =
        registry.postProcess(mGenerateUsersPostProcessHandler)!(output);
    expect(users.map((item) => item.nameSingle), ['alice', '_daemon', 'carol']);
    expect(users.map((item) => item.icon), ['👤', '👤', '👤']);
    expect(users.map((item) => item.hidden), [false, true, false]);
  });

  test('groups post-processor hides underscore-prefixed groups', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = 'staff\n'
        '_lpadmin\n'
        'admin\n';

    final groups =
        registry.postProcess(mGenerateGroupsPostProcessHandler)!(output);
    expect(groups.map((item) => item.nameSingle), ['staff', '_lpadmin', 'admin']);
    expect(groups.map((item) => item.icon), ['👥', '👥', '👥']);
    expect(groups.map((item) => item.hidden), [false, true, false]);
  });

  test('pids post-processor maps pid, comm, display name and bundle icon', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = '123 /Applications/GoogleChrome.app/Contents/MacOS/GoogleChrome\n'
        '456 /usr/bin/zsh\n'
        '789 /sbin/launchd';

    final pids = registry.postProcess(mGeneratePidsPostProcessHandler)!(output);
    expect(pids.map((item) => item.nameSingle), ['123', '456', '789']);
    expect(pids.map((item) => item.description), [
      '/Applications/GoogleChrome.app/Contents/MacOS/GoogleChrome',
      '/usr/bin/zsh',
      '/sbin/launchd',
    ]);
    expect(pids.map((item) => item.displayName),
        ['123 (GoogleChrome)', '456 (zsh)', '789 (launchd)']);
    expect(pids.map((item) => item.icon), [
      'fig:///Applications/GoogleChrome.app',
      'fig://icon?type=gear',
      'fig://icon?type=gear',
    ]);
  });

  test('pids post-processor takes only the first two whitespace tokens', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = '555 /Applications/My App.app/Contents/MacOS/App\n';

    final pids = registry.postProcess(mGeneratePidsPostProcessHandler)!(output);
    expect(pids.single.nameSingle, '555');
    expect(pids.single.description, '/Applications/My');
    expect(pids.single.displayName, '555 (My)');
    expect(pids.single.icon, 'fig://icon?type=gear');
  });

  test('pids post-processor skips blank and malformed lines', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = '123 /usr/bin/zsh\n'
        '\n'
        '456 /sbin/launchd\n';

    final pids = registry.postProcess(mGeneratePidsPostProcessHandler)!(output);
    expect(pids.map((item) => item.nameSingle), ['123', '456']);
  });

  test('wifi networks post-processor trims each network name', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final output = '  MyWifi  \n'
        'GuestNet\n';

    final networks =
        registry.postProcess(mGenerateWifiNetworksPostProcessHandler)!(output);
    expect(networks.map((item) => item.nameSingle), ['MyWifi', 'GuestNet']);
    expect(networks.map((item) => item.icon), ['📶', '📶']);
  });

  test('post-processors faithfully mirror empty-output behavior', () {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);

    // Filters / skip malformed lines: nothing survives.
    expect(
        registry.postProcess(mGenerateDisksPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(mGeneratePidsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(mGenerateDisksPostProcessHandler)!('  \n '),
        isEmpty);

    // The TS `.trim().split('\n')` chain yields [''] which is then mapped,
    // producing a single (mostly empty) suggestion for these handlers.
    final volumes = registry.postProcess(mGenerateVolumesPostProcessHandler)!('');
    expect(volumes.single.nameSingle, '/Volumes/');

    final users = registry.postProcess(mGenerateUsersPostProcessHandler)!('');
    expect(users.single.nameSingle, '');
    expect(users.single.hidden, isFalse);

    final groups = registry.postProcess(mGenerateGroupsPostProcessHandler)!('');
    expect(groups.single.nameSingle, '');

    final wifi =
        registry.postProcess(mGenerateWifiNetworksPostProcessHandler)!('');
    expect(wifi.single.nameSingle, '');
  });

  test('timezone custom handler returns every IANA zone with a clock icon',
      () async {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final timezones =
        await registry.custom(mTimezoneSuggestionsHandler)!([], null, null);

    expect(timezones.length, 441);
    expect(timezones.first.nameSingle, 'Africa/Abidjan');
    expect(timezones.last.nameSingle, 'Pacific/Wallis');
    expect(timezones.every((item) => item.icon == '🕑'), isTrue);
    expect(
        timezones.any((item) => item.nameSingle == 'Europe/London'), isTrue);
    expect(timezones.any((item) => item.nameSingle == 'GMT'), isTrue);
  });

  test('each m generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final adapter = _FakeAdapter({
      'ls /dev': const ProcessRunResult(
        stdout: '/dev/disk0\n/dev/disk1s2\ndisk0s1\n',
        stderr: '',
        exitCode: 0,
      ),
      'ls /Volumes': const ProcessRunResult(
        stdout: 'Macintosh HD\nBackup\nData\n',
        stderr: '',
        exitCode: 0,
      ),
      "bash -c m user list | awk '{ print \$1 }'": const ProcessRunResult(
        stdout: 'alice\n_bob\ncarol\n',
        stderr: '',
        exitCode: 0,
      ),
      "bash -c m group list | awk '{ print \$1 }'": const ProcessRunResult(
        stdout: 'staff\n_lpadmin\nadmin\n',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c ps axo pid,comm | sed 1d': const ProcessRunResult(
        stdout: '123 /usr/bin/zsh\n456 /sbin/launchd',
        stderr: '',
        exitCode: 0,
      ),
      "bash -c networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print \$2}' | xargs networksetup -listpreferredwirelessnetworks | tail -n +2":
          const ProcessRunResult(
        stdout: '  MyWifi  \nGuestNet\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/m.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'm', tokenLength: 1, complete: true),
          CommandToken(token: 'disk', tokenLength: 4, complete: true),
          CommandToken(token: 'ls', tokenLength: 2, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('ls /dev', ['/dev/disk0', '/dev/disk1s2']);
    await runGenerator('ls /Volumes', ['/Volumes/Backup', '/Volumes/Data']);
    await runGenerator(
        "bash -c m user list | awk '{ print \$1 }'", ['alice', '_bob', 'carol']);
    await runGenerator(
        "bash -c m group list | awk '{ print \$1 }'", ['staff', '_lpadmin', 'admin']);
    await runGenerator(
        'bash -c ps axo pid,comm | sed 1d', ['123', '456']);
    await runGenerator(
        "bash -c networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print \$2}' | xargs networksetup -listpreferredwirelessnetworks | tail -n +2",
        ['MyWifi', 'GuestNet']);
  });

  test('timezone suggestions generator returns all zones end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMHandlers(registry);
    final adapter = _FakeAdapter(const {});
    final source = await File('assets/specs/m/m.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generator = customGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no custom generator (timezone) in the parsed spec');
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'm', tokenLength: 1, complete: true),
        CommandToken(token: 'timezone', tokenLength: 8, complete: true),
        CommandToken(token: 'set', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.length, 441);
    expect(suggestions.first.name, 'Africa/Abidjan');
    expect(suggestions.last.name, 'Pacific/Wallis');
  });
}
