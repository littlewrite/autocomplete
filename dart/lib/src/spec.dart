// Fig-style completion spec types. Aligned with Fig schema / @withfig/autocomplete-types.

/// Filter strategy for matching partial input to suggestions.
enum FilterStrategy {
  fuzzy,
  prefix,
  defaultStrategy,
}

/// Suggestion type for display/icon.
enum SuggestionType {
  subcommand,
  option,
  arg,
  file,
  folder,
  mixin,
  shortcut,
  special,
}

/// Template name for built-in completions (filepaths, folders, history, help).
typedef TemplateName = String;

/// Cache strategy for generator results (aligned with Fig.Cache).
/// Use [FigCache] for typed usage; [dynamic] is accepted where TS allows inline objects.
class FigCache {
  const FigCache({
    this.strategy,
    this.ttl,
    this.cacheByDirectory,
    this.cacheKey,
  });

  /// "max-age" | "stale-while-revalidate"
  final String? strategy;

  /// TTL in milliseconds.
  final int? ttl;
  final bool? cacheByDirectory;
  final String? cacheKey;

  Map<String, dynamic> toJson() => {
        if (strategy != null) 'strategy': strategy,
        if (ttl != null) 'ttl': ttl,
        if (cacheByDirectory != null) 'cacheByDirectory': cacheByDirectory,
        if (cacheKey != null) 'cacheKey': cacheKey,
      };
}

/// Normalize args to List<FigArg>? (TS/JS allows single object or array; Dart unified as list).
List<FigArg>? _normalizeArgs(dynamic a) {
  if (a == null) return null;
  if (a is List) return List<FigArg>.from(a);
  return [a as FigArg];
}

/// Normalize generators to List<FigGenerator> (TS allows single or array).
List<FigGenerator> _normalizeGenerators(dynamic g) {
  if (g == null) return [];
  if (g is List) return List<FigGenerator>.from(g);
  return [g as FigGenerator];
}

/// A single suggestion item (subcommand, option, static suggestion).
/// Aligns with Fig.Suggestion and Fig.BaseSuggestion.
class FigSuggestion {
  const FigSuggestion({
    this.name,
    this.displayName,
    this.description,
    this.icon,
    this.priority = 50,
    this.insertValue,
    this.replaceValue,
    this.type,
    this.hidden = false,
    this.isDangerous = false,
    this.deprecated,
    this.previewComponent,
  });

  /// Name(s) - string or list of aliases (filtering match).
  final dynamic name;

  /// Display string in UI (defaults to name).
  final String? displayName;

  /// String or List<String> (joined by newline in TS; converter may emit list).
  final dynamic description;
  final String? icon;
  final int priority;
  final String? insertValue;

  /// Replace entire buffer with this value on insert.
  final String? replaceValue;
  final SuggestionType? type;
  final bool hidden;
  final bool isDangerous;

  /// true | or object with description/insertValue etc. (dynamic for TS compat).
  final dynamic deprecated;

  /// Path to preview component (e.g. 'ls/filepathPreview').
  final String? previewComponent;

  List<String> get nameList {
    if (name == null) return [];
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  String? get nameSingle => name is String
      ? name as String
      : (nameList.isNotEmpty ? nameList.first : null);

  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (displayName != null) 'displayName': displayName,
        if (description != null)
          'description': description is List
              ? (description as List).join('\n')
              : description,
        if (icon != null) 'icon': icon,
        'priority': priority,
        if (insertValue != null) 'insertValue': insertValue,
        if (replaceValue != null) 'replaceValue': replaceValue,
        if (type != null) 'type': type!.name,
        if (hidden) 'hidden': hidden,
        if (isDangerous) 'isDangerous': isDangerous,
        if (deprecated != null) 'deprecated': deprecated,
        if (previewComponent != null) 'previewComponent': previewComponent,
      };
}

