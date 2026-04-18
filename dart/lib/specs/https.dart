// AI-generated completion spec for `https` CLI

import 'package:autocomplete/src/spec.dart';
import 'http.dart';

/// Completion spec for `https` CLI, aliased from `http`
final FigSpec httpsSpec = FigSpec(
  name: 'https',
  displayName: httpSpec.displayName,
  description: httpSpec.description,
  subcommands: httpSpec.subcommands,
  options: httpSpec.options,
  args: httpSpec.args,
  icon: httpSpec.icon,
  filterStrategy: httpSpec.filterStrategy,
  hidden: httpSpec.hidden,
  insertValue: httpSpec.insertValue,
  replaceValue: httpSpec.replaceValue,
  priority: httpSpec.priority,
  deprecated: httpSpec.deprecated,
  parserDirectives: httpSpec.parserDirectives,
  requiresSubcommand: httpSpec.requiresSubcommand,
  additionalSuggestions: httpSpec.additionalSuggestions,
  generateSpec: httpSpec.generateSpec,
  generateSpecCacheKey: httpSpec.generateSpecCacheKey,
  loadSpec: httpSpec.loadSpec,
);
