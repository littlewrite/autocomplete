// AI-generated from TypeScript source: ts-node.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final FigGenerator dependenciesGenerator = FigGenerator(
  trigger: (String newToken, String oldToken) =>
      newToken == '-g' || newToken == '--global',
  script: (List<String> tokens) {
    if (!tokens.contains('-g') && !tokens.contains('--global')) {
      return ['npm', 'prefix'];
    } else {
      return ['bash', '-c', 'ls -1 `npm root -g`'];
    }
  },
  postProcess: (String out, [List<String>? tokens]) {
    if (tokens != null &&
        (tokens.contains('-g') || tokens.contains('--global'))) {
      return out.split('\n').map((name) {
        return FigSuggestion(
          name: name,
          icon: '📦',
          description: 'global dependency',
        );
      }).toList();
    }

    // Local dependencies logic
    // The script returned npm prefix, so out is the prefix path.
    // We need to read package.json.
    // Since postProcess in Dart spec usually processes the output of the script,
    // and we can't easily chain commands in 'script' return value if it's a list,
    // we might need a different approach for local dependencies if we want to follow TS exactly.
    // However, TS uses `custom` which can execute multiple commands.
    // Dart `script` is limited to one command.
    // So we can try to chain them in one shell command:
    // `cat $(npm prefix)/package.json`

    // BUT, the generator definition above uses 'npm prefix' for local.
    // Let's change the script to cat the file directly using subshell.
    return [];
  },
);

// Redefining dependenciesGenerator to handle the complexity better
final FigGenerator dependenciesGeneratorRevised = FigGenerator(
  trigger: (String newToken, String oldToken) =>
      newToken == '-g' || newToken == '--global',
  script: (List<String> tokens) {
    if (!tokens.contains('-g') && !tokens.contains('--global')) {
      return ['bash', '-c', 'cat "\$(npm prefix)/package.json" 2>/dev/null'];
    } else {
      return ['bash', '-c', 'ls -1 `npm root -g`'];
    }
  },
  postProcess: (String out, [List<String>? tokens]) {
    if (tokens != null &&
        (tokens.contains('-g') || tokens.contains('--global'))) {
      return out.split('\n').where((line) => line.isNotEmpty).map((name) {
        return FigSuggestion(
          name: name,
          icon: '📦',
          description: 'global dependency',
        );
      }).toList();
    }

    if (out.trim().isEmpty) return [];

    try {
      final packageContent = jsonDecode(out);
      final dependencies = packageContent['dependencies'] ?? {};
      final devDependencies = packageContent['devDependencies'] ?? {};
      final optionalDependencies = packageContent['optionalDependencies'] ?? {};

      final allDeps = {};
      allDeps.addAll(dependencies);
      allDeps.addAll(devDependencies);
      allDeps.addAll(optionalDependencies);

      return allDeps.keys.map((key) {
        final pkgName = key as String;
        // Filtering is usually handled by the client, but we can do it here if needed.
        // The TS spec filters out already listed tokens. We can skip that for simplicity or implement it.
        // Let's implement basic suggestion.
        String desc = 'dependency';
        if (optionalDependencies.containsKey(pkgName)) {
          desc = 'optionalDependency';
        } else if (devDependencies.containsKey(pkgName)) {
          desc = 'devDependency';
        }

        return FigSuggestion(
          name: pkgName,
          icon: '📦',
          description: desc,
        );
      }).toList();
    } catch (e) {
      return [];
    }
  },
);

final FigSpec tsNodeSpec = FigSpec(
  name: 'ts-node',
  description: 'Run the TypeScript interpreter for Node.JS',
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for ts-node',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Print version information of the ts-node module',
    ),
    FigOption(
      name: ['-e', '--eval'],
      insertValue: "-e '{cursor}'",
      description: 'Evaluate script',
      args: [FigArg(name: 'script')],
    ),
    FigOption(
      name: ['-p', '--print'],
      description: 'Evaluate script and print result',
    ),
    FigOption(
      name: ['-r', '--require'],
      isRepeatable: true,
      description: 'Require module before executing',
      args: [
        FigArg(
          name: 'module',
          generators: [dependenciesGeneratorRevised],
          filterStrategy: 'fuzzy',
        ),
      ],
    ),
    FigOption(
      name: ['-i', '--interactive'],
      description: 'Always open interactive REPL',
    ),
    FigOption(
      name: ['--show-config'],
      description: 'Print resolved Typescript config to the terminal',
    ),
    FigOption(
      name: ['--cwd-mode'],
      description:
          'Resolve Typescript config based on the current working directory',
    ),
    FigOption(
      name: ['-T', '--transpile-only'],
      description: 'Use the Typescript transpile module mode',
    ),
    FigOption(
      name: ['-H', '--compiler-host'],
      description: 'Use the Typescript compiler host API',
    ),
    FigOption(
      name: ['-I', '--ignore'],
      description: 'Ignore patterns from Typescript compilation',
      args: [FigArg(name: 'pattern')],
    ),
    FigOption(
      name: ['-P', '--project'],
      description: 'Specify TypeScript project location',
      args: [
        FigArg(
          name: 'project',
          template: 'filepaths',
          // Note: filterTemplateSuggestions is not directly supported in this simple conversion.
          // Using template: 'filepaths' is a good approximation.
        ),
      ],
    ),
    FigOption(
      name: ['-C', '--compiler'],
      description: 'Use a custom compiler',
      args: [FigArg(name: 'compiler')],
    ),
    FigOption(
      name: ['--transpiler'],
      description: 'Use a custom transpiler',
      args: [FigArg(name: 'transpiler')],
    ),
    FigOption(
      name: ['-D', '--ignore-diagnostics'],
      description: 'Specify Typescript diagnostic code to ignore',
      args: [FigArg(name: 'code')],
    ),
    FigOption(
      name: ['-O', '--compiler-options'],
      insertValue: "-O '{cursor}'",
      description: 'JSON object that will be merged with the compiler options',
      args: [FigArg(name: 'options')],
    ),
    FigOption(
      name: ['--cwd'],
      description: 'Specify working directory',
      args: [
        FigArg(
          name: 'cwd',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--files'],
      description:
          'Load files, include and exclude from Typescript config on startup',
    ),
    FigOption(
      name: ['--pretty'],
      description: 'Use the pretty formatter for diagnostic errors',
    ),
    FigOption(
      name: ['--skip-project'],
      description: 'Skip reading Typescript config',
    ),
    FigOption(
      name: ['--scope'],
      description: 'Scope compilation to scope directory specified',
    ),
    FigOption(
      name: ['--scope-dir'],
      description: 'Directory for scope parameter',
      args: [
        FigArg(
          name: 'directory',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--skip-ignore'],
      description: 'Skip --ignore checks',
    ),
    FigOption(
      name: ['--prefer-ts-exts'],
      description:
          'Prefer Typescript files over JavaScript files when importing files',
    ),
    FigOption(
      name: ['--log-error'],
      description:
          'Pipe Typescript errors to stderr instead of throwing exceptions',
    ),
    FigOption(
      name: ['--no-experimental-repl-await'],
      description: 'Disable the top-level await function in REPL',
    ),
  ],
  args: [
    FigArg(
      name: 'script',
      isScript: true,
      template: 'filepaths',
    ),
  ],
);
