// Runtime: getSuggestions, loadSpec, runSubcommand/Arg/Option (reference: inshellisense runtime.ts).

import 'dart:async';

import 'adapter.dart';
import 'model.dart';
import 'parser.dart';
import 'registry.dart';
import 'spec.dart';
import 'shell.dart';
import 'suggestion.dart';
import 'template.dart';

/// Resolve cwd for path completion (e.g. expand ~).
Future<String> resolveCwd(
    String cwd, Shell shell, CompleteAdapter adapter) async {
  return adapter.resolveCwd(cwd, shell);
}

/// Load spec for the command represented by tokens (first token = command name).
FigSpec? loadSpec(List<CommandToken> tokens) {
  if (tokens.isEmpty) return null;
  final root = tokens.first;
  if (!root.complete) return null;
  return getSpec(root.token);
}

FigSubcommand? getSubcommand(FigSpec? spec) {
  if (spec == null) return null;
  return FigSubcommand(
    name: spec.name,
    description: spec.description,
    subcommands: spec.subcommands,
    options: spec.options,
    args: spec.args,
    icon: spec.icon,
    filterStrategy: spec.filterStrategy,
  );
}

List<FigArg> getArgs(List<FigArg>? args) {
  if (args == null) return [];
  return List<FigArg>.from(args);
}

/// Run templates for an arg and return suggestions.
Future<List<Suggestion>> runTemplateSuggestions(
    FigArg? arg, String cwd, CompleteAdapter adapter) async {
  if (arg == null) return [];
  final template = arg.template;
  if (template == null) return [];
  final raw = await runTemplates(template, cwd, adapter);
  return raw
      .map((t) => Suggestion(
          name: t.name,
          allNames: [t.name],
          icon: iconForType(t.type),
          priority: t.priority,
          type: t.type))
      .toList();
}