/// Generator: run script and/or postProcess to produce suggestions.
/// TS: script can be string[] | Function | ExecuteCommandInput; trigger can be string | function | object.
/// Use [dynamic] for function/object fields so Dart specs stay JSON-serializable where possible.
class FigGenerator {
  const FigGenerator({
    this.script,
    this.scriptPath,
    this.template,
    this.filterTemplateSuggestions,
    this.postProcess,
    this.cache,
    this.getQueryTerm,
    this.trigger,
    this.splitOn,
    this.scriptTimeout,
  });

  /// Script command (e.g. ['git', 'branch']). TS also allows Function or ExecuteCommandInput.
  final List<String>? script;
  final String? scriptPath;

  /// Template(s): "filepaths" | "folders" | "history" | "help" or list.
  final dynamic template;

  /// Filter template output (function in TS; not serialized to JSON).
  final dynamic filterTemplateSuggestions;

  /// Post-process script stdout. Signature (out, [tokens]) -> List<FigSuggestion>.
  final List<FigSuggestion> Function(String out, [List<String>? tokens])?
      postProcess;

  /// FigCache or inline map (strategy, ttl, cacheByDirectory, cacheKey).
  final dynamic cache;

  /// String or function in TS; use string for JSON specs.
  final dynamic getQueryTerm;

  /// String, or { on: "change"|"threshold"|"match", length?, string? }. Function not serialized.
  final dynamic trigger;
  final String? splitOn;

  /// Timeout in ms (default 5000 in TS).
  final int? scriptTimeout;

  Map<String, dynamic> toJson() => {
        if (script != null) 'script': script,
        if (scriptPath != null) 'scriptPath': scriptPath,
        if (template != null) 'template': template,
        if (cache != null) 'cache': cache is FigCache ? cache.toJson() : cache,
        if (getQueryTerm != null && getQueryTerm is String)
          'getQueryTerm': getQueryTerm,
        if (trigger != null && (trigger is String || trigger is Map))
          'trigger': trigger,
        if (splitOn != null) 'splitOn': splitOn,
        if (scriptTimeout != null) 'scriptTimeout': scriptTimeout,
      };
}

/// Argument definition (positional arg with optional generators/template/suggestions).
/// TS: suggestions = (string|Suggestion)[]; generators = SingleOrArray<Generator>.
class FigArg {
  const FigArg({
    this.name,
    this.description,
    this.generators,
    this.template,
    this.suggestions,
    this.isOptional = false,
    this.isVariadic = false,
    this.isDangerous = false,
    this.filterStrategy,
    this.defaultValue,
    this.suggestCurrentToken,
    this.optionsCanBreakVariadicArg,
    this.isCommand,
    this.isScript,
    this.isModule,
    this.debounce,
    this.loadSpec,
    this.parserDirectives,
  });

  final String? name;
  final String? description;

  /// Single generator or list (TS SingleOrArray<Generator>).
  final dynamic generators;
  final dynamic
      template; // String or List<String>: "filepaths", "folders", "history", "help"
  /// String or FigSuggestion per item (TS (string|Suggestion)[]).
  final List<dynamic>? suggestions;
  final bool isOptional;
  final bool isVariadic;
  final bool isDangerous;

  /// Enum or string ('fuzzy'|'prefix'|'default') for converter compatibility.
  final dynamic filterStrategy;
  final String? defaultValue;

  /// Show current token as suggestion at top.
  final bool? suggestCurrentToken;

  /// Whether options can interrupt variadic args (default true in TS).
  final bool? optionsCanBreakVariadicArg;

  /// Arg is a command; load its spec (syntactic sugar for loadSpec).
  final bool? isCommand;

  /// Arg is a script; load spec from cwd .fig/autocomplete/build.
  final bool? isScript;

  /// Prefix for module spec path (deprecated in TS; use loadSpec).
  final String? isModule;

  /// Debounce keystrokes before running generators.
  final bool? debounce;

  /// Load spec: string, Subcommand, or function (dynamic for TS compat).
  final dynamic loadSpec;

  /// e.g. { alias: string | function }. Dynamic for TS compat.
  final dynamic parserDirectives;

  List<String> get templateList {
    if (template == null) return [];
    if (template is List) return List<String>.from(template as List);
    return [template as String];
  }

