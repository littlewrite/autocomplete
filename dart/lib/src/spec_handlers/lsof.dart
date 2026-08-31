// Hand-written dynamic handlers migrated from src/lsof.ts.
//
// These power the four `-i` argument generators (IP version, protocol,
// hostname/IP, service name) that the shipped lsof JSON references.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const lsofIpVersionsPostProcessHandler =
    'manual.src_lsof.spec.options_13_.args.generators_0_.postprocess';
const lsofProtocolsPostProcessHandler =
    'manual.src_lsof.spec.options_13_.args.generators_1_.postprocess';
const lsofHostsPostProcessHandler =
    'manual.src_lsof.spec.options_13_.args.generators_2_.postprocess';
const lsofServicesPostProcessHandler =
    'manual.src_lsof.spec.options_13_.args.generators_3_.postprocess';

/// `lsof -i` version selector: suggests the two IP protocol families (4, 6).
List<FigSuggestion> _ipVersions(String output, [List<String>? tokens]) {
  const startParams = ['4', '6'];
  return startParams.map((param) => FigSuggestion(name: param)).toList();
}

/// `lsof -i` protocol selector: suggests tcp/udp prefixed by whatever the user
/// already typed for the IP version.
///
/// When the version was typed attached to the option (`-i4`, token index 1)
/// the prefix is that full `-i4`/`-i6` text. When it was typed as the argument
/// value (`lsof -i 4`, token index 2) the prefix is just the leading `4`/`6`.
List<FigSuggestion> _protocols(String output, [List<String>? tokens]) {
  const startParams = ['tcp', 'udp', 'TCP', 'UDP'];
  final toks = tokens ?? const <String>[];
  String prefix = '';
  if (toks.length > 1) {
    final combined = RegExp(r'^(-i[46])').firstMatch(toks[1]);
    if (combined != null) {
      prefix = combined.group(1) ?? '';
    } else if (toks.length > 2) {
      final separated = RegExp(r'^[46]').firstMatch(toks[2]);
      if (separated != null) {
        prefix = separated.group(0) ?? '';
      }
    }
  }
  return startParams
      .map((param) => FigSuggestion(name: prefix + param))
      .toList();
}

/// `lsof -i` host selector: runs `ifconfig` and keeps only IPv4 addresses
/// (lines containing `inet ` but not `inet6`), prefixed by everything up to
/// the last `@` in the current token.
List<FigSuggestion> _hosts(String output, [List<String>? tokens]) {
  final inet = RegExp(r'inet\b');
  final ips = <String>[];
  for (final line in output.split('\n')) {
    if (inet.hasMatch(line)) {
      final parts = line.split(' ');
      if (parts.length > 1) {
        ips.add(parts[1]);
      }
    }
  }
  final toks = tokens ?? const <String>[];
  String token = '@';
  if (toks.length > 1 && RegExp(r'@[^:]*$').hasMatch(toks[1])) {
    token = toks[1];
  } else if (toks.length > 2 && RegExp(r'@[^:]*$').hasMatch(toks[2])) {
    token = toks[2];
  }
  final prefix = '${token.split('@')[0]}@';
  return ips.map((ip) => FigSuggestion(name: prefix + ip)).toList();
}

/// `lsof -i` service selector: suggests well-known service names prefixed by
/// everything up to the last `:` in the current token.
List<FigSuggestion> _services(String output, [List<String>? tokens]) {
  const colonParams = ['http', 'https', 'who', 'time'];
  final toks = tokens ?? const <String>[];
  String token = ':';
  if (toks.length > 1 && RegExp(r':[^:]*').hasMatch(toks[1])) {
    token = toks[1];
  } else if (toks.length > 2 && RegExp(r':[^:]+').hasMatch(toks[2])) {
    token = toks[2];
  }
  final prefix = '${token.split(':')[0]}:';
  return colonParams
      .map((param) => FigSuggestion(name: prefix + param))
      .toList();
}

/// Registers the lsof `-i` generators referenced by the shipped lsof JSON.
void registerLsofHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(lsofIpVersionsPostProcessHandler, _ipVersions);
  registry.registerPostProcess(lsofProtocolsPostProcessHandler, _protocols);
  registry.registerPostProcess(lsofHostsPostProcessHandler, _hosts);
  registry.registerPostProcess(lsofServicesPostProcessHandler, _services);
}
