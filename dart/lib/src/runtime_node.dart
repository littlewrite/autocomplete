import 'spec.dart';
import 'suggestion.dart' show normalizeFilterStrategy;

/// Internal command-tree node used by runtime traversal.
///
/// This intentionally keeps only the fields the runtime consumes so that
/// completion traversal does not carry the full public Fig object graph around
/// the hot path.
class RuntimeCommandNode {
  const RuntimeCommandNode({
    required this.name,
    this.description,
    this.subcommands,
    this.options,
    this.args,
    this.icon,
    this.loadSpec,
    this.filterStrategy,
    this.priority,
    this.requiresSubcommand,
    this.additionalSuggestions,
    this.parserDirectives,
    this.hidden = false,
  });

  final dynamic name; // String or List<String>
  final String? description;
  final List<RuntimeCommandNode>? subcommands;
  final List<FigOption>? options;
  final List<FigArg>? args;
  final String? icon;
  final dynamic loadSpec;
  final FilterStrategy? filterStrategy;
  final int? priority;
  final bool? requiresSubcommand;
  final List<dynamic>? additionalSuggestions;
  final dynamic parserDirectives;
  final bool hidden;

  List<String> get nameList {
    if (name is List) return List<String>.from(name as List);
    return [name as String];
  }
}

RuntimeCommandNode runtimeNodeFromSpec(FigSpec spec) {
  return RuntimeCommandNode(
    name: spec.name,
    description: spec.description,
    subcommands: _runtimeNodeListFromSubcommands(spec.subcommands),
    options: spec.options,
    args: spec.args,
    icon: spec.icon,
    loadSpec: spec.loadSpec,
    filterStrategy: normalizeFilterStrategy(spec.filterStrategy),
    priority: spec.priority,
    requiresSubcommand: spec.requiresSubcommand,
    additionalSuggestions: spec.additionalSuggestions,
    parserDirectives: spec.parserDirectives,
    hidden: spec.hidden,
  );
}

RuntimeCommandNode runtimeNodeFromSubcommand(FigSubcommand subcommand) {
  return RuntimeCommandNode(
    name: subcommand.name,
    description: subcommand.description,
    subcommands: _runtimeNodeListFromSubcommands(subcommand.subcommands),
    options: subcommand.options,
    args: subcommand.args,
    icon: subcommand.icon,
    loadSpec: subcommand.loadSpec,
    filterStrategy: normalizeFilterStrategy(subcommand.filterStrategy),
    priority: subcommand.priority,
    requiresSubcommand: subcommand.requiresSubcommand,
    additionalSuggestions: subcommand.additionalSuggestions,
    parserDirectives: subcommand.parserDirectives,
    hidden: subcommand.hidden,
  );
}

RuntimeCommandNode mergeRuntimeCommandNode(
  RuntimeCommandNode original,
  RuntimeCommandNode loaded,
) {
  return RuntimeCommandNode(
    name: original.name,
    description: loaded.description ?? original.description,
    subcommands: loaded.subcommands ?? original.subcommands,
    options: loaded.options ?? original.options,
    args: loaded.args ?? original.args,
    icon: original.icon ?? loaded.icon,
    loadSpec: null,
    filterStrategy: original.filterStrategy ?? loaded.filterStrategy,
    priority: loaded.priority ?? original.priority,
    requiresSubcommand:
        loaded.requiresSubcommand ?? original.requiresSubcommand,
    additionalSuggestions:
        loaded.additionalSuggestions ?? original.additionalSuggestions,
    parserDirectives: loaded.parserDirectives ?? original.parserDirectives,
    hidden: original.hidden || loaded.hidden,
  );
}

List<RuntimeCommandNode>? _runtimeNodeListFromSubcommands(
  List<FigSubcommand>? subcommands,
) {
  if (subcommands == null || subcommands.isEmpty)
    return subcommands == null ? null : const [];
  return subcommands.map(runtimeNodeFromSubcommand).toList(growable: false);
}
