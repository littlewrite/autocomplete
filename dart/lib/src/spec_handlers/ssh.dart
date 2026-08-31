// Hand-written dynamic handlers migrated from src/ssh.ts.
//
// The root `args.generators` array exports the two local generators as custom
// handler references: generators_0_ is `knownHosts` (reads `~/.ssh/known_hosts`
// and extracts the first host-name/IP match per line, deduplicated) and
// generators_1_ is `configHosts` (reads `~/.ssh/config`, following `Include`
// lines, and lists the first token of every non-wildcard `Host` line).

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const sshKnownHostsCustomHandler =
    'manual.src_ssh.spec.args.generators_0_.custom';
const sshConfigHostsCustomHandler =
    'manual.src_ssh.spec.args.generators_1_.custom';

/// Mirrors `knownHostRegex` from src/ssh.ts: matches dotted host names as well
/// as numerical IPs and subdomains. `RegExp.firstMatch` mirrors the non-global
/// `.exec` used by the source, returning the first match per line.
final RegExp _knownHostRegex = RegExp(r'(?:[a-zA-Z0-9-]+\.)+[a-zA-Z0-9]+');

/// Mirrors `resolveAbsolutePath` from src/ssh.ts. A leading `~` is replaced by
/// [home] (first occurrence, like JS `String.replace("~", ...)`); relative
/// paths are joined to [basePath].
String _resolveAbsolutePath(String path, String basePath, String home) {
  if (path.startsWith('/') || path.startsWith('~/') || path == '~') {
    return path.replaceFirst('~', home);
  }
  if (basePath.startsWith('/') ||
      basePath.startsWith('~/') ||
      basePath == '~') {
    final resolvedBase = basePath.replaceFirst('~', home);
    return resolvedBase + (resolvedBase.endsWith('/') ? '' : '/') + path;
  }
  return basePath + (basePath.endsWith('/') ? '' : '/') + path;
}

/// Reads [file], recursively combining the contents of every `Include` line,
/// mirroring `getConfigLines` from src/ssh.ts.
Future<List<String>> _getConfigLines(
  String file,
  ExecuteCommandFunction executeCommand,
  String home,
  String basePath,
) async {
  final absolutePath = _resolveAbsolutePath(file, basePath, home);
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: [absolutePath],
  ));
  final configLines = result.stdout
      .split('\n')
      .map((line) => line.trim())
      .toList();

  final includes = configLines
      .where((line) => line.toLowerCase().startsWith('include '))
      .map((line) => line.split(' ')[1])
      .toList();

  final includeLines = <String>[];
  for (final include in includes) {
    includeLines.addAll(
        await _getConfigLines(include, executeCommand, home, basePath));
  }

  return <String>[...configLines, ...includeLines];
}

/// Mirrors the `knownHosts` generator: reads `~/.ssh/known_hosts`, extracts the
/// first host-name/IP match per line, deduplicates keeping insertion order, and
/// prefixes `user@` from the typed token when the user already typed it.
Future<List<FigSuggestion>> _knownHosts(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? '';
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: ['$home/.ssh/known_hosts'],
  ));

  final seen = <String>{};
  final names = <String>[];
  for (final line in result.stdout.split('\n')) {
    final match = _knownHostRegex.firstMatch(line);
    if (match == null) continue;
    final knownHost = match.group(0)!;
    if (seen.contains(knownHost)) continue;
    seen.add(knownHost);
    names.add(knownHost);
  }

  final prefix = tokens.length > 1 && tokens[1].endsWith('@') ? tokens[1] : '';
  return names
      .map((host) =>
          FigSuggestion(name: '$prefix$host', description: 'SSH host'))
      .toList();
}

/// Mirrors the `configHosts` generator: reads `~/.ssh/config` (and its
/// includes) and lists the first token of every `Host` line that is not a
/// wildcard, with priority 90.
Future<List<FigSuggestion>> _configHosts(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || context == null) return const [];
  final home = context.environmentVariables['HOME'] ?? '';
  final configLines =
      await _getConfigLines('config', executeCommand, home, '~/.ssh');

  final hosts = <FigSuggestion>[];
  for (final line in configLines) {
    if (!line.trim().toLowerCase().startsWith('host ')) continue;
    if (line.contains('*')) continue;
    hosts.add(FigSuggestion(
      name: line.split(' ')[1],
      description: 'SSH host',
      priority: 90,
    ));
  }
  return hosts;
}

/// Registers the ssh host generators referenced by the shipped ssh JSON.
void registerSshHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(sshKnownHostsCustomHandler, _knownHosts);
  registry.registerCustom(sshConfigHostsCustomHandler, _configHosts);
}
