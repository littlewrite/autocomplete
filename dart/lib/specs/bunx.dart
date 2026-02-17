// AI-generated from TypeScript source: bunx.ts
import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _npxSuggestions = [
  FigSuggestion(
    name: 'autocannon',
    icon: 'fig://icon?type=command',
  ),
  FigSuggestion(
    name: 'vite',
    icon: 'https://vitejs.dev/logo.svg',
  ),
  FigSuggestion(
    name: 'babel',
    icon: 'https://raw.githubusercontent.com/babel/logo/master/babel.png',
  ),
  FigSuggestion(
    name: 'create-react-native-app',
    icon: 'https://reactnative.dev/img/pwa/manifest-icon-512.png',
  ),
  FigSuggestion(
    name: 'react-native',
    icon: 'https://reactnative.dev/img/pwa/manifest-icon-512.png',
  ),
  FigSuggestion(
    name: 'tailwindcss',
    icon: 'https://tailwindcss.com/favicons/favicon-32x32.png',
  ),
  FigSuggestion(
    name: 'next',
    icon: 'https://nextjs.org/static/favicon/favicon-16x16.png',
  ),
  FigSuggestion(
    name: 'nuxi',
    icon: 'https://raw.githubusercontent.com/nuxt/framework/main/docs/public/icon.png',
  ),
  FigSuggestion(
    name: 'gltfjsx',
    icon: 'https://raw.githubusercontent.com/pmndrs/branding/master/logo.svg',
  ),
  FigSuggestion(
    name: 'prisma',
    icon:
        'https://raw.githubusercontent.com/prisma/docs/main/src/images/favicon-16x16.png',
  ),
  FigSuggestion(
    name: 'eslint',
    icon:
        'https://raw.githubusercontent.com/eslint/eslint.org/main/src/static/icon-512.png',
  ),
  FigSuggestion(
    name: 'prettier',
    icon: 'https://prettier.io/icon.png',
  ),
  FigSuggestion(
    name: 'tsc',
    icon:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/240px-Typescript_logo_2020.svg.png',
  ),
  FigSuggestion(
    name: 'typeorm',
    icon: 'https://avatars.githubusercontent.com/u/20165699?s=200&v=4',
  ),
  FigSuggestion(
    name: '@withfig/autocomplete-tools',
    icon: 'https://fig.io/icons/fig-light.png',
  ),
  FigSuggestion(
    name: 'create-completion-spec',
    icon: 'https://fig.io/icons/fig-light.png',
  ),
  FigSuggestion(
    name: '@fig/publish-spec-to-team',
    icon: 'https://fig.io/icons/fig-light.png',
  ),
  FigSuggestion(
    name: 'fig-teams@latest',
    icon: 'https://fig.io/icons/fig-light.png',
  ),
  FigSuggestion(
    name: 'create-next-app',
    icon: 'https://nextjs.org/static/favicon/favicon-16x16.png',
  ),
  FigSuggestion(
    name: 'create-t3-app',
    icon: 'https://create.t3.gg/favicon.svg',
  ),
  FigSuggestion(
    name: 'create-discord-bot',
    icon: 'https://discordjs.dev/favicon-32x32.png',
  ),
  FigSuggestion(
    name: 'create-video',
    icon:
        'https://raw.githubusercontent.com/remotion-dev/remotion/main/packages/docs/static/img/logo-small.png',
  ),
  FigSuggestion(
    name: 'remotion',
    icon:
        'https://raw.githubusercontent.com/remotion-dev/remotion/main/packages/docs/static/img/logo-small.png',
  ),
];

final FigSpec bunxSpec = FigSpec(
  name: 'bunx',
  description: 'The command to run',
  args: [
    FigArg(
      name: 'command',
      isCommand: true,
      generators: [
        FigGenerator(
          script: [
            'bash',
            '-c',
            'until [[ -d node_modules/ ]] || [[ \$PWD = \'/\' ]]; do cd ..; done; ls -1 node_modules/.bin/',
          ],
          postProcess: (String out, [List<String>? tokens]) {
            final cli = _npxSuggestions.map((e) => e.name!).toSet();
            return out
                .split('\n')
                .where((name) => name.isNotEmpty && !cli.contains(name))
                .map((name) => FigSuggestion(
                      name: name,
                      icon: 'fig://icon?type=command',
                      loadSpec: name,
                    ))
                .toList();
          },
        )
      ],
      suggestions: _npxSuggestions,
    ),
  ],
);
