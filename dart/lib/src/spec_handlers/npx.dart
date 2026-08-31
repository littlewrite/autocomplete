// Hand-written dynamic handlers migrated from src/npx.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const npxPostProcessHandler =
    'manual.src_npx.spec.args.generators.postprocess';

const _commandIcon = 'fig://icon?type=command';

/// Names shipped as static npx suggestions in src/npx.ts. The post-processor
/// filters these out so `node_modules/.bin/` entries that already have a
/// dedicated npx suggestion are not duplicated.
const _npxCliNames = <String>[
  'autocannon',
  'vite',
  'babel',
  'create-react-native-app',
  'react-native',
  'tailwindcss',
  'next',
  'nuxi',
  'gltfjsx',
  'prisma',
  'eslint',
  'prettier',
  'tsc',
  'typeorm',
  '@withfig/autocomplete-tools',
  'create-completion-spec',
  '@fig/publish-spec-to-team',
  'fig-teams@latest',
  'create-next-app',
  'create-t3-app',
  'create-discord-bot',
  'create-video',
  'remotion',
  'create-remix',
  'remix',
  'playwright',
  'ignite-cli',
  'vsce',
  'degit',
  '@preset/cli',
  'mikro-orm',
  'pod-install',
  'capacitor',
  'cap',
  '@magnolia/cli',
  'stencil',
  'swagger-typescript-api',
  'sta',
  '@wordpress/create-block',
  'astro',
  'ampx',
];

/// `ls -1 node_modules/.bin/` output: drop names that already ship as npx
/// suggestions, keep the rest with a command icon and a loadSpec link,
/// mirroring the original TS post-processor.
List<FigSuggestion> _npxPostProcess(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final name in output.split('\n')) {
    if (name.isEmpty) continue;
    if (_npxCliNames.contains(name)) continue;
    suggestions.add(FigSuggestion(
      name: name,
      icon: _commandIcon,
      loadSpec: name,
    ));
  }
  return suggestions;
}

/// Registers the npx generator referenced by the shipped npx JSON.
void registerNpxHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(npxPostProcessHandler, _npxPostProcess);
}
