// AI-generated from TypeScript source: php.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec phpSpec = FigSpec(
  name: 'php',
  description: 'Run the PHP interpreter',
  subcommands: [
    FigSubcommand(
      name: ['artisan'],
      loadSpec: 'php/artisan',
    ),
    FigSubcommand(
      name: ['please'],
      loadSpec: 'php/please',
    ),
    FigSubcommand(
      name: ['bin/console'],
      loadSpec: 'php/bin-console',
    ),
  ],
  args: [
    FigArg(
      template: 'filepaths',
    ),
  ],
);
