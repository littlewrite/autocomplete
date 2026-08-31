import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mix.dart';
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

/// Adapter whose directory listing is a fixed set of entries, mirroring the
/// `listDirectory` contract (folders always kept, files filtered by extension).
class _FileListAdapter implements CompleteAdapter {
  _FileListAdapter(this._entries);

  final List<FileSystemEntry> _entries;

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
  }) async {
    return _entries.where((entry) {
      if (entry.isDirectory) return !foldersOnly;
      if (extensions == null || extensions.isEmpty) return true;
      return extensions.any((ext) => entry.name.endsWith('.$ext'));
    }).toList();
  }

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async =>
      const ProcessRunResult(stdout: '');
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

/// Collects every generator handler id referenced anywhere in the document
/// (a whole-generator `handler` reference, or `custom`/`postProcess`/etc. maps).
Set<String> collectGeneratorHandlerIds(Map<String, dynamic> document) {
  final ids = <String>{};
  void visit(dynamic node) {
    if (node is! Map) return;
    final generators = node['generators'];
    if (generators != null) {
      for (final generator in generators is List ? generators : [generators]) {
        if (generator is! Map) continue;
        final self = generator['handler'];
        if (self is String) ids.add(self);
        for (final field in const [
          'custom',
          'postProcess',
          'trigger',
          'script',
          'filterTemplateSuggestions',
          'suggestions',
        ]) {
          final value = generator[field];
          if (value is Map) {
            final handler = value['handler'];
            if (handler is String) ids.add(handler);
          }
        }
      }
    }
    for (final value in node.values) {
      if (value is List) {
        for (final item in value) {
          visit(item);
        }
      } else if (value is Map) {
        visit(value);
      }
    }
  }

  visit(document);
  return ids;
}

void main() {
  test('mix JSON binds every generator to the three declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerMixHandlers(handlers);
    final source = await File('assets/specs/m/mix.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mixPreferredScriptFilepathsHandler));
    expect(source, contains(mixHelpSubcommandPostProcessHandler));
    expect(source, contains(mixRootArgsPostProcessHandler));
    expect(document['name'], 'mix');

    expect(collectGeneratorHandlerIds(document), {
      mixPreferredScriptFilepathsHandler,
      mixHelpSubcommandPostProcessHandler,
      mixRootArgsPostProcessHandler,
    });
  });

  test('task post-processor parses names, descriptions and filters tasks',
      () {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    const output = 'mix app.start # Starts all registered apps\n'
        'mix app.tree # Prints the application tree\n'
        'mix help # Prints documentation for a given task\n'
        'mix new # Creates a new Elixir project at the given path\n'
        'mix run # Starts the current application and runs code\n'
        'mix xref # Performs cross-reference checks\n'
        'iex -S mix # Starts IEx and runs the default task\n'
        'mix # Runs the default task\n';

    final suggestions =
        registry.postProcess(mixRootArgsPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['app.start', 'app.tree', 'xref']);
    expect(suggestions.map((item) => item.description), [
      'Starts all registered apps',
      'Prints the application tree',
      'Performs cross-reference checks',
    ]);
  });

  test('help subcommand post-processor shares the task parser', () {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    const output = 'mix format # Automatically formats code\n'
        'mix deps.get # Gets all out of date dependencies\n';

    final subcommandSuggestions =
        registry.postProcess(mixHelpSubcommandPostProcessHandler)!(output);
    expect(subcommandSuggestions.map((item) => item.nameSingle ?? ''),
        ['format', 'deps.get']);
    expect(subcommandSuggestions.map((item) => item.description),
        ['Automatically formats code', 'Gets all out of date dependencies']);

    final rootSuggestions =
        registry.postProcess(mixRootArgsPostProcessHandler)!(output);
    expect(rootSuggestions.map((item) => item.nameSingle ?? ''),
        ['format', 'deps.get']);
  });

  test('task post-processor handles lines without a description', () {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);

    final suggestions = registry
        .postProcess(mixHelpSubcommandPostProcessHandler)!('mix compile');
    expect(suggestions.single.nameSingle, 'compile');
    expect(suggestions.single.description, isNull);
  });

  test('task post-processor returns empty for empty or blank output', () {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);

    expect(
        registry.postProcess(mixRootArgsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(mixRootArgsPostProcessHandler)!('\n\n'),
        isEmpty);
  });

  test('preferred script filepaths handler lists .exs files and folders', () async {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    final handler = registry.custom(mixPreferredScriptFilepathsHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FileListAdapter(const [
        FileSystemEntry(name: 'lib', isDirectory: true),
        FileSystemEntry(name: 'app.exs', isDirectory: false),
        FileSystemEntry(name: 'README.md', isDirectory: false),
      ]),
    );

    final suggestions = await handler(const ['mix', 'run', ''], null, context);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['lib/', 'app.exs']);
    expect(suggestions.map((item) => item.type),
        [SuggestionType.folder, SuggestionType.file]);
    expect(suggestions.map((item) => item.priority), [50, 76]);
  });

  test('preferred script filepaths handler returns empty without a context',
      () async {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    final handler = registry.custom(mixPreferredScriptFilepathsHandler)!;

    final suggestions = await handler(const ['mix', 'run', ''], null, null);
    expect(suggestions, isEmpty);
  });

  test('mix help generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    final adapter = _FakeAdapter({
      'mix help': const ProcessRunResult(
        stdout: 'mix app.config # Loads and persists the runtime configuration\n'
            'mix app.start # Starts all registered apps\n'
            'mix help # Prints documentation for a given task\n'
            'mix new # Creates a new Elixir project at the given path\n'
            'mix run # Starts the current application and runs code\n'
            'mix xref # Performs cross-reference checks\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mix.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'mix help');
    expect(generator, isNotNull,
        reason: 'no generator for `mix help` in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mix', tokenLength: 3, complete: true),
        CommandToken(token: 'help', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['app.config', 'app.start', 'xref']);
  });

  test('mix run file generator lists script files end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMixHandlers(registry);
    final adapter = _FileListAdapter(const [
      FileSystemEntry(name: 'lib', isDirectory: true),
      FileSystemEntry(name: 'app.exs', isDirectory: false),
      FileSystemEntry(name: 'README.md', isDirectory: false),
    ]);

    final source = await File('assets/specs/m/mix.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final run =
        spec.subcommands!.firstWhere((item) => item.nameList.contains('run'));
    final generator = run.args!.single.generators!.single;
    expect(generator.custom, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mix', tokenLength: 3, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['lib/', 'app.exs']);
    expect(suggestions.map((suggestion) => suggestion.priority).toList(),
        [50, 76]);
    expect(suggestions.map((suggestion) => suggestion.type).toList(),
        [SuggestionType.folder, SuggestionType.file]);
  });
}
