// Hand-written dynamic handlers migrated from src/nx.ts.
//
// The focused nx JSON export kept a single dynamic handler: the root
// `generateSpec` (`manual.src_nx.spec.generatespec`), the `runDerivedSubcommands`
// callback. At runtime it discovers workspace projects (`cat nx.json`,
// `find <apps> <libs> -name project.json`, per-project `cat`, with a
// `workspace.json` fallback), fills target/configuration caches, then derives
// one subcommand per shared target with project-name suggestions. Base targets
// (`build`, `e2e`, `lint`, `serve`, `test`) get the command icon; `build` and
// `serve` additionally expose the `--configuration` option with a dynamic
// configuration generator.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/nx.ts.
const nxGenerateSpecHandler = 'manual.src_nx.spec.generatespec';

/// RUN_DERIVED_BASE_TARGETS from src/nx.ts.
const _runDerivedBaseTargets = ['build', 'e2e', 'lint', 'serve', 'test'];

/// RUN_DERIVED_BASE_TARGETS_WITH_CONFIGURATION from src/nx.ts.
const _runDerivedBaseTargetsWithConfiguration = ['build', 'serve'];

/// `optionsDict.help` from src/nx.ts.
final _helpOption = FigOption(name: '--help', description: 'Show help');

/// `optionsDict.version` from src/nx.ts.
final _versionOption =
    FigOption(name: '--version', description: 'Show version number');