/// Build [ExecuteCommandFunction] for generator custom callbacks.
ExecuteCommandFunction _createExecuteCommand(
    String cwd, CompleteAdapter adapter) {
  return (ExecuteCommandInput input) async {
    final workDir = input.cwd ?? cwd;
    final runFuture = adapter.runProcess(
      input.command,
      input.args,
      workingDirectory: workDir,
    );
    final result = input.timeout != null
        ? await runFuture.timeout(
            Duration(milliseconds: input.timeout!),
            onTimeout: () => throw TimeoutException('executeCommand timed out'),
          )
        : await runFuture;
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

/// Run generator (script + postProcess, or custom). Runs [gen.script] in [cwd], passes stdout to [gen.postProcess], or returns [gen.customSuggestions].
Future<List<Suggestion>> runGeneratorSuggestions(FigGenerator? gen,
    List<CommandToken> allTokens, String cwd, CompleteAdapter adapter) async {
  if (gen == null) return [];
  final custom = gen.custom;
  if (custom != null) {
    if (custom is List && custom.isNotEmpty) {
      return custom
          .map((s) => toFigSuggestion(s))
          .whereType<FigSuggestion>()
          .map((s) => toSuggestion(s))
          .whereType<Suggestion>()
          .toList();
    }
    if (custom is Function) {
      final tokens = allTokens.map((t) => t.token).toList();
      final executeCommand = _createExecuteCommand(cwd, adapter);
      final generatorContext = FigGeneratorContext(
        currentWorkingDirectory: cwd,
        environmentVariables: adapter.getEnvs(),
        currentProcess: allTokens.isNotEmpty ? allTokens.first.token : '',
        sshPrefix: '',
        searchTerm: allTokens.isNotEmpty ? allTokens.last.token : '',
        adapter: adapter,
      );
      try {
        final result = custom(tokens, executeCommand, generatorContext);
        final raw = result is Future ? await result : result;
        final list = raw is List ? raw : <dynamic>[];
        return list
            .map((s) => toFigSuggestion(s))
            .whereType<FigSuggestion>()
            .map((s) => toSuggestion(s))
            .whereType<Suggestion>()
            .toList();
      } catch (e, st) {
        print('[Fig generator] custom callback error: $e');
        print(st);
        return [];
      }
    }
  }
  if (gen.template != null) {
    final templates = await runTemplates(gen.template, cwd, adapter);
    var figSuggestions = templates
        .map((t) => FigSuggestion(
            name: t.name,
            type: t.type,
            priority: t.priority,
            icon: iconForType(t.type)))
        .toList();

    if (gen.filterTemplateSuggestions != null) {
      // dynamic call: (List<FigSuggestion>) -> List<FigSuggestion>
      try {
        final filtered = gen.filterTemplateSuggestions!(figSuggestions);
        if (filtered is List) {
          figSuggestions = filtered.cast<FigSuggestion>();
        }
      } catch (e) {
        // ignore filter error
      }
    }

    return figSuggestions
        .map((s) => Suggestion(
            name: s.nameSingle ?? '',
            allNames: s.nameList,
            description: s.description is String ? s.description : null,
            icon: s.icon ?? iconForType(s.type),
            priority: s.priority,
            type: s.type ?? SuggestionType.file))
        .toList();
  }

  if (gen.script == null || gen.postProcess == null) return [];
  // Resolve script: may be List<String> or Function(List<String>) -> List<String>
  final rawScript = gen.script;
  List<String> scriptList;
  if (rawScript is List) {
    scriptList = rawScript.cast<String>();
  } else if (rawScript is Function) {
    final tokens = allTokens.map((t) => t.token).toList();
    final generatorContext = FigGeneratorContext(
      currentWorkingDirectory: cwd,
      environmentVariables: adapter.getEnvs(),
      currentProcess: allTokens.isNotEmpty ? allTokens.first.token : '',
      sshPrefix: '',
      searchTerm: allTokens.isNotEmpty ? allTokens.last.token : '',
      adapter: adapter,
    );
    dynamic result;
    try {
      result = rawScript(tokens, generatorContext);
    } catch (_) {
      result = rawScript(tokens);
    }
    scriptList = (result is List) ? result.cast<String>() : <String>[];
  } else {
    return [];
  }
  if (scriptList.isEmpty) return [];
  try {
    final result = await adapter.runProcess(
      scriptList.first,
      scriptList.length > 1 ? scriptList.sublist(1) : [],
      workingDirectory: cwd,
    );
    final stdout = result.stdout;
    final tokens = allTokens.map((t) => t.token).toList();
    final figSuggestions = gen.postProcess!(stdout, tokens);
    return figSuggestions
        .map((s) => toSuggestion(s))
        .whereType<Suggestion>()
        .toList();
  } catch (_) {
    return [];
  }
}

/// Subcommand-driven recommendation: show subcommands, options, and arg suggestions (templates/generators).
Future<SuggestionBlob?> getSubcommandDrivenRecommendation(
  FigSubcommand subcommand,
  List<FigOption> persistentOptions,
  CommandToken? partialToken,
  bool argsDepleted,
  bool argsFromSubcommand,
  List<CommandToken> acceptedTokens,
  List<CommandToken> allTokens,
  String cwd,
  Shell shell,
  CompleteAdapter adapter,
) async {
  if (argsDepleted && argsFromSubcommand) return null;
  final partial = partialToken?.token ?? '';
  final allOptions = <FigOption>[
    ...persistentOptions,
    ...(subcommand.options ?? [])
  ];
  var suggestions = <Suggestion>[];
  if (!argsFromSubcommand) {
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, subcommand.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        acceptedTokens.where((t) => t.isOption).map((t) => t.token).toSet(),
        subcommand.filterStrategy,
        partial));
  }
  final argList = subcommand.args ?? [];
  if (argList.isNotEmpty) {
    final activeArg = argList.first;
    suggestions.addAll(await runTemplateSuggestions(activeArg, cwd, adapter));
    for (final gen in activeArg.generatorsList) {
      suggestions
          .addAll(await runGeneratorSuggestions(gen, allTokens, cwd, adapter));
    }
    suggestions.addAll(filterSuggestions(
        activeArg.suggestionsAsList, activeArg.filterStrategy, partial, null));
  }
  suggestions = removeDuplicates(sortByPriority(
      removeHidden(removeAccepted(suggestions, acceptedTokens), partialToken)));
  return SuggestionBlob(suggestions: suggestions);
}

/// Arg-driven recommendation: suggest for current argument position.
Future<SuggestionBlob?> getArgDrivenRecommendation(
  List<FigArg> args,
  FigSubcommand subcommand,
  List<FigOption> persistentOptions,
  CommandToken? partialToken,
  List<CommandToken> acceptedTokens,
  List<CommandToken> allTokens,
  bool variadicArgBound,
  String cwd,
  Shell shell,
  CompleteAdapter adapter,
) async {
  if (args.isEmpty) return null;
  final activeArg = args.first;
  final partial = partialToken?.token ?? '';
  final allOptions = <FigOption>[
    ...persistentOptions,
    ...(subcommand.options ?? [])
  ];
  var suggestions = <Suggestion>[];
  suggestions.addAll(await runTemplateSuggestions(activeArg, cwd, adapter));
  for (final gen in activeArg.generatorsList) {
    suggestions
        .addAll(await runGeneratorSuggestions(gen, allTokens, cwd, adapter));
  }
  suggestions.addAll(filterSuggestions(
      activeArg.suggestionsAsList, activeArg.filterStrategy, partial, null));
  if (activeArg.isOptional || (activeArg.isVariadic && variadicArgBound)) {
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, activeArg.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        acceptedTokens.where((t) => t.isOption).map((t) => t.token).toSet(),
        activeArg.filterStrategy,
        partial));
  }
  suggestions = removeDuplicates(sortByPriority(
      removeHidden(removeAccepted(suggestions, acceptedTokens), partialToken)));
  return SuggestionBlob(
      suggestions: suggestions,
      argumentDescription: activeArg.description ?? activeArg.name);
}

