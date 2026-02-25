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
import 'context.dart';

typedef LogCallback = void Function(String message,
    [Object? error, StackTrace? stackTrace]);

void _printLogger(String message, [Object? error, StackTrace? stackTrace]) {
  if (error != null) {
    print('$message: $error');
  } else {
    print(message);
  }
  if (stackTrace != null) {
    print(stackTrace);
  }
}

LogCallback? _defaultLogger = _printLogger;

void setDefaultLogger(LogCallback? logger) {
  _defaultLogger = logger;
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
    filterStrategy: normalizeFilterStrategy(spec.filterStrategy),
  );
}

List<FigArg> getArgs(List<FigArg>? args) {
  return args ?? const [];
}

/// Run templates for an arg and return suggestions.
Future<Iterable<Suggestion>> runTemplateSuggestions(
    FigArg? arg, String cwd, CompleteAdapter adapter) async {
  if (arg == null) return const [];
  final template = arg.template;
  if (template == null) return const [];
  final raw = await runTemplates(template, cwd, adapter);
  return raw.map((t) => Suggestion(
      name: t.name,
      allNames: [t.name],
      icon: iconForType(t.type),
      priority: t.priority,
      type: t.type));
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

Future<Iterable<Suggestion>> runGeneratorSuggestions(FigGenerator? gen,
    List<CommandToken> allTokens, String cwd, CompleteAdapter adapter,
    {LogCallback? logger}) async {
  if (gen == null) return const [];
  final custom = gen.custom;
  if (custom != null) {
    if (custom is List && custom.isNotEmpty) {
      return custom.map((s) => toSuggestionDynamic(s)).whereType<Suggestion>();
    }
    if (custom is Function) {
      final tokens = allTokens.map((t) => t.token).toList();
      final executeCommand = _createExecuteCommand(cwd, adapter);
      final generatorContext = FigGeneratorContext(
        currentWorkingDirectory: cwd,
        currentProcess: allTokens.isNotEmpty ? allTokens.first.token : '',
        sshPrefix: '',
        searchTerm: allTokens.isNotEmpty ? allTokens.last.token : '',
        adapter: adapter,
      );
      try {
        final result = custom(tokens, executeCommand, generatorContext);
        final raw = result is Future ? await result : result;
        final list = raw is List ? raw : <dynamic>[];
        return list.map((s) => toSuggestionDynamic(s)).whereType<Suggestion>();
      } catch (e, st) {
        logger?.call('[Fig generator] custom callback error', e, st);
        return const [];
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

    List<FigSuggestion> filtered;
    if (gen.filterTemplateSuggestions != null) {
      // dynamic call: (List<FigSuggestion>) -> List<FigSuggestion>
      try {
        filtered = gen.filterTemplateSuggestions!(figSuggestions);
      } catch (e) {
        logger?.call('[Fig generator] filterTemplateSuggestions error', e);
        filtered = figSuggestions;
      }
    } else {
      filtered = figSuggestions;
    }

    if (gen.postProcess != null) {
      // Not implemented yet
    }
    return filtered.map((s) => toSuggestion(s)).whereType<Suggestion>();
  }

  if (gen.script != null && gen.postProcess != null) {
    final rawScript = gen.script;
    List<String> scriptList;
    if (rawScript is List) {
      scriptList = rawScript.cast<String>();
    } else if (rawScript is Function) {
      final tokens = allTokens.map((t) => t.token).toList();
      final generatorContext = FigGeneratorContext(
        currentWorkingDirectory: cwd,
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
      return const [];
    }

    if (scriptList.isNotEmpty) {
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
            .map((s) => toSuggestionDynamic(s))
            .whereType<Suggestion>();
      } catch (e) {
        logger?.call('[Fig generator] script error', e);
        return const [];
      }
    }
  }

  return const [];
}

/// Subcommand-driven recommendation: show subcommands, options, and arg suggestions (templates/generators).
Future<SuggestionBlob?> getSubcommandDrivenRecommendation(
  FigSubcommand subcommand,
  CommandToken? partialToken,
  bool argsDepleted,
  bool argsFromSubcommand,
  CompletionContext context, {
  LogCallback? logger,
}) async {
  if (argsDepleted && argsFromSubcommand) return null;
  final partial = partialToken?.token ?? '';
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  var suggestions = <Suggestion>[];
  if (!argsFromSubcommand) {
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, subcommand.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        context.acceptedTokens
            .where((t) => t.isOption)
            .map((t) => t.token)
            .toSet(),
        subcommand.filterStrategy,
        partial));
  }
  final argList = subcommand.args ?? [];
  if (argList.isNotEmpty) {
    final activeArg = argList.first;
    final templateSuggestions =
        await runTemplateSuggestions(activeArg, context.cwd, context.adapter);
    suggestions.addAll(filterSuggestionList(
        templateSuggestions, activeArg.filterStrategy, partial));
    for (final gen in activeArg.generatorsList) {
      final generated = await runGeneratorSuggestions(
          gen, context.allTokens, context.cwd, context.adapter,
          logger: logger);
      suggestions.addAll(
          filterSuggestionList(generated, activeArg.filterStrategy, partial));
    }
    suggestions.addAll(filterSuggestions(
        activeArg.suggestionsAsList, activeArg.filterStrategy, partial, null));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(
      removeAccepted(suggestions, context.acceptedTokens), partialToken)));
  return SuggestionBlob(suggestions: suggestions);
}

