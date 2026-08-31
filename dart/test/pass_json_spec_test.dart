import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pass.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;

  @override
  Map<String, String> getEnvs() => const {'HOME': '/home/test'};

  @override
  String? getEnv(String envKey) => envKey == 'HOME' ? '/home/test' : null;

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

final _testContext = FigGeneratorContext(
  currentWorkingDirectory: '/work',
  adapter: _FakeAdapter(const {}),
);

void main() {
  test('pass JSON binds every generator path to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPassHandlers(handlers);
    final source = await File('assets/specs/p/pass.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(passListPasswordsCustomHandler));
    expect(source, contains(passListDirectoriesCustomHandler));
    expect(document['name'], 'pass');

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
    expect(ids.toSet(), {
      passListPasswordsCustomHandler,
      passListDirectoriesCustomHandler,
    });
  });

  test('listPasswords greps the store and strips path prefix and .gpg suffix',
      () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final handler = registry.custom(passListPasswordsCustomHandler)!;

    final passwords = await handler(
      const ['pass', ''],
      (input) async {
        expect(input.command, 'grep');
        expect(input.args, [
          '-r',
          '-l',
          '',
          '/home/test/.password-store',
          '--exclude-dir=.git',
        ]);
        return const ExecuteCommandOutput(
          stdout: '/home/u/.password-store/email/gmail.gpg\n'
              '/home/u/.password-store/work/pass.gpg\n'
              '/home/u/.password-store/notes.txt.gpg',
          stderr: '',
          status: 0,
        );
      },
      _testContext,
    );
    expect(passwords.map((item) => item.nameSingle),
        ['email/gmail', 'work/pass', 'notes.txt']);
    expect(passwords.first.icon, '🔐');
  });

  test('listPasswords trailing newline yields a trailing empty suggestion', () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final handler = registry.custom(passListPasswordsCustomHandler)!;

    final passwords = await handler(
      const ['pass', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '/home/u/.password-store/a.gpg\n',
        stderr: '',
        status: 0,
      ),
      _testContext,
    );
    // Faithful to the TS `stdout.split("\n")`: the trailing newline leaves one
    // empty trailing element which maps to an empty-named suggestion.
    expect(passwords.map((item) => item.nameSingle), ['a', '']);
  });

  test('listPasswords returns empty on non-zero status or null executeCommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final handler = registry.custom(passListPasswordsCustomHandler)!;

    final failed = await handler(
      const ['pass', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '/home/u/.password-store/a.gpg',
        stderr: 'grep: permission denied',
        status: 2,
      ),
      _testContext,
    );
    expect(failed, isEmpty);

    final noExecutor = await handler(const ['pass', ''], null, null);
    expect(noExecutor, isEmpty);
  });

  test('listDirectories lists the store and strips the prefix', () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final handler = registry.custom(passListDirectoriesCustomHandler)!;

    final directories = await handler(
      const ['pass', 'ls', ''],
      (input) async {
        expect(input.command, 'ls');
        expect(input.args, ['-dR1a', '/home/test/.password-store']);
        return const ExecuteCommandOutput(
          stdout: '/home/u/.password-store\n'
              '/home/u/.password-store/work\n'
              '/home/u/.password-store/email',
          stderr: '',
          status: 0,
        );
      },
      _testContext,
    );
    // The store root has no suffix after ".password-store", so its name is the
    // whole path; subfolders keep their relative path.
    expect(directories.map((item) => item.nameSingle),
        ['/home/u/.password-store', 'work', 'email']);
    expect(directories.first.icon, '📁');
  });

  test('listDirectories returns empty on non-zero status or null executeCommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final handler = registry.custom(passListDirectoriesCustomHandler)!;

    final failed = await handler(
      const ['pass', 'ls', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '/home/u/.password-store',
        stderr: 'ls: cannot open directory',
        status: 2,
      ),
      _testContext,
    );
    expect(failed, isEmpty);

    final noExecutor = await handler(const ['pass', 'ls', ''], null, null);
    expect(noExecutor, isEmpty);
  });

  test('pass root generator runs grep through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    // The fake adapter reports HOME=/home/test, so the store path resolves to
    // "/home/test/.password-store".
    final adapter = _FakeAdapter({
      'grep -r -l  /home/test/.password-store --exclude-dir=.git':
          const ProcessRunResult(
        stdout: '/home/u/.password-store/email/gmail.gpg\n'
            '/home/u/.password-store/work/pass.gpg',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pass.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pass', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['email/gmail', 'work/pass']);
  });

  test('ls subcommand generator runs ls through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPassHandlers(registry);
    final adapter = _FakeAdapter({
      'ls -dR1a /home/test/.password-store': const ProcessRunResult(
        stdout: '/home/u/.password-store\n'
            '/home/u/.password-store/work',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pass.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final ls =
        spec.subcommands!.firstWhere((subcommand) => subcommand.nameList.contains('ls'));
    final generator = ls.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pass', tokenLength: 4, complete: true),
        CommandToken(token: 'ls', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['/home/u/.password-store', 'work']);
  });
}
