import 'dart:io';
import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bun.dart';
import 'package:autocomplete/src/spec_handlers/kitty.dart';

Future<void> main() async {
  final entries = <List<dynamic>>[
    ['b', 'bun', registerBunHandlers],
    ['k', 'kitty', registerKittyHandlers],
  ];
  for (final entry in entries) {
    final registry = JsonHandlerRegistry();
    (entry[2] as void Function(JsonHandlerRegistry))(registry);
    final source =
        await File('assets/specs/${entry[0]}/${entry[1]}.json').readAsString();
    try {
      final spec = figSpecFromJsonString(source, handlers: registry);
      print('${entry[1]}: OK name=${spec.name}');
    } catch (e) {
      final msg = e.toString();
      print('${entry[1]}: THREW ${e.runtimeType}: '
          '${msg.length > 140 ? msg.substring(0, 140) : msg}');
    }
  }
}
