// AI-generated from TypeScript source: nextflow.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigGenerator sessionid = FigGenerator(
  script: ['bash', '-c', 'cat .nextflow/history | awk \'{ print \$7 }\''],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.isEmpty) {
      return <FigSuggestion>[];
    }
    return output
        .split('\n')
        .where((sessionid) => sessionid.trim().isNotEmpty)
        .map((sessionid) => FigSuggestion(
              name: sessionid.replaceAll('*', '').trim(),
              description: 'Session ID',
            ))
        .toList();
  },
);

final FigGenerator runname = FigGenerator(
  script: ['bash', '-c', 'cat .nextflow/history | awk \'{ print \$4 }\''],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.isEmpty) {
      return <FigSuggestion>[];
    }
    return output
        .split('\n')
        .where((runname) => runname.trim().isNotEmpty)
        .map((runname) => FigSuggestion(
              name: runname.replaceAll('*', '').trim(),
              description: 'Run name',
            ))
        .toList();
  },
);

final FigGenerator projectname = FigGenerator(
  script: [
    'bash',
    '-c',
    '{ find * -maxdepth 0 -type f -name \'*.nf\' 2> /dev/null && find \$HOME/.nextflow/assets/* -maxdepth 1 -type d | cut -d/ -f6,7 | grep / | grep -v assets; } 2> /dev/null',
  ],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.isEmpty) {
      return <FigSuggestion>[];
    }
    return output
        .split('\n')
        .where((projectname) => projectname.trim().isNotEmpty)
        .map((projectname) => FigSuggestion(
              name: projectname.replaceAll('*', '').trim(),
              description: 'Project name',
            ))
        .toList();
  },
);

final FigGenerator dockerimage = FigGenerator(
  script: ['bash', '-c', 'docker images | cut -w -f 1 | grep -v REPOSITORY'],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.isEmpty) {
      return <FigSuggestion>[];
    }
    return output
        .split('\n')
        .where((dockerimage) => dockerimage.trim().isNotEmpty)
        .map((dockerimage) => FigSuggestion(
              name: dockerimage.replaceAll('*', '').trim(),
              description: 'Docker image',
              icon: '🐳',
            ))
        .toList();
  },
);

final FigGenerator secretname = FigGenerator(
  script: [
    'bash',
    '-c',
    'grep -o \'"name": *"[^"]*"\' \$HOME/.nextflow/secrets/store.json | grep -o \'"[^"]*"\$\' | tr -d \\"',
  ],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.isEmpty) {
      return <FigSuggestion>[];
    }
    return output
        .split('\n')
        .where((secretname) => secretname.trim().isNotEmpty)
        .map((secretname) => FigSuggestion(
              name: secretname.replaceAll('*', '').trim(),
              description: 'Secret name',
              icon: '🔒',
            ))
        .toList();
  },
);

