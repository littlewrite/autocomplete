import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/youtube_dl.dart';
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
  test('youtube-dl JSON binds its generator to the custom handler', () async {
    final handlers = JsonHandlerRegistry();
    registerYoutubeDlHandlers(handlers);
    final source =
        await File('assets/specs/y/youtube-dl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(youtubeDlApMsoCustomHandler));
    expect(document['name'], 'youtube-dl');
  });

  test('--ap-mso custom lists operators after the three header lines', () async {
    final registry = JsonHandlerRegistry();
    registerYoutubeDlHandlers(registry);
    final handler = registry.custom(youtubeDlApMsoCustomHandler)!;

    final suggestions = await handler(
      const ['youtube-dl', '--ap-mso', ''],
      (input) async {
        expect(input.command, 'youtube-dl');
        expect(input.args, ['--simulate', '--ap-list-mso']);
        return const ExecuteCommandOutput(
          stdout: 'header1\n'
              'header2\n'
              'header3\n'
              'Comcast Comcast\n'
              'Cablevision Cablevision\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['Comcast', 'Cablevision']);
    expect(suggestions.map((item) => item.description),
        ['Comcast', 'Cablevision']);
  });

  test('--ap-mso custom forwards youtube tokens to the listing command',
      () async {
    final registry = JsonHandlerRegistry();
    registerYoutubeDlHandlers(registry);
    final handler = registry.custom(youtubeDlApMsoCustomHandler)!;

    final suggestions = await handler(
      const [
        'youtube-dl',
        '--ap-mso',
        'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ],
      (input) async {
        expect(input.args, [
          'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
          '--simulate',
          '--ap-list-mso',
        ]);
        return const ExecuteCommandOutput(
          stdout: 'a\nb\nc\nd\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );

    expect(suggestions.map((item) => item.nameSingle ?? ''), ['d']);
  });

  test('--ap-mso custom returns empty without executeCommand or on failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerYoutubeDlHandlers(registry);
    final handler = registry.custom(youtubeDlApMsoCustomHandler)!;

    expect(await handler(const [], null, null), isEmpty);
    expect(
        await handler(const ['youtube-dl', '--ap-mso', ''], (input) async {
      return const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 1);
    }, null),
        isEmpty);
  });

  test('youtube-dl --ap-mso generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerYoutubeDlHandlers(registry);
    final adapter = _FakeAdapter({
      'youtube-dl --simulate --ap-list-mso': const ProcessRunResult(
        stdout: 'Adobe Pass multiple-system operator authentication:\n'
            '\n'
            '\n'
            'Comcast Comcast\n'
            'Cablevision Cablevision\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/y/youtube-dl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.options!
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) => candidate.custom != null);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'youtube-dl', tokenLength: 10, complete: true),
        CommandToken(token: '--ap-mso', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Comcast', 'Cablevision']);
  });
}