  /// Normalized list of generators (single or array).
  List<FigGenerator> get generatorsList => _normalizeGenerators(generators);

  /// Suggestions as List<FigSuggestion> (string entries become FigSuggestion(name: s)).
  List<FigSuggestion> get suggestionsAsList {
    if (suggestions == null) return [];
    return suggestions!
        .map((e) => e is FigSuggestion ? e : FigSuggestion(name: e as String))
        .toList();
  }

  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (generators != null)
          'generators': generators is List
              ? (generators as List)
                  .map((e) => (e as FigGenerator).toJson())
                  .toList()
              : (generators as FigGenerator).toJson(),
        if (template != null) 'template': template,
        if (suggestions != null)
          'suggestions': suggestions!
              .map((e) => e is FigSuggestion ? e.toJson() : e)
              .toList(),
        if (isOptional) 'isOptional': isOptional,
        if (isVariadic) 'isVariadic': isVariadic,
        if (isDangerous) 'isDangerous': isDangerous,
        if (filterStrategy != null)
          'filterStrategy': filterStrategy is FilterStrategy
              ? filterStrategy!.name
              : filterStrategy,
        if (defaultValue != null) 'default': defaultValue,
        if (suggestCurrentToken == true) 'suggestCurrentToken': true,
        if (optionsCanBreakVariadicArg != null)
          'optionsCanBreakVariadicArg': optionsCanBreakVariadicArg,
        if (isCommand == true) 'isCommand': true,
        if (isScript == true) 'isScript': true,
        if (isModule != null) 'isModule': isModule,
        if (debounce == true) 'debounce': true,
        if (loadSpec != null &&
            (loadSpec is String ||
                loadSpec is FigSubcommand ||
                loadSpec is Map))
          'loadSpec': loadSpec is FigSubcommand ? loadSpec.toJson() : loadSpec,
        if (parserDirectives != null && parserDirectives is Map)
          'parserDirectives': parserDirectives,
      };
}

/// Option (flag) definition. Extends BaseSuggestion in TS.
class FigOption {
  FigOption({
    required this.name,
    this.displayName,
    this.description,
    dynamic args,
    this.isRepeatable = false,
    this.isPersistent = false,
    this.isDangerous = false,
    this.isRequired,
    this.requiresEquals,
    this.requiresSeparator,
    this.dependsOn,
    this.exclusiveOn,
    this.insertValue,
    this.replaceValue,
    this.icon,
    this.priority,
    this.deprecated,
  }) : args = _normalizeArgs(args);

  /// Option name(s), e.g. ["-a", "--all"] or "-a".
  final dynamic name;
  final String? displayName;

  /// String or List<String> (multi-line in TS; converter may emit list).
  final dynamic description;

  /// Argument(s) for this option (TS/JS allows single object or array; Dart unified as list).
  final List<FigArg>? args;

  /// TS: boolean | number (false/1 = not repeatable, true = infinite, n = limit).
  final dynamic isRepeatable;
  final bool isPersistent;
  final bool isDangerous;
  final bool? isRequired;
  @Deprecated('Use requiresSeparator instead')
  final bool? requiresEquals;

  /// true or separator string (e.g. '=' or ':').
  final dynamic requiresSeparator;
  final List<String>? dependsOn;
  final List<String>? exclusiveOn;
  final String? insertValue;
  final String? replaceValue;
  final String? icon;
  final int? priority;
  final dynamic deprecated;

  List<String> get nameList {
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (displayName != null) 'displayName': displayName,
        if (description != null)
          'description': description is List
              ? (description as List).join('\n')
              : description,
        if (args != null && args!.isNotEmpty)
          'args': args!.map((e) => e.toJson()).toList(),
        if (isRepeatable != false && isRepeatable != null)
          'isRepeatable': isRepeatable,
        if (isPersistent) 'isPersistent': isPersistent,
        if (isDangerous) 'isDangerous': isDangerous,
        if (isRequired == true) 'isRequired': true,
        if (requiresEquals == true) 'requiresEquals': true,
        if (requiresSeparator != null) 'requiresSeparator': requiresSeparator,
        if (dependsOn != null) 'dependsOn': dependsOn,
        if (exclusiveOn != null) 'exclusiveOn': exclusiveOn,
        if (insertValue != null) 'insertValue': insertValue,
        if (replaceValue != null) 'replaceValue': replaceValue,
        if (icon != null) 'icon': icon,
        if (priority != null) 'priority': priority,
        if (deprecated != null) 'deprecated': deprecated,
      };
}

