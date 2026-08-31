import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ssh_keygen.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter();

  final Map<String, ProcessRunResult> _results = const {};

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

/// Every option name in declaration order (mirrors the exported `allOptions`).
const _allOptions = <String>[
  '-A',
  '-a',
  '-B',
  '-b',
  '-C',
  '-c',
  '-D',
  '-E',
  '-e',
  '-F',
  '-f',
  '-g',
  '-H',
  '-h',
  '-I',
  '-i',
  '-K',
  '-k',
  '-L',
  '-l',
  '-M',
  '-m',
  '-N',
  '-n',
  '-O',
  '-P',
  '-p',
  '-Q',
  '-q',
  '-R',
  '-r',
  '-s',
  '-t',
  '-U',
  '-u',
  '-V',
  '-v',
  '-w',
  '-Y',
  '-y',
  '-Z',
  '-z',
];

/// The exclusion set per handler ID, taken from the TS source callbacks.
const _exclusions = <String, Set<String>>{
  sshKeygenExclusiveOn0: {'-a', '-f'},
  sshKeygenExclusiveOn2: {'-f'},
  sshKeygenExclusiveOn5: {'-a', '-C', '-f', '-P'},
  sshKeygenExclusiveOn8: {'-f', '-m'},
  sshKeygenExclusiveOn9: {'-l', '-v', '-f'},
  sshKeygenExclusiveOn12: {'-f'},
  sshKeygenExclusiveOn14: {'-s', '-h', '-U', '-D'},
  sshKeygenExclusiveOn15: {'-f', '-m'},
  sshKeygenExclusiveOn16: {'-a', '-w'},
  sshKeygenExclusiveOn17: {'-f', '-u', '-s', '-z'},
  sshKeygenExclusiveOn18: {'-f'},
  sshKeygenExclusiveOn19: {'-v', '-E', '-f'},
  sshKeygenExclusiveOn20: {'-f', '-O'},
  sshKeygenExclusiveOn26: {'-a', '-f', '-m', '-N'},
  sshKeygenExclusiveOn27: {'-l', '-f'},
  sshKeygenExclusiveOn29: {'-f'},
  sshKeygenExclusiveOn30: {'-g', '-f'},
  sshKeygenExclusiveOn38: {'-s', '-f', '-n', '-r'},
  sshKeygenExclusiveOn39: {'-f'},
};

void main() {
  test('ssh-keygen JSON references every exclusiveOn handler ID', () async {
    final source = await File('assets/specs/s/ssh-keygen.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'ssh-keygen');
    expect(_allOptions, hasLength(42));
    for (final id in _exclusions.keys) {
      expect(source, contains(id));
    }
  });

  test('migration-mode parse keeps the static spec and records handler refs',
      () async {
    final registry = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerSshKeygenHandlers(registry);
    final source = await File('assets/specs/s/ssh-keygen.json').readAsString();

    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'ssh-keygen');
    expect(spec.options, hasLength(42));

    // Static exclusiveOn arrays are preserved; the -D option excludes every
    // option (the materialized `allOptions`).
    final dOption = spec.options!
        .firstWhere((option) => option.nameList.contains('-D'));
    expect(dOption.exclusiveOn, _allOptions);

    // The function-valued exclusiveOn references are recorded for migration.
    final unresolvedIds =
        registry.unresolvedHandlers.map((handler) => handler.id).toSet();
    expect(unresolvedIds, _exclusions.keys.toSet());
    expect(registry.unresolvedHandlers,
        hasLength(_exclusions.keys.length));
  });

  test('every exclusiveOn handler returns allOptions minus its exclusions',
      () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);
    for (final entry in _exclusions.entries) {
      final id = entry.key;
      final excluded = entry.value;
      final suggestions =
          await registry.custom(id)!([], null, null);
      final names = suggestions.map((item) => item.nameSingle ?? '').toList();
      expect(names, _allOptions.where((o) => !excluded.contains(o)).toList(),
          reason: 'unexpected exclusiveOn set for $id');
      expect(suggestions.length, _allOptions.length - excluded.length,
          reason: 'unexpected count for $id');
    }
  });

  test('exclusiveOn handlers exclude exactly the documented options', () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);

    // -A excludes -a and -f.
    final a = await registry.custom(sshKeygenExclusiveOn0)!([], null, null);
    expect(a.map((item) => item.nameSingle ?? '').toList(), [
      '-A',
      '-B',
      '-b',
      '-C',
      '-c',
      '-D',
      '-E',
      '-e',
      '-F',
      '-g',
      '-H',
      '-h',
      '-I',
      '-i',
      '-K',
      '-k',
      '-L',
      '-l',
      '-M',
      '-m',
      '-N',
      '-n',
      '-O',
      '-P',
      '-p',
      '-Q',
      '-q',
      '-R',
      '-r',
      '-s',
      '-t',
      '-U',
      '-u',
      '-V',
      '-v',
      '-w',
      '-Y',
      '-y',
      '-Z',
      '-z',
    ]);

    // -k excludes -f, -u, -s, -z (keeps order and the other 38).
    final k = await registry.custom(sshKeygenExclusiveOn17)!([], null, null);
    final kNames = k.map((item) => item.nameSingle ?? '').toList();
    expect(kNames, isNot(contains('-f')));
    expect(kNames, isNot(contains('-u')));
    expect(kNames, isNot(contains('-s')));
    expect(kNames, isNot(contains('-z')));
    expect(kNames, contains('-k'));
    expect(k, hasLength(38));

    // -Y excludes -s, -f, -n, -r.
    final y = await registry.custom(sshKeygenExclusiveOn38)!([], null, null);
    final yNames = y.map((item) => item.nameSingle ?? '').toList();
    for (final excluded in ['-s', '-f', '-n', '-r']) {
      expect(yNames, isNot(contains(excluded)));
    }
    expect(y, hasLength(38));

    // -H excludes only -f.
    final h = await registry.custom(sshKeygenExclusiveOn12)!([], null, null);
    final hNames = h.map((item) => item.nameSingle ?? '').toList();
    expect(hNames, isNot(contains('-f')));
    expect(hNames, contains('-a'));
    expect(hNames, contains('-C'));
    expect(h, hasLength(41));
  });

  test('exclusiveOn handlers run end to end through the generator runtime',
      () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);
    final adapter = _FakeAdapter();
    final tokens = const [
      CommandToken(token: 'ssh-keygen', tokenLength: 10, complete: true),
      CommandToken(token: '-A', tokenLength: 2, complete: true),
      CommandToken(token: '', tokenLength: 0, complete: false),
    ];

    // -B (excludes -f).
    final bGenerator = FigGenerator(custom: registry.custom(sshKeygenExclusiveOn2));
    final bSuggestions = await runGeneratorSuggestions(
        bGenerator, tokens, '/work', adapter);
    final bNames = bSuggestions.map((suggestion) => suggestion.name).toList();
    expect(bNames, _allOptions.where((o) => o != '-f').toList());
    expect(bNames, isNot(contains('-f')));
    expect(bNames, contains('-a'));
    expect(bNames, hasLength(41));

    // -r (excludes -g and -f).
    final rGenerator =
        FigGenerator(custom: registry.custom(sshKeygenExclusiveOn30));
    final rSuggestions = await runGeneratorSuggestions(
        rGenerator, tokens, '/work', adapter);
    final rNames = rSuggestions.map((suggestion) => suggestion.name).toList();
    expect(rNames, _allOptions.where((o) => o != '-g' && o != '-f').toList());
    expect(rNames, hasLength(40));
  });
}
