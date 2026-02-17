// AI-generated from TypeScript source: bazel.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator _bazelBuildFiles = FigGenerator(
  script: [
    'bash',
    '-c',
    'FILES=( \$(find ./ -name BUILD) ); for f in \$FILES; do echo "----\$f"; cat "\$f"; done',
  ],
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.split('\n');
    final targets = <FigSuggestion>[];
    String currPath = '';

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i];
      // Match: ----.//lib/BUILD
      final filepathMatch = RegExp(r'----.(.*)/BUILD').firstMatch(line);
      // Match: name = "hello-time"
      final targetMatch = RegExp(r'name = "(.*)"').firstMatch(line);

      if (filepathMatch != null) {
        currPath = '${filepathMatch.group(1)}:';
      } else if (targetMatch != null) {
        targets.add(FigSuggestion(
          name: currPath + (targetMatch.group(1) ?? ''),
          description: 'Bazel target',
          icon: '🎯',
          priority: 80,
        ));
      }
    }
    return targets;
  },
);

final FigSpec bazelSpec = FigSpec(
  name: 'bazel',
  description: 'Bazel the build system!',
  subcommands: [
    FigSubcommand(
      name: 'run',
      description: 'Runs the specified target',
      args: [
        FigArg(
          name: 'BUILD file',
          generators: [_bazelBuildFiles],
        ),
      ],
    ),
    FigSubcommand(
      name: 'test',
      description: 'Builds and runs the specified test targets',
      args: [
        FigArg(
          name: 'BUILD file',
          generators: [_bazelBuildFiles],
        ),
      ],
    ),
    FigSubcommand(
      name: 'build',
      description: 'Builds the specified targets',
      args: [
        FigArg(
          name: 'BUILD file',
          generators: [_bazelBuildFiles],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: '--autodetect_server_javabase',
      exclusiveOn: ['--noautodetect_server_javabase'],
      description:
          'Back to the local JDK for running the bazel server and instead exits',
    ),
    FigOption(
      name: '--noautodetect_server_javabase',
      exclusiveOn: ['autodetect_server_javabase'],
      description:
          'Does not fall back to the local JDK for running the bazel server and instead exits',
    ),
    FigOption(
      name: '--batch',
      exclusiveOn: ['--nobatch'],
      description: 'Run as just a client process without a server',
    ),
    FigOption(
      name: '--nobatch',
      exclusiveOn: ['--batch'],
      description: 'Run with a server',
    ),
    FigOption(
      name: '--batch_cpu_scheduling',
      exclusiveOn: ['--nobatch_cpu_scheduling'],
      description: 'Only on Linux; use \'batch\' CPU scheduling for Bazel',
    ),
    FigOption(
      name: '--nobatch_cpu_scheduling',
      exclusiveOn: ['--batch_cpu_scheduling'],
      description: 'Only on Linux; Bazel does not perform a system call',
    ),
    FigOption(
      name: '--bazelrc',
      description:
          'The location of the user .bazelrc file containing default values of Bazel options',
      args: [
        FigArg(
          name: 'bazelrc path',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: '--block_for_lock',
      exclusiveOn: ['--noblock_for_lock'],
      description: 'Wait for a running command to complete',
    ),
    FigOption(
      name: '--noblock_for_lock',
      exclusiveOn: ['--block_for_lock'],
      description:
          'Bazel does not wait for a running command to complete, but instead exits immediately',
    ),
    FigOption(
      name: '--client_debug',
      exclusiveOn: ['--noclient_debug'],
      description:
          'Log debug information from the client to stderr. Changing this option will not cause the server to restart',
    ),
    FigOption(
      name: '--noclient_debug',
      exclusiveOn: ['--client_debug'],
      description: 'Don\'t log debug information from the client to stderr',
    ),
    FigOption(
      name: '--connect_timeout_secs',
      description:
          'The amount of time the client waits for each attempt to connect to the server',
      args: [
        FigArg(
          name: 'time',
        ),
      ],
    ),
    FigOption(
      name: '--expand_configs_in_place',
      exclusiveOn: ['--noexpand_configs_in_place'],
      description:
          'Changed the expansion of --config flags to be done in-place',
    ),
    FigOption(
      name: '--noexpand_configs_in_place',
      exclusiveOn: ['--expand_configs_in_place'],
      description:
          '--config flags in a fixed point expansion between normal rc options and command-line specified options',
    ),
    FigOption(
      name: '--failure_detail_out',
      description:
          'Specifies a location to write a failure_detail protobuf message if the server experiences a failure and cannot report it via gRPC, as normal. Otherwise, the location will be \${OUTPUT_BASE}/failure_detail.rawproto',
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: '--home_rc',
      exclusiveOn: ['--nohome_rc'],
      description: 'Look for the home bazelrc file at \$HOME/.bazelrc',
    ),
    FigOption(
      name: '--nohome_rc',
      exclusiveOn: ['--home_rc'],
      description: 'Don\'t look for the home bazelrc file at \$HOME/.bazelrc',
    ),
    FigOption(
      name: '--idle_server_tasks',
      exclusiveOn: ['--noidle_server_tasks'],
      description: 'Run System.gc() when the server is idle',
    ),
    FigOption(
      name: '--noidle_server_tasks',
      exclusiveOn: ['--idle_server_tasks'],
      description: 'Don\'t run System.gc() when the server is idle',
    ),
    FigOption(
      name: '--ignore_all_rc_files',
      exclusiveOn: ['--noignore_all_rc_files'],
      description:
          'Disables all rc files, regardless of the values of other rc-modifying flags, even if these flags come later in the list of startup options',
    ),
    FigOption(
      name: '--noignore_all_rc_files',
      exclusiveOn: ['--ignore_all_rc_files'],
      description: 'Enables all rc files',
    ),
    FigOption(
      name: '--io_nice_level',
      description:
          'Only on Linux; set a level from 0-7 for best-effort IO scheduling using the sys_ioprio_set system call. 0 is highest priority, 7 is lowest',
      args: [
        FigArg(
          name: 'io-level',
          suggestions: ['0', '1', '2', '3', '4', '5', '6', '7'],
        ),
      ],
    ),
    FigOption(
      name: '--local_startup_timeout_secs',
      description:
          'The maximum amount of time the client waits to connect to the server',
      args: [
        FigArg(
          name: 'seconds',
          defaultValue: '120',
        ),
      ],
    ),
    FigOption(
      name: '--macos_qos_class',
      description:
          'Sets the QoS service class of the bazel server when running on macOS',
      args: [
        FigArg(
          name: 'QoS service class',
          defaultValue: 'default',
        ),
      ],
    ),
    FigOption(
      name: '--max_idle_secs',
      description:
          'The number of seconds the build server will wait idling before shutting down',
      args: [
        FigArg(
          name: 'seconds',
          defaultValue: '10800',
        ),
      ],
    ),
    FigOption(
      name: '--output_base',
      description:
          'Specifies the output location to which all build output will be written',
      args: [
        FigArg(
          name: 'Path',
          defaultValue: '\${OUTPUT_ROOT}/_bazel_\${USER}/\${MD5_OF_WORKSPACE_ROOT}',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: '--output_base_root',
      description:
          'The user-specific directory beneath which all build outputs are written',
      args: [
        FigArg(
          name: 'Path',
          defaultValue: '\$USER',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: '--preemptible',
      exclusiveOn: ['--nopreemptible'],
      description:
          'If true, the command can be preempted if another command is started',
    ),
    FigOption(
      name: '--nopreemptible',
      exclusiveOn: ['--preemptible'],
      description:
          'If true, the command can be preempted if another command is started',
    ),
    FigOption(
      name: '--server_jvm_out',
      description: 'The location to write the server\'s JVM\'s output',
      args: [
        FigArg(
          name: 'Path',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: '--shutdown_on_low_sys_mem',
      exclusiveOn: ['--noshutdown_on_low_sys_mem'],
      description:
          'Linux only. If max_idle_secs is set and the build server has been idle for a while, shut down the server when the system is low on free RAM',
    ),
    FigOption(
      name: '--noshutdown_on_low_sys_mem',
      exclusiveOn: ['--shutdown_on_low_sys_mem'],
      description:
          'Linux only. Don\'t shut down the server when the system is low on free RAM',
    ),
    FigOption(
      name: '--system_rc',
      exclusiveOn: ['--nosystem_rc'],
      description: 'Look for the system-wide bazelrc',
    ),
    FigOption(
      name: '--nosystem_rc',
      exclusiveOn: ['--system_rc'],
      description: 'Don\'t look for the system-wide bazelrc',
    ),
    FigOption(
      name: '--unlimit_coredumps',
      exclusiveOn: ['--nounlimit_coredumps'],
      description:
          'Raises the soft coredump limit to the hard limit to make coredumps of the server (including the JVM) and the client possible under common conditions',
    ),
    FigOption(
      name: '--nounlimit_coredumps',
      exclusiveOn: ['--unlimit_coredumps'],
      description:
          'Don\'t raise the soft coredump limit to the hard limit to make coredumps of the server (including the JVM) and the client possible under common conditions',
    ),
    FigOption(
      name: '--watchfs',
      exclusiveOn: ['--nowatchfs'],
      description:
          'Use the operating system\'s file watch service for local changes instead of scanning every file for a change',
    ),
    FigOption(
      name: '--nowatchfs',
      exclusiveOn: ['--watchfs'],
      description: 'Scan every file for a change',
    ),
    FigOption(
      name: '--windows_enable_symlinks',
      exclusiveOn: ['--nowindows_enable_symlinks'],
      description:
          'Real symbolic links will be created on Windows instead of file copying',
    ),
    FigOption(
      name: '--nowindows_enable_symlinks',
      exclusiveOn: ['--windows_enable_symlinks'],
      description: 'Real symbolic links will be created via file copying',
    ),
    FigOption(
      name: '--workspace_rc',
      exclusiveOn: ['--noworkspace_rc'],
      description: 'Look for the workspace bazelrc file at \$workspace/.bazelrc',
    ),
    FigOption(
      name: '--noworkspace_rc',
      exclusiveOn: ['--workspace_rc'],
      description:
          'Don\'t look for the workspace bazelrc file at \$workspace/.bazelrc',
    ),
  ],
);