/// `generateSpec` from src/nx.ts. Runs `preProcessProjects` to fill target and
/// configuration caches, then emits one subcommand per shared target.
///
/// src/nx.ts keeps the caches at module scope; the Dart migration scopes them
/// per generation so repeated generateSpec calls stay deterministic and tests
/// remain isolated.
Future<FigSpec?> _nxGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final nxProjectPathCache = <String>[];
  final nxProjectPathWithJsonCache = <String, Map<String, dynamic>>{};
  final nxProjectWithTargetsCache = <String, List<String>>{};
  final nxProjectTargetWithConfigurationsCache = <String, List<String>>{};
  final nxTargetWithProjectsCache = <String, List<String>>{};

  /// `fillProjectCaches` from src/nx.ts.
  void fillProjectCaches(Map<String, dynamic> projectJson) {
    final projectName = projectJson['name']?.toString() ?? '';
    if (nxProjectWithTargetsCache.containsKey(projectName)) return;
    final projectTargets = <String>[];
    final targets = projectJson['targets'];
    if (targets is Map) {
      for (final targetEntry in targets.entries) {
        final target = targetEntry.key.toString();
        projectTargets.add(target);
        final projectTargetConfigurations = <String>[];
        final targetValue = targetEntry.value;
        if (targetValue is Map) {
          final configurations = targetValue['configurations'];
          if (configurations is Map) {
            for (final configuration in configurations.keys) {
              projectTargetConfigurations.add(configuration.toString());
            }
          }
        }
        nxProjectTargetWithConfigurationsCache['$projectName:$target'] =
            projectTargetConfigurations;
      }
    }
    nxProjectWithTargetsCache[projectName] = projectTargets;
    for (final target in projectTargets) {
      final projects = nxTargetWithProjectsCache[target] ?? <String>[];
      projects.add(projectName);
      nxTargetWithProjectsCache[target] = projects;
    }
  }

  /// `preProcessProjects` from src/nx.ts.
  Future<void> preProcessProjects(ExecuteCommandFunction exec) async {
    if (nxProjectPathCache.isEmpty) {
      try {
        var appsDir = 'apps';
        var libsDir = 'libs';
        final nxJsonOutput =
            (await exec(const ExecuteCommandInput(
              command: 'cat',
              args: ['nx.json'],
            )))
                .stdout;
        final nxJson = jsonDecode(nxJsonOutput) as Map<String, dynamic>;
        final layout = nxJson['workspaceLayout'];
        if (layout is Map) {
          final apps = layout['appsDir'];
          if (apps is String && apps.isNotEmpty) appsDir = apps;
          final libs = layout['libsDir'];
          if (libs is String && libs.isNotEmpty) libsDir = libs;
        }
        final searchFolders =
            appsDir == libsDir ? [appsDir] : [appsDir, libsDir];
        final findOutput = (await exec(ExecuteCommandInput(
          command: 'find',
          args: [...searchFolders, '-name', 'project.json'],
        )))
            .stdout;
        for (final path in findOutput.split('\n')) {
          if (path.isNotEmpty) nxProjectPathCache.add(path);
        }
      } catch (_) {
        // src/nx.ts logs the error; discovery stays best-effort.
      }
    }

    for (final projectJsonPath in nxProjectPathCache) {
      var projectJson = nxProjectPathWithJsonCache[projectJsonPath];
      if (projectJson == null) {
        try {
          final output = (await exec(ExecuteCommandInput(
            command: 'cat',
            args: [projectJsonPath],
          )))
              .stdout;
          projectJson = jsonDecode(output) as Map<String, dynamic>;
          nxProjectPathWithJsonCache[projectJsonPath] = projectJson;
        } catch (_) {
          // Unparseable project file; skipped like src/nx.ts.
        }
      }
      if (projectJson != null) fillProjectCaches(projectJson);
    }

    // Fall back to workspace.json when no project.json files were found.
    if (nxProjectPathCache.isEmpty) {
      try {
        final workspaceOutput = (await exec(const ExecuteCommandInput(
          command: 'cat',
          args: ['workspace.json'],
        )))
            .stdout;
        final workspaceJson =
            jsonDecode(workspaceOutput) as Map<String, dynamic>;
        final projects = workspaceJson['projects'];
        if (projects is Map) {
          for (final entry in projects.entries) {
            final project = Map<String, dynamic>.from(entry.value as Map);
            project['name'] = entry.key;
            fillProjectCaches(project);
          }
        }
      } catch (_) {
        // src/nx.ts logs the error and yields no derived targets.
      }
    }
  }

  /// `nxGenerators.configuration` from src/nx.ts.
  Future<List<FigSuggestion>> configurationGenerator(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context,
  ) async {
    context;
    final suggestions = <FigSuggestion>[];
    final finalToken = <String>[];
    final joined = tokens.join(' ');
    if (joined.startsWith('nx run')) {
      if (tokens.length > 2) {
        finalToken.addAll(tokens[2].split(':'));
      }
    } else {
      if (tokens.length > 2) finalToken.add(tokens[2]);
      if (tokens.length > 1) finalToken.add(tokens[1]);
    }
    final project = finalToken.isNotEmpty ? finalToken.first : '';
    final target = finalToken.length > 1 ? finalToken[1] : '';
    if (executeCommand != null) await preProcessProjects(executeCommand);
    final configurations =
        nxProjectTargetWithConfigurationsCache['$project:$target'];
    for (final name in configurations ?? const <String>[]) {
      suggestions.add(FigSuggestion(name: name));
    }
    return suggestions;
  }

  /// `optionsDict.configuration` from src/nx.ts, with its dynamic generator.
  final configurationOption = FigOption(
    name: ['--configuration', '-c'],
    description:
        'A named builder configuration, defined in the "configurations" section of the workspace configuration file. The builder uses the named configuration to run the given target',
    args: [
      FigArg(
        name: 'configuration',
        generators: [
          FigGenerator(
            cache: const FigCache(
              strategy: 'max-age',
              ttl: 60 * 60 * 24,
              cacheByDirectory: true,
            ),
            custom: configurationGenerator,
          ),
        ],
      ),
    ],
  );

  // Pre-process projects first so the target caches are populated, then emit
  // one subcommand per shared target (mirrors src/nx.ts `runDerivedSubcommands`).
  await preProcessProjects(executeCommand);

  final subcommands = <FigSubcommand>[];
  for (final targetEntry in nxTargetWithProjectsCache.entries) {
    final target = targetEntry.key;
    final projects = targetEntry.value;
    subcommands.add(FigSubcommand(
      name: target,
      description: '$target target',
      icon: _runDerivedBaseTargets.contains(target)
          ? 'fig://icon?type=command'
          : 'fig://icon?type=asterisk',
      args: [
        FigArg(
          name: 'project',
          suggestions: [
            for (final project in projects) FigSuggestion(name: project),
          ],
        ),
      ],
      options:
          _runDerivedBaseTargetsWithConfiguration.contains(target)
              ? [configurationOption, _helpOption, _versionOption]
              : [_helpOption, _versionOption],
    ));
  }
  return FigSpec(name: 'nx', subcommands: subcommands);
}

/// Registers the dynamic handler referenced by the shipped nx JSON.
void registerNxHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(nxGenerateSpecHandler, _nxGenerateSpec);
}
