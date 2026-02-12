// Auto-generated from TypeScript source: np.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `np` CLI
final FigSpec npSpec = FigSpec(
  name: 'np',
  description: 'A better npm publish',
  options: [
    Option(
      name: '--any-branch',
      description: 'Allow publishing from any branch'
    ),
    Option(
      name: '--branch',
      description: 'Name of the release branch (default: main | master)',
      args: [
        Arg(
        name: 'branch'
      )
      ]
    ),
    Option(
      name: '--no-cleanup',
      description: 'Skips cleanup of node_modules'
    ),
    Option(
      name: '--no-tests',
      description: 'Skips tests'
    ),
    Option(
      name: '--yolo',
      description: 'Skips cleanup and testing'
    ),
    Option(
      name: '--no-publish',
      description: 'Skips publishing'
    ),
    Option(
      name: '--preview',
      description: 'Show tasks without actually executing them'
    ),
    Option(
      name: '--tag',
      description: 'Publish under a given dist-tag',
      args: [
        Arg(
        name: 'tag'
      )
      ]
    ),
    Option(
      name: '--no-yarn',
      description: 'Don\'t use Yarn'
    ),
    Option(
      name: '--contents',
      description: 'Subdirectory to publish',
      args: [
        Arg(
        name: 'directory'
      )
      ]
    ),
    Option(
      name: '--no-release-draft',
      description: 'Skips opening a GitHub release draft'
    ),
    Option(
      name: '--release-draft-only',
      description: 'Only opens a GitHub release draft'
    ),
    Option(
      name: '--test-script',
      description: 'Name of npm run script to run tests before publishing (default: test)',
      args: [
        Arg(
        name: 'script'
      )
      ]
    ),
    Option(
      name: '--no-2fa',
      description: 'Don\'t enable 2FA on new packages (not recommended)'
    ),
    Option(
      name: '--message',
      description: 'Version bump commit message. `%s` will be replaced with version. (default: \'%s\' with npm and \'v%s\' with yarn)',
      args: [
        Arg(
        name: 'message'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'version',
    description: 'Version to publish',
    isOptional: true
  )
  ]
);
