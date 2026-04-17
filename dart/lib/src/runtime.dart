// Runtime: getSuggestions, loadSpec, runSubcommand/Arg/Option (reference: inshellisense runtime.ts).

import 'dart:async';

import 'adapter.dart';
import 'alias.dart';
import 'model.dart';
import 'parser.dart';
import 'registry.dart';
import 'runtime_node.dart';
import 'spec.dart';
import 'shell.dart';
import 'suggestion.dart';
import 'template.dart';
import 'context.dart';

typedef LogCallback = void Function(String message,
    [Object? error, StackTrace? stackTrace]);

const _acCacheLogTag = '[ac_cache]';

// App-wide fallback if no per-call logger and no engine setLogger (null = silent).
LogCallback? _defaultLogger;

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
    displayName: spec.displayName,
    description: spec.description,
    subcommands: spec.subcommands,
    options: spec.options,
    args: spec.args,
    icon: spec.icon,
    filterStrategy: normalizeFilterStrategy(spec.filterStrategy),
    requiresSubcommand: spec.requiresSubcommand,
    additionalSuggestions: spec.additionalSuggestions,
    parserDirectives: spec.parserDirectives,
    insertValue: spec.insertValue,
    replaceValue: spec.replaceValue,
    isDangerous: false,
    deprecated: spec.deprecated,
    hidden: spec.hidden,
  );
}

List<FigArg> getArgs(List<FigArg>? args) {
  return args ?? const [];
}

List<String> _optionArgSeparators(RuntimeCommandNode subcommand) {
  final separators = <String>{'='};
  final directives = subcommand.parserDirectives;
  if (directives is ParserDirectives) {
    separators.addAll(directives.optionArgSeparators ?? const <String>[]);
  } else if (directives is Map) {
    final raw = directives['optionArgSeparators'];
    if (raw is List) {
      separators.addAll(raw.whereType<String>());
    }
  }
  return separators.where((s) => s.isNotEmpty).toList();
}

bool _optionsMustPrecedeArguments(RuntimeCommandNode subcommand) {
  final directives = subcommand.parserDirectives;
  if (directives is ParserDirectives) {
    return directives.optionsMustPrecedeArguments == true;
  }
  if (directives is Map) {
    return directives['optionsMustPrecedeArguments'] == true;
  }
  return false;
}

class _InlineOptionMatch {
  const _InlineOptionMatch({
    required this.option,
    required this.optionToken,
    required this.valueToken,
  });

  final FigOption option;
  final CommandToken optionToken;
  final CommandToken valueToken;
}

String? _optionRequiredSeparator(FigOption option) {
  final separator = option.requiresSeparator;
  if (separator is String && separator.isNotEmpty) return separator;
  if (separator == true) return '=';
  // ignore: deprecated_member_use_from_same_package
  if (option.requiresEquals == true) return '=';
  return null;
}

_InlineOptionMatch? _matchInlineOptionValue(
  CommandToken token,
  Iterable<FigOption> options,
  RuntimeCommandNode subcommand,
) {
  if (!token.isOption) return null;

  final separators = _optionArgSeparators(subcommand);
  FigOption? bestOption;
  String? bestSeparator;

  for (final option in options) {
    if (option.args == null || option.args!.isEmpty) continue;
    final requiredSeparator = _optionRequiredSeparator(option);
    final candidateSeparators =
        requiredSeparator != null ? [requiredSeparator] : separators;
    for (final name in option.nameList) {
      for (final separator in candidateSeparators) {
        final prefix = '$name$separator';
        if (!token.token.startsWith(prefix)) continue;
        if (bestOption == null ||
            prefix.length >
                '${bestOption.nameList.first}$bestSeparator'.length) {
          bestOption = option;
          bestSeparator = separator;
        }
      }
    }
  }

  if (bestOption == null || bestSeparator == null) return null;

  String matchedName = bestOption.nameList.first;
  for (final name in bestOption.nameList) {
    if (token.token.startsWith('$name$bestSeparator')) {
      matchedName = name;
      break;
    }
  }
  final value =
      token.token.substring(matchedName.length + bestSeparator.length);
  return _InlineOptionMatch(
    option: bestOption,
    optionToken: CommandToken(
      token: matchedName,
      tokenLength: matchedName.length,
      complete: true,
      isOption: true,
      isQuoted: token.isQuoted,
    ),
    valueToken: CommandToken(
      token: value,
      tokenLength: value.length,
      complete: token.complete,
      isOption: false,
      isQuoted: token.isQuoted,
    ),
  );
}

