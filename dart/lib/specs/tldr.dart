// AI-generated from TypeScript source: tldr.ts
import 'package:autocomplete/src/spec.dart';

const String tldrRc = '~/.tldrc/tldr';
const String android = '$tldrRc/pages/android/';
const String common = '$tldrRc/pages/common/';
const String linux = '$tldrRc/pages/linux/';
const String osx = '$tldrRc/pages/osx/';
const String sunos = '$tldrRc/pages/sunos/';
const String windows = '$tldrRc/pages/windows/';

final RegExp isMarkDownRegex = RegExp(r'^.*\.md$');

final FigGenerator wholeTldrPages = FigGenerator(
  script: [
    'bash',
    '-c',
    'ls -Al $android $common $linux $osx $sunos $windows 2>/dev/null'
  ],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => isMarkDownRegex.hasMatch(line))
        .map((line) {
      final parts = line.split(' ');
      final name = parts.last.substring(0, parts.last.length - 3);
      return FigSuggestion(
        name: name,
        description: 'Tldr page',
        icon: 'fig://icon?type=string',
      );
    }).toList();
  },
);

final FigGenerator linuxTldrPages = FigGenerator(
  script: ['bash', '-c', 'ls -Al $linux 2>/dev/null'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => isMarkDownRegex.hasMatch(line))
        .map((line) {
      final parts = line.split(' ');
      final name = parts.last.substring(0, parts.last.length - 3);
      return FigSuggestion(
        name: name,
        description: 'Tldr page',
        icon: 'fig://icon?type=string',
      );
    }).toList();
  },
);

final FigGenerator osxTldrPages = FigGenerator(
  script: ['bash', '-c', 'ls -l $osx 2>/dev/null'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => isMarkDownRegex.hasMatch(line))
        .map((line) {
      final parts = line.split(' ');
      final name = parts.last.substring(0, parts.last.length - 3);
      return FigSuggestion(
        name: name,
        description: 'Tldr page',
        icon: 'fig://icon?type=string',
      );
    }).toList();
  },
);

final FigGenerator sunosTldrPages = FigGenerator(
  script: ['bash', '-c', 'ls -l $sunos 2>/dev/null'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => isMarkDownRegex.hasMatch(line))
        .map((line) {
      final parts = line.split(' ');
      final name = parts.last.substring(0, parts.last.length - 3);
      return FigSuggestion(
        name: name,
        description: 'Tldr page',
        icon: 'fig://icon?type=string',
      );
    }).toList();
  },
);

const List<String> platformSuggestions = [
  'linux',
  'osx',
  'sunos',
  'windows',
  'common'
];

final FigSpec tldrSpec = FigSpec(
  name: 'tldr',
  description: 'A simpler man page than the existing man page',
  args: [FigArg(generators: [wholeTldrPages])],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Display help for command',
    ),
    FigOption(
      name: ['-s', '--search'],
      description: 'Search all pages for the query',
      args: [FigArg(name: 'query')],
    ),
    FigOption(
      name: ['--linux'],
      description: 'Show command page for Linux',
      args: [FigArg(generators: [linuxTldrPages])],
    ),
    FigOption(
      name: ['--osx'],
      description: 'Show command page for OSX',
      args: [FigArg(generators: [osxTldrPages])],
    ),
    FigOption(
      name: ['--sunos'],
      description: 'Show command page for SunOS',
      args: [FigArg(generators: [sunosTldrPages])],
    ),
    FigOption(
      name: ['-l', '--list'],
      description: 'Show all pages for current platform',
    ),
    FigOption(
      name: ['-u', '--update'],
      description: 'Download the latest pages and generate search index',
    ),
    FigOption(
      name: ['-c', '--clear-cache'],
      description: 'Delete the entire local cache',
    ),
    FigOption(
      name: ['--platform', '-p'],
      description: 'Select platform',
      args: [
        FigArg(
          name: 'platform',
          suggestions: platformSuggestions,
        ),
      ],
    ),
  ],
);
