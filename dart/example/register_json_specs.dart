// VM/CLI example: register generated JSON specs from a directory.
// Flutter and web callers should provide their own asset reader instead.

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    stderr.writeln(
        'usage: dart run example/register_json_specs.dart <json/specs>');
    exitCode = 64;
    return;
  }

  final root = Directory(args.single).absolute.path;
  final handlers = JsonHandlerRegistry();
  final store = await registerJsonSpecs(
    reader: (relativePath) => File(
            '$root${Platform.pathSeparator}${relativePath.replaceAll('/', Platform.pathSeparator)}')
        .readAsString(),
    handlers: handlers,
  );
  print(
      'registered ${store.namesForFirstChar('a').length} commands starting with a');
}
