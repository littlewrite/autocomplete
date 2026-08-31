import 'package:autocomplete/autocomplete.dart';

Future<void> main() async {
  final registry = JsonHandlerRegistry();
  await registerMigratedJsonHandlers(registry);
  final ids = registry.allRegisteredIds().toList()..sort();
  for (final id in ids) {
    print(id);
  }
}
