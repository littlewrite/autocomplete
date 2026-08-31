import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/tldr.dart';
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
    adapter: _FakeAdapter(const <String, ProcessRunResult>{}, envs: envs),
  );
}

const _home = '/home/dev';

const _pageDirectories = <String>[
  '~/.tldrc/tldr/pages/android/',
  '~/.tldrc/tldr/pages/common/',
  '~/.tldrc/tldr/pages/linux/',
  '~/.tldrc/tldr/pages/osx/',
  '~/.tldrc/tldr/pages/sunos/',
  '~/.tldrc/tldr/pages/windows/',
];

/// The exact `ls -Al` invocation the whole-pages custom handler makes with
/// `$HOME` expanded.
String _wholePagesLsKey() =>
    'ls -Al ${_pageDirectories.map((d) => '$_home${d.substring(1)}').join(' ')}';

const _lsOutput = 'total 8\n'
    '-rw-r--r--  1 user  staff  1234 Aug 30 10:00 aws.md\n'
    '-rw-r--r--  1 user  staff   567 Aug 30 10:01 cd.md';

void main() {
  test('tldr JSON binds every generator to the four declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerTldrHandlers(handlers);
    final source = await File('assets/specs/t/tldr.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(tldrWholePagesCustomHandler));
    expect(source, contains(tldrLinuxPagesPostProcessHandler));
    expect(source, contains(tldrOsxPagesPostProcessHandler));
    expect(source, contains(tldrSunosPagesPostProcessHandler));
    expect(document['name'], 'tldr');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'postProcess']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      tldrWholePagesCustomHandler,
      tldrLinuxPagesPostProcessHandler,
      tldrOsxPagesPostProcessHandler,
      tldrSunosPagesPostProcessHandler,
    });
  });

  test('post-processors extract .md page names and strip the extension', () {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    const output = 'total 24\n'
        '-rw-r--r--  1 user  staff  1234 Aug 30 10:00 git.md\n'
        '-rw-r--r--  1 user  staff   567 Aug 30 10:01 grep.md\n'
        '-rw-r--r--  1 user  staff   890 Aug 30 10:02 ls.md\n'
        'drwxr-xr-x  3 user  staff    96 Aug 30 10:03 subdir\n';

    for (final id in [
      tldrLinuxPagesPostProcessHandler,
      tldrOsxPagesPostProcessHandler,
      tldrSunosPagesPostProcessHandler,
    ]) {
      final pages = registry.postProcess(id)!(output);
      expect(pages.map((item) => item.nameSingle), ['git', 'grep', 'ls']);
      expect(pages.first.description, 'Tldr page');
      expect(pages.first.icon, 'fig://icon?type=string');
    }
  });

  test('post-processors drop empty and non-markdown output lines', () {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);

    final empty =
        registry.postProcess(tldrLinuxPagesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final noPages = registry.postProcess(tldrLinuxPagesPostProcessHandler)!(
        'total 0\n-rw-r--r--  1 user  staff  0 Aug 30 10:00 readme.txt\n');
    expect(noPages, isEmpty);

    // A trailing newline yields a trailing empty line that the .md filter drops.
    final trailingNewline = registry.postProcess(tldrLinuxPagesPostProcessHandler)!(
        '-rw-r--r--  1 user  staff  1234 Aug 30 10:00 git.md\n');
    expect(trailingNewline.map((item) => item.nameSingle), ['git']);
  });

  test('whole-pages custom handler expands HOME into every page directory',
      () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final handler = registry.custom(tldrWholePagesCustomHandler)!;

    final pages = await handler(['tldr', 'git'], (input) async {
      expect(input.command, 'ls');
      expect(input.args, [
        '-Al',
        '$_home/.tldrc/tldr/pages/android/',
        '$_home/.tldrc/tldr/pages/common/',
        '$_home/.tldrc/tldr/pages/linux/',
        '$_home/.tldrc/tldr/pages/osx/',
        '$_home/.tldrc/tldr/pages/sunos/',
        '$_home/.tldrc/tldr/pages/windows/',
      ]);
      return const ExecuteCommandOutput(
        stdout: _lsOutput,
        stderr: '',
        status: 0,
      );
    }, _context(envs: {'HOME': _home}));
    expect(pages.map((item) => item.nameSingle), ['aws', 'cd']);
  });

  test('whole-pages custom handler falls back to undefined when HOME is unset',
      () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final handler = registry.custom(tldrWholePagesCustomHandler)!;

    final pages = await handler(['tldr'], (input) async {
      expect(input.command, 'ls');
      expect(input.args, [
        '-Al',
        'undefined/.tldrc/tldr/pages/android/',
        'undefined/.tldrc/tldr/pages/common/',
        'undefined/.tldrc/tldr/pages/linux/',
        'undefined/.tldrc/tldr/pages/osx/',
        'undefined/.tldrc/tldr/pages/sunos/',
        'undefined/.tldrc/tldr/pages/windows/',
      ]);
      return const ExecuteCommandOutput(
        stdout: _lsOutput,
        stderr: '',
        status: 0,
      );
    }, _context());
    expect(pages.map((item) => item.nameSingle), ['aws', 'cd']);
  });

  test('whole-pages custom handler returns empty on non-zero exit', () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final handler = registry.custom(tldrWholePagesCustomHandler)!;

    final pages = await handler(['tldr'], (input) async {
      return const ExecuteCommandOutput(
        stdout: 'ls: cannot access directory',
        stderr: '',
        status: 1,
      );
    }, _context(envs: {'HOME': _home}));
    expect(pages, isEmpty);
  });

  test('whole-pages custom handler returns empty without executeCommand', () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final handler = registry.custom(tldrWholePagesCustomHandler)!;
    expect(await handler(['tldr'], null, null), isEmpty);
  });

  test('whole-pages generator runs ls through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final adapter = _FakeAdapter({
      _wholePagesLsKey(): const ProcessRunResult(
        stdout: _lsOutput,
        stderr: '',
        exitCode: 0,
      ),
    }, envs: {'HOME': _home});

    final source = await File('assets/specs/t/tldr.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tldr', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['aws', 'cd']);
  });

  test('linux post-processor generator runs its script end to end', () async {
    final registry = JsonHandlerRegistry();
    registerTldrHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c': const ProcessRunResult(
        stdout: 'total 4\n'
            '-rw-r--r--  1 user  staff  1234 Aug 30 10:00 apt.md\n'
            '-rw-r--r--  1 user  staff   567 Aug 30 10:01 chmod.md',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tldr.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final linux = spec.options!
        .firstWhere((option) => option.nameList.contains('--linux'));
    final generator = linux.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tldr', tokenLength: 4, complete: true),
        CommandToken(token: '--linux', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['apt', 'chmod']);
  });
}
