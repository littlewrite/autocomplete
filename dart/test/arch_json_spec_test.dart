import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/arch.dart';
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

/// The architectures accepted by `-arch`, in declaration order.
const _archNames = <String>[
  'i386',
  'x86_64',
  'x86_64h',
  'arm64',
  'arm64e',
];

const _archDescriptions = <String>[
  '32-bit intel',
  '64-bit intel',
  '64-bit intel (haswell)',
  '64-bit arm',
  '64-bit arm (Apple Silicon)',
];

const _cpuIcon = 'fig://icon?type=cpu';

void main() {
  test('arch JSON references both handler IDs', () async {
    final source = await File('assets/specs/a/arch.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'arch');
    expect(source, contains(archExclusiveOnHandler));
    expect(source, contains(archSuggestionsHandler));
  });

  test('migration-mode parse keeps the static spec and records the refs',
      () async {
    final registry = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerArchHandlers(registry);
    final source = await File('assets/specs/a/arch.json').readAsString();

    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'arch');
    expect(spec.options, hasLength(7));

    // The function-valued exclusiveOn is removed (no list form survives), so
    // the -arch option has no exclusiveOn and its arg keeps the suggestions
    // custom generator.
    final archOption = spec.options!
        .firstWhere((option) => option.nameList.contains('-arch'));
    expect(archOption.exclusiveOn, isNull);
    expect(archOption.args!.first.generatorsList, hasLength(1));

    // Only the unsupported exclusiveOn reference is recorded for migration.
    final unresolvedIds =
        registry.unresolvedHandlers.map((handler) => handler.id).toSet();
    expect(unresolvedIds, {archExclusiveOnHandler});
  });

  test('suggestions handler returns the five architectures with metadata', () async {
    final registry = JsonHandlerRegistry();
    registerArchHandlers(registry);

    final suggestions =
        await registry.custom(archSuggestionsHandler)!([], null, null);
    expect(
        suggestions.map((item) => item.nameSingle ?? '').toList(), _archNames);
    expect(
        suggestions.map((item) => item.description).toList(), _archDescriptions);
    expect(suggestions.map((item) => item.icon).toSet(), {_cpuIcon});
  });

  test('exclusiveOn handler returns every sibling architecture option',
      () async {
    final registry = JsonHandlerRegistry();
    registerArchHandlers(registry);

    final suggestions =
        await registry.custom(archExclusiveOnHandler)!([], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        _archNames.map((name) => '-$name').toList());
    expect(suggestions, hasLength(_archNames.length));
  });

  test('suggestions and exclusiveOn handlers run end to end', () async {
    final registry = JsonHandlerRegistry();
    registerArchHandlers(registry);
    final adapter = _FakeAdapter(const {});
    const tokens = [
      CommandToken(token: 'arch', tokenLength: 4, complete: true),
      CommandToken(token: '-arch', tokenLength: 5, complete: true),
      CommandToken(token: '', tokenLength: 0, complete: false),
    ];

    // -arch argument suggestions through the parsed spec's deferred custom
    // generator.
    final source = await File('assets/specs/a/arch.json').readAsString();
    final registry2 = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerArchHandlers(registry2);
    final spec = figSpecFromJsonString(source, handlers: registry2);
    final archOption = spec.options!
        .firstWhere((option) => option.nameList.contains('-arch'));
    final generator = archOption.args!.first.generatorsList.first;
    final suggestions = await runGeneratorSuggestions(
        generator, tokens, '/work', adapter);
    expect(suggestions.map((item) => item.name).toList(), _archNames);

    // exclusiveOn set through the generic custom-generator runtime path.
    final exclusiveGenerator =
        FigGenerator(custom: registry.custom(archExclusiveOnHandler));
    final exclusive = await runGeneratorSuggestions(
        exclusiveGenerator, tokens, '/work', adapter);
    expect(exclusive.map((item) => item.name).toList(),
        _archNames.map((name) => '-$name').toList());
  });
}
