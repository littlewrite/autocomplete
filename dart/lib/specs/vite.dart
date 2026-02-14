// AI-generated from TypeScript source: vite.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec viteSpec = FigSpec(
  name: 'vite',
  description: 'Native ESM-powered web dev build tool',
  icon: 'https://vitejs.dev/logo.svg',
  args: [
    FigArg(
      name: 'root',
      isOptional: true,
      template: 'folders',
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help message',
      isPersistent: true,
    ),
    FigOption(
      name: ['--host'],
      description: 'Specify the hostname',
      args: [
        FigArg(
          name: 'host',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['--port'],
      description: 'Specify the port',
      args: [
        FigArg(
          name: 'port',
        ),
      ],
    ),
    FigOption(
      name: ['--https'],
      description: 'Use TLS + HTTP/2',
    ),
    FigOption(
      name: ['--open'],
      description: 'Open browser on startup',
      args: [
        FigArg(
          name: 'browser',
          isOptional: true,
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--cors'],
      description: 'Enable CORS',
    ),
    FigOption(
      name: ['--strictPort'],
      description: 'Exit if the port is already in use',
    ),
    FigOption(
      name: ['--force'],
      description: 'For the optimizer to re-bundle',
    ),
    FigOption(
      name: ['-c', '--config'],
      description: 'Use the specified config file',
      isPersistent: true,
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--base'],
      description: 'Public base path',
      isPersistent: true,
      args: [
        FigArg(
          name: 'path',
          defaultValue: '/',
        ),
      ],
    ),
    FigOption(
      name: ['-l', '--logLevel'],
      description: 'Set the log level',
      isPersistent: true,
      args: [
        FigArg(
          name: 'level',
          suggestions: [
            FigSuggestion(name: 'info', icon: '💬'),
            FigSuggestion(name: 'warn', icon: '⚠️'),
            FigSuggestion(name: 'error', icon: '💥'),
            FigSuggestion(name: 'silent', icon: '🤫'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--clearScreen'],
      description: 'Enable screen clearing when logging',
      isPersistent: true,
    ),
    FigOption(
      name: ['-d', '--debug'],
      description: 'Show debug logs',
      isPersistent: true,
      args: [
        FigArg(
          name: 'feat',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['-f', '--filter'],
      description: 'Filter debug logs',
      isPersistent: true,
      args: [
        FigArg(
          name: 'filter',
        ),
      ],
    ),
    FigOption(
      name: ['-m', '--mode'],
      description: 'Set env mode',
      isPersistent: true,
      args: [
        FigArg(
          name: 'mode',
          generators: [
            FigGenerator(
              script: ['ls', '-l1A'],
              postProcess: (String out, [List<String>? tokens]) {
                return out
                    .split('\n')
                    .where((line) => line.startsWith('.env.'))
                    .map((name) => FigSuggestion(name: name))
                    .toList();
              },
            ),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Display version number',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'build',
      icon: '🛠',
      description: 'Build for production',
      args: [
        FigArg(
          name: 'root',
          isOptional: true,
          template: 'folders',
        ),
      ],
      options: [
        FigOption(
          name: ['--target'],
          description: 'Transpile target (must be a valid esbuild target)',
          args: [
            FigArg(
              name: 'target',
            ),
          ],
        ),
        FigOption(
          name: ['--outDir'],
          description: 'Output directory',
          args: [
            FigArg(
              name: 'dir',
              template: 'folders',
            ),
          ],
        ),
        FigOption(
          name: ['--assetsDir'],
          description: 'Directory under outDir to place assets in',
          args: [
            FigArg(
              name: 'dir',
              template: 'folders',
            ),
          ],
        ),
        FigOption(
          name: ['--assetsInlineLimit'],
          description: 'Static asset base64 inline threshold in bytes',
          args: [
            FigArg(
              name: 'number',
            ),
          ],
        ),
        FigOption(
          name: ['--ssr'],
          description: 'Build specified entry for server-side rendering',
          args: [
            FigArg(
              name: 'entry',
              template: 'filepaths',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--sourcemap'],
          description: 'Output sourcemaps for build',
        ),
        FigOption(
          name: ['--minify'],
          description: 'Enable minification',
          args: [
            FigArg(
              name: 'minifier',
              isOptional: true,
              suggestions: [
                FigSuggestion(name: 'terser'),
                FigSuggestion(name: 'esbuild'),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--manifest'],
          description: 'Emit build manifest json',
          args: [
            FigArg(
              name: 'name',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--ssrManifest'],
          description: 'Emit ssr manifest json',
          args: [
            FigArg(
              name: 'name',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--emptyOutDir'],
          description: "Force empty outDir when it's outside of root",
        ),
        FigOption(
          name: ['-w', '--watch'],
          description: 'Rebuilds when modules have changed on disk',
        ),
      ],
    ),
    FigSubcommand(
      name: 'optimize',
      icon: '📦',
      description: 'Pre-bundle dependencies',
      args: [
        FigArg(
          name: 'root',
          isOptional: true,
          template: 'folders',
        ),
      ],
      options: [
        FigOption(
          name: ['--force'],
          description: 'For the optimizer to re-bundle',
        ),
      ],
    ),
    FigSubcommand(
      name: 'preview',
      icon: '✨',
      description: 'Locally preview the production build',
      args: [
        FigArg(
          name: 'root',
          isOptional: true,
          template: 'folders',
        ),
      ],
      options: [
        FigOption(
          name: ['--host'],
          description: 'Specify the hostname',
          args: [
            FigArg(
              name: 'host',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['--port'],
          description: 'Specify the port',
          args: [
            FigArg(
              name: 'port',
            ),
          ],
        ),
        FigOption(
          name: ['--https'],
          description: 'Use TLS + HTTP/2',
        ),
        FigOption(
          name: ['--open'],
          description: 'Open browser on startup',
          args: [
            FigArg(
              name: 'browser',
              isOptional: true,
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--strictPort'],
          description: 'Exit if the port is already in use',
        ),
      ],
    ),
  ],
);
