import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/make.dart';
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

/// The awk pipeline `make -qp` output is piped through. Kept in one place so
/// the direct and end-to-end tests agree with the handler's command string.
const _awkCommand = r"make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' | sort -u";

void main() {
  test('make JSON binds every generator to the listtargets declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMakeHandlers(handlers);
    final source = await File('assets/specs/m/make.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(makeListTargetsCustomHandler));
    expect(document['name'], 'make');

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
    expect(ids.toSet(), {makeListTargetsCustomHandler});
  });

  test('listtargets parses bash and Makefile targets with descriptions',
      () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final handler = registry.custom(makeListTargetsCustomHandler)!;

    final suggestions = await handler(const [], (input) async {
      if (input.command == 'bash') {
        expect(input.args, hasLength(2));
        expect(input.args.first, '-c');
        expect(input.args.last, _awkCommand);
        return const ExecuteCommandOutput(
          stdout: 'all\nbuild\nclean\ncompile\nMakefile',
          stderr: '',
          status: 0,
        );
      }
      expect(input.command, 'cat');
      expect(input.args, ['Makefile', 'makefile']);
      return const ExecuteCommandOutput(
        stdout: '# Builds everything\n'
            '.PHONY: all\n'
            'all: build test\n'
            '\t@echo all\n'
            '\n'
            'clean: # Remove build artifacts\n'
            '\t@rm -rf build\n'
            '\n'
            '# Compile sources\n'
            'compile: \$(OBJDIR)/foo.o\n'
            '\t@echo compile\n'
            '\n'
            '\$(OBJDIR)/foo.o: bar.o\n'
            '\t@echo obj\n',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(
        suggestions.map((s) => s.nameSingle), ['all', 'build', 'clean', 'compile']);
    expect(
      suggestions.map((s) => s.description),
      [
        'Builds everything',
        'Make target',
        'Remove build artifacts',
        'Compile sources',
      ],
    );
    expect(suggestions.every((s) => s.icon == '🎯'), isTrue);
    expect(suggestions.every((s) => s.priority == 80), isTrue);
  });

  test('listtargets skips special dot targets', () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final handler = registry.custom(makeListTargetsCustomHandler)!;

    final suggestions = await handler(const [], (input) async {
      if (input.command == 'bash') {
        return const ExecuteCommandOutput(
          stdout: 'all\nbuild',
          stderr: '',
          status: 0,
        );
      }
      // The last line has no trailing newline so the dot-target guard cannot
      // consume it as a directive, exposing it to the special-target skip.
      return const ExecuteCommandOutput(
        stdout: 'all: build\n.PHONY: all',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((s) => s.nameSingle), ['all', 'build']);
    expect(suggestions.map((s) => s.nameSingle), isNot(contains('.PHONY')));
  });

  test('listtargets keeps a trailing empty entry from a trailing newline',
      () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final handler = registry.custom(makeListTargetsCustomHandler)!;

    final suggestions = await handler(const [], (input) async {
      return const ExecuteCommandOutput(
        stdout: 'all\nbuild\n',
        stderr: '',
        status: 0,
      );
    }, null);

    // The source splits on '\n' and keeps the trailing empty entry.
    expect(suggestions.map((s) => s.nameSingle), ['all', 'build', '']);
  });

  test('listtargets still suggests bash targets when no Makefile exists',
      () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final handler = registry.custom(makeListTargetsCustomHandler)!;

    final suggestions = await handler(const [], (input) async {
      if (input.command == 'bash') {
        return const ExecuteCommandOutput(
          stdout: 'all\nbuild',
          stderr: '',
          status: 0,
        );
      }
      return const ExecuteCommandOutput(
        stdout: '',
        stderr: 'cat: Makefile: No such file or directory',
        status: 1,
      );
    }, null);

    // A non-zero `cat` status does not abort the handler, matching the source,
    // which reads stdout without checking the exit code.
    expect(suggestions.map((s) => s.nameSingle), ['all', 'build']);
  });

  test('listtargets yields only an empty-name suggestion on empty output',
      () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final handler = registry.custom(makeListTargetsCustomHandler)!;

    final suggestions = await handler(const [], (input) async {
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    }, null);

    // ''.split('\n') is [''] in both JS and Dart, so the empty line becomes an
    // empty-name suggestion exactly as the source does.
    expect(suggestions.map((s) => s.nameSingle), ['']);
  });

  test('listtargets runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMakeHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_awkCommand': const ProcessRunResult(
        stdout: 'clean\nbuild',
        stderr: '',
        exitCode: 0,
      ),
      'cat Makefile makefile': const ProcessRunResult(
        stdout: '# Clean up\nclean: # Remove artifacts',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/make.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'make', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['clean', 'build']);
  });
}