/// Arg-driven recommendation: suggest for current argument position.
Future<SuggestionBlob?> getArgDrivenRecommendation(
  List<FigArg> args,
  FigSubcommand subcommand,
  CommandToken? partialToken,
  bool variadicArgBound,
  CompletionContext context, {
  LogCallback? logger,
}) async {
  if (args.isEmpty) return null;
  final activeArg = args.first;
  final partial = partialToken?.token ?? '';
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  var suggestions = <Suggestion>[];
  final templateSuggestions =
      await runTemplateSuggestions(activeArg, context.cwd, context.adapter);
  suggestions.addAll(filterSuggestionList(
      templateSuggestions, activeArg.filterStrategy, partial));
  for (final gen in activeArg.generatorsList) {
    final generated = await runGeneratorSuggestions(
        gen, context.allTokens, context.cwd, context.adapter,
        logger: logger);
    suggestions.addAll(
        filterSuggestionList(generated, activeArg.filterStrategy, partial));
  }
  suggestions.addAll(filterSuggestions(
      activeArg.suggestionsAsList, activeArg.filterStrategy, partial, null));
  if (activeArg.isOptional || (activeArg.isVariadic && variadicArgBound)) {
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, activeArg.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        context.acceptedTokens
            .where((t) => t.isOption)
            .map((t) => t.token)
            .toSet(),
        activeArg.filterStrategy,
        partial));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(
      removeAccepted(suggestions, context.acceptedTokens), partialToken)));
  return SuggestionBlob(
      suggestions: suggestions,
      argumentDescription: activeArg.description ?? activeArg.name);
}

/// Handle option: if option has args, runArg; else continue runSubcommand.
Future<SuggestionBlob?> runOption(
  FigOption option,
  FigSubcommand subcommand,
  CompletionContext context, {
  LogCallback? logger,
}) async {
  // Consume the option token
  context.advance();
  if (option.args != null) {
    final args = getArgs(option.args);
    return runArg(args, subcommand, context, true, false, logger: logger);
  }
  return runSubcommand(subcommand, context, false, false, logger);
}

FigOption? getOption(CommandToken token, Iterable<FigOption> options) {
  for (final o in options) {
    if (o.nameList.contains(token.token)) return o;
  }
  return null;
}

/// Recursive: run subcommand matching.
Future<SuggestionBlob?> runSubcommand(
  FigSubcommand subcommand,
  CompletionContext context, [
  bool argsDepleted = false,
  bool argsUsed = false,
  LogCallback? logger,
]) async {
  if (context.isAtEnd) {
    return getSubcommandDrivenRecommendation(
        subcommand, null, argsDepleted, argsUsed, context,
        logger: logger);
  }
  final partialToken = context.currentToken;
  if (!partialToken.complete) {
    return getSubcommandDrivenRecommendation(
        subcommand, partialToken, argsDepleted, argsUsed, context,
        logger: logger);
  }
  final activeToken = context.currentToken;
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  final option = getOption(activeToken, allOptions);
  if (option != null) {
    return runOption(option, subcommand, context, logger: logger);
  }
  final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
        (s) => s!.nameList.contains(activeToken.token),
        orElse: () => null,
      );
  if (nextSub != null) {
    if (subcommand.options != null) {
      context.persistentOptions
          .addAll(subcommand.options!.where((o) => o.isPersistent));
    }
    context.advance();
    return runSubcommand(nextSub, context, false, false, logger);
  }
  final args = getArgs(subcommand.args);
  if (args.isNotEmpty) {
    return runArg(args, subcommand, context, false, false, logger: logger);
  }
  context.advance();
  return runSubcommand(subcommand, context, false, false, logger);
}

