// Hand-written dynamic handlers migrated from src/vultr-cli.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const vultrCliInstanceDeletePostProcessHandler =
    'manual.src_vultr-cli.spec.subcommands_9_.subcommands_4_.args.generators.postprocess';
const vultrCliInstanceGetPostProcessHandler =
    'manual.src_vultr-cli.spec.subcommands_9_.subcommands_5_.args.generators.postprocess';

/// `vultr-cli instance list` output: a tab-separated table. The first line is
/// the column header and the last three lines are table footers, so the source
/// slices them off. The instance id is the first column and the description is
/// the middle columns (excluding the trailing four) joined by tabs.
List<FigSuggestion> _instanceList(String output, [List<String>? tokens]) {
  final lines = output.split('\n');
  final end = lines.length - 3;
  final instances = <FigSuggestion>[];
  if (end <= 1) return const [];
  for (var i = 1; i < end; i++) {
    final parts = lines[i].split('\t');
    final name = parts.isNotEmpty ? parts[0] : '';
    var description = '';
    final descriptionEnd = parts.length - 4;
    if (descriptionEnd > 1) {
      description = parts.sublist(1, descriptionEnd).join('\t');
    }
    instances.add(FigSuggestion(name: name, description: description));
  }
  return instances;
}

/// Registers the vultr-cli generators referenced by the shipped vultr-cli JSON.
void registerVultrCliHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      vultrCliInstanceDeletePostProcessHandler, _instanceList);
  registry.registerPostProcess(
      vultrCliInstanceGetPostProcessHandler, _instanceList);
}
