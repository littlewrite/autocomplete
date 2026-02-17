// AI-generated from TypeScript source: mvn.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec mvnSpec = FigSpec(
  name: 'mvn',
  description: 'Maven - a Java based project management and comprehension tool',
  options: [
    FigOption(
      name: ['--also-make', '-am'],
      description: 'Also build projects required by project list',
    ),
    FigOption(
      name: ['--also-make-dependents', '-amd'],
      description:
          'Also build projects that depend on projects in the project list',
    ),
    FigOption(
      name: ['--batch-mode', '-B'],
      description: 'Run in non-interactive (batch)',
    ),
    FigOption(
      name: ['--builder', '-b'],
      description: 'Specify the build strategy to use',
      args: FigArg(
        name: 'id of build strategy',
      ),
    ),
    FigOption(
      name: ['--strict-checksums', '-C'],
      description: 'Fail if checksums do not match',
    ),
    FigOption(
      name: ['--lax-checksums', '-c'],
      description: 'Warn if checksums do not match',
    ),
    FigOption(
      name: ['--color'],
      description: 'Specify the color mode of the output',
      args: FigArg(
        name: 'color mode',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'auto'),
        ],
      ),
    ),
    FigOption(
      name: ['--check-plugin-updates', '-cpu'],
      description: 'Ineffective. Only kept for backward compatibility',
    ),
    FigOption(
      name: ['--define', '-D'],
      description: 'Define a system property',
      args: FigArg(
        name: 'system property',
      ),
    ),
    FigOption(
      name: ['--errors', '-e'],
      description: 'Produce execution error messages',
    ),
    FigOption(
      name: ['--encrypt-master-password', '-emp'],
      description: 'Encrypt the master security password',
      args: FigArg(
        name: 'master password',
      ),
    ),
    FigOption(
      name: ['--encrypt-password', '-ep'],
      description: 'Encrypt the server password',
      args: FigArg(
        name: 'server password',
      ),
    ),
    FigOption(
      name: ['--file', '-f'],
      description:
          'Force the use of an alternate POM file (or directory with pom.xml)',
      args: FigArg(
        name: 'path',
        template: ['filepaths', 'folders'],
      ),
    ),
    FigOption(
      name: ['--fail-at-end', '-fae'],
      description:
          'Only fail the build afterwards; allow all non-impacted builds to continue',
    ),
    FigOption(
      name: ['--fail-fast', '-ff'],
      description: 'Stop at first failure in reactorized builds',
    ),
    FigOption(
      name: ['--fail-never', '-fn'],
      description: 'Never fail the build, regardless of project result',
    ),
    FigOption(
      name: ['--global-settings', '-gs'],
      description: 'Specify the global settings file to use',
      args: FigArg(
        name: 'path',
        template: ['filepaths'],
      ),
    ),
    FigOption(
      name: ['--global-toolchains', '-gt'],
      description: 'Specify the global toolchains file to use',
      args: FigArg(
        name: 'path',
        template: ['filepaths'],
      ),
    ),
    FigOption(
      name: ['--help', '-h'],
      description: 'Display help information',
    ),
    FigOption(
      name: ['--log-file', '-l'],
      description: 'Specify the file to log to',
      args: FigArg(
        name: 'path',
        template: ['filepaths'],
      ),
    ),
    FigOption(
      name: ['--legacy-local-repository', '-llr'],
      description: 'Use the Maven2 legacy local repository behaviour',
    ),
    FigOption(
      name: ['--non-recursive', '-N'],
      description: 'Do not recurse into sub-projects',
    ),
    FigOption(
      name: ['--no-plugin-registry', '-npr'],
      description: 'Ineffective. Only kept for backward compatibility',
    ),
    FigOption(
      name: ['--no-plugin-updates', '-npu'],
      description: 'Ineffective. Only kept for backward compatibility',
    ),
    FigOption(
      name: ['--no-snapshot-updates', '-nsu'],
      description: 'Suppress SNAPSHOT updates',
    ),
    FigOption(
      name: ['--no-transfer-progress', '-ntp'],
      description:
          'Do not display transfer progress when downloading or uploading',
    ),
    FigOption(
      name: ['--offline', '-o'],
      description: 'Work offline',
    ),
    FigOption(
      name: ['--activate-profiles', '-P'],
      description: 'Activate the specified profiles (comma delimited)',
      args: FigArg(
        name: 'profiles',
      ),
    ),
    FigOption(
      name: ['--projects', '-pl'],
      description: 'Specify the projects to build',
      args: FigArg(
        name: 'project list',
      ),
    ),
    FigOption(
      name: ['--quiet', '-q'],
      description: 'Quiet output - only shows errors',
    ),
    FigOption(
      name: ['--resume-from', '-rf'],
      description: 'Resume from the specified project',
      args: FigArg(
        name: 'project',
      ),
    ),
    FigOption(
      name: ['--settings', '-s'],
      description: 'Specify the user settings file to use',
      args: FigArg(
        name: 'path',
        template: ['filepaths'],
      ),
    ),
    FigOption(
      name: ['--toolchains', '-t'],
      description: 'Specify the toolchains file to use',
      args: FigArg(
        name: 'path',
        template: ['filepaths'],
      ),
    ),
    FigOption(
      name: ['--threads', '-T'],
      description: 'Specify the number of threads to use',
      args: FigArg(
        name: 'threads',
      ),
    ),
    FigOption(
      name: ['--update-snapshots', '-U'],
      description:
          'Forces a check for missing releases and updated snapshots on remote repositories',
    ),
    FigOption(
      name: ['--update-plugins', '-up'],
      description: 'Ineffective. Only kept for backward compatibility',
    ),
    FigOption(
      name: ['--version', '-v'],
      description: 'Display version information',
    ),
    FigOption(
      name: ['--show-version', '-V'],
      description: 'Display version information',
    ),
    FigOption(
      name: ['--debug', '-X'],
      description: 'Produce execution debug output',
    ),
  ],
  args: FigArg(
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
      FigSuggestion(name: 'site-deploy'),
    ],
  ),
);