Future<SuggestionBlob?> runArg(
  List<FigArg> args,
  FigSubcommand subcommand,
  CompletionContext context,
  bool fromOption,
  bool fromVariadic, {
  LogCallback? logger,
}) async {
  if (args.isEmpty) {
    return runSubcommand(subcommand, context, true, !fromOption, logger);
  }
  if (context.isAtEnd) {
    return getArgDrivenRecommendation(
        args, subcommand, null, fromVariadic, context,
        logger: logger);
  }
  if (!context.currentToken.complete) {
    return getArgDrivenRecommendation(
        args, subcommand, context.currentToken, fromVariadic, context,
        logger: logger);
  }
  final activeToken = context.currentToken;
  final activeArg = args.first;
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  if (args.every((a) => a.isOptional) && activeToken.isOption) {
    final option = getOption(activeToken, allOptions);
    if (option != null)
      return runOption(option, subcommand, context, logger: logger);
  }
  if (activeArg.isVariadic) {
    context.advance();
    return runArg(args, subcommand, context, fromOption, true, logger: logger);
  }
  if (activeArg.isOptional) {
    final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
          (s) => s!.nameList.contains(activeToken.token),
          orElse: () => null,
        );
    if (nextSub != null) {
      if (subcommand.options != null) {
        context.persistentOptions
            .addAll(subcommand.options!.where((o) => o.isPersistent));
      }
      context.advance();
      return runSubcommand(nextSub, context, false, false, logger);
    }
  }
  context.advance();
  return runArg(args.sublist(1), subcommand, context, fromOption, false,
      logger: logger);
}

/// Command-name completion when first token is incomplete (e.g. "gi" -> git).
/// Empty token triggers no suggestions; only the v2 bucket for the first character is used.
SuggestionBlob runCommand(CommandToken token) {
  if (token.token.isEmpty) {
    return const SuggestionBlob(suggestions: [], charactersToDrop: 0);
  }
  final names = getSpecNamesWithPrefix(token.token);
  final suggestions = names.map((s) => Suggestion(
      name: s,
      allNames: [s],
      icon: suggestionIconSubcommand,
      priority: 40,
      type: SuggestionType.subcommand));
  return SuggestionBlob(
      suggestions: suggestions, charactersToDrop: token.tokenLength);
}

/// Autocomplete engine that manages state and caching.
class AutocompleteEngine {
  /// Cache for generated specs (e.g. git help -a).
  /// Key: specName|cwd
  final Map<String, FigSpec> _generateSpecCache = {};

  /// EnsureSpecLoaded callback for this engine instance.
  EnsureSpecLoaded? _ensureSpecLoaded;

  LogCallback? _logger;

  /// Set the ensureSpecLoaded callback.
  void setEnsureSpecLoaded(EnsureSpecLoaded? f) {
    _ensureSpecLoaded = f;
  }

  void setLogger(LogCallback? f) {
    _logger = f;
  }

  /// Clear all internal caches.
  void clearCache() {
    _generateSpecCache.clear();
  }

  /// Dispose the engine (alias for clearCache for now).
  void dispose() {
    clearCache();
  }

