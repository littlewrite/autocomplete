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

/// A single suggestion item (subcommand, option, static suggestion).
class FigSuggestion {
  const FigSuggestion({
    this.name,
    this.description,
    this.icon,
    this.priority = 50,
    this.insertValue,
    this.type,
    this.hidden = false,
  });

  /// Name(s) - string or list of aliases.
  final dynamic name;

  final String? description;
  final String? icon;
  final int priority;
  final String? insertValue;
  final SuggestionType? type;
  final bool hidden;

  List<String> get nameList {
    if (name == null) return [];
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  String? get nameSingle => name is String ? name as String : (nameList.isNotEmpty ? nameList.first : null);

  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (icon != null) 'icon': icon,
        'priority': priority,
        if (insertValue != null) 'insertValue': insertValue,
        if (type != null) 'type': type!.name,
        if (hidden) 'hidden': hidden,
      };
}

/// Generator: run script and/or postProcess to produce suggestions.
class FigGenerator {
  const FigGenerator({
    this.script,
    this.scriptPath,
    this.postProcess,
    this.cache,
    this.getQueryTerm,
    this.trigger,
    this.splitOn,
  });

  /// Script command (e.g. ['git', 'branch']).
  final List<String>? script;

  final String? scriptPath;
  /// Post-process script stdout. Signature (out, [tokens]) -> List<FigSuggestion>.
  final List<FigSuggestion> Function(String out, [List<String>? tokens])? postProcess;
  final dynamic cache;
  final String? getQueryTerm;
  final String? trigger;
  final String? splitOn;

  Map<String, dynamic> toJson() => {
        if (script != null) 'script': script,
        if (scriptPath != null) 'scriptPath': scriptPath,
        if (cache != null) 'cache': cache,
        if (getQueryTerm != null) 'getQueryTerm': getQueryTerm,
        if (trigger != null) 'trigger': trigger,
        if (splitOn != null) 'splitOn': splitOn,
      };
}

/// Argument definition (positional arg with optional generators/template/suggestions).
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
  });

  final String? name;
  final String? description;
  final FigGenerator? generators;
  final dynamic template; // String or List<String>: "filepaths", "folders", "history", "help"
  final List<FigSuggestion>? suggestions;
  final bool isOptional;
  final bool isVariadic;
  final bool isDangerous;
  final FilterStrategy? filterStrategy;
  final String? defaultValue;

  List<String> get templateList {
    if (template == null) return [];
    if (template is List) return List<String>.from(template as List);
    return [template as String];
  }

  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (generators != null) 'generators': generators!.toJson(),
        if (template != null) 'template': template,
        if (suggestions != null) 'suggestions': suggestions!.map((e) => e.toJson()).toList(),
        if (isOptional) 'isOptional': isOptional,
        if (isVariadic) 'isVariadic': isVariadic,
        if (isDangerous) 'isDangerous': isDangerous,
        if (filterStrategy != null) 'filterStrategy': filterStrategy!.name,
        if (defaultValue != null) 'default': defaultValue,
      };
}

/// Option (flag) definition.
class FigOption {
  const FigOption({
    required this.name,
    this.description,
    this.args,
    this.isRepeatable = false,
    this.isDangerous = false,
    this.dependsOn,
    this.exclusiveOn,
    this.insertValue,
    this.priority,
  });

  /// Option name(s), e.g. ["-a", "--all"] or "-a".
  final dynamic name;

  final String? description;
  final FigArg? args;
  final bool isRepeatable;
  final bool isDangerous;
  final List<String>? dependsOn;
  final List<String>? exclusiveOn;
  final String? insertValue;
  final int? priority;

  List<String> get nameList {
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (description != null) 'description': description,
        if (args != null) 'args': args!.toJson(),
        if (isRepeatable) 'isRepeatable': isRepeatable,
        if (isDangerous) 'isDangerous': isDangerous,
        if (dependsOn != null) 'dependsOn': dependsOn,
        if (exclusiveOn != null) 'exclusiveOn': exclusiveOn,
        if (insertValue != null) 'insertValue': insertValue,
        if (priority != null) 'priority': priority,
      };
}

/// Subcommand (nested command).
class FigSubcommand {
  const FigSubcommand({
    required this.name,
    this.description,
    this.subcommands,
    this.options,
    this.args,
    this.icon,
    this.loadSpec,
    this.filterStrategy,
    this.priority,
  });

  final dynamic name; // String or List<String>
  final String? description;
  final List<FigSubcommand>? subcommands;
  final List<FigOption>? options;
  final FigArg? args;
  final String? icon;
  final dynamic loadSpec; // For versioned/lazy spec loading
  final FilterStrategy? filterStrategy;
  final int? priority;

  List<String> get nameList {
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (description != null) 'description': description,
        if (subcommands != null) 'subcommands': subcommands!.map((e) => e.toJson()).toList(),
        if (options != null) 'options': options!.map((e) => e.toJson()).toList(),
        if (args != null) 'args': args!.toJson(),
        if (icon != null) 'icon': icon,
        if (filterStrategy != null) 'filterStrategy': filterStrategy!.name,
        if (priority != null) 'priority': priority,
      };
}

/// Top-level completion spec (one per CLI command).
class FigSpec {
  const FigSpec({
    required this.name,
    this.description,
    this.subcommands,
    this.options,
    this.args,
    this.icon,
    this.filterStrategy,
  });

  final String name;
  final String? description;
  final List<FigSubcommand>? subcommands;
  final List<FigOption>? options;
  final FigArg? args;
  final String? icon;
  final FilterStrategy? filterStrategy;

  Map<String, dynamic> toJson() => {
        'name': name,
        if (description != null) 'description': description,
        if (subcommands != null) 'subcommands': subcommands!.map((e) => e.toJson()).toList(),
        if (options != null) 'options': options!.map((e) => e.toJson()).toList(),
        if (args != null) 'args': args!.toJson(),
        if (icon != null) 'icon': icon,
        if (filterStrategy != null) 'filterStrategy': filterStrategy!.name,
      };
}