/// Handle option: if option has args, runArg; else continue runSubcommand.
Future<SuggestionBlob?> runOption(
  List<CommandToken> tokens,
  List<CommandToken> allTokens,
  FigOption option,
  FigSubcommand subcommand,
  String cwd,
  Shell shell,
  List<FigOption> persistentOptions,
  List<CommandToken> acceptedTokens,
  CompleteAdapter adapter,
) async {
  if (tokens.isEmpty) return null;
  final activeToken = tokens.first;
  if (option.args != null) {
    final args = getArgs(option.args);
    return runArg(
        tokens.skip(1).toList(),
        allTokens,
        args,
        subcommand,
        cwd,
        shell,
        persistentOptions,
        [...acceptedTokens, activeToken],
        true,
        false,
        adapter);
  }
  return runSubcommand(
      tokens.skip(1).toList(),
      allTokens,
      subcommand,
      cwd,
      shell,
      adapter,
      persistentOptions,
      [...acceptedTokens, activeToken],
      false,
      false);
}

FigOption? getOption(CommandToken token, List<FigOption> options) {
  for (final o in options) {
    if (o.nameList.contains(token.token)) return o;
  }
  return null;
}

/// Recursive: run subcommand matching.
Future<SuggestionBlob?> runSubcommand(
  List<CommandToken> tokens,
  List<CommandToken> allTokens,
  FigSubcommand subcommand,
  String cwd,
  Shell shell,
  CompleteAdapter adapter, [
  List<FigOption> persistentOptions = const [],
  List<CommandToken> acceptedTokens = const [],
  bool argsDepleted = false,
  bool argsUsed = false,
]) async {
  if (tokens.isEmpty) {
    return getSubcommandDrivenRecommendation(
        subcommand,
        persistentOptions,
        null,
        argsDepleted,
        argsUsed,
        acceptedTokens,
        allTokens,
        cwd,
        shell,
        adapter);
  }
  final partialToken = tokens.first;
  if (!partialToken.complete) {
    return getSubcommandDrivenRecommendation(
        subcommand,
        persistentOptions,
        partialToken,
        argsDepleted,
        argsUsed,
        acceptedTokens,
        allTokens,
        cwd,
        shell,
        adapter);
  }
  final activeToken = tokens.first;
  final allOptions = <FigOption>[
    ...persistentOptions,
    ...(subcommand.options ?? [])
  ];
  final option = getOption(activeToken, allOptions);
  if (option != null) {
    return runOption(tokens, allTokens, option, subcommand, cwd, shell,
        persistentOptions, acceptedTokens, adapter);
  }
  final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
        (s) => s!.nameList.contains(activeToken.token),
        orElse: () => null,
      );
  if (nextSub != null) {
    return runSubcommand(
        tokens.skip(1).toList(),
        allTokens,
        nextSub,
        cwd,
        shell,
        adapter,
        persistentOptions,
        [...acceptedTokens, activeToken],
        false,
        false);
  }
  final args = getArgs(subcommand.args);
  if (args.isNotEmpty) {
    return runArg(tokens, allTokens, args, subcommand, cwd, shell, allOptions,
        acceptedTokens, false, false, adapter);
  }
  return runSubcommand(
      tokens.skip(1).toList(),
      allTokens,
      subcommand,
      cwd,
      shell,
      adapter,
      persistentOptions,
      [...acceptedTokens, activeToken],
      false,
      false);
}

