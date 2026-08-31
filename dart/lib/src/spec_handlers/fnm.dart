// Hand-written dynamic handlers migrated from src/fnm.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const fnmVersionGeneratorPostProcessHandler =
    'manual.src_fnm.definition.versiongenerator.postprocess';
const fnmRemoteVersionGeneratorPostProcessHandler =
    'manual.src_fnm.definition.remoteversiongenerator.postprocess';

/// One `fnm list-remote` line split into version parts. [major], [minor] and
/// [patch] are null when the line does not match a `vX.Y.Z` version pattern.
class _NodejsVersion {
  const _NodejsVersion({
    this.major,
    this.minor,
    this.patch,
    required this.original,
    this.ltsName,
  });

  final int? major;
  final int? minor;
  final int? patch;
  final String original;
  final String? ltsName;
}

final RegExp _nodeVersionRegex = RegExp(
  r'v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)(?: \((?<ltsName>\w+)\))?',
  caseSensitive: false,
);

_NodejsVersion _parseNodejsVersion(String raw) {
  final match = _nodeVersionRegex.firstMatch(raw);
  if (match == null) return _NodejsVersion(original: raw);
  return _NodejsVersion(
    major: int.tryParse(match.namedGroup('major')!),
    minor: int.tryParse(match.namedGroup('minor')!),
    patch: int.tryParse(match.namedGroup('patch')!),
    original: raw,
    ltsName: match.namedGroup('ltsName'),
  );
}

/// `fnm list` output: one line per installed version, each prefixed by a
/// two-character marker (for example `* ` for the active version). Skips the
/// marker and uses the first token of the rest as the suggestion name.
List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  return output.split('\n').reversed.map((line) {
    final rest = line.length >= 2 ? line.substring(2) : '';
    return FigSuggestion(
      name: rest.split(' ').first,
      displayName: rest,
      description: 'Node.js $rest',
    );
  }).toList();
}

/// `fnm list-remote` output, filtered to the most useful Node.js versions:
/// every version of the latest LTS line, the latest release of every other
/// named LTS, the release immediately before or after the latest LTS, and every
/// other version (deduplicated by the original line).
List<FigSuggestion> _remoteVersions(String output, [List<String>? tokens]) {
  final parsed = output
      .split('\n')
      .reversed
      .where((line) => line.isNotEmpty)
      .map(_parseNodejsVersion)
      .toList();

  // The latest even major release, i.e. the latest LTS.
  int? lastLtsMajor;
  for (final version in parsed) {
    final major = version.major;
    if (major != null && major % 2 == 0) {
      lastLtsMajor = major;
      break;
    }
  }
  if (lastLtsMajor == null) return const [];

  // Latest release (highest minor) per major.
  final latests = <int, _NodejsVersion>{};
  for (final version in parsed) {
    final major = version.major;
    if (major == null) continue;
    final latestRelease = latests[major];
    if (latestRelease == null || latestRelease.minor! < version.minor!) {
      latests[major] = version;
    }
  }

  final nodeVersion = <_NodejsVersion>[];
  for (final version in parsed) {
    final major = version.major;
    if (major == null) continue;
    // Every version of the latest LTS.
    if (major == lastLtsMajor) {
      nodeVersion.add(version);
      continue;
    }
    final isLatestRelease = version.original == latests[major]!.original;
    // Any other LTS: only its latest release.
    if (major % 2 == 0) {
      if (isLatestRelease) nodeVersion.add(version);
      continue;
    }
    // Beta: only when immediately before or after the latest LTS, and only its
    // latest release.
    if ((major == lastLtsMajor - 1 || major == lastLtsMajor + 1) &&
        isLatestRelease) {
      nodeVersion.add(version);
    }
  }

  // Uniquify the list, then map to suggestions.
  final combined = <_NodejsVersion>[...nodeVersion, ...parsed];
  final unique = <_NodejsVersion>[];
  for (final version in combined) {
    if (!unique.any((item) => item.original == version.original)) {
      unique.add(version);
    }
  }

  return unique.map((version) {
    final major = version.major;
    final ltsName = version.ltsName;
    if (ltsName != null &&
        major != null &&
        latests[major]?.original == version.original) {
      return FigSuggestion(
        name: 'lts/$ltsName',
        displayName: version.original,
        description: 'Node.js ${version.original}',
      );
    }
    return FigSuggestion(
      name: version.original.split(' ').first,
      description: 'Node.js ${version.original}',
    );
  }).toList();
}

/// Registers the fnm generators referenced by the shipped fnm JSON.
void registerFnmHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      fnmVersionGeneratorPostProcessHandler, _versions);
  registry.registerPostProcess(
      fnmRemoteVersionGeneratorPostProcessHandler, _remoteVersions);
}
