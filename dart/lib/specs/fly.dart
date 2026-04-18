// AI-generated completion spec for `fly` CLI

import 'package:autocomplete/src/spec.dart';
import 'flyctl.dart';

/// Completion spec for `fly` CLI, aliased from `flyctl`
final FigSpec flySpec = FigSpec(
  name: 'fly',
  displayName: flyctlSpec.displayName,
  description: flyctlSpec.description,
  subcommands: flyctlSpec.subcommands,
  options: flyctlSpec.options,
  args: flyctlSpec.args,
  icon: flyctlSpec.icon,
  filterStrategy: flyctlSpec.filterStrategy,
  hidden: flyctlSpec.hidden,
  insertValue: flyctlSpec.insertValue,
  replaceValue: flyctlSpec.replaceValue,
  priority: flyctlSpec.priority,
  deprecated: flyctlSpec.deprecated,
  parserDirectives: flyctlSpec.parserDirectives,
  requiresSubcommand: flyctlSpec.requiresSubcommand,
  additionalSuggestions: flyctlSpec.additionalSuggestions,
  generateSpec: flyctlSpec.generateSpec,
  generateSpecCacheKey: flyctlSpec.generateSpecCacheKey,
  loadSpec: flyctlSpec.loadSpec,
);
