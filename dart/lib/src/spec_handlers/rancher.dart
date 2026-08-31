// Hand-written dynamic handlers migrated from src/rancher.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const rancherServerListDeletePostProcessHandler =
    'manual.src_rancher.spec.subcommands_14_.subcommands_1_.args.generators.postprocess';
const rancherServerListSwitchPostProcessHandler =
    'manual.src_rancher.spec.subcommands_14_.subcommands_3_.args.generators.postprocess';

const _rancherIcon = 'https://rancher.com/docs/img/favicon.png';

/// `rancher server ls` output: skip the header row, drop the current server
/// (marked with `*`), and suggest each remaining server with its URL as the
/// description. When no other servers are found, emit the placeholder.
List<FigSuggestion> _serverList(String output, [List<String>? tokens]) {
  tokens;
  final servers = <FigSuggestion>[];
  final lines = output.split('\n');
  final whitespace = RegExp(r'\S+');
  for (var i = 1; i < lines.length; i++) {
    final matches = whitespace.allMatches(lines[i]).toList();
    if (matches.isEmpty) continue;
    // Skip the current server, which is marked with a leading `*`.
    if (matches[0].group(0) == '*') continue;
    // A server row needs at least a server name after the status column.
    if (matches.length < 2) continue;
    servers.add(FigSuggestion(
      name: matches[1].group(0),
      description: matches.length > 2 ? matches[2].group(0) : null,
      icon: _rancherIcon,
    ));
  }
  if (servers.isEmpty) {
    servers.add(const FigSuggestion(
      name: 'No other servers found to swtich to',
      description: '',
      icon: _rancherIcon,
    ));
  }
  return servers;
}

/// Registers the rancher generators referenced by the shipped rancher JSON.
void registerRancherHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      rancherServerListDeletePostProcessHandler, _serverList);
  registry.registerPostProcess(
      rancherServerListSwitchPostProcessHandler, _serverList);
}
