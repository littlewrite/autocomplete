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
      type: t.type,
      pathy: t.type == SuggestionType.file || t.type == SuggestionType.folder));
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
      // Generator-provided list: use priority 60 when unspecified (matches inshellisense).
      return custom
          .map((s) => toSuggestionDynamic(s, defaultPriority: 60))
          .whereType<Suggestion>();
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
        // Generator-provided list: use priority 60 when unspecified (matches inshellisense).
        return list
            .map((s) => toSuggestionDynamic(s, defaultPriority: 60))
            .whereType<Suggestion>();
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
      // Use toString() instead of cast<String>() to avoid lazy-cast RuntimeErrors
      // when the spec returns a List<dynamic> rather than a List<String>.
      scriptList = rawScript.map((e) => e.toString()).toList();
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
      scriptList = (result is List)
          ? result.map((e) => e.toString()).toList()
          : <String>[];
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
        // Script-generated suggestions: use priority 60 when unspecified (matches inshellisense).
        return figSuggestions
            .map((s) => toSuggestionDynamic(s, defaultPriority: 60))
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
  final strategy =
      context.filterStrategyOverride ?? subcommand.filterStrategy;
  if (!argsFromSubcommand) {
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, strategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        context.acceptedTokens
            .where((t) => t.isOption)
            .map((t) => t.token)
            .toSet(),
        strategy,
        partial));
  }
  final argList = subcommand.args ?? [];
  if (argList.isNotEmpty) {
    final activeArg = argList.first;
    final argStrategy =
        context.filterStrategyOverride ?? activeArg.filterStrategy;
    final templateSuggestions =
        await runTemplateSuggestions(activeArg, context.cwd, context.adapter);
    suggestions.addAll(filterSuggestionList(
        templateSuggestions, argStrategy, partial));
    for (final gen in activeArg.generatorsList) {
      final generated = await runGeneratorSuggestions(
          gen, context.allTokens, context.cwd, context.adapter,
          logger: logger);
      suggestions.addAll(
          filterSuggestionList(generated, argStrategy, partial));
    }
    suggestions.addAll(filterSuggestions(
        activeArg.suggestionsAsList, argStrategy, partial, null));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(
      removeAccepted(
          adjustPathSuggestions(suggestions, partialToken), context.acceptedTokens),
      partialToken)));
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
  // 优先使用调用方的 override（如 FaTerm 全局 fuzzy），其次用 spec 配置。
  final override = context.filterStrategyOverride;
  final argStrategy = override ?? activeArg.filterStrategy;
  final templateSuggestions =
      await runTemplateSuggestions(activeArg, context.cwd, context.adapter);
  suggestions.addAll(filterSuggestionList(
      templateSuggestions, argStrategy, partial));
  for (final gen in activeArg.generatorsList) {
    final generated = await runGeneratorSuggestions(
        gen, context.allTokens, context.cwd, context.adapter,
        logger: logger);
    suggestions.addAll(
        filterSuggestionList(generated, argStrategy, partial));
  }
  suggestions.addAll(filterSuggestions(
      activeArg.suggestionsAsList, argStrategy, partial, null));
  if (activeArg.isOptional || (activeArg.isVariadic && variadicArgBound)) {
    final subStrategy = override ?? subcommand.filterStrategy;
    suggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, subStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(
        allOptions,
        context.acceptedTokens
            .where((t) => t.isOption)
            .map((t) => t.token)
            .toSet(),
        subStrategy,
        partial));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(
      removeAccepted(
          adjustPathSuggestions(suggestions, partialToken), context.acceptedTokens),
      partialToken)));
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

/// Find the first subcommand whose name list contains [tokenName].
FigSubcommand? _findSubcommand(FigSubcommand subcommand, String tokenName) {
  if (subcommand.subcommands == null) return null;
  for (final s in subcommand.subcommands!) {
    if (s.nameList.contains(tokenName)) return s;
  }
  return null;
}

