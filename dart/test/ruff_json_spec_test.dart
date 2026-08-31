import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ruff.dart';
import 'package:test/test.dart';

void main() {
  test('ruff JSON resolves the root options handler with persistent flags',
      () async {
    final registry = JsonHandlerRegistry();
    registerRuffHandlers(registry);
    final source = await File('assets/specs/r/ruff.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    // Root `options` is the whole-`options` handler reference resolved to the
    // `GlobalOptions` list, each entry spread with `isPersistent: true`.
    expect(spec.options, isNotNull);
    final names = <String>{};
    for (final option in spec.options!) {
      names.addAll(option.nameList);
    }
    expect(names, containsAll([
      '-v',
      '--verbose',
      '-q',
      '--quiet',
      '-s',
      '--silent',
      '--config',
      '--isolated',
      '--help',
    ]));
    expect(names.length, 9);

    for (final option in spec.options!) {
      expect(option.isPersistent, isTrue,
          reason: '${option.name} should be persistent');
    }
  });

  test('ruff JSON rejects an unregistered options handler', () async {
    final registry = JsonHandlerRegistry();
    final source = await File('assets/specs/r/ruff.json').readAsString();
    expect(() => figSpecFromJsonString(source, handlers: registry),
        throwsA(isA<JsonSpecFormatException>()));
  });
}
