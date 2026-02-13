// AI-generated from br.ts
// Generated at: 2026-02-12
// br re-exports broot spec (same CLI, br is the shell function for broot)

import 'package:autocomplete/src/spec.dart';
import 'broot.dart';

/// Completion spec for `br` CLI (same as broot, name set to br)
final FigSpec brSpec = FigSpec(
  name: 'br',
  description: brootSpec.description,
  subcommands: brootSpec.subcommands,
  options: brootSpec.options,
  args: brootSpec.args,
  icon: brootSpec.icon,
  filterStrategy: brootSpec.filterStrategy,
  hidden: brootSpec.hidden,
  insertValue: brootSpec.insertValue,
  replaceValue: brootSpec.replaceValue,
  priority: brootSpec.priority,
  deprecated: brootSpec.deprecated,
  parserDirectives: brootSpec.parserDirectives,
  requiresSubcommand: brootSpec.requiresSubcommand,
  additionalSuggestions: brootSpec.additionalSuggestions,
  generateSpec: brootSpec.generateSpec,
  loadSpec: brootSpec.loadSpec,
);
