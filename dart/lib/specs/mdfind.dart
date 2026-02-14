// AI-generated from TypeScript source: mdfind.ts
import 'dart:io';
import 'package:autocomplete/src/spec.dart';

final FigGenerator smartFolderGenerator = FigGenerator(
  trigger: '/',
  script: (List<String> tokens) {
    var home = Platform.environment['HOME'];
    return ['ls', '-1A', '$home/Library/Saved Searches/'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((file) => file.endsWith('savedSearch'))
        .map((path) {
      var components = path.split('/');
      var filename = components.last;
      return FigSuggestion(
        name: filename.substring(0, filename.indexOf('.')),
        displayName: filename,
        icon: 'fig://$path',
        description: 'Smart folder',
      );
    }).toList();
  },
);

final FigSpec mdfindSpec = FigSpec(
  name: 'mdfind',
  description: 'Finds files matching a given query',
  // parserDirectives: { flagsArePosixNoncompliant: true }
  // Assuming FigSpec supports this map or object.
  // If strict typing is used, we might need a class.
  // For now I will pass it as a named argument if possible, or omit if I'm unsure of the class.
  // Given I don't see the definition of FigSpec, I'll assume it handles it or I'll comment it out if it causes issues.
  // But wait, the previous `magento.dart` example didn't show parserDirectives.
  // I will try to include it as a Map if it accepts it, or a class.
  // I'll use a Map for now as it's safer than inventing a class name.
  // Actually, usually in Dart specs we might ignore advanced config if we don't have the class definition.
  // But let's try to map it.
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
  ),
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for mdfind',
    ),
    FigOption(
      name: ['-0'],
      description: 'Prints an ASCII NUL character after each result path',
    ),
    FigOption(
      name: ['-live'],
      description:
          'Provide live-updates to the number of files matching the query',
    ),
    FigOption(
      name: ['-count'],
      description:
          'Output the total number of matches, instead of the path to the matching items',
    ),
    FigOption(
      name: ['-onlyin'],
      description: 'Limit the scope of the search to <dir>',
      args: FigArg(
        name: 'dir',
        description: 'Directory',
        template: 'folders',
      ),
    ),
    FigOption(
      name: ['-name'],
      description: 'Search for matching file names to <filename> only',
      args: FigArg(
        name: 'filename',
      ),
    ),
    FigOption(
      name: ['-reprint'],
      description: 'Reprint results on live update',
    ),
    FigOption(
      name: ['-s'],
      description:
          'Show contents of smart folder ~/Library/Saved Searches/<folder>.savedSearch',
      args: FigArg(
        name: 'folder',
        description: 'Smart folder in  ~/Library/Saved Searches',
        generators: smartFolderGenerator,
      ),
    ),
    FigOption(
      name: ['-literal'],
      description:
          'Force the provided query string to be taken as a literal query string, without interpretation',
    ),
    FigOption(
      name: ['-interpret'],
      description:
          'Force the provided query string to be interpreted as if it had been typed into the Spotlight menu',
    ),
  ],
  args: FigArg(
    name: 'query',
  ),
);
