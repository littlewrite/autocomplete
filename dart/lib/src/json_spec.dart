import 'dart:async';
import 'dart:convert';

import 'registry.dart';
import 'runtime.dart' show EnsureSpecLoaded, setDefaultEnsureSpecLoaded;
import 'spec.dart';

typedef JsonAssetReader = Future<String> Function(String relativePath);

typedef JsonPostProcessHandler = List<FigSuggestion> Function(
  String output, [
  List<String>? tokens,
]);

typedef JsonCustomHandler = Future<List<FigSuggestion>> Function(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
);

/// Mirrors a function-valued Fig generator trigger.
///
/// The arguments are the newly typed and previously typed token respectively.
typedef JsonTriggerHandler = bool Function(String newToken, String oldToken);

/// Produces the command to run for a dynamic JSON `script` generator.
///
/// The callback receives the currently typed [List<String>] tokens and returns
/// a safe command representation: a token list (command plus arguments) or an
/// [ExecuteCommandInput]-shaped map. The runtime converts either through the
/// same adapter path as a static script, preserving `splitOn`, timeout, cwd,
/// and environment semantics.
typedef JsonScriptHandler = FutureOr<dynamic> Function(List<String> tokens);

/// Filters the suggestions produced by a template generator, mirroring Fig's
/// `filterTemplateSuggestions` contract.
typedef JsonFilterTemplateSuggestionsHandler = List<FigSuggestion> Function(
  List<FigSuggestion> suggestions, [
  FigGeneratorContext? context,
]);

typedef JsonGenerateSpecHandler = Future<FigSpec?> Function(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
);

typedef JsonGenerateSubcommandHandler = Future<FigSubcommand?> Function(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
);

/// Resolves an argument token to its command alias expansion.
typedef JsonAliasHandler = FutureOr<String?> Function(
  String token,
  ExecuteCommandFunction executeCommand,
);

/// Detects the installed command version for a JSON versioned spec.
typedef JsonVersionHandler = Future<String?> Function(
  ExecuteCommandFunction executeCommand,
);

/// Resolves one deferred version document named by a JSON `loadSpec` link.
typedef JsonVersionedSpecReader = Future<FigSpec> Function(String loadSpec);

/// Produces a subcommand's `options` list for a JSON whole-`options` handler
/// reference (`options: {handler}`). The five shipped handlers build static
/// lists, so callers resolve them synchronously at parse time.
typedef JsonOptionsHandler = FutureOr<List<FigOption>> Function(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
);

/// Produces a subcommand's `subcommands` list for a JSON whole-`subcommands`
/// handler reference (`subcommands: {handler}`).
typedef JsonSubcommandsHandler = FutureOr<List<FigSubcommand>> Function(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
);

/// Produces the static option names used by an `exclusiveOn` handler.
///
/// `exclusiveOn` is consumed while parsing a spec, so these handlers must be
/// synchronous.
typedef JsonExclusiveOnHandler = List<String> Function();

/// Produces the spec for a JSON `args.loadSpec` handler reference
/// (`loadSpec: {handler}`). The one shipped example is token-dependent, so it
/// is deferred and invoked by the runtime when the argument is completed.
typedef JsonLoadSpecHandler = FutureOr<FigSpec?> Function(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
);

/// How JSON loading behaves when a referenced Dart handler has not been
/// ported yet. [returnEmpty] keeps static completion available while recording
/// the missing reference for migration work.
enum MissingJsonHandlerPolicy { reject, returnEmpty }

class UnresolvedJsonHandler {
  const UnresolvedJsonHandler({required this.id, required this.path});

  final String id;
  final String path;
}

/// Host-language implementations for dynamic values referenced by JSON.
class JsonHandlerRegistry {
  JsonHandlerRegistry({
    this.missingHandlerPolicy = MissingJsonHandlerPolicy.reject,
  });

  final MissingJsonHandlerPolicy missingHandlerPolicy;
  final Map<String, JsonPostProcessHandler> _postProcessors = {};
  final Map<String, JsonCustomHandler> _custom = {};
  final Map<String, JsonTriggerHandler> _triggers = {};
  final Map<String, JsonScriptHandler> _scripts = {};
  final Map<String, JsonFilterTemplateSuggestionsHandler>
      _filterTemplateSuggestions = {};
  final Map<String, JsonGenerateSpecHandler> _generateSpec = {};
  final Map<String, JsonGenerateSubcommandHandler> _generateSubcommand = {};
  final Map<String, JsonAliasHandler> _aliases = {};
  final Map<String, JsonVersionHandler> _versions = {};
  final Map<String, JsonOptionsHandler> _options = {};
  final Map<String, JsonSubcommandsHandler> _subcommands = {};
  final Map<String, JsonExclusiveOnHandler> _exclusiveOn = {};
  final Map<String, JsonLoadSpecHandler> _loadSpecs = {};
  final List<UnresolvedJsonHandler> _unresolvedHandlers = [];

  List<UnresolvedJsonHandler> get unresolvedHandlers =>
      List<UnresolvedJsonHandler>.unmodifiable(_unresolvedHandlers);

  void registerPostProcess(String id, JsonPostProcessHandler handler) {
    _postProcessors[id] = handler;
  }

  void registerCustom(String id, JsonCustomHandler handler) {
    _custom[id] = handler;
  }

  void registerTrigger(String id, JsonTriggerHandler handler) {
    _triggers[id] = handler;
  }

  void registerScript(String id, JsonScriptHandler handler) {
    _scripts[id] = handler;
  }

  void registerFilterTemplateSuggestions(
      String id, JsonFilterTemplateSuggestionsHandler handler) {
    _filterTemplateSuggestions[id] = handler;
  }

  void registerGenerateSpec(String id, JsonGenerateSpecHandler handler) {
    _generateSpec[id] = handler;
  }

  void registerGenerateSubcommand(
      String id, JsonGenerateSubcommandHandler handler) {
    _generateSubcommand[id] = handler;
  }

  void registerAlias(String id, JsonAliasHandler handler) {
    _aliases[id] = handler;
  }

  void registerVersion(String id, JsonVersionHandler handler) {
    _versions[id] = handler;
  }

  void registerOptions(String id, JsonOptionsHandler handler) {
    _options[id] = handler;
  }

  void registerSubcommands(String id, JsonSubcommandsHandler handler) {
    _subcommands[id] = handler;
  }