/// Resolve a subcommand's [FigSubcommand.loadSpec] to its full spec.
///
/// Mirrors JS inshellisense `genSubcommand`: when a matched subcommand carries a
/// `loadSpec` string or [FigSubcommand] object, this loads/merges the extra data
/// and returns an enriched copy (the original is not mutated).  If loading fails
/// or the type is unsupported the original [sub] is returned unchanged.
///
/// Results for string-keyed specs are stored in [CompletionContext.resolvedSubcommandCache]
/// so repeated traversals within the same getSuggestions call pay the cost only once.
Future<FigSubcommand> _resolveSubcommandSpec(
  FigSubcommand sub,
  CompletionContext context,
  LogCallback? logger,
) async {
  final ls = sub.loadSpec;
  if (ls == null) return sub;

  // Fast path: already resolved this spec key in the current traversal.
  if (ls is String) {
    final cached = context.resolvedSubcommandCache[ls];
    if (cached != null) {
      return FigSubcommand(
        name: sub.name,
        description: cached.description ?? sub.description,
        subcommands: cached.subcommands ?? sub.subcommands,
        options: cached.options ?? sub.options,
        args: cached.args ?? sub.args,
        icon: sub.icon ?? cached.icon,
        filterStrategy: sub.filterStrategy ?? cached.filterStrategy,
      );
    }
  }

  try {
    FigSubcommand? loaded;
    if (ls is String) {
      // Ensure the named spec is registered (deferred import path).
      await context.ensureSpecLoaded?.call(ls);
      final spec = getSpec(ls);
      if (spec != null) {
        loaded = FigSubcommand(
          name: spec.name,
          description: spec.description,
          subcommands: spec.subcommands,
          options: spec.options,
          args: spec.args,
          icon: spec.icon,
          filterStrategy: spec.filterStrategy,
        );
        // Store raw loaded data so subsequent resolutions of the same key reuse it.
        context.resolvedSubcommandCache[ls] = loaded;
      }
    } else if (ls is FigSubcommand) {
      loaded = ls;
    }
    // Function-typed loadSpec is not supported in static Dart specs; skip.
    if (loaded == null) return sub;

    // Loaded spec wins; fall back to original fields where loaded has nothing.
    return FigSubcommand(
      name: sub.name,
      description: loaded.description ?? sub.description,
      subcommands: loaded.subcommands ?? sub.subcommands,
      options: loaded.options ?? sub.options,
      args: loaded.args ?? sub.args,
      icon: sub.icon ?? loaded.icon,
      filterStrategy: sub.filterStrategy ?? loaded.filterStrategy,
      // Clear loadSpec so this subcommand is not resolved again on the next call.
    );
  } catch (e, st) {
    logger?.call('[Fig loadSpec] error resolving subcommand loadSpec', e, st);
    return sub;
  }
}

