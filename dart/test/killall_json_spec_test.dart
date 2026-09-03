import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/killall.dart';
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
  test('killall JSON binds every handler to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKillallHandlers(handlers);
    final source = await File('assets/specs/k/killall.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(killallProcessesPostProcessHandler));
    expect(source, contains(killallSignalOptionsHandler));
    expect(source, contains(killallUsersPostProcessHandler));
    expect(document['name'], 'killall');

    final ids = <String>{};
    void collectHandlerIds(dynamic node) {
      if (node is Map) {
        final handler = node['handler'];
        if (handler is String) {
          ids.add(handler);
        }
        for (final value in node.values) {
          collectHandlerIds(value);
        }
      } else if (node is List) {
        for (final item in node) {
          collectHandlerIds(item);
        }
      }
    }

    collectHandlerIds(document);
    expect(ids, {
      killallProcessesPostProcessHandler,
      killallSignalOptionsHandler,
      killallUsersPostProcessHandler,
    });
  });

  test('process post-processor takes the basename with path description', () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final output =
        '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome\n'
        '/usr/bin/ssh-agent\n'
        '/System/Library/CoreServices/WindowServer.app/Contents/MacOS/WindowServer\n';

    final processes =
        registry.postProcess(killallProcessesPostProcessHandler)!(output);
    expect(processes.map((item) => item.nameSingle ?? '').toList(),
        ['Google Chrome', 'ssh-agent', 'WindowServer']);
    expect(processes[0].description,
        '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome');
    // A clean name inside an app bundle ranks above the rest.
    expect(processes[0].priority, 51);
    expect(processes[0].icon, 'fig:///Applications/Google Chrome.app');
    expect(processes[2].icon,
        'fig:///System/Library/CoreServices/WindowServer.app');
    // Non-app processes always use the gear icon at priority 40.
    expect(processes[1].priority, 40);
    expect(processes[1].icon, 'fig://icon?type=gear');
  });

  test('process post-processor downgrades app bundles with bad name chars', () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final output = '/Applications/My_App.app/Contents/MacOS/My_App\n'
        '/usr/bin/foo_bar\n';

    final processes =
        registry.postProcess(killallProcessesPostProcessHandler)!(output);
    expect(processes.map((item) => item.nameSingle ?? '').toList(),
        ['My_App', 'foo_bar']);
    // My_App is a bundle but the name contains `_`, so it drops to 40.
    expect(processes[0].priority, 40);
    expect(processes[1].priority, 40);
  });

  test('process post-processor keeps internal blank lines as empty names', () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final output = '/usr/bin/one\n\n/usr/bin/two';

    final processes =
        registry.postProcess(killallProcessesPostProcessHandler)!(output);
    expect(processes.map((item) => item.nameSingle ?? '').toList(),
        ['one', '', 'two']);
  });

  test('process post-processor maps empty output to a single empty suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final processes =
        registry.postProcess(killallProcessesPostProcessHandler)!('');
    expect(processes.length, 1);
    expect(processes.single.nameSingle ?? '', '');
  });

  test('users post-processor suggests each username with the user badge', () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final output = 'root\nadmin\npaul';

    final users = registry.postProcess(killallUsersPostProcessHandler)!(output);
    expect(users.map((item) => item.nameSingle ?? '').toList(),
        ['root', 'admin', 'paul']);
    expect(users.first.icon, 'fig://template?badge=👤');
  });

  test('users post-processor maps empty output to a single empty suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final users = registry.postProcess(killallUsersPostProcessHandler)!('');
    expect(users.length, 1);
    expect(users.single.nameSingle ?? '', '');
  });

  test('signal options handler exposes every -SIG flag except TERM', () async {
    final registry = JsonHandlerRegistry();
    registerKillallHandlers(registry);
    final options = await registry.options(killallSignalOptionsHandler)!(
        const [], null, null);
    expect(options.length, 30);
    expect(options.map((item) => item.nameList.first).toList(), [
      '-SIGHUP',
      '-SIGINT',
      '-SIGQUIT',
      '-SIGILL',
      '-SIGTRAP',
      '-SIGABRT',
      '-SIGEMT',
      '-SIGFPE',
      '-SIGKILL',
      '-SIGBUS',
      '-SIGSEGV',
      '-SIGSYS',
      '-SIGPIPE',
      '-SIGALRM',
      '-SIGURG',
      '-SIGSTOP',
      '-SIGTSTP',
      '-SIGCONT',
      '-SIGCHLD',
      '-SIGTTIN',
      '-SIGTTOU',
      '-SIGIO',
      '-SIGXCPU',
      '-SIGXFSZ',
      '-SIGVTALRM',
      '-SIGPROF',
      '-SIGWINCH',
      '-SIGINFO',
      '-SIGUSR1',
      '-SIGUSR2',
    ]);
    expect(options.first.description, 'Send HUP instead of TERM');
    expect(
        options.map((item) => item.nameList.first).toSet().contains('-SIGTERM'),
        isFalse);
  });

  test('killall process generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerKillallHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c ps -A -o comm | sort -u': const ProcessRunResult(
        stdout: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome\n'
            '/usr/bin/ssh-agent',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/killall.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator =
        spec.args!.expand((arg) => arg.generatorsList).firstWhere((candidate) {
      final script = candidate.script;
      return script is List &&
          script.join(' ') == 'bash -c ps -A -o comm | sort -u';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'killall', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Google Chrome', 'ssh-agent']);
  });

  test('killall users generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerKillallHandlers(registry);
    final adapter = _FakeAdapter({
      r"bash -c dscl . -list /Users | grep -v '^_'": const ProcessRunResult(
        stdout: 'root\nadmin\npaul',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/killall.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final userOption = spec.options!.firstWhere((option) {
      final names = option.name;
      if (names is List) return names.contains('-u');
      return names == '-u';
    });
    final generator = userOption.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
      final script = candidate.script;
      return script is List &&
          script.join(' ') == "bash -c dscl . -list /Users | grep -v '^_'";
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'killall', tokenLength: 7, complete: true),
        CommandToken(token: '-u', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['root', 'admin', 'paul']);
  });
}
