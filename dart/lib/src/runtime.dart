// Runtime: getSuggestions, loadSpec, runSubcommand/Arg/Option (reference: inshellisense runtime.ts).

import 'dart:io';

import 'model.dart';
import 'parser.dart';
import 'registry.dart';
import 'spec.dart';
import 'shell.dart';
import 'suggestion.dart';
import 'template.dart';

/// Resolve cwd for path completion (e.g. expand ~).
Future<String> resolveCwd(String cwd, Shell shell) async {
  if (cwd.startsWith('~')) {
    final home = Platform.environment['HOME'] ?? '';
    if (cwd == '~' || cwd == '~/') return home;
    if (cwd.startsWith('~/')) return '$home${cwd.substring(1)}';
  }
  return cwd;
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

List<FigArg> getArgs(dynamic args) {
  if (args == null) return [];
  if (args is List) return List<FigArg>.from(args);
  return [args as FigArg];
}

/// Run templates for an arg and return suggestions.
Future<List<Suggestion>> runTemplateSuggestions(FigArg? arg, String cwd) async {
  if (arg == null) return [];
  final template = arg.template;
  if (template == null) return [];
  final raw = await runTemplates(template, cwd);
  return raw.map((t) => Suggestion(name: t.name, allNames: [t.name], icon: iconForType(t.type), priority: t.priority, type: t.type)).toList();
}

/// Run generator (script + postProcess) if present. For now we only support template-based; script runs in Phase 3.
Future<List<Suggestion>> runGeneratorSuggestions(FigGenerator? gen, List<CommandToken> allTokens, String cwd) async {
  if (gen == null) return [];
  if (gen.postProcess != null) {
    // Script-based: would run Process.run(gen.script!) and pass stdout to postProcess.
    // Phase 0/1: skip script generators; they are used in git etc.
    return [];
  }
  return [];
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
) async {
  if (argsDepleted && argsFromSubcommand) return null;
  final partial = partialToken?.token ?? '';
  final allOptions = <FigOption>[...persistentOptions, ...(subcommand.options ?? [])];
  var suggestions = <Suggestion>[];
  if (!argsFromSubcommand) {
    suggestions.addAll(filterSubcommandSuggestions(subcommand.subcommands, subcommand.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(allOptions, acceptedTokens.where((t) => t.isOption).map((t) => t.token).toSet(), subcommand.filterStrategy, partial));
  }
  final argCount = subcommand.args != null ? (subcommand.args is List ? (subcommand.args as List).length : 1) : 0;
  if (argCount > 0) {
    final activeArg = subcommand.args is List ? (subcommand.args as List<FigArg>).first : subcommand.args as FigArg;
    suggestions.addAll(await runTemplateSuggestions(activeArg, cwd));
    suggestions.addAll(filterSuggestions(activeArg.suggestions ?? [], activeArg.filterStrategy, partial, null));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(removeAccepted(suggestions, acceptedTokens), partialToken)));
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
) async {
  if (args.isEmpty) return null;
  final activeArg = args.first;
  final partial = partialToken?.token ?? '';
  final allOptions = <FigOption>[...persistentOptions, ...(subcommand.options ?? [])];
  var suggestions = <Suggestion>[];
  suggestions.addAll(await runTemplateSuggestions(activeArg, cwd));
  suggestions.addAll(filterSuggestions(activeArg.suggestions ?? [], activeArg.filterStrategy, partial, null));
  if (activeArg.isOptional || (activeArg.isVariadic && variadicArgBound)) {
    suggestions.addAll(filterSubcommandSuggestions(subcommand.subcommands, activeArg.filterStrategy, partial));
    suggestions.addAll(filterOptionSuggestions(allOptions, acceptedTokens.where((t) => t.isOption).map((t) => t.token).toSet(), activeArg.filterStrategy, partial));
  }
  suggestions = removeDuplicates(sortByPriority(removeHidden(removeAccepted(suggestions, acceptedTokens), partialToken)));
  return SuggestionBlob(suggestions: suggestions, argumentDescription: activeArg.description ?? activeArg.name);
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
) async {
  if (tokens.isEmpty) return null;
  final activeToken = tokens.first;
  if (option.args != null) {
    final args = getArgs(option.args);
    return runArg(tokens.skip(1).toList(), allTokens, args, subcommand, cwd, shell, persistentOptions, [...acceptedTokens, activeToken], true, false);
  }
  return runSubcommand(tokens.skip(1).toList(), allTokens, subcommand, cwd, shell, persistentOptions, [...acceptedTokens, activeToken]);
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
  Shell shell, [
  List<FigOption> persistentOptions = const [],
  List<CommandToken> acceptedTokens = const [],
  bool argsDepleted = false,
  bool argsUsed = false,
]) async {
  if (tokens.isEmpty) {
    return getSubcommandDrivenRecommendation(subcommand, persistentOptions, null, argsDepleted, argsUsed, acceptedTokens, allTokens, cwd, shell);
  }
  final partialToken = tokens.first;
  if (!partialToken.complete) {
    return getSubcommandDrivenRecommendation(subcommand, persistentOptions, partialToken, argsDepleted, argsUsed, acceptedTokens, allTokens, cwd, shell);
  }
  final activeToken = tokens.first;
  final allOptions = <FigOption>[...persistentOptions, ...(subcommand.options ?? [])];
  final option = getOption(activeToken, allOptions);
  if (option != null) {
    return runOption(tokens, allTokens, option, subcommand, cwd, shell, persistentOptions, acceptedTokens);
  }
  final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
        (s) => s!.nameList.contains(activeToken.token),
        orElse: () => null,
      );
  if (nextSub != null) {
    return runSubcommand(tokens.skip(1).toList(), allTokens, nextSub, cwd, shell, persistentOptions, [...acceptedTokens, activeToken]);
  }
  final args = getArgs(subcommand.args);
  if (args.isNotEmpty) {
    return runArg(tokens, allTokens, args, subcommand, cwd, shell, allOptions, acceptedTokens, false, false);
  }
  return runSubcommand(tokens.skip(1).toList(), allTokens, subcommand, cwd, shell, persistentOptions, [...acceptedTokens, activeToken]);
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
) async {
  if (args.isEmpty) {
    return runSubcommand(tokens, allTokens, subcommand, cwd, shell, persistentOptions, acceptedTokens, true, !fromOption);
  }
  if (tokens.isEmpty) {
    return getArgDrivenRecommendation(args, subcommand, persistentOptions, null, acceptedTokens, allTokens, fromVariadic, cwd, shell);
  }
  if (!tokens.first.complete) {
    return getArgDrivenRecommendation(args, subcommand, persistentOptions, tokens.first, acceptedTokens, allTokens, fromVariadic, cwd, shell);
  }
  final activeToken = tokens.first;
  final activeArg = args.first;
  final allOpts = <FigOption>[...persistentOptions, ...(subcommand.options ?? [])];
  if (args.every((a) => a.isOptional) && activeToken.isOption) {
    final option = getOption(activeToken, allOpts);
    if (option != null) return runOption(tokens, allTokens, option, subcommand, cwd, shell, persistentOptions, acceptedTokens);
  }
  if (activeArg.isVariadic) {
    return runArg(tokens.skip(1).toList(), allTokens, args, subcommand, cwd, shell, persistentOptions, [...acceptedTokens, activeToken], fromOption, true);
  }
  if (activeArg.isOptional) {
    final nextSub = subcommand.subcommands?.cast<FigSubcommand?>().firstWhere(
          (s) => s!.nameList.contains(activeToken.token),
          orElse: () => null,
        );
    if (nextSub != null) return runSubcommand(tokens.skip(1).toList(), allTokens, nextSub, cwd, shell, persistentOptions, [...acceptedTokens, activeToken]);
  }
  return runArg(tokens.skip(1).toList(), allTokens, args.sublist(1), subcommand, cwd, shell, persistentOptions, [...acceptedTokens, activeToken], fromOption, false);
}