/// Attempt to resolve [activeToken] as a command alias via [parserDirectives.alias]
/// defined on [subcommand.args].  Returns the expanded [CommandToken] list when
/// expansion succeeds, or null when the token is not an alias or resolution fails.
///
/// Results (positive and negative) are stored in [context.aliasCache] keyed by
/// "rootCmd|token" to avoid redundant shell invocations across calls.
Future<List<CommandToken>?> _tryResolveAlias(
  FigSubcommand subcommand,
  CommandToken activeToken,
  CompletionContext context,
  LogCallback? logger,
) async {
  final cache = context.aliasCache;
  if (cache == null) return null;
  final args = subcommand.args;
  if (args == null || args.isEmpty) return null;

  // Find the first arg that carries a parserDirectives.alias function.
  Function? aliasResolver;
  for (final arg in args) {
    final pd = arg.parserDirectives;
    if (pd is Map) {
      final a = pd['alias'];
      if (a is Function) {
        aliasResolver = a;
        break;
      }
    }
  }
  if (aliasResolver == null) return null;

  // Use the root command name (first token) as part of the cache key.
  final rootCmd =
      context.allTokens.isNotEmpty ? context.allTokens.first.token : '';
  final cacheKey = '$rootCmd|${activeToken.token}';

  // Serve from cache (including negative entries stored as null).
  if (cache.containsKey(cacheKey)) {
    final cached = cache[cacheKey];
    if (cached == null || cached.isEmpty) return null;
    final tokens = parseCommand('$cached ', context.shell);
    return tokens.isEmpty ? null : tokens;
  }

  try {
    final executeCommand = _createExecuteCommand(context.cwd, context.adapter);
    final raw = aliasResolver(activeToken.token, executeCommand);
    final expanded =
        ((raw is Future ? await raw : raw) as String? ?? '').trim();

    // Cache result (null for empty = negative cache).
    if (cache.length >= 8) cache.remove(cache.keys.first);
    cache[cacheKey] = expanded.isEmpty ? null : expanded;

    if (expanded.isEmpty) return null;
    final tokens = parseCommand('$expanded ', context.shell);
    return tokens.isEmpty ? null : tokens;
  } catch (e, st) {
    // Store negative cache entry so we don't retry on every keystroke.
    if (cache.length >= 8) cache.remove(cache.keys.first);
    cache[cacheKey] = null;
    logger?.call('[parserDirectives.alias] failed to resolve alias', e, st);
    return null;
  }
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
  if (activeToken.isOption) {
    final option = getOption(activeToken, allOptions);
    if (option != null) {
      return runOption(option, subcommand, context, logger: logger);
    }
    // Unknown option token: stop traversal and return no suggestions,
    // matching JS inshellisense behavior.
    return null;
  }
  final nextSub = _findSubcommand(subcommand, activeToken.token);
  if (nextSub != null) {
    context.addPersistentOptionsDeduped(subcommand.options);
    context.advance();
    final resolvedSub = await _resolveSubcommandSpec(nextSub, context, logger);
    return runSubcommand(resolvedSub, context, false, false, logger);
  }
  // No direct subcommand match — try alias expansion (e.g. `git co` → `checkout`).
  final expandedTokens =
      await _tryResolveAlias(subcommand, activeToken, context, logger);
  if (expandedTokens != null) {
    // Splice expanded tokens in place of the alias token and retry traversal.
    final newAllTokens = [
      ...context.allTokens.sublist(0, context.currentIndex),
      ...expandedTokens,
      ...context.allTokens.sublist(context.currentIndex + 1),
    ];
    final newContext = CompletionContext(
      allTokens: newAllTokens,
      cwd: context.cwd,
      shell: context.shell,
      adapter: context.adapter,
      currentIndex: context.currentIndex,
      ensureSpecLoaded: context.ensureSpecLoaded,
      filterStrategyOverride: context.filterStrategyOverride,
      aliasCache: context.aliasCache,
    );
    newContext.acceptedTokens.addAll(context.acceptedTokens);
    newContext.persistentOptions.addAll(context.persistentOptions);
    return runSubcommand(subcommand, newContext, false, false, logger);
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
    // Unknown option in all-optional-arg context: no suggestions.
    return null;
  }
  if (activeArg.isVariadic) {
    context.advance();
    return runArg(args, subcommand, context, fromOption, true, logger: logger);
  }
  // isCommand: the current token is itself a CLI command whose spec should be
  // loaded and traversed. Mirrors JS inshellisense runArg isCommand branch
  // (e.g. `sudo git commit` — sudo's arg has isCommand: true).
  if (activeArg.isCommand == true) {
    await context.ensureSpecLoaded?.call(activeToken.token);
    final cmdTokens = context.allTokens.sublist(context.currentIndex);
    final cmdSpec = loadSpec(cmdTokens);
    if (cmdSpec == null) return null;
    final cmdSub = getSubcommand(cmdSpec);
    if (cmdSub == null) return null;
    context.advance();
    return runSubcommand(cmdSub, context, false, false, logger);
  }
  if (activeArg.isOptional) {
    final nextSub = _findSubcommand(subcommand, activeToken.token);
    if (nextSub != null) {
      context.addPersistentOptionsDeduped(subcommand.options);
      context.advance();
      final resolvedSub = await _resolveSubcommandSpec(nextSub, context, logger);
      return runSubcommand(resolvedSub, context, false, false, logger);
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

  /// Max entries in [_generateSpecCache]. Oldest entry (insertion order) is
  /// evicted when the limit is reached, preventing unbounded growth when cwd
  /// changes frequently.
  static const int _generateSpecCacheMaxSize = 8;

  void _putGenerateSpecCache(String key, FigSpec spec) {
    if (_generateSpecCache.length >= _generateSpecCacheMaxSize) {
      _generateSpecCache.remove(_generateSpecCache.keys.first);
    }
    _generateSpecCache[key] = spec;
  }

  /// Cache for parserDirectives.alias resolution results.
  /// Key: "cmdName|aliasToken"; value: expanded command string, or null (negative cache).
  /// Avoids repeated `git config --get alias.X` calls for the same alias token.
  final Map<String, String?> _aliasResolveCache = {};

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
    _aliasResolveCache.clear();
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
    FilterStrategy? filterStrategyOverride,
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
            _putGenerateSpecCache(cacheKey, generated);
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

    // Resolve cwd from the last typed token so that path-style arguments like
    // `~/xh` or `./foo/bar` correctly scope template/generator suggestions to
    // the intended directory (mirrors inshellisense runtime.ts resolveCwd call).
    final lastToken = activeCmd.isNotEmpty ? activeCmd.last : null;
    final tokenCwdResult =
        await _resolveTokenCwd(lastToken, resolvedCwd, adapter);
    final effectiveCwd = tokenCwdResult.pathy ? tokenCwdResult.cwd : resolvedCwd;
    log?.call('[autocomplete] tokenCwd: '
        'lastToken="${lastToken?.token}" '
        'pathy=${tokenCwdResult.pathy} '
        'complete=${tokenCwdResult.complete} '
        'cwd="$effectiveCwd" '
        'filterPartial="${tokenCwdResult.filterPartial}"');

    // When pathy, replace the last token with a synthetic token whose `.token`
    // field is the basename only (e.g. `"xh"` for `~/xh`, `""` for `~/`).
    // The recommendation functions use `partialToken.token` as the filter prefix
    // against directory listing results, so it must NOT include the path prefix.
    List<CommandToken> effectiveTokens = activeCmd;
    if (tokenCwdResult.pathy && activeCmd.isNotEmpty) {
      final orig = activeCmd.last;
      final basenameToken = CommandToken(
        token: tokenCwdResult.filterPartial,
        tokenLength: tokenCwdResult.basenameLength,
        complete: orig.complete,
        isOption: false,
        isPath: true,
        isPathComplete: tokenCwdResult.complete,
        isQuoted: orig.isQuoted,
      );
      effectiveTokens = [
        ...activeCmd.sublist(0, activeCmd.length - 1),
        basenameToken,
      ];
    }

    final context = CompletionContext(
      allTokens: effectiveTokens,
      cwd: effectiveCwd,
      shell: shell,
      adapter: adapter,
      currentIndex: 1,
      ensureSpecLoaded: ensureSpecLoaded ?? _ensureSpecLoaded ?? _defaultEnsureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      aliasCache: _aliasResolveCache,
    );

    final result = await runSubcommand(subcommand, context, false, false, log);
    if (result == null) return null;
    if (result.suggestions.isEmpty && result.argumentDescription == null)
      return null;

    // Compute charactersToDrop:
    //  - pathy + complete (token ends with `/`): drop 0 (cursor is right after the slash)
    //  - pathy + incomplete: drop the basename length (partial folder name)
    //  - not pathy: drop the full last token length (normal partial token)
    final int charactersToDrop;
    if (tokenCwdResult.pathy) {
      charactersToDrop =
          tokenCwdResult.complete ? 0 : tokenCwdResult.basenameLength;
    } else {
      charactersToDrop =
          lastToken?.complete == true ? 0 : (lastToken?.tokenLength ?? 0);
    }

    log?.call('[autocomplete] result: '
        '${result.suggestions.length} suggestions, '
        'charactersToDrop=$charactersToDrop');
    return SuggestionBlob(
        suggestions: result.suggestions,
        argumentDescription: result.argumentDescription,
        charactersToDrop: charactersToDrop);
  }
}

class _TokenCwdResult {
  const _TokenCwdResult({
    required this.cwd,
    required this.pathy,
    required this.complete,
    required this.basenameLength,
    required this.filterPartial,
  });

  final String cwd;
  final bool pathy;
  final bool complete;

  /// Length of the basename portion of the original token (used for charactersToDrop).
  final int basenameLength;

  /// The basename portion of the token to use as the filter prefix when listing
  /// directory contents.  Empty string when the token ends with `/` (show all).
  final String filterPartial;
}

/// Resolve an effective cwd based on the last typed token (mirrors inshellisense utils.ts resolveCwd).
///
/// When the token contains a path separator the user is navigating into a
/// sub-directory.  We expand `~` using the HOME env var, then:
///
/// * Token ends with `/` (complete path): use the full resolved path as cwd,
///   `complete = true`, `charactersToDrop = 0`.
/// * Token does NOT end with `/` (incomplete, e.g. partial folder name):
///   use the parent directory as cwd so the caller can list candidates and
///   filter by the basename; `complete = false`,
///   `charactersToDrop = basename.length`.
///
/// Returns `pathy: false` when the token does not look like a path (no separator).
Future<_TokenCwdResult> _resolveTokenCwd(
  CommandToken? cmdToken,
  String baseCwd,
  CompleteAdapter adapter,
) async {
  const sep = '/';
  _TokenCwdResult notPathy() => _TokenCwdResult(
      cwd: baseCwd,
      pathy: false,
      complete: false,
      basenameLength: 0,
      filterPartial: '');

  if (cmdToken == null) return notPathy();

  // Unescape `\ ` → space so we resolve the real path correctly.
  final token = cmdToken.token.replaceAll('\\ ', ' ');
  if (!token.contains(sep)) return notPathy();

  // Expand leading `~` to $HOME.
  String expanded;
  if (token == '~' || token.startsWith('~/')) {
    final home = adapter.getEnv('HOME') ?? '';
    expanded = home + token.substring(1);
  } else {
    expanded = token;
  }

  // Resolve relative paths against baseCwd.
  final String resolvedPath;
  if (expanded.startsWith('/')) {
    resolvedPath = expanded;
  } else {
    final base =
        baseCwd.endsWith('/') ? baseCwd.substring(0, baseCwd.length - 1) : baseCwd;
    resolvedPath = '$base/$expanded';
  }

  final complete = token.endsWith(sep);

  if (complete) {
    // Token ends with `/`: list the directory contents with no filter prefix.
    return _TokenCwdResult(
        cwd: resolvedPath,
        pathy: true,
        complete: true,
        basenameLength: 0,
        filterPartial: '');
  }

  // Token is an incomplete path (no trailing `/`).
  // Use the parent directory so templates list siblings; the basename is the
  // filter prefix so only matching entries are shown.
  final lastSlash = resolvedPath.lastIndexOf('/');
  if (lastSlash <= 0) return notPathy();
  final parentPath = resolvedPath.substring(0, lastSlash + 1);
  final basename = resolvedPath.substring(lastSlash + 1);
  return _TokenCwdResult(
    cwd: parentPath,
    pathy: true,
    complete: false,
    basenameLength: basename.length,
    filterPartial: basename,
  );
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
/// [filterStrategyOverride] when set (e.g. [FilterStrategy.fuzzy]) overrides spec-level filter for this call.
Future<SuggestionBlob?> getSuggestions(
  String cmd,
  String cwd,
  Shell shell,
  CompleteAdapter adapter, {
  EnsureSpecLoaded? ensureSpecLoaded,
  FilterStrategy? filterStrategyOverride,
  LogCallback? logger,
}) {
  return _defaultEngine.getSuggestions(cmd, cwd, shell, adapter,
      ensureSpecLoaded: ensureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      logger: logger);
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
