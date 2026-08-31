import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rails.dart';
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

/// Collects every `handler` string referenced under a dynamic field
/// (`generators`, `postProcess`, `custom`, or `generateSpec`) anywhere in the
/// JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

/// The exact `bash -c` probe from src/rails.ts that walks up looking for a
/// Gemfile declaring the rails gem.
const _gemfileProbeScript =
    'until [[ -f Gemfile ]] || [[ \$PWD = \'/\' ]]; do cd ..; done; '
    'if [ -f Gemfile ]; then cat Gemfile | grep "gem [\'"]rails[\'"]"; fi';

/// The full rails command tree returned when a Rails app is detected.
const _railsCommandNames = [
  'c',
  'server',
  'db:create',
  'db:migrate',
  'dbconsole',
  'notes',
  'generate',
  'routes',
  'test',
  'new',
];

void main() {
  test('rails JSON binds the root generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRailsHandlers(handlers);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'rails');
    expect(source, contains(railsGenerateSpecHandler));
    expect(_referencedHandlers(document), {railsGenerateSpecHandler});
  });

  test('generateSpec runs the Gemfile probe command', () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    List<String>? seenArgs;
    final generated = await generateSpec(
      const ['rails', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args;
        return const ExecuteCommandOutput(
            stdout: 'gem "rails", "~> 7.0"\n', stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'bash');
    expect(seenArgs, ['-c', _gemfileProbeScript]);
    expect(generated, isNotNull);
    expect(generated!.name, 'rails');
  });

  test('generateSpec outside a Rails app returns just the new command',
      () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 1),
    );

    expect(generated, isNotNull);
    expect(generated!.subcommands!.map((s) => s.nameList.first).toList(),
        ['new']);
  });

  test('generateSpec inside a Rails app returns the full command tree',
      () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'gem "rails", "~> 7.0"\n', stderr: '', status: 0),
    );

    expect(generated!.subcommands!.map((s) => s.nameList.first).toList(),
        _railsCommandNames);

    // The root carries the optional args generator.
    final rootArg = generated.args!.single;
    expect(rootArg.isOptional, isTrue);
    expect(rootArg.generatorsList.single.custom, isNotNull);
  });

  test('new command carries its options', () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 1),
    );

    final newCommand = generated!.subcommands!.single;
    expect(newCommand.nameList.first, 'new');
    expect(newCommand.description, 'Create a new rails application');
    expect(newCommand.options!.first.nameList.first, '-skip-namespace');
    final database = newCommand.options!
        .firstWhere((option) => option.nameList.first == '-d');
    expect(database.args!.first.suggestions!.first, 'mysql');
  });

  test('test subcommand generateSpec parses rails test --help', () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'gem "rails", "~> 7.0"\n', stderr: '', status: 0),
    );

    final testCommand = generated!.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'test');
    final testSpec = await testCommand.generateSpec!(
      const ['rails', 'test', ''],
      (input) async {
        expect(input.command, 'rails');
        expect(input.args, ['test', '--help']);
        return const ExecuteCommandOutput(
          stdout: 'Usage: rails test [options]\n'
              '    -b, --backtrace                Show the full backtrace\n'
              '    -e, --environment ENV          Run tests in the ENV environment\n',
          stderr: '',
          status: 0,
        );
      },
    );

    expect(testSpec, isNotNull);
    expect(testSpec!.nameList.first, 'test');
    expect(testSpec.options!.map((o) => o.nameList.first).toList(),
        ['--backtrace', '--environment']);
    // --backtrace has no `[ARG]` slot, so its arg name stays null.
    expect(testSpec.options!.first.args!.first.name, isNull);
    expect(testSpec.options!.last.args!.first.name, 'ENV');
  });

  test('generate generator post-process groups rails g output by plugin',
      () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'gem "rails", "~> 7.0"\n', stderr: '', status: 0),
    );

    final generate = generated!.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'generate');
    final generator = generate.args!.first.generatorsList.first;
    expect(generator.script, ['rails', 'g', '--help']);

    final suggestions = generator.postProcess!(
        'Rails:\nGenerators:\n  about\n  active_record:migration\n');
    expect(suggestions.map((s) => s.name).toList(), [
      'about (Generators)',
      'active_record:migration (Generators)',
    ]);
    expect(suggestions.first.insertValue, 'about');
  });

  test('rails commands generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRailsHandlers(registry);
    final adapter = _FakeAdapter({
      'rails --tasks': const ProcessRunResult(
        stdout: 'rails db:seed        # Seed the database\n'
            'rails about          # List versions of Rails\n'
            'rails console        # Start the console\n'
            'rails server         # Start the server\n'
            'rails custom:task    # Run a custom task\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rails.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['rails', ''],
      (input) async {
        // The probe only ever runs inside the bash -c wrapper.
        expect(input.command, 'bash');
        final result = await adapter.runProcess('rails', const ['--tasks']);
        return ExecuteCommandOutput(
          stdout: result.stdout,
          stderr: result.stderr,
          status: result.exitCode,
        );
      },
    );

    final generator = generated!.args!.single.generatorsList.single;
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rails', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    // db:seed/about/custom:task are not built-in. server is filtered; console
    // is not, because its source name is the array ["c", "console"] which never
    // strictly equals the string "console" in the source's includes() check.
    expect(suggestions.map((s) => s.name).toList(),
        ['db:seed', 'about', 'console', 'custom:task']);
  });
}
