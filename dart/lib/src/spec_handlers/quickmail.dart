// Hand-written dynamic handlers migrated from src/quickmail.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const quickmailTemplateListPostProcessHandler =
    'manual.src_quickmail.spec.subcommands_2_.options_3_.args.generators.postprocess';
const quickmailTemplateEditPostProcessHandler =
    'manual.src_quickmail.spec.subcommands_3_.subcommands_2_.options_1_.args.generators.postprocess';

const _quickmailTemplateIcon = 'fig://icon?type=box';

/// `quickmail template listall` output: one template name per line. Suggests
/// each non-blank line, using the line as both the name and its description.
List<FigSuggestion> _templateList(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final templates = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.trim();
    if (name.isEmpty) continue;
    templates.add(FigSuggestion(
      name: name,
      icon: _quickmailTemplateIcon,
      description: name,
    ));
  }
  return templates;
}

/// Registers the quickmail generators referenced by the shipped quickmail JSON.
void registerQuickmailHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      quickmailTemplateListPostProcessHandler, _templateList);
  registry.registerPostProcess(
      quickmailTemplateEditPostProcessHandler, _templateList);
}
