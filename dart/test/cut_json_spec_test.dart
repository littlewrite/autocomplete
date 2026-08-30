import 'dart:convert';

import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

import '../example/local_adapter.dart';

void main() {
  test('cut is loaded only when requested and returns its static options',
      () async {
    final files = <String, String>{
      'index.json': jsonEncode({
        'schemaVersion': 1,
        'commands': {
          'cut': {'file': 'c/cut.json'}
        }
      }),
      'c/cut.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'cut',
        'options': [
          {'name': '-b', 'description': 'Byte positions'},
          {'name': '-c', 'description': 'Column positions'},
        ]
      }),
    };
    final reads = <String>[];
    await registerJsonSpecs(
      reader: (path) async {
        reads.add(path);
        return files[path]!;
      },
    );

    expect(reads, ['index.json']);
    final engine = AutocompleteEngine(adapter: LocalCompleteAdapter());
    final result = await engine.getSuggestions('cut -', '', Shell.bash);
    expect(result!.suggestions.map((item) => item.name),
        containsAll(['-b', '-c']));
    expect(reads, ['index.json', 'c/cut.json']);
  });
}