/// Subcommand (nested command). Extends BaseSuggestion in TS.
class FigSubcommand {
  FigSubcommand({
    required this.name,
    this.displayName,
    this.description,
    this.subcommands,
    this.options,
    dynamic args,
    this.icon,
    this.loadSpec,
    this.filterStrategy,
    this.priority,
    this.requiresSubcommand,
    this.additionalSuggestions,
    this.generateSpec,
    this.generateSpecCacheKey,
    this.parserDirectives,
    this.cache,
    this.insertValue,
    this.replaceValue,
    this.isDangerous,
    this.deprecated,
  }) : args = _normalizeArgs(args);

  final dynamic name; // String or List<String>
  final String? displayName;
  final String? description;
  final List<FigSubcommand>? subcommands;
  final List<FigOption>? options;

  /// Positional argument(s) (TS/JS allows single object or array; Dart unified as list).
  final List<FigArg>? args;
  final String? icon;

  /// String, Subcommand, or function (dynamic for TS compat).
  final dynamic loadSpec;
  final FilterStrategy? filterStrategy;
  final int? priority;
  final bool? requiresSubcommand;

  /// (string | Suggestion)[] in TS.
  final List<dynamic>? additionalSuggestions;

  /// Async function in TS; dynamic so not serialized to JSON.
  final dynamic generateSpec;

  /// Function or string in TS.
  final dynamic generateSpecCacheKey;

  /// { flagsArePosixNoncompliant?, optionsMustPrecedeArguments?, optionArgSeparators? }
  final dynamic parserDirectives;

  /// Whether to cache loadSpec/generateSpec result.
  final bool? cache;
  final String? insertValue;
  final String? replaceValue;
  final bool? isDangerous;
  final dynamic deprecated;

  List<String> get nameList {
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (displayName != null) 'displayName': displayName,
        if (description != null) 'description': description,
        if (subcommands != null)
          'subcommands': subcommands!.map((e) => e.toJson()).toList(),
        if (options != null)
          'options': options!.map((e) => e.toJson()).toList(),
        if (args != null && args!.isNotEmpty)
          'args': args!.map((e) => e.toJson()).toList(),
        if (icon != null) 'icon': icon,
        if (loadSpec != null &&
            (loadSpec is String ||
                loadSpec is FigSubcommand ||
                loadSpec is Map))
          'loadSpec': loadSpec is FigSubcommand ? loadSpec.toJson() : loadSpec,
        if (filterStrategy != null) 'filterStrategy': filterStrategy!.name,
        if (priority != null) 'priority': priority,
        if (requiresSubcommand == true) 'requiresSubcommand': true,
        if (additionalSuggestions != null)
          'additionalSuggestions': additionalSuggestions!
              .map((e) => e is FigSuggestion ? e.toJson() : e)
              .toList(),
        if (generateSpecCacheKey != null && generateSpecCacheKey is String)
          'generateSpecCacheKey': generateSpecCacheKey,
        if (parserDirectives != null && parserDirectives is Map)
          'parserDirectives': parserDirectives,
        if (cache != null) 'cache': cache,
        if (insertValue != null) 'insertValue': insertValue,
        if (replaceValue != null) 'replaceValue': replaceValue,
        if (isDangerous == true) 'isDangerous': true,
        if (deprecated != null) 'deprecated': deprecated,
      };
}