Future<SuggestionBlob?> runArg(
  List<CommandToken> tokens,
  List<CommandToken> allTokens,
  List<FigArg> args,
  FigSubcommand subcommand,
  String cwd,
  Shell shell,
  List<FigOption> persistentOptions,
  List<CommandToken> acceptedTokens,
  bool fromOption,
  bool fromVariadic,
  CompleteAdapter adapter,
) async {
  if (args.isEmpty) {
    return runSubcommand(tokens, allTokens, subcommand, cwd, shell, adapter,
        persistentOptions, acceptedTokens, true, !fromOption);
  }
  if (tokens.isEmpty) {
    return getArgDrivenRecommendation(args, subcommand, persistentOptions, null,
        acceptedTokens, allTokens, fromVariadic, cwd, shell, adapter);
  }
  if (!tokens.first.complete) {
    return getArgDrivenRecommendation(
        args,
        subcommand,
        persistentOptions,
        tokens.first,
        acceptedTokens,
        allTokens,
        fromVariadic,
        cwd,
        shell,
        adapter);
  }
  final activeToken = tokens.first;
  final activeArg = args.first;
  final allOpts = <FigOption>[
    ...persistentOptions,
    ...(subcommand.options ?? [])
  ];
  if (args.every((a) => a.isOptional) && activeToken.isOption) {
    final option = getOption(activeToken, allOpts);
    if (option != null)
      return runOption(tokens, allTokens, option, subcommand, cwd, shell,
          persistentOptions, acceptedTokens, adapter);
  }
  if (activeArg.isVariadic) {
    return runArg(
        tokens.skip(1).toList(),
        allTokens,
        args,
        subcommand,
        cwd,
        shell,
        persistentOptions,
        [...acceptedTokens, activeToken],
        fromOption,
        true,
        adapter);
  }
  if (activeArg.isOptional) {
    final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
          (s) => s!.nameList.contains(activeToken.token),
          orElse: () => null,
        );
    if (nextSub != null)
      return runSubcommand(
          tokens.skip(1).toList(),
          allTokens,
          nextSub,
          cwd,
          shell,
          adapter,
          persistentOptions,
          [...acceptedTokens, activeToken],
          false,
          false);
  }
  return runArg(
      tokens.skip(1).toList(),
      allTokens,
      args.sublist(1),
      subcommand,
      cwd,
      shell,
      persistentOptions,
      [...acceptedTokens, activeToken],
      fromOption,
      false,
      adapter);
}

/// Command-name completion when first token is incomplete (e.g. "gi" -> git).
/// Empty token triggers no suggestions; only the v2 bucket for the first character is used.
SuggestionBlob runCommand(CommandToken token) {
  if (token.token.isEmpty) {
    return SuggestionBlob(suggestions: [], charactersToDrop: 0);
  }
  final names = getSpecNamesWithPrefix(token.token);
  final suggestions = names
      .map((s) => Suggestion(
          name: s,
          allNames: [s],
          icon: suggestionIconSubcommand,
          priority: 40,
          type: SuggestionType.subcommand))
      .toList();
  return SuggestionBlob(
      suggestions: suggestions, charactersToDrop: token.tokenLength);
}

/// Optional callback to load a spec on demand (e.g. deferred import v2). When set, called with the command name before [loadSpec].
typedef EnsureSpecLoaded = Future<void> Function(String command);

EnsureSpecLoaded? _defaultEnsureSpecLoaded;

/// Set the default [EnsureSpecLoaded] used by [getSuggestions] when [ensureSpecLoaded] is not passed. Used when [registerBuiltinSpecs] (v2) is called.
void setDefaultEnsureSpecLoaded(EnsureSpecLoaded? f) {
  _defaultEnsureSpecLoaded = f;
}

/// Main entry: get suggestions for [cmd] in [cwd] for [shell].
/// [adapter] is required (e.g. copy example/local_adapter.dart for a local dart:io implementation).
Future<SuggestionBlob?> getSuggestions(
  String cmd,
  String cwd,
  Shell shell,
  CompleteAdapter adapter, {
  EnsureSpecLoaded? ensureSpecLoaded,
}) async {
  final activeCmd = parseCommand(cmd, shell);
  if (activeCmd.isEmpty) return null;
  final rootToken = activeCmd.first;
  if (!rootToken.complete) return runCommand(rootToken);

  final ensure = ensureSpecLoaded ?? _defaultEnsureSpecLoaded;
  if (ensure != null) {
    evictOldSpecsIfNeeded();
    await ensure(rootToken.token);
  }
  final spec = loadSpec(activeCmd);
  if (spec == null) return null;
  final subcommand = getSubcommand(spec);
  if (subcommand == null) return null;

  final resolvedCwd = await resolveCwd(cwd, shell, adapter);
  final result = await runSubcommand(
      activeCmd.skip(1).toList(),
      activeCmd,
      subcommand,
      resolvedCwd,
      shell,
      adapter,
      const [],
      const [],
      false,
      false);
  if (result == null) return null;
  if (result.suggestions.isEmpty && result.argumentDescription == null)
    return null;
  final lastToken = activeCmd.isNotEmpty ? activeCmd.last : null;
  final charactersToDrop =
      lastToken?.complete == true ? 0 : (lastToken?.tokenLength ?? 0);
  return SuggestionBlob(
      suggestions: result.suggestions,
      argumentDescription: result.argumentDescription,
      charactersToDrop: charactersToDrop);
}
