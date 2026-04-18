import 'spec.dart';

FigSpec unwrapNestedRootSpec(FigSpec spec) {
  final subcommands = spec.subcommands;
  if (subcommands == null || subcommands.length != 1) return spec;

  final nestedRoot = subcommands.first;
  final nestedNames = nestedRoot.nameList;
  if (nestedNames.length != 1 || nestedNames.first != spec.name) return spec;

  return FigSpec(
    name: spec.name,
    displayName: spec.displayName ?? nestedRoot.displayName,
    description: spec.description ?? nestedRoot.description,
    subcommands: nestedRoot.subcommands,
    options: [...?spec.options, ...?nestedRoot.options],
    args: nestedRoot.args ?? spec.args,
    icon: spec.icon ?? nestedRoot.icon,
    filterStrategy: spec.filterStrategy ?? nestedRoot.filterStrategy,
    hidden: spec.hidden || nestedRoot.hidden,
    insertValue: spec.insertValue ?? nestedRoot.insertValue,
    replaceValue: spec.replaceValue ?? nestedRoot.replaceValue,
    priority: spec.priority ?? nestedRoot.priority,
    deprecated: spec.deprecated ?? nestedRoot.deprecated,
    parserDirectives: spec.parserDirectives ?? nestedRoot.parserDirectives,
    requiresSubcommand:
        spec.requiresSubcommand ?? nestedRoot.requiresSubcommand,
    additionalSuggestions: [
      ...?spec.additionalSuggestions,
      ...?nestedRoot.additionalSuggestions,
    ],
    loadSpec: spec.loadSpec ?? nestedRoot.loadSpec,
  );
}

class _SemVer {
  const _SemVer({
    required this.major,
    required this.minor,
    required this.patch,
    required this.prerelease,
  });

  final int major;
  final int minor;
  final int patch;
  final List<String> prerelease;
}

final RegExp _semverRegex = RegExp(
  r'(?<!\d)v?(\d+)\.(\d+)\.(\d+)(?:-([0-9A-Za-z.-]+))?(?:\+[0-9A-Za-z.-]+)?',
);

/// Extract the first semver-looking token from [raw], normalized without a
/// leading `v`. Returns null when no semver is found.
String? cleanVersion(String raw) {
  final match = _semverRegex.firstMatch(raw);
  if (match == null) return null;
  final prerelease = match.group(4);
  final base = '${match.group(1)}.${match.group(2)}.${match.group(3)}';
  return prerelease == null || prerelease.isEmpty ? base : '$base-$prerelease';
}

_SemVer? _parseSemVer(String value) {
  final cleaned = cleanVersion(value);
  if (cleaned == null) return null;
  final match = _semverRegex.firstMatch(cleaned);
  if (match == null) return null;
  final prerelease = match.group(4);
  return _SemVer(
    major: int.parse(match.group(1)!),
    minor: int.parse(match.group(2)!),
    patch: int.parse(match.group(3)!),
    prerelease: prerelease == null || prerelease.isEmpty
        ? const []
        : prerelease.split('.'),
  );
}

int _comparePrereleasePart(String left, String right) {
  final leftNum = int.tryParse(left);
  final rightNum = int.tryParse(right);
  if (leftNum != null && rightNum != null) {
    return leftNum.compareTo(rightNum);
  }
  if (leftNum != null) return -1;
  if (rightNum != null) return 1;
  return left.compareTo(right);
}

/// Semver compare aligned with the subset needed by versioned completion
/// selection. Returns negative/zero/positive like `compareTo`.
int compareVersions(String left, String right) {
  final a = _parseSemVer(left);
  final b = _parseSemVer(right);
  if (a == null && b == null) return left.compareTo(right);
  if (a == null) return -1;
  if (b == null) return 1;

  final major = a.major.compareTo(b.major);
  if (major != 0) return major;
  final minor = a.minor.compareTo(b.minor);
  if (minor != 0) return minor;
  final patch = a.patch.compareTo(b.patch);
  if (patch != 0) return patch;

  final aPre = a.prerelease;
  final bPre = b.prerelease;
  if (aPre.isEmpty && bPre.isEmpty) return 0;
  if (aPre.isEmpty) return 1;
  if (bPre.isEmpty) return -1;

  final maxLen = aPre.length > bPre.length ? aPre.length : bPre.length;
  for (var i = 0; i < maxLen; i++) {
    if (i >= aPre.length) return -1;
    if (i >= bPre.length) return 1;
    final part = _comparePrereleasePart(aPre[i], bPre[i]);
    if (part != 0) return part;
  }
  return 0;
}

int _getBestVersionIndex(List<String> versions, String? target) {
  if (versions.isEmpty) return -1;
  if (target == null || target.isEmpty) return versions.length - 1;
  for (var i = versions.length - 1; i >= 0; i--) {
    if (compareVersions(versions[i], target) <= 0) {
      return i;
    }
  }
  // Match @fig/autocomplete-helpers semantics: unknown/older falls back to the
  // latest known spec.
  return versions.length - 1;
}

FigVersionedSpecEntry? pickVersionedSpecEntry(
  List<FigVersionedSpecEntry> versionFiles,
  String? detectedVersion,
) {
  if (versionFiles.isEmpty) return null;
  final versionNames = versionFiles.map((entry) => entry.version).toList();
  final index = _getBestVersionIndex(versionNames, detectedVersion);
  return versionFiles[index];
}

/// Dart equivalent of Fig's `createVersionedSpec`.
///
/// The root spec stays lightweight and only resolves the installed command
/// version at runtime. Each version entry can lazily load its concrete spec via
/// deferred imports.
FigSpec createVersionedSpec({
  required String specName,
  required List<FigVersionedSpecEntry> versionFiles,
  required FigGetVersionCommand getVersionCommand,
}) {
  final sorted = List<FigVersionedSpecEntry>.from(versionFiles)
    ..sort((a, b) => compareVersions(a.version, b.version));

  return FigSpec(
    name: specName,
    generateSpecCacheKey: 'versioned:$specName',
    versionedSpec: FigVersionedSpecDefinition(
      cacheKey: specName,
      versionFiles: List<FigVersionedSpecEntry>.unmodifiable(sorted),
      getVersionCommand: getVersionCommand,
    ),
    generateSpec:
        (List<String> tokens, ExecuteCommandFunction executeCommand) async {
      if (sorted.isEmpty) return null;
      try {
        final detectedVersion = await getVersionCommand(executeCommand);
        return pickVersionedSpecEntry(sorted, detectedVersion)?.load();
      } catch (_) {
        return sorted.last.load();
      }
    },
  );
}