/// Top-level completion spec (one per CLI command). Same shape as Subcommand at root.
class FigSpec {
  FigSpec({
    required this.name,
    this.displayName,
    this.description,
    this.subcommands,
    this.options,
    dynamic args,
    this.icon,
    this.filterStrategy,
    this.hidden = false,
    this.insertValue,
    this.replaceValue,
    this.priority,
    this.deprecated,
    this.parserDirectives,
    this.requiresSubcommand,
    this.additionalSuggestions,
  }) : args = _normalizeArgs(args);

  final String name;
  final String? displayName;
  final String? description;
  final List<FigSubcommand>? subcommands;
  final List<FigOption>? options;

  /// Positional argument(s) (TS/JS allows single object or array; Dart unified as list).
  final List<FigArg>? args;
  final String? icon;

  /// Enum or string (e.g. 'fuzzy') for converter/generated code compatibility.
  final dynamic filterStrategy;
  final bool hidden;
  final String? insertValue;
  final String? replaceValue;
  final int? priority;
  final dynamic deprecated;

  /// { flagsArePosixNoncompliant?, optionsMustPrecedeArguments?, optionArgSeparators? }. Map for generated code.
  final ParserDirectives? parserDirectives;

  /// Whether a subcommand is required (space inserted after command name when true).
  final bool? requiresSubcommand;

  /// (string | Suggestion)[] in TS; appended below subcommand suggestions.
  final List<dynamic>? additionalSuggestions;

  Map<String, dynamic> toJson() => {
        'name': name,
        if (displayName != null) 'displayName': displayName,
        if (description != null)
          'description': description is List
              ? (description as List<String>).join('\n')
              : description,
        if (subcommands != null)
          'subcommands': subcommands!.map((e) => e.toJson()).toList(),
        if (options != null)
          'options': options!.map((e) => e.toJson()).toList(),
        if (args != null && args!.isNotEmpty)
          'args': args!.map((e) => e.toJson()).toList(),
        if (icon != null) 'icon': icon,
        if (filterStrategy != null)
          'filterStrategy': filterStrategy is FilterStrategy
              ? filterStrategy!.name
              : filterStrategy,
        if (hidden) 'hidden': hidden,
        if (parserDirectives != null)
          'parserDirectives': parserDirectives is ParserDirectives
              ? (parserDirectives as ParserDirectives).toJson()
              : parserDirectives as Map<String, dynamic>,
        if (insertValue != null) 'insertValue': insertValue,
        if (replaceValue != null) 'replaceValue': replaceValue,
        if (priority != null) 'priority': priority,
        if (deprecated != null) 'deprecated': deprecated,
        if (requiresSubcommand == true) 'requiresSubcommand': true,
        if (additionalSuggestions != null)
          'additionalSuggestions': additionalSuggestions!
              .map((e) => e is FigSuggestion ? e.toJson() : e)
              .toList(),
      };
}

// ============================================================================
// Convenience type aliases (aligned with TypeScript Fig.Spec naming)
// ============================================================================
// Note: FigSuggestion is NOT aliased to "Suggestion" to avoid conflict
// with the runtime Suggestion class in model.dart

/// Subcommand - mirrors TypeScript subcommand objects
typedef Subcommand = FigSubcommand;

/// Option/flag - mirrors TypeScript option objects
typedef Option = FigOption;

/// Argument - mirrors TypeScript args objects
typedef Arg = FigArg;

/// Generator - mirrors TypeScript generator objects
typedef Generator = FigGenerator;

/// Cache - mirrors TypeScript cache objects on generators
typedef Cache = FigCache;

class ParserDirectives {
  bool? flagsArePosixNoncompliant;
  bool? optionsMustPrecedeArguments;
  ParserDirectives(
      {this.flagsArePosixNoncompliant, this.optionsMustPrecedeArguments});
  // optionArgSeparators?: SingleOrArray<string>;

  Map<String, dynamic> toJson() => {
        if (flagsArePosixNoncompliant != null)
          'flagsArePosixNoncompliant': flagsArePosixNoncompliant,
        if (optionsMustPrecedeArguments != null)
          'optionsMustPrecedeArguments': optionsMustPrecedeArguments,
      };
}
