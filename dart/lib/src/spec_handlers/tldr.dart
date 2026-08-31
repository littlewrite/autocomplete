// Hand-written dynamic handlers migrated from src/tldr.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const tldrWholePagesCustomHandler =
    'manual.src_tldr.definition.wholetldrpages.custom';
const tldrLinuxPagesPostProcessHandler =
    'manual.src_tldr.definition.linuxtldrpages.postprocess';
const tldrOsxPagesPostProcessHandler =
    'manual.src_tldr.definition.osxtldrpages.postprocess';
const tldrSunosPagesPostProcessHandler =
    'manual.src_tldr.definition.sunostldrpages.postprocess';

const _tldrDescription = 'Tldr page';
const _tldrIcon = 'fig://icon?type=string';

/// Matches `ls -l` lines naming a markdown page, mirroring the source
/// `isMarkDownRegex = /^.*\.md$/`.
final RegExp _isMarkdownPage = RegExp(r'^.*\.md$');

/// The tldr cache page directories, mirroring the source path constants.
const _pageDirectories = <String>[
  '~/.tldrc/tldr/pages/android/',
  '~/.tldrc/tldr/pages/common/',
  '~/.tldrc/tldr/pages/linux/',
  '~/.tldrc/tldr/pages/osx/',
  '~/.tldrc/tldr/pages/sunos/',
  '~/.tldrc/tldr/pages/windows/',
];

/// Turns `ls -l` output into page-name suggestions.
///
/// Faithful to the source: the output is split on `\n` keeping empty entries,
/// non-`.md` lines (headers, totals, empty lines) are dropped, and each kept
/// line's name is the last space-separated token with its trailing `.md`
/// stripped. A token shorter than three characters becomes an empty name,
/// mirroring `slice(0, -3)` on a short string.
List<FigSuggestion> _tldrPages(String output, [List<String>? tokens]) {
  final pages = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!_isMarkdownPage.hasMatch(line)) continue;
    final fileName = line.split(' ').last;
    final fileLength = fileName.length;
    pages.add(FigSuggestion(
      name: fileLength <= 3 ? '' : fileName.substring(0, fileLength - 3),
      description: _tldrDescription,
      icon: _tldrIcon,
    ));
  }
  return pages;
}

/// Lists every tldr page across all six platform directories by running
/// `ls -Al` on each with the leading `~` expanded to `$HOME`. When `HOME` is
/// unset the paths fall back to `undefined/...`, exactly as the JavaScript
/// `path.replace(/^~/, context.environmentVariables["HOME"])` would.
Future<List<FigSuggestion>> _wholeTldrPages(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? 'undefined';
  final result = await executeCommand(ExecuteCommandInput(
    command: 'ls',
    args: [
      '-Al',
      ..._pageDirectories.map(
          (path) => path.replaceFirst(RegExp(r'^~'), home)),
    ],
  ));
  if (result.status != 0) return const [];
  return _tldrPages(result.stdout);
}

/// Registers the tldr generators referenced by the shipped tldr JSON.
void registerTldrHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(tldrWholePagesCustomHandler, _wholeTldrPages);
  registry.registerPostProcess(tldrLinuxPagesPostProcessHandler, _tldrPages);
  registry.registerPostProcess(tldrOsxPagesPostProcessHandler, _tldrPages);
  registry.registerPostProcess(tldrSunosPagesPostProcessHandler, _tldrPages);
}
