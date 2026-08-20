import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

void main() {
  const commandNames = [
    'doas',
    'nohup',
    'watch',
  ];

  setUpAll(registerBuiltinSpecs);

  test('indexes and lazily loads the added common command specs', () async {
    for (final command in commandNames) {
      expect(getSpecNamesWithPrefix(command), contains(command));

      await ensureSpecLoadedV2(command);
      expect(getSpec(command)?.name, command);
    }
  });
}