  /// Main entry: get suggestions for [cmd] in [cwd] for [shell].
  /// [adapter] is required (e.g. copy example/local_adapter.dart for a local dart:io implementation).
  Future<SuggestionBlob?> getSuggestions(
    String cmd,
    String cwd,
    Shell shell,
    CompleteAdapter adapter, {
    EnsureSpecLoaded? ensureSpecLoaded,
    LogCallback? logger,
  }) async {
    final log = logger ?? _logger ?? _defaultLogger;
    final activeCmd = parseCommand(cmd, shell);

    if (activeCmd.isEmpty) return null;
    final rootToken = activeCmd.first;
    if (!rootToken.complete) return runCommand(rootToken);

    final ensure =
        ensureSpecLoaded ?? _ensureSpecLoaded ?? _defaultEnsureSpecLoaded;
    if (ensure != null) {
      evictOldSpecsIfNeeded();
      await ensure(rootToken.token);
    }
    FigSpec? spec = loadSpec(activeCmd);
    if (spec == null) return null;

    final resolvedCwd = await adapter.resolveCwd(cwd, shell);

    // Resolve generateSpec with adapter-provided executeCommand (no dart:io Process.run).
    final gen = spec.generateSpec;
    if (gen != null) {
      try {
        final cacheKey = '${spec.name}|$resolvedCwd';
        FigSpec? generated;
        if (_generateSpecCache.containsKey(cacheKey)) {
          generated = _generateSpecCache[cacheKey];
        } else {
          final tokens = activeCmd.map((t) => t.token).toList();
          final executeCommand = _createExecuteCommand(resolvedCwd, adapter);
          generated = await gen(tokens, executeCommand);
          if (generated != null) {
            _generateSpecCache[cacheKey] = generated;
          }
        }

        if (generated != null) {
          spec = _mergeSpecs(spec, generated);
        }
      } catch (e, st) {
        log?.call('[Fig generateSpec] error', e, st);
      }
    }

    final subcommand = getSubcommand(spec);
    if (subcommand == null) return null;

    final context = CompletionContext(
      allTokens: activeCmd,
      cwd: resolvedCwd,
      shell: shell,
      adapter: adapter,
      currentIndex: 1,
    );

    final result = await runSubcommand(subcommand, context, false, false, log);
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
}

/// Optional callback to load a spec on demand (e.g. deferred import v2). When set, called with the command name before [loadSpec].
typedef EnsureSpecLoaded = Future<void> Function(String command);

EnsureSpecLoaded? _defaultEnsureSpecLoaded;

/// Set the default [EnsureSpecLoaded] used by [getSuggestions] when [ensureSpecLoaded] is not passed. Used when [registerBuiltinSpecs] (v2) is called.
void setDefaultEnsureSpecLoaded(EnsureSpecLoaded? f) {
  _defaultEnsureSpecLoaded = f;
}

// Global default engine for backward compatibility.
final _defaultEngine = AutocompleteEngine();

/// Main entry: get suggestions for [cmd] in [cwd] for [shell].
/// [adapter] is required (e.g. copy example/local_adapter.dart for a local dart:io implementation).
/// Uses a default global [AutocompleteEngine] instance.
Future<SuggestionBlob?> getSuggestions(
  String cmd,
  String cwd,
  Shell shell,
  CompleteAdapter adapter, {
  EnsureSpecLoaded? ensureSpecLoaded,
  LogCallback? logger,
}) {
  return _defaultEngine.getSuggestions(cmd, cwd, shell, adapter,
      ensureSpecLoaded: ensureSpecLoaded, logger: logger);
}

/// Clear the default engine cache.
void clearDefaultCache() {
  _defaultEngine.clearCache();
}

FigSpec _mergeSpecs(FigSpec original, FigSpec generated) {
  return FigSpec(
    name: generated.name,
    displayName: generated.displayName ?? original.displayName,
    description: generated.description ?? original.description,
    subcommands: [
      ...?original.subcommands,
      ...?generated.subcommands,
    ],
    options: [
      ...?original.options,
      ...?generated.options,
    ],
    args: [
      ...?original.args,
      ...?generated.args,
    ],
    icon: generated.icon ?? original.icon,
    filterStrategy: generated.filterStrategy ?? original.filterStrategy,
    hidden: generated.hidden || original.hidden,
    insertValue: generated.insertValue ?? original.insertValue,
    replaceValue: generated.replaceValue ?? original.replaceValue,
    priority: generated.priority ?? original.priority,
    deprecated: generated.deprecated ?? original.deprecated,
    parserDirectives: generated.parserDirectives ?? original.parserDirectives,
    requiresSubcommand:
        generated.requiresSubcommand ?? original.requiresSubcommand,
    additionalSuggestions: [
      ...?original.additionalSuggestions,
      ...?generated.additionalSuggestions,
    ],
    generateSpec: original.generateSpec,
    loadSpec: generated.loadSpec ?? original.loadSpec,
  );
}
