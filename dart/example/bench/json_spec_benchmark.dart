import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';

Future<void> main() async {
  final document = jsonEncode({
    'schemaVersion': 1,
    'name': 'benchmark',
    'options': List.generate(
      40,
      (index) => {'name': '--option-$index', 'description': 'Option $index'},
    ),
    'subcommands': List.generate(
      20,
      (index) => {
        'name': 'command-$index',
        'args': {'name': 'value', 'isOptional': true}
      },
    ),
  });

  const iterations = 1000;
  final parseWatch = Stopwatch()..start();
  for (var i = 0; i < iterations; i++) {
    figSpecFromJsonString(document);
  }
  parseWatch.stop();

  var reads = 0;
  final store = JsonSpecStore(reader: (path) async {
    reads++;
    if (path == 'index.json') {
      return jsonEncode({
        'schemaVersion': 1,
        'commands': {
          'benchmark': {'file': 'b/benchmark.json'}
        }
      });
    }
    return document;
  });
  final loadWatch = Stopwatch()..start();
  await store.register();
  for (var i = 0; i < iterations; i++) {
    await store.ensureLoaded('benchmark');
  }
  loadWatch.stop();

  print('parse: ${parseWatch.elapsedMicroseconds / iterations} us/spec');
  print('ensureLoaded: ${loadWatch.elapsedMicroseconds / iterations} us/call');
  print('asset reads: $reads (expected 2)');
}