  void registerExclusiveOn(String id, JsonExclusiveOnHandler handler) {
    _exclusiveOn[id] = handler;
  }

  void registerLoadSpec(String id, JsonLoadSpecHandler handler) {
    _loadSpecs[id] = handler;
  }

  JsonPostProcessHandler? postProcess(String id) => _postProcessors[id];
  JsonCustomHandler? custom(String id) => _custom[id];
  JsonTriggerHandler? trigger(String id) => _triggers[id];
  JsonScriptHandler? script(String id) => _scripts[id];
  JsonFilterTemplateSuggestionsHandler? filterTemplateSuggestions(String id) =>
      _filterTemplateSuggestions[id];
  JsonGenerateSpecHandler? generateSpec(String id) => _generateSpec[id];
  JsonGenerateSubcommandHandler? generateSubcommand(String id) =>
      _generateSubcommand[id];
  JsonAliasHandler? alias(String id) => _aliases[id];
  JsonVersionHandler? version(String id) => _versions[id];
  JsonOptionsHandler? options(String id) => _options[id];
  JsonSubcommandsHandler? subcommands(String id) => _subcommands[id];
  JsonExclusiveOnHandler? exclusiveOn(String id) => _exclusiveOn[id];
  JsonLoadSpecHandler? loadSpec(String id) => _loadSpecs[id];

  /// Every handler ID registered across all categories (for tooling/tests).
  Set<String> allRegisteredIds() => <String>{
        ..._postProcessors.keys,
        ..._custom.keys,
        ..._triggers.keys,
        ..._scripts.keys,
        ..._filterTemplateSuggestions.keys,
        ..._generateSpec.keys,
        ..._generateSubcommand.keys,
        ..._aliases.keys,
        ..._versions.keys,
        ..._options.keys,
        ..._subcommands.keys,
        ..._exclusiveOn.keys,
        ..._loadSpecs.keys,
      };

  void reportUnresolved(String id, String path) {
    if (_unresolvedHandlers.any((item) => item.id == id && item.path == path)) {
      return;
    }
    _unresolvedHandlers.add(UnresolvedJsonHandler(id: id, path: path));
  }

