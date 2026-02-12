// Auto-generated from TypeScript source: mvn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mvn` CLI
final FigSpec mvnSpec = FigSpec(
  name: 'mvn',
  description: 'Maven - a Java based project management and comprehension tool',
  options: [
    Option(
      name: ['--also-make', '-am'],
      description: 'Also build projects required by project list'
    ),
    Option(
      name: ['--also-make-dependents', '-amd'],
      description: 'Also build projects that depend on projects in the project list'
    ),
    Option(
      name: ['--batch-mode', '-B'],
      description: 'Run in non-interactive (batch)'
    ),
    Option(
      name: ['--builder', '-b'],
      description: 'Specify the build strategy to use',
      args: [
        Arg(
        name: 'id of build strategy'
      )
      ]
    ),
    Option(
      name: ['--strict-checksums', '-C'],
      description: 'Fail if checksums do not match'
    ),
    Option(
      name: ['--lax-checksums', '-c'],
      description: 'Warn if checksums do not match'
    ),
    Option(
      name: '--color',
      description: 'Specify the color mode of the output',
      args: [
        Arg(
        name: 'color mode',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: ['--check-plugin-updates', '-cpu'],
      description: 'Ineffective. Only kept for backward compatibility'
    ),
    Option(
      name: ['--define', '-D'],
      description: 'Define a system property',
      args: [
        Arg(
        name: 'system property'
      )
      ]
    ),
    Option(
      name: ['--errors', '-e'],
      description: 'Produce execution error messages'
    ),
    Option(
      name: ['--encrypt-master-password', '-emp'],
      description: 'Encrypt the master security password',
      args: [
        Arg(
        name: 'master password'
      )
      ]
    ),
    Option(
      name: ['--encrypt-password', '-ep'],
      description: 'Encrypt the server password',
      args: [
        Arg(
        name: 'server password'
      )
      ]
    ),
    Option(
      name: ['--file', '-f'],
      description: 'Force the use of an alternate POM file (or directory with pom.xml)',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: ['--fail-at-end', '-fae'],
      description: 'Only fail the build afterwards; allow all non-impacted builds to continue'
    ),
    Option(
      name: ['--fail-fast', '-ff'],
      description: 'Stop at first failure in reactorized builds'
    ),
    Option(
      name: ['--fail-never', '-fn'],
      description: 'Never fail the build, regardless of project result'
    ),
    Option(
      name: ['--global-settings', '-gs'],
      description: 'Specify the global settings file to use',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--global-toolchains', '-gt'],
      description: 'Specify the global toolchains file to use',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help information'
    ),
    Option(
      name: ['--log-file', '-l'],
      description: 'Specify the file to log to',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--legacy-local-repository', '-llr'],
      description: 'Use the Maven2 legacy local repository behaviour'
    ),
    Option(
      name: ['--non-recursive', '-N'],
      description: 'Do not recurse into sub-projects'
    ),
    Option(
      name: ['--no-plugin-registry', '-npr'],
      description: 'Ineffective. Only kept for backward compatibility'
    ),
    Option(
      name: ['--no-plugin-updates', '-npu'],
      description: 'Ineffective. Only kept for backward compatibility'
    ),
    Option(
      name: ['--no-snapshot-updates', '-nsu'],
      description: 'Suppress SNAPSHOT updates'
    ),
    Option(
      name: ['--no-transfer-progress', '-ntp'],
      description: 'Do not display transfer progress when downloading or uploading'
    ),
    Option(
      name: ['--offline', '-o'],
      description: 'Work offline'
    ),
    Option(
      name: ['--activate-profiles', '-P'],
      description: 'Activate the specified profiles (comma delimited)',
      args: [
        Arg(
        name: 'profiles'
      )
      ]
    ),
    Option(
      name: ['--projects', '-pl'],
      description: 'Specify the projects to build',
      args: [
        Arg(
        name: 'project list'
      )
      ]
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Quiet output - only shows errors'
    ),
    Option(
      name: ['--resume-from', '-rf'],
      description: 'Resume from the specified project',
      args: [
        Arg(
        name: 'project'
      )
      ]
    ),
    Option(
      name: ['--settings', '-s'],
      description: 'Specify the user settings file to use',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--toolchains', '-t'],
      description: 'Specify the toolchains file to use',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--threads', '-T'],
      description: 'Specify the number of threads to use',
      args: [
        Arg(
        name: 'threads'
      )
      ]
    ),
    Option(
      name: ['--update-snapshots', '-U'],
      description: 'Forces a check for missing releases and updated snapshots on remote repositories'
    ),
    Option(
      name: ['--update-plugins', '-up'],
      description: 'Ineffective. Only kept for backward compatibility'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Display version information'
    ),
    Option(
      name: ['--show-version', '-V'],
      description: 'Display version information'
    ),
    Option(
      name: ['--debug', '-X'],
      description: 'Produce execution debug output'
    )
  ],
  args: [
    Arg(
    name: 'goal/phase',
    description: 'Goal or phase to execute',
    isVariadic: true,
    suggestions: [
      FigSuggestion(name: 'pre-clean'),
      FigSuggestion(name: 'clean'),
      FigSuggestion(name: 'post-clean'),
      FigSuggestion(name: 'validate'),
      FigSuggestion(name: 'initialize'),
      FigSuggestion(name: 'generate-sources'),
      FigSuggestion(name: 'process-sources'),
      FigSuggestion(name: 'generate-resources'),
      FigSuggestion(name: 'process-resources'),
      FigSuggestion(name: 'compile'),
      FigSuggestion(name: 'process-classes'),
      FigSuggestion(name: 'generate-test-sources'),
      FigSuggestion(name: 'process-test-sources'),
      FigSuggestion(name: 'generate-test-resources'),
      FigSuggestion(name: 'process-test-resources'),
      FigSuggestion(name: 'test-compile'),
      FigSuggestion(name: 'process-test-classes'),
      FigSuggestion(name: 'test'),
      FigSuggestion(name: 'prepare-package'),
      FigSuggestion(name: 'package'),
      FigSuggestion(name: 'pre-integration-test'),
      FigSuggestion(name: 'integration-test'),
      FigSuggestion(name: 'post-integration-test'),
      FigSuggestion(name: 'verify'),
      FigSuggestion(name: 'install'),
      FigSuggestion(name: 'deploy'),
      FigSuggestion(name: 'pre-site'),
      FigSuggestion(name: 'site'),
      FigSuggestion(name: 'post-site'),
      FigSuggestion(name: 'site-deploy')
    ]
  )
  ]
);
