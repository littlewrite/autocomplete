// AI-generated from TypeScript source: hub.ts
import 'package:autocomplete/src/spec.dart';
import 'git.dart';

final FigSpec hubSpec = FigSpec(
  name: 'hub',
  description: gitSpec.description,
  subcommands: gitSpec.subcommands,
  options: gitSpec.options,
  args: gitSpec.args,
  icon: gitSpec.icon,
  filterStrategy: gitSpec.filterStrategy,
  hidden: gitSpec.hidden,
  insertValue: gitSpec.insertValue,
  replaceValue: gitSpec.replaceValue,
  priority: gitSpec.priority,
  deprecated: gitSpec.deprecated,
  parserDirectives: gitSpec.parserDirectives,
  requiresSubcommand: gitSpec.requiresSubcommand,
  additionalSuggestions: gitSpec.additionalSuggestions,
  generateSpec: gitSpec.generateSpec,
  loadSpec: gitSpec.loadSpec,
);