  JsonCustomHandler? resolveCustom(String id, String path) {
    final handler = custom(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyCustom
        : null;
  }

  JsonPostProcessHandler? resolvePostProcess(String id, String path) {
    final handler = postProcess(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyPostProcess
        : null;
  }

  JsonTriggerHandler? resolveTrigger(String id, String path) {
    final handler = trigger(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyTrigger
        : null;
  }

  JsonScriptHandler? resolveScript(String id, String path) {
    final handler = script(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyScript
        : null;
  }

  JsonFilterTemplateSuggestionsHandler? resolveFilterTemplateSuggestions(
      String id, String path) {
    final handler = filterTemplateSuggestions(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyFilterTemplateSuggestions
        : null;
  }

  JsonGenerateSpecHandler? resolveGenerateSpec(String id, String path) {
    final handler = generateSpec(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyGenerateSpec
        : null;
  }

  JsonGenerateSubcommandHandler? resolveGenerateSubcommand(
      String id, String path) {
    final handler = generateSubcommand(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyGenerateSubcommand
        : null;
  }

  JsonAliasHandler? resolveAlias(String id, String path) {
    final handler = alias(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyAlias
        : null;
  }

  JsonVersionHandler? resolveVersion(String id, String path) {
    final handler = version(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyVersion
        : null;
  }

  JsonOptionsHandler? resolveOptions(String id, String path) {
    final handler = options(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyOptions
        : null;
  }

  JsonSubcommandsHandler? resolveSubcommands(String id, String path) {
    final handler = subcommands(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptySubcommands
        : null;
  }

  JsonExclusiveOnHandler? resolveExclusiveOn(String id, String path) {
    final handler = exclusiveOn(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyExclusiveOn
        : null;
  }

  JsonLoadSpecHandler? resolveLoadSpec(String id, String path) {
    final handler = loadSpec(id);
    if (handler != null) return handler;
    reportUnresolved(id, path);
    return missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty
        ? _emptyLoadSpec
        : null;
  }
}

Future<List<FigSuggestion>> _emptyCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async =>
    const <FigSuggestion>[];

List<FigSuggestion> _emptyPostProcess(String output, [List<String>? tokens]) =>
    const <FigSuggestion>[];

bool _emptyTrigger(String newToken, String oldToken) => true;

Future<dynamic> _emptyScript(List<String> tokens) async => null;

List<FigSuggestion> _emptyFilterTemplateSuggestions(
        List<FigSuggestion> suggestions,
        [FigGeneratorContext? context]) =>
    suggestions;

Future<FigSpec?> _emptyGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async =>
    null;

Future<FigSubcommand?> _emptyGenerateSubcommand(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async =>
    null;

Future<String?> _emptyAlias(
  String token,
  ExecuteCommandFunction executeCommand,
) async =>
    null;

Future<String?> _emptyVersion(ExecuteCommandFunction executeCommand) async =>
    null;

List<FigOption> _emptyOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) =>
    const <FigOption>[];

List<FigSubcommand> _emptySubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) =>
    const <FigSubcommand>[];

List<String> _emptyExclusiveOn() => const <String>[];

Future<FigSpec?> _emptyLoadSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async =>
    null;

class JsonSpecFormatException implements FormatException {
  JsonSpecFormatException(this.message, [this._source]);

  @override
  final String message;
  final String? _source;

  @override
  int? get offset => null;

  @override
  String? get source => _source;

  @override
  String toString() => source == null ? message : '$message ($source)';
}

dynamic _value(Map<String, dynamic> map, String key, String path) {
  if (!map.containsKey(key)) return null;
  return map[key];
}

Map<String, dynamic> _object(dynamic value, String path) {
  if (value is! Map) {
    throw JsonSpecFormatException('Expected object at $path');
  }
  return Map<String, dynamic>.from(value);
}

List<dynamic> _list(dynamic value, String path) {
  if (value is! List) {
    throw JsonSpecFormatException('Expected array at $path');
  }
  return value;
}

String _string(dynamic value, String path) {
  if (value is! String) {
    throw JsonSpecFormatException('Expected string at $path');
  }
  return value;
}

bool _bool(dynamic value, String path) {
  if (value is! bool) {
    throw JsonSpecFormatException('Expected boolean at $path');
  }
  return value;
}

int _int(dynamic value, String path) {
  if (value is! int) {
    throw JsonSpecFormatException('Expected integer at $path');
  }
  return value;
}

dynamic _text(dynamic value, String path) {
  if (value is String) return value;
  if (value is List && value.every((item) => item is String)) return value;
  throw JsonSpecFormatException('Expected string or string array at $path');
}

String _description(dynamic value, String path) {
  final text = _text(value, path);
  return text is List ? text.join('\n') : text as String;
}

dynamic _name(dynamic value, String path) {
  if (value is String) return value;
  if (value is List && value.isNotEmpty && value.every((n) => n is String)) {
    return List<String>.from(value);
  }
  throw JsonSpecFormatException(
      'Expected name string or string array at $path');
}

FilterStrategy? _filter(dynamic value, String path) {
  if (value == null) return null;
  final name = _string(value, path);
  switch (name) {
    case 'fuzzy':
      return FilterStrategy.fuzzy;
    case 'prefix':
      return FilterStrategy.prefix;
    case 'default':
      return FilterStrategy.defaultStrategy;
    default:
      throw JsonSpecFormatException('Unknown filter strategy at $path: $name');
  }
}

SuggestionType? _suggestionType(dynamic value, String path) {
  if (value == null) return null;
  final name = _string(value, path);
  for (final type in SuggestionType.values) {
    if (type.name == name) return type;
  }
  throw JsonSpecFormatException('Unknown suggestion type at $path: $name');
}

Map<String, dynamic>? _handlerValue(dynamic value, String path) {
  if (value == null) return null;
  if (value is String) return {'handler': value};
  return _object(value, path);
}

String? _handlerId(dynamic value, String path) {
  final object = _handlerValue(value, path);
  if (object == null) return null;
  final id = object['handler'];
  return _string(id, '$path.handler');
}

bool _isHandlerReference(dynamic value) =>
    value is Map && value['handler'] is String;

bool _usesEmptyFallback(JsonHandlerRegistry? handlers) =>
    handlers?.missingHandlerPolicy == MissingJsonHandlerPolicy.returnEmpty;

/// Resolves a JSON whole-`subcommands` handler ref (`subcommands: {handler}`)
/// to a ready-made `List<FigSubcommand>` by invoking the registered handler at
/// parse time. Shipped structural handlers build static lists synchronously;
/// a Future result (never expected for these) falls back to empty.
List<FigSubcommand>? _resolveSubcommandList(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (!_isHandlerReference(value)) return null;
  final id = _handlerId(value, path)!;
  final handler = handlers?.resolveSubcommands(id, path);
  if (handler == null) {
    throw JsonSpecFormatException('Unknown subcommands handler at $path: $id');
  }
  final result = handler(const [], null, null);
  if (result is Future) return const <FigSubcommand>[];
  return result;
}

/// Resolves a JSON whole-`options` handler ref (`options: {handler}`) to a
/// ready-made `List<FigOption>` by invoking the registered handler at parse
/// time.
List<FigOption>? _resolveOptionList(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (!_isHandlerReference(value)) return null;
  final id = _handlerId(value, path)!;
  final handler = handlers?.resolveOptions(id, path);
  if (handler == null) {
    throw JsonSpecFormatException('Unknown options handler at $path: $id');
  }
  final result = handler(const [], null, null);
  if (result is Future) return const <FigOption>[];
  return result;
}

/// Parses a `subcommands` JSON array, splicing registered per-item handler refs
/// (`subcommands[i]: {handler}`) into the list. Per-item refs mirror a TS array
/// spread (e.g. `...plusCommands.map(...)`); the handler returns the list of
/// subcommands to insert at that position. Whole-slot refs must already have
/// been resolved by the caller.
List<FigSubcommand> _subcommandItems(
  List<dynamic> values,
  String path,
  JsonHandlerRegistry? handlers,
) {
  final result = <FigSubcommand>[];
  for (var i = 0; i < values.length; i++) {
    final item = values[i];
    final itemPath = '$path[$i]';
    if (_isHandlerReference(item)) {
      final id = _handlerId(item, itemPath)!;
      final handler = handlers?.resolveSubcommands(id, itemPath);
      if (handler == null) {
        if (_usesEmptyFallback(handlers)) continue;
        throw JsonSpecFormatException(
            'Unknown subcommands handler at $itemPath: $id');
      }
      final out = handler(const [], null, null);
      if (out is Future) continue;
      result.addAll(out);
    } else {
      result.add(_subcommand(_object(item, itemPath), itemPath, handlers));
    }
  }
  return result;
}

/// Parses an `options` JSON array, splicing registered per-item handler refs
/// (`options[i]: {handler}`) into the list, mirroring a TS array spread.
List<FigOption> _optionItems(
  List<dynamic> values,
  String path,
  JsonHandlerRegistry? handlers,
) {
  final result = <FigOption>[];
  for (var i = 0; i < values.length; i++) {
    final item = values[i];
    final itemPath = '$path[$i]';
    if (_isHandlerReference(item)) {
      final id = _handlerId(item, itemPath)!;
      final handler = handlers?.resolveOptions(id, itemPath);
      if (handler == null) {
        if (_usesEmptyFallback(handlers)) continue;
        throw JsonSpecFormatException(
            'Unknown options handler at $itemPath: $id');
      }
      final out = handler(const [], null, null);
      if (out is Future) continue;
      result.addAll(out);
    } else {
      result.add(_option(_object(item, itemPath), itemPath, handlers));
    }
  }
  return result;
}

/// Parses a `suggestions` JSON array. Per-item handler refs (`suggestions[i]:
/// {handler}`) cannot be spliced at parse time — suggestion handlers are
/// async — so they are tolerated as inert (a null-named suggestion, dropped by
/// the runtime) exactly like a plain unknown suggestion object.
List<dynamic> _suggestionItems(
  List<dynamic> values,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return values
      .asMap()
      .entries
      .map((entry) => _suggestionValue(entry.value, '$path[${entry.key}]'))
      .toList();
}

/// Resolves a JSON `loadSpec` handler ref to a deferred callback that the
/// runtime invokes with the typed argument token. Non-ref values pass through.
///
/// Unlike whole-`options`/`subcommands` refs (which replace the entire slot and
/// must resolve at parse time), `loadSpec` refs are per-arg runtime behavior
/// with an `isCommand` fallback, so an unregistered handler degrades to `null`
/// (fall through) rather than failing the whole spec parse.
dynamic _resolveLoadSpecRef(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (!_isHandlerReference(value)) return value;
  final id = _handlerId(value, path)!;
  return _deferredLoadSpecHandler(id, path, handlers);
}

JsonLoadSpecHandler _deferredLoadSpecHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (tokens, executeCommand, context) {
    final handler = handlers?.resolveLoadSpec(id, path);
    if (handler == null) return null;
    return handler(tokens, executeCommand, context);
  };
}

JsonCustomHandler _deferredCustomHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (tokens, executeCommand, context) async {
    final handler = handlers?.resolveCustom(id, path);
    if (handler == null) {
      throw JsonSpecFormatException('Unknown custom handler at $path: $id');
    }
    return handler(tokens, executeCommand, context);
  };
}

JsonPostProcessHandler _deferredPostProcessHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (output, [tokens]) {
    final handler = handlers?.resolvePostProcess(id, path);
    if (handler == null) {
      throw JsonSpecFormatException(
          'Unknown postProcess handler at $path: $id');
    }
    return handler(output, tokens);
  };
}

JsonTriggerHandler _deferredTriggerHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (newToken, oldToken) {
    final handler = handlers?.resolveTrigger(id, path);
    if (handler == null) {
      throw JsonSpecFormatException('Unknown trigger handler at $path: $id');
    }
    return handler(newToken, oldToken);
  };
}

JsonScriptHandler _deferredScriptHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (tokens) async {
    final handler = handlers?.resolveScript(id, path);
    if (handler == null) {
      throw JsonSpecFormatException('Unknown script handler at $path: $id');
    }
    return handler(tokens);
  };
}

JsonFilterTemplateSuggestionsHandler _deferredFilterTemplateSuggestionsHandler(
  String id,
  String path,
  JsonHandlerRegistry? handlers,
) {
  return (suggestions, [context]) {
    final handler = handlers?.resolveFilterTemplateSuggestions(id, path);
    if (handler == null) {
      throw JsonSpecFormatException(
          'Unknown filterTemplateSuggestions handler at $path: $id');
    }
    return handler(suggestions, context);
  };
}

/// Dynamic values must appear only in fields with a typed runtime callback.
/// The exporter retains every unsupported function as a handler reference. In
/// migration mode, remove those values before normal parsing and keep an audit
/// entry; strict mode leaves them intact so the parser rejects the document.
dynamic _sanitizeUnsupportedHandlerReferences(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers, {
  String? field,
}) {
  if (_isHandlerReference(value)) {
    const supportedFields = {
      'alias',
      'custom',
      'postProcess',
      'trigger',
      'script',
      'filterTemplateSuggestions',
      'generateSpec',
      'getVersion',
      'generators',
      'suggestions',
      'loadSpec',
      'options',
      'subcommands',
      'exclusiveOn',
    };
    if (supportedFields.contains(field)) return value;
    final id = _handlerId(value, path)!;
    handlers?.reportUnresolved(id, path);
    return _OmittedJsonValue.instance;
  }
  if (value is List) {
    // Whole-slot and per-item `options`/`subcommands` references both have
    // dedicated parser support. Preserve their field context for list items
    // so migration mode can resolve registered handlers (or use the typed
    // empty fallback for an unported handler) instead of silently dropping it.
    final childField = field;
    return value
        .asMap()
        .entries
        .map((entry) => _sanitizeUnsupportedHandlerReferences(
              entry.value,
              '$path[${entry.key}]',
              handlers,
              field: childField,
            ))
        .where((item) => item is! _OmittedJsonValue)
        .toList();
  }
  if (value is Map) {
    final result = <String, dynamic>{};
    for (final entry in value.entries) {
      final key = entry.key.toString();
      final item = _sanitizeUnsupportedHandlerReferences(
        entry.value,
        path.isEmpty ? key : '$path.$key',
        handlers,
        field: key,
      );
      if (item is! _OmittedJsonValue) result[key] = item;
    }
    return result;
  }
  return value;
}

class _OmittedJsonValue {
  const _OmittedJsonValue._();

  static const instance = _OmittedJsonValue._();
}

ParserDirectives? _parserDirectives(dynamic value, String path) {
  if (value == null) return null;
  final map = _object(value, path);
  final separators = map['optionArgSeparators'];
  return ParserDirectives(
    flagsArePosixNoncompliant: map['flagsArePosixNoncompliant'] == null
        ? null
        : _bool(map['flagsArePosixNoncompliant'],
            '$path.flagsArePosixNoncompliant'),
    optionsMustPrecedeArguments: map['optionsMustPrecedeArguments'] == null
        ? null
        : _bool(map['optionsMustPrecedeArguments'],
            '$path.optionsMustPrecedeArguments'),
    optionArgSeparators: separators == null
        ? null
        : _list(separators, '$path.optionArgSeparators')
            .map((item) => _string(item, '$path.optionArgSeparators[]'))
            .toList(),
  );
}

FigSuggestion _suggestion(Map<String, dynamic> map, String path) {
  return FigSuggestion(
    name: map['name'] == null ? null : _name(map['name'], '$path.name'),
    displayName: map['displayName'] == null
        ? null
        : _string(map['displayName'], '$path.displayName'),
    description: map['description'] == null
        ? null
        : _text(map['description'], '$path.description'),
    icon: map['icon'] == null ? null : _string(map['icon'], '$path.icon'),
    priority:
        map['priority'] == null ? 50 : _int(map['priority'], '$path.priority'),
    insertValue: map['insertValue'] == null
        ? null
        : _string(map['insertValue'], '$path.insertValue'),
    replaceValue: map['replaceValue'] == null
        ? null
        : _string(map['replaceValue'], '$path.replaceValue'),
    type: _suggestionType(map['type'], '$path.type'),
    hidden:
        map['hidden'] == null ? false : _bool(map['hidden'], '$path.hidden'),
    isDangerous: map['isDangerous'] == null
        ? false
        : _bool(map['isDangerous'], '$path.isDangerous'),
    deprecated: map['deprecated'],
    previewComponent: map['previewComponent'] == null
        ? null
        : _string(map['previewComponent'], '$path.previewComponent'),
    loadSpec: map['loadSpec'],
  );
}

FigGenerator _generator(
  Map<String, dynamic> map,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (_isHandlerReference(map)) {
    final id = _handlerId(map, path)!;
    return FigGenerator(
      custom: _deferredCustomHandler(id, path, handlers),
      debugHandlers: {'custom': '$id@$path'},
    );
  }
  final customId = _handlerId(map['custom'], '$path.custom');
  final postProcessId = _handlerId(map['postProcess'], '$path.postProcess');
  // A plain trigger string (for example `:`) is declarative data. Only an
  // explicit handler object selects a host-language trigger callback.
  final triggerId = _isHandlerReference(map['trigger'])
      ? _handlerId(map['trigger'], '$path.trigger')
      : null;
  final custom = customId == null
      ? null
      : _deferredCustomHandler(customId, '$path.custom', handlers);
  final postProcess = postProcessId == null
      ? null
      : _deferredPostProcessHandler(
          postProcessId, '$path.postProcess', handlers);
  final trigger = triggerId == null
      ? map['trigger']
      : _deferredTriggerHandler(triggerId, '$path.trigger', handlers);
  // A filterTemplateSuggestions handler reference selects a host-language
  // callback that post-filters the template suggestion list.
  final filterId = _isHandlerReference(map['filterTemplateSuggestions'])
      ? _handlerId(
          map['filterTemplateSuggestions'], '$path.filterTemplateSuggestions')
      : null;
  final filterTemplateSuggestions = filterId == null
      ? map['filterTemplateSuggestions']
      : _deferredFilterTemplateSuggestionsHandler(
          filterId, '$path.filterTemplateSuggestions', handlers);
  // A script may be static (string/array), a declarative command object, or a
  // handler reference selecting a host-language command producer.
  final scriptId = _isHandlerReference(map['script'])
      ? _handlerId(map['script'], '$path.script')
      : null;
  final script = scriptId == null
      ? map['script']
      : _deferredScriptHandler(scriptId, '$path.script', handlers);
  if (script != null &&
      script is! String &&
      script is! List &&
      script is! Map &&
      script is! Function) {
    throw JsonSpecFormatException(
        'Expected script string, array, object, or handler at $path.script');
  }
  final template = map['template'];
  if (template != null &&
      template is! String &&
      template is! List &&
      template is! Map) {
    throw JsonSpecFormatException(
        'Expected template string or array at $path.template');
  }
  final debugHandlers = <String, String>{
    if (customId != null) 'custom': '$customId@$path.custom',
    if (postProcessId != null)
      'postProcess': '$postProcessId@$path.postProcess',
    if (triggerId != null) 'trigger': '$triggerId@$path.trigger',
    if (filterId != null)
      'filterTemplateSuggestions': '$filterId@$path.filterTemplateSuggestions',
    if (scriptId != null) 'script': '$scriptId@$path.script',
  };
  return FigGenerator(
    script: script is List
        ? _list(script, '$path.script')
            .map((item) => _string(item, '$path.script[]'))
            .toList()
        : script,
    scriptPath: map['scriptPath'] == null
        ? null
        : _string(map['scriptPath'], '$path.scriptPath'),
    // Templates can be named strings or declarative descriptors. Keep maps in
    // an array intact so a converted spec can combine filtered templates.
    template: template is List
        ? _list(template, '$path.template').map((item) {
            if (item is String || item is Map) return item;
            throw JsonSpecFormatException(
              'Expected template string or object at $path.template[]',
            );
          }).toList()
        : template,
    postProcess: postProcess,
    custom: custom,
    filterTemplateSuggestions: filterTemplateSuggestions,
    cache: map['cache'],
    getQueryTerm: map['getQueryTerm'],
    trigger: trigger,
    splitOn: map['splitOn'] == null
        ? null
        : _string(map['splitOn'], '$path.splitOn'),
    scriptTimeout: map['scriptTimeout'] == null
        ? null
        : _int(map['scriptTimeout'], '$path.scriptTimeout'),
    debugHandlers: debugHandlers.isEmpty ? null : debugHandlers,
  );
}

List<FigSuggestion> _suggestions(dynamic value, String path) {
  if (value == null) return const [];
  if (value is String) return [FigSuggestion(name: value)];
  return _list(value, path)
      .asMap()
      .entries
      .map((entry) => _figSuggestionValue(entry.value, '$path[${entry.key}]'))
      .toList();
}

List<String>? _exclusiveOn(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (value == null) return null;
  if (_isHandlerReference(value)) {
    final id = _handlerId(value, path)!;
    final handler = handlers?.resolveExclusiveOn(id, path);
    if (handler == null) {
      throw JsonSpecFormatException(
          'Unknown exclusiveOn handler at $path: $id');
    }
    return handler();
  }
  return _list(value, path).map((v) => _string(v, '$path[]')).toList();
}

dynamic _suggestionValue(dynamic value, String path) {
  if (value is String) return value;
  return _figSuggestionValue(value, path);
}

FigSuggestion _figSuggestionValue(dynamic value, String path) {
  if (value is String) return FigSuggestion(name: value);
  if (value is List &&
      value.length == 2 &&
      value[0] is String &&
      value[1] is String) {
    return FigSuggestion(name: value[0] as String, description: value[1]);
  }
  return _suggestion(_object(value, path), path);
}

List<FigArg> _args(dynamic value, String path, JsonHandlerRegistry? handlers) {
  if (value == null) return const [];
  if (_isHandlerReference(value)) {
    final id = _handlerId(value, path)!;
    handlers?.reportUnresolved(id, path);
    if (_usesEmptyFallback(handlers)) return const [];
    throw JsonSpecFormatException(
        'Unsupported dynamic args handler at $path: $id');
  }
  final values = value is List ? value : [value];
  return values
      .asMap()
      .entries
      .map((entry) => _arg(_object(entry.value, '$path[${entry.key}]'),
          '$path[${entry.key}]', handlers))
      .toList();
}

dynamic _argParserDirectives(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
) {
  if (value == null) return null;
  final directives = _object(value, path);
  final aliasValue = directives['alias'];
  if (!_isHandlerReference(aliasValue)) return directives;
  final id = _handlerId(aliasValue, '$path.alias')!;
  final alias = handlers?.resolveAlias(id, '$path.alias');
  if (alias == null) {
    throw JsonSpecFormatException('Unknown alias handler at $path.alias: $id');
  }
  return {...directives, 'alias': alias};
}

FigArg _arg(
    Map<String, dynamic> map, String path, JsonHandlerRegistry? handlers) {
  final generators = map['generators'];
  final generatorValues = generators == null
      ? const <dynamic>[]
      : generators is List
          ? generators
          : [generators];
  final suggestions = map['suggestions'];
  final suggestionHandlerId = _isHandlerReference(suggestions)
      ? _handlerId(suggestions, '$path.suggestions')
      : null;
  final suggestionGenerator = suggestionHandlerId == null
      ? null
      : _deferredCustomHandler(
          suggestionHandlerId, '$path.suggestions', handlers);
  return FigArg(
    name: map['name'] == null ? null : _string(map['name'], '$path.name'),
    description: map['description'] == null
        ? null
        : _description(map['description'], '$path.description'),
    generators: [
      ...generatorValues.asMap().entries.map((entry) => _generator(
          _object(entry.value, '$path.generators[${entry.key}]'),
          '$path.generators[${entry.key}]',
          handlers)),
      if (suggestionGenerator != null)
        FigGenerator(
          custom: suggestionGenerator,
          debugHandlers: suggestionHandlerId == null
              ? null
              : {'custom': '$suggestionHandlerId@$path.suggestions'},
        ),
    ],
    template: map['template'],
    suggestions: suggestions == null
        ? null
        : suggestionHandlerId != null
            ? null
            : _suggestionItems(_list(suggestions, '$path.suggestions'),
                '$path.suggestions', handlers),
    isOptional: map['isOptional'] == null
        ? false
        : _bool(map['isOptional'], '$path.isOptional'),
    isVariadic: map['isVariadic'] == null
        ? false
        : _bool(map['isVariadic'], '$path.isVariadic'),
    isDangerous: map['isDangerous'] == null
        ? false
        : _bool(map['isDangerous'], '$path.isDangerous'),
    filterStrategy: _filter(map['filterStrategy'], '$path.filterStrategy'),
    defaultValue: map['default'] == null
        ? null
        : _string(map['default'], '$path.default'),
    suggestCurrentToken: map['suggestCurrentToken'] == null
        ? null
        : _bool(map['suggestCurrentToken'], '$path.suggestCurrentToken'),
    optionsCanBreakVariadicArg: map['optionsCanBreakVariadicArg'] == null
        ? null
        : _bool(map['optionsCanBreakVariadicArg'],
            '$path.optionsCanBreakVariadicArg'),
    isCommand: map['isCommand'] == null
        ? null
        : _bool(map['isCommand'], '$path.isCommand'),
    suggestCommands: map['suggestCommands'] == null
        ? null
        : _bool(map['suggestCommands'], '$path.suggestCommands'),
    loadSpec: _resolveLoadSpecRef(map['loadSpec'], '$path.loadSpec', handlers),
    parserDirectives: _argParserDirectives(
        map['parserDirectives'], '$path.parserDirectives', handlers),
    getQueryTerm: map['getQueryTerm'],
  );
}

FigOption _option(
    Map<String, dynamic> map, String path, JsonHandlerRegistry? handlers) {
  return FigOption(
    name: _name(_value(map, 'name', path), '$path.name'),
    displayName: map['displayName'] == null
        ? null
        : _string(map['displayName'], '$path.displayName'),
    description: map['description'] == null
        ? null
        : _text(map['description'], '$path.description'),
    args: _args(map['args'], '$path.args', handlers),
    isRepeatable: map['isRepeatable'] ?? false,
    isPersistent: map['isPersistent'] == null
        ? false
        : _bool(map['isPersistent'], '$path.isPersistent'),
    isDangerous: map['isDangerous'] == null
        ? false
        : _bool(map['isDangerous'], '$path.isDangerous'),
    isRequired: map['isRequired'] == null
        ? null
        : _bool(map['isRequired'], '$path.isRequired'),
    requiresEquals: map['requiresEquals'] == null
        ? null
        : _bool(map['requiresEquals'], '$path.requiresEquals'),
    requiresSeparator: map['requiresSeparator'],
    dependsOn: map['dependsOn'] == null
        ? null
        : _list(map['dependsOn'], '$path.dependsOn')
            .map((v) => _string(v, '$path.dependsOn[]'))
            .toList(),
    exclusiveOn:
        _exclusiveOn(map['exclusiveOn'], '$path.exclusiveOn', handlers),
    insertValue: map['insertValue'] == null
        ? null
        : _string(map['insertValue'], '$path.insertValue'),
    replaceValue: map['replaceValue'] == null
        ? null
        : _string(map['replaceValue'], '$path.replaceValue'),
    icon: map['icon'] == null ? null : _string(map['icon'], '$path.icon'),
    priority: map['priority'] == null
        ? null
        : _int(map['priority'], '$path.priority'),
    deprecated: map['deprecated'],
    hidden:
        map['hidden'] == null ? false : _bool(map['hidden'], '$path.hidden'),
  );
}

FigSubcommand _subcommand(
    Map<String, dynamic> map, String path, JsonHandlerRegistry? handlers) {
  final subcommands = map['subcommands'];
  final options = map['options'];
  final generateId = _handlerId(map['generateSpec'], '$path.generateSpec');
  final generate = generateId == null
      ? null
      : handlers?.resolveGenerateSubcommand(generateId, '$path.generateSpec');
  if (generateId != null && generate == null) {
    throw JsonSpecFormatException(
        'Unknown generateSpec handler at $path: $generateId');
  }
  return FigSubcommand(
    name: _name(_value(map, 'name', path), '$path.name'),
    displayName: map['displayName'] == null
        ? null
        : _string(map['displayName'], '$path.displayName'),
    description: map['description'] == null
        ? null
        : _description(map['description'], '$path.description'),
    subcommands: subcommands == null
        ? null
        : _resolveSubcommandList(subcommands, '$path.subcommands', handlers) ??
            _subcommandItems(_list(subcommands, '$path.subcommands'),
                '$path.subcommands', handlers),
    options: options == null
        ? null
        : _resolveOptionList(options, '$path.options', handlers) ??
            _optionItems(
                _list(options, '$path.options'), '$path.options', handlers),
    args: _args(map['args'], '$path.args', handlers),
    icon: map['icon'] == null ? null : _string(map['icon'], '$path.icon'),
    loadSpec: _resolveLoadSpecRef(map['loadSpec'], '$path.loadSpec', handlers),
    filterStrategy: _filter(map['filterStrategy'], '$path.filterStrategy'),
    priority: map['priority'] == null
        ? null
        : _int(map['priority'], '$path.priority'),
    requiresSubcommand: map['requiresSubcommand'] == null
        ? null
        : _bool(map['requiresSubcommand'], '$path.requiresSubcommand'),
    additionalSuggestions: map['additionalSuggestions'] == null
        ? null
        : _suggestions(
            map['additionalSuggestions'], '$path.additionalSuggestions'),
    generateSpec: generate,
    generateSpecCacheKey: map['generateSpecCacheKey'],
    parserDirectives: map['parserDirectives'],
    cache: map['cache'] == null ? null : _bool(map['cache'], '$path.cache'),
    insertValue: map['insertValue'] == null
        ? null
        : _string(map['insertValue'], '$path.insertValue'),
    replaceValue: map['replaceValue'] == null
        ? null
        : _string(map['replaceValue'], '$path.replaceValue'),
    isDangerous: map['isDangerous'] == null
        ? null
        : _bool(map['isDangerous'], '$path.isDangerous'),
    deprecated: map['deprecated'],
    hidden:
        map['hidden'] == null ? false : _bool(map['hidden'], '$path.hidden'),
  );
}

FigVersionedSpecDefinition? _versionedSpec(
  dynamic value,
  String path,
  JsonHandlerRegistry? handlers,
  JsonVersionedSpecReader? reader,
) {
  if (value == null) return null;
  if (reader == null) {
    throw JsonSpecFormatException(
        'A versionedSpec requires a JSON version document reader at $path');
  }
  final map = _object(value, path);
  final cacheKey = _string(map['cacheKey'], '$path.cacheKey');
  final getVersionId = _handlerId(map['getVersion'], '$path.getVersion');
  if (getVersionId == null) {
    throw JsonSpecFormatException('Missing getVersion handler at $path');
  }
  final getVersion = handlers?.resolveVersion(getVersionId, '$path.getVersion');
  if (getVersion == null) {
    throw JsonSpecFormatException(
        'Unknown getVersion handler at $path.getVersion: $getVersionId');
  }
  final versions =
      _list(map['versions'], '$path.versions').asMap().entries.map((entry) {
    final versionPath = '$path.versions[${entry.key}]';
    final version = _object(entry.value, versionPath);
    final name = _string(version['version'], '$versionPath.version');
    final loadSpec = _string(version['loadSpec'], '$versionPath.loadSpec');
    return FigVersionedSpecEntry(
      version: name,
      load: () => reader(loadSpec),
    );
  }).toList();
  if (versions.isEmpty) {
    throw JsonSpecFormatException('Expected at least one version at $path');
  }
  return FigVersionedSpecDefinition(
    cacheKey: cacheKey,
    versionFiles: List<FigVersionedSpecEntry>.unmodifiable(versions),
    getVersionCommand: getVersion,
  );
}

FigSpec figSpecFromJson(
  Map<String, dynamic> map, {
  JsonHandlerRegistry? handlers,
  JsonVersionedSpecReader? versionedSpecReader,
}) {
  final normalized = _usesEmptyFallback(handlers)
      ? _sanitizeUnsupportedHandlerReferences(map, '', handlers)
          as Map<String, dynamic>
      : map;
  return _figSpecFromJson(
    normalized,
    handlers: handlers,
    versionedSpecReader: versionedSpecReader,
  );
}

FigSpec _figSpecFromJson(
  Map<String, dynamic> map, {
  JsonHandlerRegistry? handlers,
  JsonVersionedSpecReader? versionedSpecReader,
}) {
  final schemaVersion = map['schemaVersion'];
  if (schemaVersion != 1) {
    throw JsonSpecFormatException('Unsupported or missing schemaVersion');
  }
  final subcommands = map['subcommands'];
  final options = map['options'];
  final generateId = _handlerId(map['generateSpec'], 'generateSpec');
  final generate = generateId == null
      ? null
      : handlers?.resolveGenerateSpec(generateId, 'generateSpec');
  if (generateId != null && generate == null) {
    throw JsonSpecFormatException('Unknown generateSpec handler: $generateId');
  }
  return FigSpec(
    name: _string(map['name'], 'name'),
    displayName: map['displayName'] == null
        ? null
        : _string(map['displayName'], 'displayName'),
    description: map['description'] == null
        ? null
        : _description(map['description'], 'description'),
    subcommands: subcommands == null
        ? null
        : _resolveSubcommandList(subcommands, 'subcommands', handlers) ??
            _subcommandItems(
                _list(subcommands, 'subcommands'), 'subcommands', handlers),
    options: options == null
        ? null
        : _resolveOptionList(options, 'options', handlers) ??
            _optionItems(_list(options, 'options'), 'options', handlers),
    args: _args(map['args'], 'args', handlers),
    icon: map['icon'] == null ? null : _string(map['icon'], 'icon'),
    filterStrategy: _filter(map['filterStrategy'], 'filterStrategy'),
    hidden: map['hidden'] == null ? false : _bool(map['hidden'], 'hidden'),
    insertValue: map['insertValue'] == null
        ? null
        : _string(map['insertValue'], 'insertValue'),
    replaceValue: map['replaceValue'] == null
        ? null
        : _string(map['replaceValue'], 'replaceValue'),
    priority:
        map['priority'] == null ? null : _int(map['priority'], 'priority'),
    deprecated: map['deprecated'],
    parserDirectives:
        _parserDirectives(map['parserDirectives'], 'parserDirectives'),
    requiresSubcommand: map['requiresSubcommand'] == null
        ? null
        : _bool(map['requiresSubcommand'], 'requiresSubcommand'),
    additionalSuggestions: map['additionalSuggestions'] == null
        ? null
        : _suggestions(map['additionalSuggestions'], 'additionalSuggestions'),
    generateSpec: generate,
    generateSpecCacheKey: map['generateSpecCacheKey'],
    versionedSpec: _versionedSpec(
      map['versionedSpec'],
      'versionedSpec',
      handlers,
      versionedSpecReader,
    ),
    loadSpec: _resolveLoadSpecRef(map['loadSpec'], 'loadSpec', handlers),
  );
}

FigSpec figSpecFromJsonString(
  String source, {
  JsonHandlerRegistry? handlers,
  JsonVersionedSpecReader? versionedSpecReader,
}) {
  try {
    final decoded = Map<String, dynamic>.from(jsonDecode(source) as Map);
    return figSpecFromJson(
      decoded,
      handlers: handlers,
      versionedSpecReader: versionedSpecReader,
    );
  } on JsonSpecFormatException {
    rethrow;
  } catch (error) {
    throw JsonSpecFormatException('Invalid completion spec JSON: $error');
  }
}

class JsonSpecStore {
  JsonSpecStore({
    required this.reader,
    this.handlers,
    this.fallback,
    this.lazyHandlerRegistrar,
  });

  final JsonAssetReader reader;
  final JsonHandlerRegistry? handlers;

  /// Optional legacy/deferred loader used when a command is not in JSON yet.
  final EnsureSpecLoaded? fallback;

  /// Optional hook that registers a command's dynamic handlers on demand, just
  /// before that command's JSON spec is parsed. Lets an app loadLibrary() the
  /// deferred handler library for a command only when it is actually used.
  final FutureOr<void> Function(String command, JsonHandlerRegistry handlers)?
      lazyHandlerRegistrar;
  final Map<String, Map<String, dynamic>> _entries = {};
  final Map<String, String> _aliases = {};
  final Map<String, Future<FigSpec>> _versionDocuments = {};
  Future<void>? _indexFuture;

  Future<void> loadIndex() => _indexFuture ??= _readIndex();

  Future<void> _readIndex() async {
    final source = await reader('index.json');
    final decoded = jsonDecode(source);
    final map = Map<String, dynamic>.from(decoded as Map);
    if (map['schemaVersion'] != 1) {
      throw JsonSpecFormatException(
          'Unsupported or missing index schemaVersion');
    }
    final commands = _object(map['commands'], 'commands');
    for (final item in commands.entries) {
      final name = item.key;
      if (name.isEmpty) {
        throw JsonSpecFormatException('Command name cannot be empty');
      }
      final entry = _object(item.value, 'commands.$name');
      final file = _string(entry['file'], 'commands.$name.file');
      if (file.isEmpty ||
          file.startsWith('/') ||
          file.split('/').contains('..')) {
        throw JsonSpecFormatException('Invalid spec path for $name');
      }
      _entries[name] = {'file': file};
      final aliasOf = entry['aliasOf'];
      if (aliasOf != null) {
        final target = _string(aliasOf, 'commands.$name.aliasOf');
        if (target.isEmpty) {
          throw JsonSpecFormatException('Invalid aliasOf for $name');
        }
        _entries[name]!['aliasOf'] = target;
      }
      final aliases = entry['aliases'];
      if (aliases != null) {
        for (final alias in _list(aliases, 'commands.$name.aliases')) {
          final aliasName = _string(alias, 'commands.$name.aliases[]');
          if (aliasName.isEmpty ||
              commands.containsKey(aliasName) ||
              _aliases.containsKey(aliasName)) {
            throw JsonSpecFormatException(
                'Duplicate or invalid alias: $aliasName');
          }
          _aliases[aliasName] = name;
        }
      }
    }
  }

  Future<void> ensureLoaded(String name) async {
    await loadIndex();
    final canonical = _aliases[name] ?? name;
    final existing = getSpec(canonical);
    if (existing != null) {
      registerSpec(name, () => existing);
      return;
    }
    final entry = _entries[canonical];
    if (entry == null) {
      await fallback?.call(name);
      return;
    }
    final spec = await _readSpecDocument(canonical, entry);
    // A logical loadSpec path (for example aws/account) must remain its own
    // registry key. Registering it under spec.name would overwrite an
    // unrelated flat command with the same leaf name.
    registerSpec(canonical, () => spec);
    if (name != canonical) registerSpec(name, () => spec);
  }

  Future<FigSpec> _readVersionDocument(String loadSpec) async {
    return _versionDocuments.putIfAbsent(
      loadSpec,
      () => _readVersionDocumentUncached(loadSpec),
    );
  }

  Future<FigSpec> _readVersionDocumentUncached(String loadSpec) async {
    await loadIndex();
    final canonical = _aliases[loadSpec] ?? loadSpec;
    final entry = _entries[canonical];
    if (entry == null) {
      throw JsonSpecFormatException(
          'Unknown version document loadSpec: $loadSpec');
    }
    return _readSpecDocument(canonical, entry);
  }

  Future<FigSpec> _readSpecDocument(
    String indexName,
    Map<String, dynamic> entry,
  ) async {
    // Register this command's dynamic handlers on demand, before parsing its
    // JSON, so a deferred handler library is loadLibrary()ed only when the
    // command is actually used.
    final handlers = this.handlers;
    if (handlers != null && lazyHandlerRegistrar != null) {
      await lazyHandlerRegistrar!(indexName, handlers);
    }
    final source = await reader(entry['file'] as String);
    final spec = figSpecFromJsonString(
      source,
      handlers: handlers,
      versionedSpecReader: _readVersionDocument,
    );
    final expectedName = entry['aliasOf'] as String? ?? indexName;
    if (spec.name != expectedName) {
      throw JsonSpecFormatException(
          'Spec name ${spec.name} does not match index entry $expectedName');
    }
    return spec;
  }

  List<String> namesForFirstChar(String firstChar) {
    final lower = firstChar.toLowerCase();
    // Namespaced loadSpec aliases are traversal keys, not standalone shell
    // commands; keep them out of root command-name suggestions.
    return _entries.entries
        .where((entry) => entry.value['aliasOf'] == null)
        .map((entry) => entry.key)
        .where((name) => name.toLowerCase().startsWith(lower))
        .followedBy(
            _aliases.keys.where((name) => name.toLowerCase().startsWith(lower)))
        .toSet()
        .toList()
      ..sort();
  }

  Future<void> register() async {
    await loadIndex();
    registerV2SpecNamesGetter(namesForFirstChar);
    setDefaultEnsureSpecLoaded(ensureLoaded);
  }

  void clearCache() {
    for (final name in _entries.keys) {
      unregisterSpec(name);
    }
    for (final alias in _aliases.keys) {
      unregisterSpec(alias);
    }
    _versionDocuments.clear();
  }
}
