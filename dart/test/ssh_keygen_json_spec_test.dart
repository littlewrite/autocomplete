import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ssh_keygen.dart';
import 'package:test/test.dart';

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

  test('migration-mode parse resolves all exclusiveOn handler refs', () async {
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
    final dOption =
        spec.options!.firstWhere((option) => option.nameList.contains('-D'));
    expect(dOption.exclusiveOn, _allOptions);

    expect(registry.unresolvedHandlers, isEmpty);
  });

  test('every exclusiveOn handler returns allOptions minus its exclusions',
      () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);
    for (final entry in _exclusions.entries) {
      final id = entry.key;
      final excluded = entry.value;
      final names = registry.exclusiveOn(id)!();
      expect(names, _allOptions.where((o) => !excluded.contains(o)).toList(),
          reason: 'unexpected exclusiveOn set for $id');
      expect(names.length, _allOptions.length - excluded.length,
          reason: 'unexpected count for $id');
    }
  });

  test('exclusiveOn handlers exclude exactly the documented options', () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);

    // -A excludes -a and -f.
    final a = registry.exclusiveOn(sshKeygenExclusiveOn0)!();
    expect(a, [
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
    final kNames = registry.exclusiveOn(sshKeygenExclusiveOn17)!();
    expect(kNames, isNot(contains('-f')));
    expect(kNames, isNot(contains('-u')));
    expect(kNames, isNot(contains('-s')));
    expect(kNames, isNot(contains('-z')));
    expect(kNames, contains('-k'));
    expect(kNames, hasLength(38));

    // -Y excludes -s, -f, -n, -r.
    final yNames = registry.exclusiveOn(sshKeygenExclusiveOn38)!();
    for (final excluded in ['-s', '-f', '-n', '-r']) {
      expect(yNames, isNot(contains(excluded)));
    }
    expect(yNames, hasLength(38));

    // -H excludes only -f.
    final hNames = registry.exclusiveOn(sshKeygenExclusiveOn12)!();
    expect(hNames, isNot(contains('-f')));
    expect(hNames, contains('-a'));
    expect(hNames, contains('-C'));
    expect(hNames, hasLength(41));
  });

  test('exclusiveOn handlers materialize on the parsed options', () async {
    final registry = JsonHandlerRegistry();
    registerSshKeygenHandlers(registry);
    final source = await File('assets/specs/s/ssh-keygen.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final bNames = spec.options!
        .firstWhere((option) => option.nameList.contains('-B'))
        .exclusiveOn!;
    expect(bNames, _allOptions.where((o) => o != '-f').toList());
    expect(bNames, isNot(contains('-f')));
    expect(bNames, contains('-a'));
    expect(bNames, hasLength(41));

    final rNames = spec.options!
        .firstWhere((option) => option.nameList.contains('-r'))
        .exclusiveOn!;
    expect(rNames, _allOptions.where((o) => o != '-g' && o != '-f').toList());
    expect(rNames, hasLength(40));
  });
}
