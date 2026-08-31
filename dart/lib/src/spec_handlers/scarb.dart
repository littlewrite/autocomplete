// Hand-written dynamic handlers migrated from src/scarb.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const scarbAddMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_0_.options_1_.args.generators.postprocess';
const scarbRemoveMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_1_.options_1_.args.generators.postprocess';
const scarbBuildMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_2_.options_0_.args.generators.postprocess';
const scarbFmtMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_7_.options_3_.args.generators.postprocess';
const scarbRunMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_12_.options_0_.args.generators.postprocess';
const scarbTestMembersPostProcessHandler =
    'manual.src_scarb.spec.subcommands_13_.options_7_.args.generators.postprocess';

/// `scarb metadata --format-version 1 --no-deps` output: a JSON document whose
/// `workspace.members` is an array of `"<name> <path>"` strings. Suggests each
/// member's name, i.e. the token before the first space.
List<FigSuggestion> _workspaceMembers(String output, [List<String>? tokens]) {
  tokens;
  try {
    final jsonOut = jsonDecode(output) as Map<String, dynamic>;
    final workspace = jsonOut['workspace'] as Map<String, dynamic>;
    final members = workspace['members'] as List;
    return members
        .map((member) =>
            FigSuggestion(name: (member as String).split(' ').first))
        .toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the scarb generators referenced by the shipped scarb JSON.
void registerScarbHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      scarbAddMembersPostProcessHandler, _workspaceMembers);
  registry.registerPostProcess(
      scarbRemoveMembersPostProcessHandler, _workspaceMembers);
  registry.registerPostProcess(
      scarbBuildMembersPostProcessHandler, _workspaceMembers);
  registry.registerPostProcess(
      scarbFmtMembersPostProcessHandler, _workspaceMembers);
  registry.registerPostProcess(
      scarbRunMembersPostProcessHandler, _workspaceMembers);
  registry.registerPostProcess(
      scarbTestMembersPostProcessHandler, _workspaceMembers);
}
