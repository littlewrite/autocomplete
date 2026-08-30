// JSON-first v3 example. Run from dart/:
//
//   dart run example/example.dart --trace 'astro d'
//   dart run example/example.dart 'git b'
//   dart run example/example.dart --strict 'chown '

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

import 'local_adapter.dart';

Shell _parseShell(String name) {
  switch (name.toLowerCase()) {
    case 'bash':
      return Shell.bash;
    case 'zsh':
      return Shell.zsh;
    case 'fish':
      return Shell.fish;
    case 'pwsh':
      return Shell.pwsh;
    case 'powershell':
      return Shell.powershell;
    case 'cmd':
      return Shell.cmd;
    case 'xonsh':
      return Shell.xonsh;
    case 'nushell':
      return Shell.nushell;
    default:
      return Shell.bash;
  }
}

void _usage() {
  print('Usage: dart run example/example.dart [--trace] [--strict] '
      '[--shell <shell>] <command>');
  print("Examples: 'cut -', 'cd ', 'astro d', 'chown '");
}

Future<void> main(List<String> args) async {
  String? commandLine;
  var shell = Shell.bash;
  var trace = false;
  var strict = false;

  for (var i = 0; i < args.length; i++) {
    final argument = args[i];
    if (argument == '--shell' || argument == '-s') {
      if (i + 1 >= args.length) {
        _usage();
        exitCode = 64;
        return;
      }
      shell = _parseShell(args[++i]);
    } else if (argument == '--trace') {
      trace = true;
    } else if (argument == '--strict') {
      strict = true;
    } else if (argument == '-h' || argument == '--help') {
      _usage();
      return;
    } else if (commandLine == null) {
      commandLine = argument;
    } else {
      _usage();
      exitCode = 64;
      return;
    }
  }

  if (commandLine == null || commandLine.isEmpty) {
    _usage();
    exitCode = 64;
    return;
  }

  final assetRoot =
      File.fromUri(Platform.script).parent.parent.uri.resolve('assets/specs/');
  final reads = <String>[];
  final handlers = JsonHandlerRegistry(
    missingHandlerPolicy: strict
        ? MissingJsonHandlerPolicy.reject
        : MissingJsonHandlerPolicy.returnEmpty,
  );
  registerMigratedJsonHandlers(handlers);
  await registerJsonSpecs(
    reader: (relativePath) {
      reads.add(relativePath);
      return File.fromUri(assetRoot.resolve(relativePath)).readAsString();
    },
    handlers: handlers,
  );

  final engine = AutocompleteEngine(adapter: LocalCompleteAdapter());
  try {
    final result = await engine.getSuggestions(
      commandLine,
      Directory.current.path,
      shell,
    );
    if (result == null) {
      print('(no spec or no suggestions)');
    } else {
      if (result.argumentDescription != null) {
        print('Argument: ${result.argumentDescription}');
      }
      for (final suggestion in result.suggestions) {
        print('${suggestion.name}\t${suggestion.description ?? ''}');
      }
      print('(${result.suggestions.length} suggestions, '
          'charactersToDrop: ${result.charactersToDrop})');
    }
  } on JsonSpecFormatException catch (error) {
    stderr.writeln('JSON spec cannot be activated: ${error.message}');
    stderr.writeln('Use the default mode while the referenced handler is '
        'unported, or implement the handler before using --strict.');
    exitCode = 1;
  }

  if (trace) {
    print('JSON reads: ${reads.join(', ')}');
    for (final unresolved in handlers.unresolvedHandlers) {
      print('Unresolved handler: ${unresolved.id} at ${unresolved.path}');
    }
  }
}
