import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    registerBuiltinSpecs();
  });

  tearDown(() {
    unregisterSpec('@capgo/cli');
    unregisterSpec('cli');
  });

  test('scoped command names include @capgo/cli and not bare cli', () {
    final scopedNames = getSpecNamesWithPrefix('@cap');
    final bareNames = getSpecNamesWithPrefix('cli');

    expect(scopedNames, contains('@capgo/cli'));
    expect(bareNames, isNot(contains('cli')));
  });

  test('deferred loading registers @capgo/cli under its scoped name', () async {
    expect(hasSpec('@capgo/cli'), isFalse);

    await ensureSpecLoadedV2('@capgo/cli');

    expect(hasSpec('@capgo/cli'), isTrue);
    expect(getSpec('@capgo/cli')?.name, '@capgo/cli');
    expect(hasSpec('cli'), isFalse);
  });
}