/// Completion spec for `nextflow` CLI
final FigSpec nextflowSpec = FigSpec(
    name: 'nextflow',
    description:
        'Nextflow enables scalable and reproducible scientific workflows using software containers. It allows the adaptation of pipelines written in the most common scripting languages',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    subcommands: [
      Subcommand(
          name: 'clean',
          description:
              'Clean up project cache and work directories (Default: last run)',
          args: [
            Arg(name: 'run_name|session_id', generators: runname)
          ],
          options: [
            Option(
                name: '-after',
                description: 'Clean up runs executed after the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: '-before',
                description: 'Clean up runs executed before the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: '-but',
                description: 'Clean up all runs except the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: ['-n', '-dry-run'],
                description:
                    'Print names of file to be removed without deleting them (Default: false)'),
            Option(
                name: ['-f', '-force'],
                description: 'Force clean command (Default: false)'),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: ['-k', '-keep-logs'],
                description:
                    'Removes only temporary files but retains execution log entries and metadata (Default: false)'),
            Option(
                name: ['-q', '-quiet'],
                description:
                    'Do not print names of files removed (Default: false)')
          ]),
      Subcommand(
          name: 'clone',
          description: 'Clone a project into a folder',
          args: [
            Arg(name: 'namespace/repository_name')
          ],
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-hub',
                description:
                    'Service hub where the project is hosted (Default: GitHub)',
                args: [Arg(name: 'gitlab|github|bitbucket')]),
            Option(
                name: '-r',
                description:
                    'Revision to clone - It can be a git branch, tag or revision number',
                args: [Arg(name: 'revision')]),
            Option(
                name: '-user',
                description: 'Private repository user name',
                args: [Arg(name: 'username')])
          ]),
      Subcommand(
          name: 'config',
          description: 'Print a project configuration',
          args: [
            Arg(name: 'project name', generators: projectname)
          ],
          options: [
            Option(
                name: '-flat',
                description:
                    'Print config using flat notation (Default: false)'),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-profile',
                description: 'Choose a configuration profile'),
            Option(
                name: '-properties',
                description:
                    'Prints config using Java properties notatio (Default: false)'),
            Option(
                name: ['-a', '-show-profiles'],
                description: 'Show all configuration profiles'),
            Option(
                name: '-sort',
                description: 'Sort config attributes (Default: false)')
          ]),
      Subcommand(
          name: 'console',
          description: 'Launch Nextflow interactive console',
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)')
          ]),
      Subcommand(
          name: 'drop',
          description: 'Delete the local copy of a project',
          args: [
            Arg(name: 'name of the project to drop', generators: projectname)
          ],
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-f',
                description:
                    'Delete the repository without taking care of local changes (Default: false)')
          ]),
      Subcommand(
          name: 'help',
          description: 'Print the usage help for a command',
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)')
          ]),
      Subcommand(
          name: 'info',
          description: 'Print project and system runtime information',
          args: [
            Arg(name: 'project name', generators: projectname)
          ],
          options: [
            Option(
                name: ['-u', '-check-updates'],
                description: 'Check for remote updates (Default: false)'),
            Option(
                name: '-d',
                description: 'Show detailed information (Default: false)'),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-o',
                description:
                    'Output format, either: text (default), json, yaml')
          ]),
      Subcommand(
          name: 'kuberun',
          description:
              'Execute a workflow in a Kubernetes cluster (experimental)',
          args: [
            Arg(name: 'project name', generators: projectname)
          ],
          options: [
            Option(
                name: '-E',
                description:
                    'Exports all current system environment (Default: false)'),
            Option(
                name: '-ansi-log',
                description: 'Enable/disable ANSI console logging'),
            Option(
                name: '-bucket-dir',
                description:
                    'Remote bucket where intermediate result files are stored',
                args: [Arg(name: 'remote bucket')]),
            Option(
                name: '-cache',
                description: 'Enable/disable processes caching'),
            Option(
                name: '-disable-jobs-cancellation',
                description:
                    'Prevent the cancellation of child jobs on execution termination'),
            Option(
                name: '-dsl1',
                description:
                    'Execute the workflow using DSL1 syntax (Default: false)'),
            Option(
                name: '-dsl2',
                description:
                    'Execute the workflow using DSL2 syntax (Default: false)'),
            Option(
                name: '-dump-channels',
                description: 'Dump channels for debugging purpose'),
            Option(
                name: '-dump-hashes',
                description:
                    'Dump task hash keys for debugging purpose (Default: false)'),
            Option(
                name: '-e',
                description:
                    'Add the specified variable to execution environment. Syntax: -e.key=value (Default: {})',
                args: [Arg(name: 'key=value')]),
            Option(
                name: '-entry',
                description: 'Entry workflow name to be executed',
                args: [Arg(name: 'entry workflow name')]),
            Option(
                name: '-head-cpus',
                description:
                    'Specify number of CPUs requested for the Nextflow pod (Default: 0)'),
            Option(
                name: '-head-memory',
                description:
                    'Specify amount of memory requested for the Nextflow pod'),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-hub',
                description:
                    'Service hub where the project is hosted (Default: github)',
                args: [Arg(name: 'service hub')]),
            Option(
                name: '-latest',
                description: 'Pull latest changes before run (Default: false)'),
            Option(
                name: '-lib',
                description: 'Library extension path',
                args: [Arg(name: 'library extension path')]),
            Option(
                name: '-main-script',
                description:
                    'The script file to be executed when launching a project directory or repository',
                args: [Arg(name: 'script file')]),
            Option(
                name: '-name',
                description: 'Assign a mnemonic name to the a pipeline run',
                args: [Arg(name: 'name')]),
            Option(
                name: ['-n', '-namespace'],
                description: 'Specify the K8s namespace to use'),
            Option(
                name: '-offline',
                description:
                    'Do not check for remote project updates (Default: false)'),
            Option(
                name: '-params-file',
                description: 'Load script parameters from a JSON/YAML file',
                args: [
                  Arg(name: 'JSON/YAML file', template: ['filepaths'])
                ]),
            Option(
                name: '-plugins',
                description:
                    'Specify the plugins to be applied for this run e.g. nf-amazon,nf-tower',
                args: [Arg(name: 'plugins ids separated by comma')]),
            Option(
                name: '-pod-image',
                description:
                    'Specify the container image for the Nextflow pod'),
            Option(
                name: '-process',
                description:
                    'Set process options. Syntax: -process.key=value (Default: {}',
                args: [Arg(name: 'key=value')]),
            Option(
                name: '-profile',
                description: 'Choose a configuration profile',
                args: [Arg(name: 'profile')]),
            Option(
                name: ['-qs', '-queue-size'],
                description:
                    'Max number of processes that can be executed in parallel by each executor',
                args: [Arg(name: 'number')]),
            Option(
                name: '-remoteProfile',
                description:
                    'Choose a configuration profile in the remoteConfig'),
            Option(
                name: '-resume',
                description:
                    'Execute the script using the cached results, useful to continue executions that was stopped by an error'),
            Option(
                name: ['-r', '-revision'],
                description:
                    'Revision of the project to run (either a git branch, tag or commit SHA number)',
                args: [Arg(name: 'project revision (tag/branch/hash')]),
            Option(
                name: ['-stub-run', '-stub'],
                description:
                    'Execute the workflow replacing process scripts with command stubs (Default: false)'),
            Option(
                name: '-test',
                description: 'Test a script function with the name specified',
                args: [Arg(name: 'name')]),
            Option(
                name: '-user',
                description: 'Private repository user name',
                args: [Arg(name: 'username')]),
            Option(
                name: ['-v', '-volume-mount'],
                description: 'Volume claim mounts eg. my-pvc:/mnt/path'),
            Option(
                name: '-with-charliecloud',
                description:
                    'Enable process execution in a Charliecloud container runtime'),
            Option(
                name: '-with-conda',
                description:
                    'Use the specified Conda environment package or file (must end with .yml|.yaml suffix)',
                args: [Arg(name: 'conda .yml/.yaml file')]),
            Option(
                name: '-with-dag',
                description: 'Create pipeline DAG file',
                args: [Arg(name: 'filename, e.g. dag.dot')]),
            Option(
                name: '-with-docker',
                description: 'Enable process execution in a Docker container',
                args: [
                  Arg(
                      name: 'a docker container image',
                      isOptional: true,
                      generators: dockerimage)
                ]),
            Option(
                name: ['-N', '-with-notification'],
                description:
                    'Send a notification email on workflow completion to the specified recipients',
                args: [Arg(name: 'email')]),
            Option(
                name: '-with-podman',
                description: 'Enable process execution in a Podman container'),
            Option(
                name: '-with-report',
                description: 'Create processes execution html report',
                args: [Arg(name: 'report filename e.g. report.html')]),
            Option(
                name: '-with-singularity',
                description:
                    'Enable process execution in a Singularity container'),
            Option(
                name: '-with-timeline',
                description: 'Create processes execution timeline file',
                args: [Arg(name: 'timeline filename e.g. timeline.html')]),
            Option(
                name: '-with-tower',
                description:
                    'Monitor workflow execution with Seqera Tower service'),
            Option(
                name: '-with-trace',
                description: 'Create processes execution tracing file',
                args: [Arg(name: 'trace text filename e.g. trace.txt')]),
            Option(
                name: '-with-weblog',
                description:
                    'Send workflow status messages via HTTP to target URL',
                args: [Arg(name: 'target web URL')]),
            Option(
                name: '-without-docker',
                description:
                    'Disable process execution with Docker (Default: false)'),
            Option(
                name: '-without-podman',
                description: 'Disable process execution in a Podman container'),
            Option(
                name: ['-w', '-work-dir'],
                description:
                    'Directory where intermediate result files are stored',
                args: [Arg(name: 'work dir')])
          ]),
      Subcommand(
          name: 'list',
          description: 'List all downloaded projects',
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)')
          ]),
      Subcommand(
          name: 'log',
          description: 'Print executions log and runtime info',
          args: [
            Arg(name: 'run name', generators: runname)
          ],
          options: [
            Option(
                name: '-after',
                description:
                    'Show log entries for runs executed after the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: '-before',
                description:
                    'Show log entries for runs executed before the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: '-but',
                description:
                    'Show log entries of all runs except the specified one',
                args: [Arg(name: 'run name', generators: runname)]),
            Option(
                name: ['-f', '-fields'],
                description:
                    'Comma separated list of fields to include in the printed log -- Use the `-l` option to show the list of available fields',
                args: [Arg(name: 'field1,field2,...')]),
            Option(
                name: ['-F', 'filter'],
                description:
                    'Filter log entries by a custom expression e.g. process =~ /foo.*/ && status == \'COMPLETED\'',
                args: [Arg(name: 'expression')]),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: ['-l', '-list-fields'],
                description: 'Show all available fields (Default: false)'),
            Option(
                name: ['-q', '-quiet'],
                description: 'Show only run names (Default: false)'),
            Option(
                name: '-s',
                description:
                    'Character used to separate column values (Default: )',
                args: [Arg(name: 'character')]),
            Option(
                name: ['-t', '-template'],
                description: 'Text template used to each record in the log',
                args: [Arg(name: 'template')])
          ]),
      Subcommand(
          name: 'pull',
          description: 'Download or update a project',
          args: [
            Arg(
                name: 'project name or repository url to pull',
                generators: projectname)
          ],
          options: [
            Option(
                name: '-all',
                description: 'Update all downloaded projects (Default: false)'),
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-hub',
                description: 'Service hub where the project is hosted'),
            Option(
                name: ['-r', '-revision'],
                description:
                    'Revision of the project to run (either a git branch, tag or commit SHA number)'),
            Option(name: '-user', description: 'Private repository user name')
          ]),
      Subcommand(name: 'run', description: 'Execute a pipeline project', args: [
        Arg(
            name: 'project name, repository url, or local path',
            generators: projectname)
      ], options: [
        Option(
            name: '-E',
            description:
                'Exports all current system environment (Default: false)'),
        Option(
            name: '-ansi-log',
            description: 'Enable/disable ANSI console logging'),
        Option(
            name: '-bucket-dir',
            description:
                'Remote bucket where intermediate result files are stored',
            args: [Arg(name: 'remote bucket')]),
        Option(name: '-cache', description: 'Enable/disable processes caching'),
        Option(
            name: '-disable-jobs-cancellation',
            description:
                'Prevent the cancellation of child jobs on execution termination'),
        Option(
            name: '-dsl1',
            description:
                'Execute the workflow using DSL1 syntax (Default: false)'),
        Option(
            name: '-dsl2',
            description:
                'Execute the workflow using DSL2 syntax (Default: false)'),
        Option(
            name: '-dump-channels',
            description: 'Dump channels for debugging purpose'),
        Option(
            name: '-dump-hashes',
            description:
                'Dump task hash keys for debugging purpose (Default: false)'),
        Option(
            name: '-e.',
            description:
                'Add the specified variable to execution environment. Syntax: -e.key=value (Default: {})',
            insertValue: '-e.{cursor}',
            args: [Arg(name: 'key=value')]),
        Option(
            name: '-entry',
            description: 'Entry workflow name to be executed',
            args: [Arg(name: 'entry workflow name')]),
        Option(
            name: ['-h', '-help'],
            description: 'Print the command usage (Default: false)'),
        Option(
            name: '-hub',
            description:
                'Service hub where the project is hosted (Default: github)',
            args: [Arg(name: 'service hub')]),
        Option(
            name: '-latest',
            description: 'Pull latest changes before run (Default: false)'),
        Option(
            name: '-lib',
            description: 'Library extension path',
            args: [Arg(name: 'library extension path')]),
        Option(
            name: '-main-script',
            description:
                'The script file to be executed when launching a project directory or repository',
            args: [Arg(name: 'script file')]),
        Option(
            name: '-name',
            description: 'Assign a mnemonic name to the a pipeline run',
            args: [Arg(name: 'name')]),
        Option(
            name: '-offline',
            description:
                'Do not check for remote project updates (Default: false)'),
        Option(
            name: '-params-file',
            description: 'Load script parameters from a JSON/YAML file',
            args: [
              Arg(name: 'JSON/YAML file', template: ['filepaths'])
            ]),
        Option(
            name: '-plugins',
            description:
                'Specify the plugins to be applied for this run e.g. nf-amazon,nf-tower',
            args: [Arg(name: 'plugins ids separated by comma')]),
        Option(
            name: '-process.',
            description:
                'Set process options. Syntax: -process.key=value (Default: {}',
            insertValue: '-process.{cursor}',
            args: [Arg(name: 'key=value')]),
        Option(
            name: '-profile',
            description: 'Choose a configuration profile',
            args: [Arg(name: 'profile')]),
        Option(
            name: ['-qs', '-queue-size'],
            description:
                'Max number of processes that can be executed in parallel by each executor',
            args: [Arg(name: 'number')]),
        Option(
            name: '-resume',
            description:
                'Execute the script using the cached results, useful to continue executions that was stopped by an error',
            args: [
              Arg(name: 'session ID', isOptional: true, generators: sessionid)
            ]),
        Option(
            name: ['-r', '-revision'],
            description:
                'Revision of the project to run (either a git branch, tag or commit SHA number)',
            args: [Arg(name: 'project revision (tag/branch/hash')]),
        Option(
            name: ['-stub-ru', '-stub'],
            description:
                'Execute the workflow replacing process scripts with command stubs (Default: false)'),
        Option(
            name: '-test',
            description: 'Test a script function with the name specified',
            args: [Arg(name: 'name')]),
        Option(
            name: '-user',
            description: 'Private repository user name',
            args: [Arg(name: 'username')]),
        Option(
            name: '-with-charliecloud',
            description:
                'Enable process execution in a Charliecloud container runtime'),
        Option(
            name: '-with-conda',
            description:
                'Use the specified Conda environment package or file (must end with .yml|.yaml suffix)',
            args: [Arg(name: 'conda .yml/.yaml file')]),
        Option(
            name: '-with-dag',
            description: 'Create pipeline DAG file',
            args: [Arg(name: 'filename, e.g. dag.dot')]),
        Option(
            name: '-with-docker',
            description: 'Enable process execution in a Docker container',
            args: [
              Arg(
                  name: 'a docker container image',
                  isOptional: true,
                  generators: dockerimage)
            ]),
        Option(
            name: ['-N', '-with-notification'],
            description:
                'Send a notification email on workflow completion to the specified recipients',
            args: [Arg(name: 'email')]),
        Option(
            name: '-with-podman',
            description: 'Enable process execution in a Podman container'),
        Option(
            name: '-with-report',
            description: 'Create processes execution html report',
            args: [Arg(name: 'report filename e.g. report.html')]),
        Option(
            name: '-with-singularity',
            description: 'Enable process execution in a Singularity container'),
        Option(
            name: '-with-timeline',
            description: 'Create processes execution timeline file',
            args: [Arg(name: 'timeline filename e.g. timeline.html')]),
        Option(
            name: '-with-tower',
            description:
                'Monitor workflow execution with Seqera Tower service'),
        Option(
            name: '-with-trace',
            description: 'Create processes execution tracing file',
            args: [Arg(name: 'trace text filename e.g. trace.txt')]),
        Option(
            name: '-with-weblog',
            description: 'Send workflow status messages via HTTP to target URL',
            args: [Arg(name: 'target web URL')]),
        Option(
            name: '-without-docker',
            description:
                'Disable process execution with Docker (Default: false)'),
        Option(
            name: '-without-podman',
            description: 'Disable process execution in a Podman container'),
        Option(
            name: ['-w', '-work-dir'],
            description: 'Directory where intermediate result files are stored',
            args: [Arg(name: 'work dir')])
      ]),
      Subcommand(
          name: 'secrets',
          description:
              'Handle and manage sensitive information for pipeline execution in a safe manner',
          options: [
            Option(
                name: 'list',
                description:
                    'List secrets available in the current store e.g. nextflow secrets list'),
            Option(
                name: 'get',
                description:
                    'Allows retrieving a secret value e.g. nextflow secrets get FOO',
                args: [Arg(name: 'secret name', generators: secretname)]),
            Option(
                name: 'set',
                description:
                    'Allows creating creating a new secret or overriding an existing one e.g. nextflow secrets set FOO "Hello world"',
                isDangerous: true,
                args: [
                  Arg(name: 'secret name and value', generators: secretname)
                ]),
            Option(
                name: 'delete',
                description:
                    'Allows deleting an existing secret e.g. nextflow secrets delete FOO',
                isDangerous: true,
                args: [Arg(name: 'secret name', generators: secretname)])
          ]),
      Subcommand(
          name: 'self-update',
          description:
              'Update nextflow runtime to the latest available version',
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)')
          ]),
      Subcommand(
          name: 'view',
          description: 'View project script file(s)',
          args: [
            Arg(name: 'project name', generators: projectname)
          ],
          options: [
            Option(
                name: ['-h', '-help'],
                description: 'Print the command usage (Default: false)'),
            Option(
                name: '-l',
                description: 'List repository content (Default: false)'),
            Option(name: '-q', description: 'Hide header line (Default: false)')
          ])
    ],
    options: [
      Option(
          name: '-C',
          description:
              'Use the specified configuration file(s) overriding any defaults',
          args: [
            Arg(name: 'configuration file', template: ['filepaths'])
          ]),
      Option(
          name: '-D',
          description: 'Set JVM properties',
          insertValue: '-D{cursor}',
          args: [Arg(name: 'custom Java system property')]),
      Option(name: '-bg', description: 'Execute nextflow in background'),
      Option(
          name: ['-c', '-config'],
          description: 'Add the specified file to configuration set',
          args: [
            Arg(name: 'configuration file', template: ['filepaths'])
          ]),
      Option(
          name: ['-d', '-dockerize'],
          description: 'Launch nextflow via Docker (experimental)'),
      Option(name: '-h', description: 'Print this help'),
      Option(name: '-log', description: 'Set nextflow log file path'),
      Option(
          name: ['-q', '-quiet'],
          description: 'Do not print information messages'),
      Option(
          name: '-syslog',
          description: 'Send logs to syslog server (eg. localhost:514)'),
      Option(name: ['-v', '-version'], description: 'Print the program version')
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (sessionid)
// const sessionid: Fig.Generator = {
//   script: ["bash", "-c", "cat .nextflow/history | awk '{ print $7 }'"],
//   postProcess: (output) => {
//     if (output == "") {
//       return [];
//     }
//     return output.split("\n").map((sessionid) => {
//       return {
//         name: sessionid.replace("*", "").trim(),
//         description: "Session ID",
//       };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (runname)
// const runname: Fig.Generator = {
//   script: ["bash", "-c", "cat .nextflow/history | awk '{ print $4 }'"],
//   postProcess: (output) => {
//     if (output == "") {
//       return [];
//     }
//     return output.split("\n").map((runname) => {
//       return { name: runname.replace("*", "").trim(), description: "Run name" };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (projectname)
// const projectname: Fig.Generator = {
//   script: [
//     "bash",
//     "-c",
//     `{ find * -maxdepth 0 -type f -name '*.nf' 2> /dev/null && find $HOME/.nextflow/assets/* -maxdepth 1 -type d | cut -d/ -f6,7 | grep / | grep -v assets; } 2> /dev/null`,
//   ],
//   postProcess: (output) => {
//     if (output == "") {
//       return [];
//     }
//     return output.split("\n").map((projectname) => {
//       return {
//         name: projectname.replace("*", "").trim(),
//         description: "Project name",
//       };
//     });
//   }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (dockerimage)
// const dockerimage: Fig.Generator = {
//   script: ["bash", "-c", "docker images | cut -w -f 1 | grep -v REPOSITORY"],
//   postProcess: (output) => {
//     if (output == "") {
//       return [];
//     }
//     return output.split("\n").map((dockerimage) => {
//       return {
//         name: dockerimage.replace("*", "").trim(),
//         description: "Docker image",
//       };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (secretname)
// const secretname: Fig.Generator = {
//   script: [
//     "bash",
//     "-c",
//     `grep -o '"name": *"[^"]*"' $HOME/.nextflow/secrets/store.json | grep -o '"[^"]*"$' | tr -d \\"`,
//   ],
//   postProcess: (output) => {
//     if (output == "") {
//       return [];
//     }
//     return output.split("\n").map((secretname) => {
//       return {
//         name: secretname.replace("*", "").trim(),
//         description: "Secret name",
//       };
//     });
//   },
// };
// TS_GENERATOR_BLOCK_END
