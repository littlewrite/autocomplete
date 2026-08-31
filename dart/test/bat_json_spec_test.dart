import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bat.dart';
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
/// [scriptCommand], searching the top-level option args.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final option in spec.options ?? const <FigOption>[]) {
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

void main() {
  test('bat JSON binds every generator to the seven post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerBatHandlers(handlers);
    final source = await File('assets/specs/b/bat.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(batLanguagesPostProcessHandler));
    expect(source, contains(batWrapPostProcessHandler));
    expect(source, contains(batColorPostProcessHandler));
    expect(source, contains(batItalicTextPostProcessHandler));
    expect(source, contains(batDecorationsPostProcessHandler));
    expect(source, contains(batPagingPostProcessHandler));
    expect(source, contains(batThemesPostProcessHandler));
    expect(document['name'], 'bat');

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
      batLanguagesPostProcessHandler,
      batWrapPostProcessHandler,
      batColorPostProcessHandler,
      batItalicTextPostProcessHandler,
      batDecorationsPostProcessHandler,
      batPagingPostProcessHandler,
      batThemesPostProcessHandler,
    });
  });

  test('languages post-processor unpacks the two-dimensional alias list', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = 'Bourne Again Shell (bash):sh:bash\n'
        'C\n'
        'C++:cpp';

    final languages =
        registry.postProcess(batLanguagesPostProcessHandler)!(output);
    expect(languages.map((item) => item.nameSingle ?? ''), [
      'Bourne Again Shell (bash)',
      'sh',
      'bash',
      'C',
      'C++',
      'cpp',
    ]);
    expect(languages.map((item) => item.description), [
      'Bourne Again Shell (bash) language',
      'Bourne Again Shell (bash) language',
      'Bourne Again Shell (bash) language',
      'C language',
      'C++ language',
      'C++ language',
    ]);
  });

  test('languages post-processor keeps a trailing empty entry after a newline',
      () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);

    final languages =
        registry.postProcess(batLanguagesPostProcessHandler)!('C\n');
    expect(languages.map((item) => item.nameSingle ?? ''), ['C', '']);
    expect(
        languages.map((item) => item.description), ['C language', ' language']);
  });

  test('languages post-processor keeps an empty entry for empty output', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);

    final languages =
        registry.postProcess(batLanguagesPostProcessHandler)!('');
    expect(languages, hasLength(1));
    expect(languages.single.nameSingle ?? '', '');
    expect(languages.single.description, ' language');
  });

  test('wrap post-processor parses the possible-values bracket line', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = '[possible values: auto, never, no]';

    final suggestions =
        registry.postProcess(batWrapPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['auto', 'never', 'no']);
    expect(suggestions.map((item) => item.description), [
      'Specify when to use colored output',
      'Specify when to use colored output',
      'Specify when to use colored output',
    ]);
  });

  test('color post-processor parses the possible-values bracket line', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = '[possible values: always, auto, never]';

    final suggestions =
        registry.postProcess(batColorPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['always', 'auto', 'never']);
    expect(suggestions.map((item) => item.description), [
      'Specify when to use colored output',
      'Specify when to use colored output',
      'Specify when to use colored output',
    ]);
  });

  test('italic-text post-processor parses the possible-values bracket line', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = '[possible values: always, auto, never]';

    final suggestions =
        registry.postProcess(batItalicTextPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['always', 'auto', 'never']);
    expect(suggestions.map((item) => item.description), [
      'Specify when to use ANSI sequences for italic text in the output',
      'Specify when to use ANSI sequences for italic text in the output',
      'Specify when to use ANSI sequences for italic text in the output',
    ]);
  });

  test('decorations post-processor parses the possible-values bracket line', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = '[possible values: always, auto, never]';

    final suggestions =
        registry.postProcess(batDecorationsPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['always', 'auto', 'never']);
    expect(suggestions.map((item) => item.description), [
      'Specify when to use the decorations that have been specified via '
          '\'--style\'',
      'Specify when to use the decorations that have been specified via '
          '\'--style\'',
      'Specify when to use the decorations that have been specified via '
          '\'--style\'',
    ]);
  });

  test('paging post-processor parses the possible-values bracket line', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = '[possible values: always, auto, never]';

    final suggestions =
        registry.postProcess(batPagingPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['always', 'auto', 'never']);
    expect(suggestions.map((item) => item.description), [
      'Specify when to use the pager',
      'Specify when to use the pager',
      'Specify when to use the pager',
    ]);
  });

  test('mode post-processors return empty for empty or malformed output', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);

    for (final id in [
      batWrapPostProcessHandler,
      batColorPostProcessHandler,
      batItalicTextPostProcessHandler,
      batDecorationsPostProcessHandler,
      batPagingPostProcessHandler,
    ]) {
      expect(registry.postProcess(id)!(''), isEmpty, reason: id);
      expect(registry.postProcess(id)!('no brackets here'), isEmpty,
          reason: id);
      // A bracket section with no colon inside cannot be parsed.
      expect(registry.postProcess(id)!('[auto, never]'), isEmpty, reason: id);
    }
  });

  test('themes post-processor maps each line to a theme suggestion', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    const output = 'ansi\nbase16\nGitHub';

    final themes = registry.postProcess(batThemesPostProcessHandler)!(output);
    expect(themes.map((item) => item.nameSingle ?? ''),
        ['ansi', 'base16', 'GitHub']);
    expect(themes.map((item) => item.description),
        ['theme: ansi', 'theme: base16', 'theme: GitHub']);
  });

  test('themes post-processor keeps a trailing empty entry after a newline', () {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);

    final themes =
        registry.postProcess(batThemesPostProcessHandler)!('ansi\n');
    expect(themes.map((item) => item.nameSingle ?? ''), ['ansi', '']);
    expect(themes.map((item) => item.description), ['theme: ansi', 'theme: ']);
  });

  test('each bat generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerBatHandlers(registry);
    final adapter = _FakeAdapter({
      'bat --list-languages': const ProcessRunResult(
        stdout: 'Bourne Again Shell (bash):sh:bash\nC\nC++:cpp',
        stderr: '',
        exitCode: 0,
      ),
      'bat --list-themes': const ProcessRunResult(
        stdout: 'ansi\nbase16\nGitHub',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c bat --wrap unknow 2>&1 >/dev/null | grep possible':
          const ProcessRunResult(
        stdout: '[possible values: auto, never, no]',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c bat --color unknow  2>&1 >/dev/null | grep possible':
          const ProcessRunResult(
        stdout: '[possible values: always, auto, never]',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c bat --italic-text unknow 2>&1 >/dev/null | grep possible':
          const ProcessRunResult(
        stdout: '[possible values: always, auto, never]',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c bat --decorations unknow 2>&1 >/dev/null | grep possible':
          const ProcessRunResult(
        stdout: '[possible values: always, auto, never]',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c bat --paging unknow  2>&1 >/dev/null | grep possible':
          const ProcessRunResult(
        stdout: '[possible values: always, auto, never]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bat.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String scriptCommand, String optionToken, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        [
          CommandToken(token: 'bat', tokenLength: 3, complete: true),
          CommandToken(
              token: optionToken,
              tokenLength: optionToken.length,
              complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('bat --list-languages', '--language',
        ['Bourne Again Shell (bash)', 'sh', 'bash', 'C', 'C++', 'cpp']);
    await runGenerator(
        'bat --list-themes', '--theme', ['ansi', 'base16', 'GitHub']);
    await runGenerator(
        'bash -c bat --wrap unknow 2>&1 >/dev/null | grep possible',
        '--wrap',
        ['auto', 'never', 'no']);
    await runGenerator(
        'bash -c bat --color unknow  2>&1 >/dev/null | grep possible',
        '--color',
        ['always', 'auto', 'never']);
    await runGenerator(
        'bash -c bat --italic-text unknow 2>&1 >/dev/null | grep possible',
        '--italic-text',
        ['always', 'auto', 'never']);
    await runGenerator(
        'bash -c bat --decorations unknow 2>&1 >/dev/null | grep possible',
        '--decorations',
        ['always', 'auto', 'never']);
    await runGenerator(
        'bash -c bat --paging unknow  2>&1 >/dev/null | grep possible',
        '--paging',
        ['always', 'auto', 'never']);
  });
}
