import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

void main() {
  test('every published JSON command loads with its lazy Dart handlers',
      () async {
    final assetRoot = Directory('assets/specs');
    final index = jsonDecode(
      await File('${assetRoot.path}/index.json').readAsString(),
    ) as Map<String, dynamic>;
    final commands = Map<String, dynamic>.from(index['commands'] as Map)
        .keys
        .toList()
      ..sort();
    final handlers = JsonHandlerRegistry();
    final store = await registerJsonSpecs(
      reader: (relativePath) =>
          File('${assetRoot.path}/$relativePath').readAsString(),
      handlers: handlers,
    );
    final failures = <String>[];

    for (final command in commands) {
      try {
        await store.ensureLoaded(command);
      } catch (error) {
        failures.add('$command: $error');
      }
    }

    expect(failures, isEmpty,
        reason: 'published JSON commands must parse with their lazy handlers');
    expect(handlers.unresolvedHandlers, isEmpty,
        reason: 'strict loading must not leave unresolved handler references');

    // Keep the namespaced dotnet child recoverable through the same logical
    // loadSpec link used during nested command traversal.
    final dotnet = getSpec('dotnet');
    final build = dotnet?.subcommands
        ?.firstWhere((subcommand) => subcommand.nameList.contains('build'));
    expect(build?.loadSpec, 'dotnet/dotnet-build');
    expect(getSpec('dotnet/dotnet-build')?.name, 'build');
  }, timeout: const Timeout(Duration(minutes: 2)));
}