/// Command-name completion when first token is incomplete (e.g. "gi" -> git).
SuggestionBlob runCommand(CommandToken token) {
  final names = getSpecNames().where((s) => s.startsWith(token.token)).toList();
  final suggestions = names.map((s) => Suggestion(name: s, allNames: [s], icon: suggestionIconSubcommand, priority: 40, type: SuggestionType.subcommand)).toList();
  return SuggestionBlob(suggestions: suggestions, charactersToDrop: token.tokenLength);
}

/// Main entry: get suggestions for [cmd] in [cwd] for [shell].
Future<SuggestionBlob?> getSuggestions(String cmd, String cwd, Shell shell) async {
  final activeCmd = parseCommand(cmd, shell);
  if (activeCmd.isEmpty) return null;
  final rootToken = activeCmd.first;
  if (!rootToken.complete) return runCommand(rootToken);

  final spec = loadSpec(activeCmd);
  if (spec == null) return null;
  final subcommand = getSubcommand(spec);
  if (subcommand == null) return null;

  final resolvedCwd = await resolveCwd(cwd, shell);
  final result = await runSubcommand(activeCmd.skip(1).toList(), activeCmd, subcommand, resolvedCwd, shell);
  if (result == null) return null;
  if (result.suggestions.isEmpty && result.argumentDescription == null) return null;
  final lastToken = activeCmd.isNotEmpty ? activeCmd.last : null;
  final charactersToDrop = lastToken?.complete == true ? 0 : (lastToken?.tokenLength ?? 0);
  return SuggestionBlob(suggestions: result.suggestions, argumentDescription: result.argumentDescription, charactersToDrop: charactersToDrop);
}