CompletionContext? _expandInlineOptionContext(
  RuntimeCommandNode subcommand,
  CompletionContext context,
) {
  if (context.isAtEnd) return null;
  final token = context.currentToken;
  final options =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  final match = _matchInlineOptionValue(token, options, subcommand);
  if (match == null) return null;

  final newTokens = [
    ...context.allTokens.sublist(0, context.currentIndex),
    match.optionToken,
    match.valueToken,
    ...context.allTokens.sublist(context.currentIndex + 1),
  ];
  final newContext = CompletionContext(
    allTokens: newTokens,
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
  newContext.resolvedSubcommandCache.addAll(context.resolvedSubcommandCache);
  return newContext;
}

List<FigSuggestion> _additionalSuggestionsAsList(List<dynamic>? suggestions) {
  if (suggestions == null || suggestions.isEmpty) return const [];
  final out = <FigSuggestion>[];
  for (final item in suggestions) {
    if (item is FigSuggestion) {
      out.add(item);
      continue;
    }
    if (item is String) {
      out.add(FigSuggestion(name: item));
      continue;
    }
    final converted = toFigSuggestion(item);
    if (converted != null) out.add(converted);
  }
  return out;
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
      environment: input.env,
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

List<String> _tokenNames(List<CommandToken> tokens) {
  return tokens.map((t) => t.token).toList();
}

FigGeneratorContext _createGeneratorContext(
  List<CommandToken> allTokens,
  String cwd,
  CompleteAdapter adapter,
) {
  return FigGeneratorContext(
    currentWorkingDirectory: cwd,
    currentProcess: allTokens.isNotEmpty ? allTokens.first.token : '',
    sshPrefix: '',
    searchTerm: allTokens.isNotEmpty ? allTokens.last.token : '',
    adapter: adapter,
  );
}

ExecuteCommandInput? _executeCommandInputFromDynamic(dynamic rawScript) {
  if (rawScript == null) return null;
  if (rawScript is ExecuteCommandInput) return rawScript;
  if (rawScript is List) {
    final scriptList = rawScript.map((e) => e.toString()).toList();
    if (scriptList.isEmpty) return null;
    return ExecuteCommandInput(
      command: scriptList.first,
      args: scriptList.length > 1 ? scriptList.sublist(1) : const <String>[],
    );
  }
  if (rawScript is! Map) return null;

  final command = rawScript['command']?.toString();
  if (command == null || command.isEmpty) return null;

  final rawArgs = rawScript['args'];
  final args = rawArgs is List
      ? rawArgs.map((e) => e.toString()).toList()
      : const <String>[];

  final rawEnv = rawScript['env'];
  Map<String, String?>? env;
  if (rawEnv is Map) {
    env = {
      for (final entry in rawEnv.entries)
        entry.key.toString():
            entry.value == null ? null : entry.value.toString(),
    };
  }

  final rawTimeout = rawScript['timeout'];
  final timeout = rawTimeout is num
      ? rawTimeout.toInt()
      : rawTimeout is String
          ? int.tryParse(rawTimeout)
          : null;

  return ExecuteCommandInput(
    command: command,
    args: args,
    cwd: rawScript['cwd']?.toString(),
    env: env,
    timeout: timeout,
  );
}

Future<ExecuteCommandInput?> _resolveGeneratorScript(
  dynamic rawScript,
  List<CommandToken> allTokens,
  String cwd,
  CompleteAdapter adapter,
) async {
  final staticInput = _executeCommandInputFromDynamic(rawScript);
  if (staticInput != null) {
    return staticInput;
  }
  if (rawScript is! Function) return null;

  final tokens = _tokenNames(allTokens);
  final generatorContext = _createGeneratorContext(allTokens, cwd, adapter);
  dynamic result;
  try {
    result = rawScript(tokens, generatorContext);
  } catch (_) {
    result = rawScript(tokens);
  }
  final resolved = result is Future ? await result : result;
  return _executeCommandInputFromDynamic(resolved);
}

Future<ProcessRunResult> _runGeneratorScript(
  ExecuteCommandInput input,
  FigGenerator generator,
  String cwd,
  CompleteAdapter adapter,
) async {
  final runFuture = adapter.runProcess(
    input.command,
    input.args,
    workingDirectory: input.cwd ?? cwd,
    environment: input.env,
  );
  final timeoutMs = input.timeout ?? generator.scriptTimeout;
  if (timeoutMs == null) {
    return runFuture;
  }
  return runFuture.timeout(
    Duration(milliseconds: timeoutMs),
    onTimeout: () => throw TimeoutException('generator script timed out'),
  );
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
      final tokens = _tokenNames(allTokens);
      final executeCommand = _createExecuteCommand(cwd, adapter);
      final generatorContext = _createGeneratorContext(allTokens, cwd, adapter);
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
    final generatorContext = _createGeneratorContext(allTokens, cwd, adapter);
    var figSuggestions = templates
        .map((t) => FigSuggestion(
            name: t.name,
            type: t.type,
            priority: t.priority,
            icon: iconForType(t.type)))
        .toList();

    List<FigSuggestion> filtered;
    if (gen.filterTemplateSuggestions != null) {
      try {
        dynamic filteredResult;
        try {
          filteredResult =
              gen.filterTemplateSuggestions!(figSuggestions, generatorContext);
        } catch (_) {
          filteredResult = gen.filterTemplateSuggestions!(figSuggestions);
        }
        filtered = filteredResult is Iterable
            ? filteredResult.whereType<FigSuggestion>().toList()
            : figSuggestions;
      } catch (e, st) {
        logger?.call('[Fig generator] filterTemplateSuggestions error', e, st);
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
    final scriptInput =
        await _resolveGeneratorScript(gen.script, allTokens, cwd, adapter);

    if (scriptInput != null) {
      try {
        final result =
            await _runGeneratorScript(scriptInput, gen, cwd, adapter);
        final stdout = result.stdout;
        final tokens = _tokenNames(allTokens);
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

  if (gen.script != null && gen.splitOn != null) {
    final scriptInput =
        await _resolveGeneratorScript(gen.script, allTokens, cwd, adapter);

    if (scriptInput != null) {
      try {
        final result =
            await _runGeneratorScript(scriptInput, gen, cwd, adapter);
        final stdout = result.stdout.trim();
        if (stdout.isEmpty) return const [];
        return stdout
            .split(gen.splitOn!)
            .map((name) => toSuggestionDynamic(
                  {'name': name},
                  defaultPriority: 60,
                ))
            .whereType<Suggestion>();
      } catch (e) {
        logger?.call('[Fig generator] script error', e);
        return const [];
      }
    }
  }

  return const [];
}

class _ArgSuggestionComputation {
  const _ArgSuggestionComputation({
    this.staticSuggestions = const [],
    this.dynamicSuggestions = const [],
    this.dynamicFilterStrategy,
  });

  final List<Suggestion> staticSuggestions;
  final List<Suggestion> dynamicSuggestions;
  final FilterStrategy? dynamicFilterStrategy;
}

Future<_ArgSuggestionComputation> _collectArgSuggestions(
  FigArg activeArg,
  String partial,
  CompletionContext context, {
  LogCallback? logger,
  bool includeDynamic = true,
}) async {
  final strategy = context.filterStrategyOverride ?? activeArg.filterStrategy;
  final staticSuggestions = <Suggestion>[];
  final dynamicSuggestions = <Suggestion>[];

  if (includeDynamic) {
    final templateSuggestions =
        await runTemplateSuggestions(activeArg, context.cwd, context.adapter);
    dynamicSuggestions
        .addAll(filterSuggestionList(templateSuggestions, strategy, partial));

    for (final gen in activeArg.generatorsList) {
      final generated = await runGeneratorSuggestions(
          gen, context.allTokens, context.cwd, context.adapter,
          logger: logger);
      dynamicSuggestions
          .addAll(filterSuggestionList(generated, strategy, partial));
    }
  }

  staticSuggestions.addAll(
      filterSuggestions(activeArg.suggestionsAsList, strategy, partial, null));
  return _ArgSuggestionComputation(
    staticSuggestions: staticSuggestions,
    dynamicSuggestions: dynamicSuggestions,
    dynamicFilterStrategy:
        dynamicSuggestions.isEmpty ? null : normalizeFilterStrategy(strategy),
  );
}

List<Suggestion> _finalizeSuggestionsFromState(
  Iterable<Suggestion> suggestions,
  CommandToken? partialToken,
  List<CommandToken> acceptedTokens,
  Shell shell,
) {
  return removeDuplicates(
    sortByPriority(
      removeHidden(
        removeAccepted(
          adjustPathSuggestions(suggestions, partialToken, shell),
          acceptedTokens,
        ),
        partialToken,
      ),
    ),
  );
}

class _SuggestionComputation {
  const _SuggestionComputation({
    this.staticSuggestions = const [],
    this.dynamicSuggestions = const [],
    required this.acceptedTokens,
    this.partialToken,
    this.argumentDescription,
    this.charactersToDrop = 0,
    this.dynamicFilterStrategy,
  });

  final List<Suggestion> staticSuggestions;
  final List<Suggestion> dynamicSuggestions;
  final List<CommandToken> acceptedTokens;
  final CommandToken? partialToken;
  final String? argumentDescription;
  final int charactersToDrop;
  final FilterStrategy? dynamicFilterStrategy;

  Iterable<Suggestion> get suggestions =>
      staticSuggestions.followedBy(dynamicSuggestions);

  SuggestionBlob toBlob(Shell shell) {
    return SuggestionBlob(
      suggestions: _finalizeSuggestionsFromState(
        suggestions,
        partialToken,
        acceptedTokens,
        shell,
      ),
      argumentDescription: argumentDescription,
      charactersToDrop: charactersToDrop,
    );
  }
}

void _addAdditionalSuggestions(
  List<Suggestion> target,
  RuntimeCommandNode subcommand,
  String partial,
  CompletionContext context,
) {
  final additional =
      _additionalSuggestionsAsList(subcommand.additionalSuggestions);
  if (additional.isEmpty) return;
  final strategy = context.filterStrategyOverride ?? subcommand.filterStrategy;
  target.addAll(filterSuggestions(additional, strategy, partial, null));
}

/// Subcommand-driven recommendation: show subcommands, options, and arg suggestions (templates/generators).
Future<_SuggestionComputation?> getSubcommandDrivenRecommendation(
  RuntimeCommandNode subcommand,
  CommandToken? partialToken,
  bool argsDepleted,
  bool argsFromSubcommand,
  CompletionContext context, {
  LogCallback? logger,
  bool includeDynamic = true,
}) async {
  if (argsDepleted && argsFromSubcommand) return null;
  final partial =
      partialToken != null && partialToken.isPath && partialToken.token == '~'
          ? ''
          : partialToken?.token ?? '';
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  final usedOptions = _collectUsedOptionCounts(context.acceptedTokens);
  final staticSuggestions = <Suggestion>[];
  final dynamicSuggestions = <Suggestion>[];
  final strategy = context.filterStrategyOverride ?? subcommand.filterStrategy;
  if (!argsFromSubcommand) {
    staticSuggestions.addAll(
        filterSubcommandSuggestions(subcommand.subcommands, strategy, partial));
    staticSuggestions.addAll(
        filterOptionSuggestions(allOptions, usedOptions, strategy, partial));
    _addAdditionalSuggestions(staticSuggestions, subcommand, partial, context);
  }
  final allowsArgSuggestions =
      subcommand.requiresSubcommand != true || argsFromSubcommand;
  final argList = subcommand.args ?? [];
  FilterStrategy? dynamicFilterStrategy;
  if (allowsArgSuggestions && argList.isNotEmpty) {
    final activeArg = argList.first;
    final argSuggestions = await _collectArgSuggestions(
      activeArg,
      partial,
      context,
      logger: logger,
      includeDynamic: includeDynamic,
    );
    staticSuggestions.addAll(argSuggestions.staticSuggestions);
    dynamicSuggestions.addAll(argSuggestions.dynamicSuggestions);
    dynamicFilterStrategy = argSuggestions.dynamicFilterStrategy;
  }
  return _SuggestionComputation(
    staticSuggestions: staticSuggestions,
    dynamicSuggestions: dynamicSuggestions,
    acceptedTokens: List<CommandToken>.from(context.acceptedTokens),
    partialToken: partialToken,
    charactersToDrop: partialToken?.tokenLength ?? 0,
    dynamicFilterStrategy: dynamicFilterStrategy,
  );
}

/// Arg-driven recommendation: suggest for current argument position.
Future<_SuggestionComputation?> getArgDrivenRecommendation(
  List<FigArg> args,
  RuntimeCommandNode subcommand,
  CommandToken? partialToken,
  bool variadicArgBound,
  bool consumedPositionalArg,
  CompletionContext context, {
  LogCallback? logger,
  bool includeDynamic = true,
}) async {
  if (args.isEmpty) return null;
  final activeArg = args.first;
  final partial =
      partialToken != null && partialToken.isPath && partialToken.token == '~'
          ? ''
          : partialToken?.token ?? '';
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  final usedOptions = _collectUsedOptionCounts(context.acceptedTokens);
  final staticSuggestions = <Suggestion>[];
  final dynamicSuggestions = <Suggestion>[];
  final argSuggestions = await _collectArgSuggestions(
    activeArg,
    partial,
    context,
    logger: logger,
    includeDynamic: includeDynamic,
  );
  staticSuggestions.addAll(argSuggestions.staticSuggestions);
  dynamicSuggestions.addAll(argSuggestions.dynamicSuggestions);
  if (activeArg.isOptional || (activeArg.isVariadic && variadicArgBound)) {
    final subStrategy =
        context.filterStrategyOverride ?? subcommand.filterStrategy;
    staticSuggestions.addAll(filterSubcommandSuggestions(
        subcommand.subcommands, subStrategy, partial));
    if (!(_optionsMustPrecedeArguments(subcommand) && consumedPositionalArg)) {
      staticSuggestions.addAll(filterOptionSuggestions(
          allOptions, usedOptions, subStrategy, partial));
    }
    _addAdditionalSuggestions(staticSuggestions, subcommand, partial, context);
  }
  return _SuggestionComputation(
      staticSuggestions: staticSuggestions,
      dynamicSuggestions: dynamicSuggestions,
      acceptedTokens: List<CommandToken>.from(context.acceptedTokens),
      partialToken: partialToken,
      argumentDescription: activeArg.description ?? activeArg.name,
      charactersToDrop: partialToken?.tokenLength ?? 0,
      dynamicFilterStrategy: argSuggestions.dynamicFilterStrategy);
}

/// Handle option: if option has args, runArg; else continue runSubcommand.
Future<_SuggestionComputation?> runOption(
  FigOption option,
  RuntimeCommandNode subcommand,
  CompletionContext context, {
  LogCallback? logger,
  bool includeDynamic = true,
}) async {
  // Consume the option token
  context.advance();
  if (option.args != null) {
    final args = getArgs(option.args);
    return runArg(args, subcommand, context, true, false,
        logger: logger, includeDynamic: includeDynamic);
  }
  return runSubcommand(
    subcommand,
    context,
    false,
    false,
    logger,
    includeDynamic,
  );
}

FigOption? getOption(CommandToken token, Iterable<FigOption> options) {
  for (final o in options) {
    if (o.nameList.contains(token.token)) return o;
  }
  return null;
}

/// Find the first subcommand whose name list contains [tokenName].
RuntimeCommandNode? _findSubcommand(
  RuntimeCommandNode subcommand,
  String tokenName,
) {
  if (subcommand.subcommands == null) return null;
  for (final s in subcommand.subcommands!) {
    if (s.nameList.contains(tokenName)) return s;
  }
  return null;
}

/// Build the minimal subcommand shape the runtime actually consumes.
///
/// This keeps loadSpec resolution aligned with TS semantics for behaviorally
/// relevant fields without copying rarely used metadata into the hot path.
/// Resolve a subcommand's [FigSubcommand.loadSpec] to its full spec.
///
/// Mirrors JS inshellisense `genSubcommand`: when a matched subcommand carries a
/// `loadSpec` string or [FigSubcommand] object, this loads/merges the extra data
/// and returns an enriched copy (the original is not mutated).  If loading fails
/// or the type is unsupported the original [sub] is returned unchanged.
///
/// Results for string-keyed specs are stored in [CompletionContext.resolvedSubcommandCache]
/// so repeated traversals within the same getSuggestions call pay the cost only once.
Future<RuntimeCommandNode> _resolveSubcommandSpec(
  RuntimeCommandNode sub,
  CompletionContext context,
  LogCallback? logger,
) async {
  final ls = sub.loadSpec;
  if (ls == null) return sub;

  // Fast path: already resolved this spec key in the current traversal.
  if (ls is String) {
    final cached = context.resolvedSubcommandCache[ls];
    if (cached != null) {
      return mergeRuntimeCommandNode(sub, cached);
    }
  }

  try {
    RuntimeCommandNode? loaded;
    if (ls is String) {
      // Ensure the named spec is registered (deferred import path).
      await context.ensureSpecLoaded?.call(ls);
      final spec = getSpec(ls);
      if (spec != null) {
        loaded = runtimeNodeFromSpec(spec);
        // Store raw loaded data so subsequent resolutions of the same key reuse it.
        context.resolvedSubcommandCache[ls] = loaded;
      }
    } else if (ls is FigSubcommand) {
      loaded = runtimeNodeFromSubcommand(ls);
    }
    // Function-typed loadSpec is not supported in static Dart specs; skip.
    if (loaded == null) return sub;

    // Loaded spec wins; fall back to original fields where loaded has nothing.
    return mergeRuntimeCommandNode(sub, loaded);
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
  RuntimeCommandNode subcommand,
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
Future<_SuggestionComputation?> runSubcommand(
  RuntimeCommandNode subcommand,
  CompletionContext context, [
  bool argsDepleted = false,
  bool argsUsed = false,
  LogCallback? logger,
  bool includeDynamic = true,
]) async {
  final expandedContext = _expandInlineOptionContext(subcommand, context);
  if (expandedContext != null) {
    return runSubcommand(subcommand, expandedContext, argsDepleted, argsUsed,
        logger, includeDynamic);
  }

  if (context.isAtEnd) {
    return getSubcommandDrivenRecommendation(
        subcommand, null, argsDepleted, argsUsed, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  final partialToken = context.currentToken;
  if (!partialToken.complete) {
    return getSubcommandDrivenRecommendation(
        subcommand, partialToken, argsDepleted, argsUsed, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  final activeToken = context.currentToken;
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  if (activeToken.isOption) {
    final option = getOption(activeToken, allOptions);
    if (option != null) {
      return runOption(option, subcommand, context,
          logger: logger, includeDynamic: includeDynamic);
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
    return runSubcommand(
      resolvedSub,
      context,
      false,
      false,
      logger,
      includeDynamic,
    );
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
    return runSubcommand(
        subcommand, newContext, false, false, logger, includeDynamic);
  }
  final args = getArgs(subcommand.args);
  if (args.isNotEmpty) {
    return runArg(args, subcommand, context, false, false,
        logger: logger, includeDynamic: includeDynamic);
  }
  context.advance();
  return runSubcommand(
      subcommand, context, false, false, logger, includeDynamic);
}

Future<_SuggestionComputation?> runArg(
  List<FigArg> args,
  RuntimeCommandNode subcommand,
  CompletionContext context,
  bool fromOption,
  bool fromVariadic, {
  LogCallback? logger,
  bool includeDynamic = true,
}) async {
  if (args.isEmpty) {
    return runSubcommand(
        subcommand, context, true, !fromOption, logger, includeDynamic);
  }
  if (context.isAtEnd) {
    return getArgDrivenRecommendation(
        args, subcommand, null, fromVariadic, false, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  if (!context.currentToken.complete) {
    return getArgDrivenRecommendation(
        args, subcommand, context.currentToken, fromVariadic, false, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  return _runArgTraversal(args, subcommand, context, fromOption, fromVariadic,
      logger: logger, includeDynamic: includeDynamic);
}

Future<_SuggestionComputation?> _runArgTraversal(
  List<FigArg> args,
  RuntimeCommandNode subcommand,
  CompletionContext context,
  bool fromOption,
  bool fromVariadic, {
  required LogCallback? logger,
  bool consumedPositionalArg = false,
  bool includeDynamic = true,
}) async {
  if (context.isAtEnd) {
    return getArgDrivenRecommendation(
        args, subcommand, null, fromVariadic, consumedPositionalArg, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  final activeToken = context.currentToken;
  final activeArg = args.first;
  final allOptions =
      context.persistentOptions.followedBy(subcommand.options ?? []);
  if (args.every((a) => a.isOptional) &&
      activeToken.isOption &&
      !(_optionsMustPrecedeArguments(subcommand) && consumedPositionalArg)) {
    final option = getOption(activeToken, allOptions);
    if (option != null)
      return runOption(option, subcommand, context,
          logger: logger, includeDynamic: includeDynamic);
    // Unknown option in all-optional-arg context: no suggestions.
    return null;
  }
  if (activeArg.isVariadic) {
    context.advance();
    return _runArgTraversal(args, subcommand, context, fromOption, true,
        logger: logger,
        consumedPositionalArg: true,
        includeDynamic: includeDynamic);
  }
  // isCommand: the current token is itself a CLI command whose spec should be
  // loaded and traversed. Mirrors JS inshellisense runArg isCommand branch
  // (e.g. `sudo git commit` — sudo's arg has isCommand: true).
  if (activeArg.isCommand == true) {
    await context.ensureSpecLoaded?.call(activeToken.token);
    final cmdTokens = context.allTokens.sublist(context.currentIndex);
    final cmdSpec = loadSpec(cmdTokens);
    if (cmdSpec == null) return null;
    final cmdSub = runtimeNodeFromSpec(cmdSpec);
    context.advance();
    return runSubcommand(cmdSub, context, false, false, logger, includeDynamic);
  }
  if (activeArg.isOptional) {
    final nextSub = _findSubcommand(subcommand, activeToken.token);
    if (nextSub != null) {
      context.addPersistentOptionsDeduped(subcommand.options);
      context.advance();
      final resolvedSub =
          await _resolveSubcommandSpec(nextSub, context, logger);
      return runSubcommand(
          resolvedSub, context, false, false, logger, includeDynamic);
    }
  }
  if (subcommand.requiresSubcommand == true &&
      (subcommand.subcommands?.isNotEmpty ?? false)) {
    return null;
  }
  context.advance();
  if (args.length == 1) {
    return runSubcommand(
        subcommand, context, true, !fromOption, logger, includeDynamic);
  }
  if (context.isAtEnd) {
    return getArgDrivenRecommendation(
        args.sublist(1), subcommand, null, false, true, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  if (!context.currentToken.complete) {
    return getArgDrivenRecommendation(
        args.sublist(1), subcommand, context.currentToken, false, true, context,
        logger: logger, includeDynamic: includeDynamic);
  }
  return _runArgTraversal(
      args.sublist(1), subcommand, context, fromOption, false,
      logger: logger,
      consumedPositionalArg: true,
      includeDynamic: includeDynamic);
}

/// Command-name completion when first token is incomplete (e.g. "gi" -> git).
/// Empty token triggers no suggestions; only the v2 bucket for the first character is used.
_SuggestionComputation runCommand(CommandToken token,
    {Iterable<String> aliases = const []}) {
  if (token.token.isEmpty) {
    return const _SuggestionComputation(
      staticSuggestions: [],
      acceptedTokens: [],
      charactersToDrop: 0,
      dynamicFilterStrategy: null,
    );
  }
  final aliasList = aliases.where((a) => a.startsWith(token.token)).toList()
    ..sort();
  final names = getSpecNamesWithPrefix(token.token)..sort();
  final suggestions = <Suggestion>[
    ...aliasList.map((alias) => Suggestion(
          name: alias,
          allNames: [alias],
          icon: suggestionIconShortcut,
          priority: 100,
          type: SuggestionType.shortcut,
        )),
    ...names.map((s) => Suggestion(
          name: s,
          allNames: [s],
          icon: suggestionIconSubcommand,
          priority: 40,
          type: SuggestionType.subcommand,
        )),
  ];
  return _SuggestionComputation(
    staticSuggestions: suggestions,
    acceptedTokens: const [],
    partialToken: token,
    charactersToDrop: token.tokenLength,
    dynamicFilterStrategy: null,
  );
}

Map<String, int> _collectUsedOptionCounts(List<CommandToken> acceptedTokens) {
  final counts = <String, int>{};
  for (final token in acceptedTokens) {
    if (!token.isOption) continue;
    counts.update(token.token, (value) => value + 1, ifAbsent: () => 1);
  }
  return counts;
}

/// A single entry in the suggestion result cache.
class _SuggestionCacheEntry {
  _SuggestionCacheEntry(this.blob) : createdAt = DateTime.now();
  final SuggestionBlob blob;
  final DateTime createdAt;

  bool isExpired(Duration ttl) => DateTime.now().difference(createdAt) > ttl;
}

class _IncrementalSuggestionCacheEntry {
  _IncrementalSuggestionCacheEntry({
    required this.normalizedCmd,
    required this.rawTokens,
    required this.effectiveCwd,
    required this.shell,
    required this.adapterIdentity,
    required this.dynamicSuggestions,
    required this.dynamicFilterStrategy,
  }) : createdAt = DateTime.now();

  final String normalizedCmd;
  final List<CommandToken> rawTokens;
  final String effectiveCwd;
  final Shell shell;
  final int adapterIdentity;
  final List<Suggestion> dynamicSuggestions;
  final FilterStrategy dynamicFilterStrategy;
  final DateTime createdAt;

  bool isExpired(Duration ttl) => DateTime.now().difference(createdAt) > ttl;
}

class _IncrementalReuseResult {
  const _IncrementalReuseResult(this.blob);

  final SuggestionBlob? blob;
}

class _ComputedSuggestionState {
  const _ComputedSuggestionState({
    required this.computation,
    required this.rawTokens,
    required this.effectiveCwd,
  });

  final _SuggestionComputation computation;
  final List<CommandToken> rawTokens;
  final String effectiveCwd;
}

String _normalizeSuggestionCacheCommand(String cmd) {
  // Collapse trailing space runs; keep `cmd` vs `cmd ` distinct.
  if (cmd.isEmpty) return cmd;
  final trimmed = cmd.trimRight();
  if (trimmed.length == cmd.length) return cmd;
  return '$trimmed ';
}

/// Autocomplete engine that manages state and caching.
class AutocompleteEngine {
  /// [suggestionCacheMaxSize]: max number of suggestion results to cache per
  /// session (LRU eviction).  Defaults to 5.
  ///
  /// [suggestionCacheTtl]: how long a cached result stays valid.  After this
  /// duration the entry is considered stale and a fresh call is made.
  /// Defaults to 30 seconds.  The cache is also fully cleared whenever
  /// [clearCache] is called (e.g. after the user executes a command).
  AutocompleteEngine({
    int suggestionCacheMaxSize = 5,
    Duration suggestionCacheTtl = const Duration(seconds: 30),
  })  : _suggestionCacheMaxSize = suggestionCacheMaxSize,
        _suggestionCacheTtl = suggestionCacheTtl;

  /// Max entries in [_suggestionCache].
  final int _suggestionCacheMaxSize;

  /// TTL for suggestion cache entries.
  final Duration _suggestionCacheTtl;

  /// Suggestion result cache: key = "$cmd|$cwd|${shell.name}".
  /// Uses insertion-order map so that the first entry is always the LRU victim.
  final Map<String, _SuggestionCacheEntry> _suggestionCache = {};

  _IncrementalSuggestionCacheEntry? _incrementalSuggestionCache;

  void _putSuggestionCache(String key, SuggestionBlob blob) {
    if (_suggestionCache.length >= _suggestionCacheMaxSize) {
      _suggestionCache.remove(_suggestionCache.keys.first);
    }
    _suggestionCache[key] = _SuggestionCacheEntry(blob);
  }

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

  /// Shell-level alias cache: loaded once per shell type by running
  /// `<shell> -i -c alias` via the adapter (mirrors TS alias.ts loadedAliases).
  /// Key: Shell enum; value: alias-name → expanded CommandToken list.
  final Map<Shell, Map<String, List<CommandToken>>> _shellAliasCache = {};

  /// EnsureSpecLoaded callback for this engine instance.
  EnsureSpecLoaded? _ensureSpecLoaded;

  LogCallback? _logger;

  /// Generation counter used for request cancellation.
  /// Each [cancelPending] call increments this; [_doGetSuggestions] compares
  /// its snapshot against the current value at each IO checkpoint and returns
  /// null when superseded.
  int _requestGen = 0;

  /// Cancel any in-progress [getSuggestions] call.
  ///
  /// The superseded call returns null at the next cancellation checkpoint
  /// (after the most expensive IO awaits).  Does not abort underlying IO
  /// (Dart futures are not cancellable), but results are discarded and the
  /// caller unblocks immediately once the timeout fires.
  void cancelPending() {
    _requestGen++;
  }

  /// Set the ensureSpecLoaded callback.
  void setEnsureSpecLoaded(EnsureSpecLoaded? f) {
    _ensureSpecLoaded = f;
  }

  void setLogger(LogCallback? f) {
    _logger = f;
  }

  /// Clear all internal caches, including the suggestion result cache.
  ///
  /// Call this after the user executes a command so that the next keystroke
  /// fetches fresh suggestions (file listings, branch names, etc.) rather than
  /// serving a potentially stale cached result.
  void clearCache() {
    _suggestionCache.clear();
    _incrementalSuggestionCache = null;
    _generateSpecCache.clear();
    _aliasResolveCache.clear();
    _shellAliasCache.clear();
  }

  bool _sameTokenPrefix(CommandToken a, CommandToken b) {
    return a.token == b.token &&
        a.complete == b.complete &&
        a.isOption == b.isOption &&
        a.isQuoted == b.isQuoted;
  }

  bool _canReuseIncrementalSuggestionCache(
    _IncrementalSuggestionCacheEntry entry,
    List<CommandToken> currentTokens,
  ) {
    if (entry.rawTokens.length != currentTokens.length ||
        currentTokens.isEmpty ||
        entry.rawTokens.isEmpty) {
      return false;
    }
    for (var i = 0; i < currentTokens.length - 1; i++) {
      if (!_sameTokenPrefix(entry.rawTokens[i], currentTokens[i])) {
        return false;
      }
    }
    final previousLast = entry.rawTokens.last;
    final currentLast = currentTokens.last;
    if (previousLast.complete || currentLast.complete) return false;
    if (previousLast.isOption != currentLast.isOption ||
        previousLast.isQuoted != currentLast.isQuoted) {
      return false;
    }
    if (currentLast.token.length < previousLast.token.length) return false;
    return currentLast.token.startsWith(previousLast.token);
  }

  Future<_IncrementalReuseResult?> _tryReuseIncrementalSuggestionCache(
    String normalizedCmd,
    String cwd,
    Shell shell,
    CompleteAdapter adapter,
    int myGen, {
    EnsureSpecLoaded? ensureSpecLoaded,
    FilterStrategy? filterStrategyOverride,
    LogCallback? logger,
  }) async {
    final cached = _incrementalSuggestionCache;
    if (cached == null ||
        cached.shell != shell ||
        cached.adapterIdentity != identityHashCode(adapter) ||
        cached.normalizedCmd == normalizedCmd ||
        cached.isExpired(_suggestionCacheTtl)) {
      return null;
    }

    final currentTokens = parseCommand(normalizedCmd, shell);
    if (!_canReuseIncrementalSuggestionCache(cached, currentTokens)) {
      return null;
    }

    final state = await _computeSuggestionState(
      normalizedCmd,
      cwd,
      shell,
      adapter,
      myGen,
      ensureSpecLoaded: ensureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      logger: logger,
      includeDynamic: false,
    );
    if (state == null || state.effectiveCwd != cached.effectiveCwd) {
      return null;
    }

    final partialToken = state.computation.partialToken;
    final partial =
        partialToken != null && partialToken.isPath && partialToken.token == '~'
            ? ''
            : partialToken?.token ?? '';
    final narrowedDynamic = filterSuggestionList(
      cached.dynamicSuggestions,
      cached.dynamicFilterStrategy,
      partial,
    ).toList(growable: false);
    final merged = _SuggestionComputation(
      staticSuggestions:
          List<Suggestion>.from(state.computation.staticSuggestions),
      dynamicSuggestions: narrowedDynamic,
      acceptedTokens: List<CommandToken>.from(state.computation.acceptedTokens),
      partialToken: state.computation.partialToken,
      argumentDescription: state.computation.argumentDescription,
      charactersToDrop: state.computation.charactersToDrop,
      dynamicFilterStrategy: cached.dynamicFilterStrategy,
    );
    final blob = merged.toBlob(shell);
    logger?.call(
        '$_acCacheLogTag[incremental-hit] from="${cached.normalizedCmd}" to="$normalizedCmd" dynamic=${narrowedDynamic.length} total=${blob.suggestions.length}');
    return _IncrementalReuseResult(
      blob.suggestions.isEmpty && blob.argumentDescription == null
          ? null
          : blob,
    );
  }

  void _updateIncrementalSuggestionCache(
    String normalizedCmd,
    List<CommandToken> rawTokens,
    String effectiveCwd,
    Shell shell,
    CompleteAdapter adapter,
    _SuggestionComputation computation,
  ) {
    final dynamicFilterStrategy = computation.dynamicFilterStrategy;
    if (dynamicFilterStrategy == null ||
        computation.dynamicSuggestions.isEmpty) {
      _incrementalSuggestionCache = null;
      return;
    }
    _incrementalSuggestionCache = _IncrementalSuggestionCacheEntry(
      normalizedCmd: normalizedCmd,
      rawTokens: List<CommandToken>.from(rawTokens),
      effectiveCwd: effectiveCwd,
      shell: shell,
      adapterIdentity: identityHashCode(adapter),
      dynamicSuggestions: List<Suggestion>.from(computation.dynamicSuggestions),
      dynamicFilterStrategy: dynamicFilterStrategy,
    );
  }

  /// Expand the root token of [tokens] via shell-level aliases (bash/zsh).
  ///
  /// Loads aliases lazily on first call per shell type.  Returns the expanded
  /// token list when a match is found, otherwise null.
  Future<List<CommandToken>?> _expandRootAlias(
    List<CommandToken> tokens,
    Shell shell,
    String cwd,
    CompleteAdapter adapter,
    LogCallback? log,
  ) async {
    if (tokens.isEmpty || !tokens.first.complete) return null;
    if (shell != Shell.bash && shell != Shell.zsh) return null;

    await _ensureShellAliasesLoaded(shell, adapter);
    return aliasExpand(tokens, _shellAliasCache[shell]!);
  }

  Future<void> _ensureShellAliasesLoaded(
    Shell shell,
    CompleteAdapter adapter,
  ) async {
    if (shell != Shell.bash && shell != Shell.zsh) return;
    if (_shellAliasCache.containsKey(shell)) return;
    _shellAliasCache[shell] = await loadShellAliases(shell, adapter);
  }

  /// Dispose the engine (alias for clearCache for now).
  void dispose() {
    clearCache();
  }

  /// Main entry: get suggestions for [cmd] in [cwd] for [shell].
  /// [adapter] is required (e.g. copy example/local_adapter.dart for a local dart:io implementation).
  ///
  /// Results are cached by (cmd, cwd, shell) for up to [suggestionCacheTtl]
  /// (default 30 s) and at most [suggestionCacheMaxSize] entries (default 5,
  /// LRU eviction).  Call [clearCache] after the user executes a command to
  /// invalidate stale results (file listings, branch names, etc.).
  ///
  /// [timeout]: when provided the whole call is capped at that duration; on
  /// timeout null is returned (caller can fall back to DB-only suggestions).
  /// Recommended values: ~1500 ms for local, ~5000 ms for SSH.
  ///
  /// Call [cancelPending] before issuing a new request so that a superseded
  /// in-flight call discards its results at the next IO checkpoint.
  Future<SuggestionBlob?> getSuggestions(
    String cmd,
    String cwd,
    Shell shell,
    CompleteAdapter adapter, {
    EnsureSpecLoaded? ensureSpecLoaded,
    FilterStrategy? filterStrategyOverride,
    LogCallback? logger,
    Duration? timeout,
  }) {
    // Cache lookup: key is (cmd, cwd, shell).
    final normalizedCmd = _normalizeSuggestionCacheCommand(cmd);
    final cacheKey = '$normalizedCmd|$cwd|${shell.name}';
    final cached = _suggestionCache[cacheKey];
    if (cached != null && !cached.isExpired(_suggestionCacheTtl)) {
      // Promote to most-recently-used by reinserting at the end.
      _suggestionCache.remove(cacheKey);
      _suggestionCache[cacheKey] = cached;
      // No implicit print; uses per-call, engine, or [setDefaultLogger] only.
      final log = logger ?? _logger ?? _defaultLogger;
      log?.call(
          '$_acCacheLogTag[hit] cmd="$normalizedCmd" suggestions=${cached.blob.suggestions.length}');
      return Future.value(cached.blob);
    }

    final log = logger ?? _logger ?? _defaultLogger;
    final myGen = _requestGen;
    final incrementalReuse = _tryReuseIncrementalSuggestionCache(
      normalizedCmd,
      cwd,
      shell,
      adapter,
      myGen,
      ensureSpecLoaded: ensureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      logger: log,
    );
    final Future<SuggestionBlob?> work =
        incrementalReuse.then<SuggestionBlob?>((reused) {
      if (reused != null) return reused.blob;
      return _doGetSuggestions(
        normalizedCmd,
        cwd,
        shell,
        adapter,
        myGen,
        ensureSpecLoaded: ensureSpecLoaded,
        filterStrategyOverride: filterStrategyOverride,
        logger: logger,
      );
    });

    Future<SuggestionBlob?> wrappedWork;
    if (timeout != null) {
      wrappedWork = work.timeout(timeout, onTimeout: () => null);
    } else {
      wrappedWork = work;
    }

    return wrappedWork.then((result) {
      // Only cache a valid result that wasn't superseded by a newer request.
      if (result != null && _requestGen == myGen) {
        _putSuggestionCache(cacheKey, result);
        final log = logger ?? _logger ?? _defaultLogger;
        log?.call(
            '$_acCacheLogTag[write] cmd="$normalizedCmd" suggestions=${result.suggestions.length} size=${_suggestionCache.length}/$_suggestionCacheMaxSize ttl=${_suggestionCacheTtl.inSeconds}s');
      }
      return result;
    });
  }

  /// Internal implementation of [getSuggestions].
  ///
  /// [myGen] is a snapshot of [_requestGen] taken by the caller; whenever it
  /// no longer matches the current counter the method returns null immediately,
  /// indicating that a newer request has superseded this one.
  Future<_ComputedSuggestionState?> _computeSuggestionState(
    String cmd,
    String cwd,
    Shell shell,
    CompleteAdapter adapter,
    int myGen, {
    EnsureSpecLoaded? ensureSpecLoaded,
    FilterStrategy? filterStrategyOverride,
    LogCallback? logger,
    bool includeDynamic = true,
  }) async {
    final log = logger ?? _logger ?? _defaultLogger;
    final rawCmdTokens = parseCommand(cmd, shell);
    var activeCmd = List<CommandToken>.from(rawCmdTokens);

    if (activeCmd.isEmpty) return null;
    final rootToken = activeCmd.first;
    if (!rootToken.complete) {
      await _ensureShellAliasesLoaded(shell, adapter);
      return _ComputedSuggestionState(
        computation: runCommand(rootToken,
            aliases: _shellAliasCache[shell]?.keys ?? const []),
        rawTokens: rawCmdTokens,
        effectiveCwd: cwd,
      );
    }

    final ensure =
        ensureSpecLoaded ?? _ensureSpecLoaded ?? _defaultEnsureSpecLoaded;
    if (ensure != null) {
      evictOldSpecsIfNeeded();
      await ensure(rootToken.token);
    }
    FigSpec? spec = loadSpec(activeCmd);
    if (spec == null) {
      final expanded =
          await _expandRootAlias(activeCmd, shell, cwd, adapter, log);
      if (expanded != null) {
        activeCmd = expanded;
        final newRoot = activeCmd.first;
        if (ensure != null) await ensure(newRoot.token);
        spec = loadSpec(activeCmd);
      }
      if (spec == null) return null;
    }

    if (_requestGen != myGen) return null;

    final resolvedCwd = await adapter.resolveCwd(cwd, shell);

    if (_requestGen != myGen) return null;

    final gen = spec.generateSpec;
    if (gen != null) {
      try {
        final cacheKey =
            _buildGenerateSpecCacheKey(spec, activeCmd, resolvedCwd);
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

    final subcommand = runtimeNodeFromSpec(spec!);
    final lastToken = activeCmd.isNotEmpty ? activeCmd.last : null;
    final tokenCwdResult =
        await _resolveTokenCwd(lastToken, resolvedCwd, shell, adapter);

    if (_requestGen != myGen) return null;

    final effectiveCwd =
        tokenCwdResult.pathy ? tokenCwdResult.cwd : resolvedCwd;
    log?.call('[autocomplete] tokenCwd: '
        'lastToken="${lastToken?.token}" '
        'pathy=${tokenCwdResult.pathy} '
        'complete=${tokenCwdResult.complete} '
        'cwd="$effectiveCwd" '
        'filterPartial="${tokenCwdResult.filterPartial}"');

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
      ensureSpecLoaded:
          ensureSpecLoaded ?? _ensureSpecLoaded ?? _defaultEnsureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      aliasCache: _aliasResolveCache,
    );

    final result = await runSubcommand(
      subcommand,
      context,
      false,
      false,
      log,
      includeDynamic,
    );

    if (_requestGen != myGen || result == null) return null;

    return _ComputedSuggestionState(
      computation: result,
      rawTokens: rawCmdTokens,
      effectiveCwd: effectiveCwd,
    );
  }

  Future<SuggestionBlob?> _doGetSuggestions(
    String cmd,
    String cwd,
    Shell shell,
    CompleteAdapter adapter,
    int myGen, {
    EnsureSpecLoaded? ensureSpecLoaded,
    FilterStrategy? filterStrategyOverride,
    LogCallback? logger,
  }) async {
    final log = logger ?? _logger ?? _defaultLogger;
    final state = await _computeSuggestionState(
      cmd,
      cwd,
      shell,
      adapter,
      myGen,
      ensureSpecLoaded: ensureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      logger: logger,
    );
    if (state == null) return null;
    final resultBlob = state.computation.toBlob(shell);
    if (resultBlob.suggestions.isEmpty &&
        resultBlob.argumentDescription == null) return null;

    log?.call('[autocomplete] result: '
        '${resultBlob.suggestions.length} suggestions, '
        'charactersToDrop=${resultBlob.charactersToDrop}');
    _updateIncrementalSuggestionCache(
      cmd,
      state.rawTokens,
      state.effectiveCwd,
      shell,
      adapter,
      state.computation,
    );
    return resultBlob;
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
  Shell shell,
  CompleteAdapter adapter,
) async {
  _TokenCwdResult notPathy() => _TokenCwdResult(
      cwd: baseCwd,
      pathy: false,
      complete: false,
      basenameLength: 0,
      filterPartial: '');

  if (cmdToken == null || cmdToken.complete) return notPathy();
  final token = cmdToken.token;
  final separators = shellPathSeparators(shell);
  final hasPathSeparator =
      separators.any((separator) => token.contains(separator));
  final hasHomePrefix =
      token == '~' || token.startsWith('~/') || token.startsWith(r'~\');
  if (!hasPathSeparator && !hasHomePrefix) return notPathy();

  if (token == '~') {
    return _TokenCwdResult(
      cwd: adapter.getEnv('HOME') ?? baseCwd,
      pathy: true,
      complete: false,
      basenameLength: 1,
      filterPartial: '~',
    );
  }

  // Expand leading `~` to $HOME.
  String expanded;
  if (hasHomePrefix) {
    final home = adapter.getEnv('HOME') ?? '';
    expanded = home + token.substring(1);
  } else {
    expanded = token;
  }

  // Resolve relative paths against baseCwd.
  final String resolvedPath;
  if (isAbsolutePathForShell(expanded, shell)) {
    resolvedPath = expanded;
  } else {
    final separator = primaryPathSeparator(shell);
    final base = endsWithPathSeparator(baseCwd, shell)
        ? baseCwd.substring(0, baseCwd.length - 1)
        : baseCwd;
    resolvedPath = '$base$separator$expanded';
  }

  final complete = endsWithPathSeparator(token, shell);

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
  final lastSeparator = lastPathSeparatorIndex(resolvedPath, shell);
  if (lastSeparator < 0) return notPathy();
  final parentPath = resolvedPath.substring(0, lastSeparator + 1);
  final basename = resolvedPath.substring(lastSeparator + 1);
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
/// [timeout] caps the whole call; null on timeout (fall back to DB-only suggestions).
Future<SuggestionBlob?> getSuggestions(
  String cmd,
  String cwd,
  Shell shell,
  CompleteAdapter adapter, {
  EnsureSpecLoaded? ensureSpecLoaded,
  FilterStrategy? filterStrategyOverride,
  LogCallback? logger,
  Duration? timeout,
}) {
  return _defaultEngine.getSuggestions(cmd, cwd, shell, adapter,
      ensureSpecLoaded: ensureSpecLoaded,
      filterStrategyOverride: filterStrategyOverride,
      logger: logger,
      timeout: timeout);
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

String _buildGenerateSpecCacheKey(
  FigSpec spec,
  List<CommandToken> tokens,
  String cwd,
) {
  final tokenKey =
      tokens.map((t) => '${t.token}:${t.complete ? 1 : 0}').join('\u0001');
  return '${spec.name}|$cwd|$tokenKey';
}
