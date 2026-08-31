import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ssh.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.envs = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> envs;

  @override
  Map<String, String> getEnvs() => envs;

  @override
  String? getEnv(String envKey) => envs[envKey];

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

FigGeneratorContext _context({Map<String, String> envs = const {}}) {
  return FigGeneratorContext(
    currentWorkingDirectory: '/work',
    adapter: _FakeAdapter(const {}, envs: envs),
  );
}

void main() {
  test('ssh JSON binds both custom generators to the src_ssh declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSshHandlers(handlers);
    final source = await File('assets/specs/s/ssh/ssh.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(sshKnownHostsCustomHandler));
    expect(source, contains(sshConfigHostsCustomHandler));
    expect(document['name'], 'ssh');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) ids.add(custom['handler'] as String);
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
    expect(ids.toSet(),
        {sshKnownHostsCustomHandler, sshConfigHostsCustomHandler});

    // The first generator keeps the declarative `@` trigger.
    final args = document['args'] as Map;
    final generators = args['generators'] as List;
    expect(generators, hasLength(3));
    expect((generators[0] as Map)['trigger'], '@');
  });

  test('knownHosts custom handler reads known_hosts and prefixes user@',
      () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshKnownHostsCustomHandler)!;

    final suggestions = await handler(
      ['ssh', 'user@'],
      (input) async {
        expect(input.command, 'cat');
        expect(input.args, ['/Users/test/.ssh/known_hosts']);
        return const ExecuteCommandOutput(
          stdout: 'github.com ssh-rsa AAA\n'
              '192.168.1.5 ecdsa-sha2-nistp256 ...\n'
              'github.com ssh-rsa BBB\n'
              '[10.0.0.1]:22 ssh-ed25519 ...',
          stderr: '',
          status: 0,
        );
      },
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.map((item) => item.nameSingle),
        ['user@github.com', 'user@192.168.1.5', 'user@10.0.0.1']);
    expect(suggestions.first.description, 'SSH host');
    expect(suggestions.first.priority, 50);
  });

  test('knownHosts dedupes hosts and drops user@ when not typed', () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshKnownHostsCustomHandler)!;

    final suggestions = await handler(
      ['ssh', 'gitlab'],
      (input) async => const ExecuteCommandOutput(
        stdout: 'github.com ssh-rsa AAA\n'
            'gitlab.com ecdsa-sha2-nistp256 ...\n'
            'github.com ssh-rsa BBB\n',
        stderr: '',
        status: 0,
      ),
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.map((item) => item.nameSingle),
        ['github.com', 'gitlab.com']);
  });

  test('knownHosts returns empty without a command or context', () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshKnownHostsCustomHandler)!;

    final withoutCommand = await handler(['ssh', 'user@'], null, null);
    expect(withoutCommand, isEmpty);
  });

  test('configHosts custom handler reads the ssh config and lists hosts',
      () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshConfigHostsCustomHandler)!;

    final suggestions = await handler(
      ['ssh', ''],
      (input) async {
        expect(input.command, 'cat');
        expect(input.args, ['/Users/test/.ssh/config']);
        return const ExecuteCommandOutput(
          stdout: 'Host github.com\n'
              '  HostName github.com\n'
              'Host internal 10.0.0.1\n'
              'Host *\n'
              '  User root',
          stderr: '',
          status: 0,
        );
      },
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.map((item) => item.nameSingle),
        ['github.com', 'internal']);
    expect(suggestions.first.description, 'SSH host');
    expect(suggestions.first.priority, 90);
  });

  test('configHosts follows Include lines', () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshConfigHostsCustomHandler)!;

    String? firstArgs;
    final suggestions = await handler(
      ['ssh', ''],
      (input) async {
        if (firstArgs == null) {
          firstArgs = input.args.join(' ');
          return const ExecuteCommandOutput(
            stdout: 'Host github.com\nInclude extra.conf\n',
            stderr: '',
            status: 0,
          );
        }
        expect(input.args.join(' '), '/Users/test/.ssh/extra.conf');
        return const ExecuteCommandOutput(
          stdout: 'Host gitlab.com\n',
          stderr: '',
          status: 0,
        );
      },
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(firstArgs, '/Users/test/.ssh/config');
    expect(suggestions.map((item) => item.nameSingle),
        ['github.com', 'gitlab.com']);
  });

  test('configHosts returns empty without a command or context', () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final handler = registry.custom(sshConfigHostsCustomHandler)!;

    final withoutCommand = await handler(['ssh', ''], null, null);
    expect(withoutCommand, isEmpty);
  });

  test('ssh generators run through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSshHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /Users/test/.ssh/known_hosts': const ProcessRunResult(
        stdout: 'github.com ssh-rsa AAA\n'
            '192.168.1.5 ecdsa-sha2-nistp256 ...\n'
            'github.com ssh-rsa BBB',
        stderr: '',
        exitCode: 0,
      ),
      'cat /Users/test/.ssh/config': const ProcessRunResult(
        stdout: 'Host github.com\n'
            '  HostName github.com\n'
            'Host internal 10.0.0.1\n'
            'Host *\n'
            '  User root',
        stderr: '',
        exitCode: 0,
      ),
    }, envs: const {'HOME': '/Users/test'});

    final source = await File('assets/specs/s/ssh/ssh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = spec.args!.single.generators!;
    expect(generators, hasLength(3));

    final known = await runGeneratorSuggestions(
      generators[0],
      const [
        CommandToken(token: 'ssh', tokenLength: 3, complete: true),
        CommandToken(token: 'user@', tokenLength: 5, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(known.map((suggestion) => suggestion.name).toList(),
        ['user@github.com', 'user@192.168.1.5']);

    final config = await runGeneratorSuggestions(
      generators[1],
      const [
        CommandToken(token: 'ssh', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(config.map((suggestion) => suggestion.name).toList(),
        ['github.com', 'internal']);
    expect(config.first.priority, 90);
  });
}
