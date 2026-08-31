import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/meteor.dart';
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
/// [scriptCommand], searching args, option args, and the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? fromArgs(List<FigArg>? args) {
    for (final arg in args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  FigGenerator? fromOptions(List<FigOption>? options) {
    for (final option in options ?? const <FigOption>[]) {
      final found = fromArgs(option.args);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? fromSubcommands(List<FigSubcommand>? subcommands) {
    for (final subcommand in subcommands ?? const <FigSubcommand>[]) {
      final fromArg = fromArgs(subcommand.args);
      if (fromArg != null) return fromArg;
      final fromOption = fromOptions(subcommand.options);
      if (fromOption != null) return fromOption;
      final nested = fromSubcommands(subcommand.subcommands);
      if (nested != null) return nested;
    }
    return null;
  }

  final topArg = fromArgs(spec.args);
  if (topArg != null) return topArg;
  final topOption = fromOptions(spec.options);
  if (topOption != null) return topOption;
  return fromSubcommands(spec.subcommands);
}

void main() {
  test('meteor JSON binds every generator to the three post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMeteorHandlers(handlers);
    final source = await File('assets/specs/m/meteor.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(meteorExamplesPostProcessHandler));
    expect(source, contains(meteorPackagesPostProcessHandler));
    expect(source, contains(meteorPlatformsPostProcessHandler));
    expect(document['name'], 'meteor');

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
      meteorExamplesPostProcessHandler,
      meteorPackagesPostProcessHandler,
      meteorPlatformsPostProcessHandler,
    });
  });

  test('examples post-processor keeps github.com lines and trims the name', () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);
    const output = 'simple-todos\n'
        '  react-tutorial:https://github.com/meteor/react-tutorial\n'
        'leaderboard:https://github.com/meteor/leaderboard\n'
        'notes:https://github.com/meteor/notes  ';

    final examples =
        registry.postProcess(meteorExamplesPostProcessHandler)!(output);
    expect(examples.map((item) => item.nameSingle ?? ''), [
      'react-tutorial',
      'leaderboard',
      'notes',
    ]);
  });

  test('examples post-processor returns empty when nothing references github',
      () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);

    final noMatches =
        registry.postProcess(meteorExamplesPostProcessHandler)!(
            'simple-todos\nleaderboard');
    expect(noMatches, isEmpty);

    final empty =
        registry.postProcess(meteorExamplesPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('packages post-processor strips comments, whitespace, and versions', () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);
    const output = '# Meteor packages used by this project\n'
        'meteor-base@1.4.0             # packages every app needs\n'
        '  autopublish\n'
        'insecure:blaze-html-templates@1.1.2\n'
        'standard-minifier-css';
    // The comment-only line is emptied by the #-strip and kept as an empty
    // name, exactly as the TS source maps every line.
    final packages =
        registry.postProcess(meteorPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''), [
      '',
      'meteor-base',
      'autopublish',
      'insecure:blaze-html-templates',
      'standard-minifier-css',
    ]);
  });

  test('packages post-processor returns empty on a missing packages file', () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);

    final missing = registry.postProcess(meteorPackagesPostProcessHandler)!(
        'cat: ./.meteor/packages: No such file or directory');
    expect(missing, isEmpty);
  });

  test('platforms post-processor maps every output line to a suggestion', () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);

    final platforms =
        registry.postProcess(meteorPlatformsPostProcessHandler)!(
            'server\nbrowser\nandroid\nios');
    expect(platforms.map((item) => item.nameSingle ?? ''),
        ['server', 'browser', 'android', 'ios']);
  });

  test('platforms post-processor keeps the trailing empty entry for a trailing '
      'newline', () {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);

    final platforms = registry.postProcess(meteorPlatformsPostProcessHandler)!(
        'server\nbrowser\n');
    expect(platforms.map((item) => item.nameSingle ?? ''),
        ['server', 'browser', '']);
  });

  test('each meteor generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMeteorHandlers(registry);
    final adapter = _FakeAdapter({
      'meteor create --list': const ProcessRunResult(
        stdout: 'react-tutorial:https://github.com/meteor/react-tutorial\n'
            'leaderboard:https://github.com/meteor/leaderboard',
        stderr: '',
        exitCode: 0,
      ),
      'cat ./.meteor/packages': const ProcessRunResult(
        stdout: 'meteor-base@1.4.0\n'
            'autopublish\n'
            'insecure:blaze-html-templates@1.1.2',
        stderr: '',
        exitCode: 0,
      ),
      'meteor list-platforms': const ProcessRunResult(
        stdout: 'server\nbrowser\nandroid\nios',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/meteor.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<CommandToken> tokens,
        List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        tokens,
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('meteor create --list', const [
      CommandToken(token: 'meteor', tokenLength: 6, complete: true),
      CommandToken(token: 'create', tokenLength: 6, complete: true),
      CommandToken(token: '--example', tokenLength: 9, complete: true),
      CommandToken(token: '', tokenLength: 0, complete: false),
    ], ['react-tutorial', 'leaderboard']);

    await runGenerator('cat ./.meteor/packages', const [
      CommandToken(token: 'meteor', tokenLength: 6, complete: true),
      CommandToken(token: 'update', tokenLength: 6, complete: true),
      CommandToken(token: '', tokenLength: 0, complete: false),
    ], ['meteor-base', 'autopublish', 'insecure:blaze-html-templates']);

    await runGenerator('meteor list-platforms', const [
      CommandToken(token: 'meteor', tokenLength: 6, complete: true),
      CommandToken(token: 'remove-platform', tokenLength: 15, complete: true),
      CommandToken(token: '', tokenLength: 0, complete: false),
    ], ['server', 'browser', 'android', 'ios']);
  });
}
