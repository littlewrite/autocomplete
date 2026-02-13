// Auto-generated from TypeScript source: pkill.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pkill` CLI
final FigSpec pkillSpec = FigSpec(
  name: 'pkill',
  description: 'Send  the  specified  signal  (by default SIGTERM) to each specified process',
  options: [

    Option(
      name: '--signal',
      description: 'Signal to send (either number or name)',
      args: [
        Arg(
        name: 'signal',
        description: 'Signal to send',
        suggestions: [

          FigSuggestion(name: 'SIGABRT'),
          FigSuggestion(name: 'SIGALRM'),
          FigSuggestion(name: 'SIGBUS'),
          FigSuggestion(name: 'SIGCHLD'),
          FigSuggestion(name: 'SIGCLD'),
          FigSuggestion(name: 'SIGCONT'),
          FigSuggestion(name: 'SIGEMT'),
          FigSuggestion(name: 'SIGFPE'),
          FigSuggestion(name: 'SIGHUP'),
          FigSuggestion(name: 'SIGILL'),
          FigSuggestion(name: 'SIGINFO'),
          FigSuggestion(name: 'SIGINT'),
          FigSuggestion(name: 'SIGIO'),
          FigSuggestion(name: 'SIGIOT'),
          FigSuggestion(name: 'SIGKILL'),
          FigSuggestion(name: 'SIGLOST'),
          FigSuggestion(name: 'SIGPIPE'),
          FigSuggestion(name: 'SIGPOLL'),
          FigSuggestion(name: 'SIGPROF'),
          FigSuggestion(name: 'SIGPWR'),
          FigSuggestion(name: 'SIGQUIT'),
          FigSuggestion(name: 'SIGSEGV'),
          FigSuggestion(name: 'SIGSTKFLT'),
          FigSuggestion(name: 'SIGSTOP'),
          FigSuggestion(name: 'SIGTSTP'),
          FigSuggestion(name: 'SIGSYS'),
          FigSuggestion(name: 'SIGTERM'),
          FigSuggestion(name: 'SIGTRAP'),
          FigSuggestion(name: 'SIGTTIN'),
          FigSuggestion(name: 'SIGTTOU'),
          FigSuggestion(name: 'SIGUNUSED'),
          FigSuggestion(name: 'SIGURG'),
          FigSuggestion(name: 'SIGUSR1'),
          FigSuggestion(name: 'SIGUSR2'),
          FigSuggestion(name: 'SIGVTALRM'),
          FigSuggestion(name: 'SIGXCPU'),
          FigSuggestion(name: 'SIGXFSZ'),
          FigSuggestion(name: 'SIGWINCH')
        ]
      )
      ]
    ),
    Option(
      name: ['-q', '--queue'],
      description: 'Integer value to be sent with the signal',
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: ['-e', '--echo'],
      description: 'Display what is killed'
    ),
    Option(
      name: ['-f', '--full'],
      description: 'Use full process name to match'
    ),
    Option(
      name: ['-g', '--pgroup'],
      description: 'Match listed process group IDs',
      args: [
        Arg(
        name: 'PGID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-G', '--group'],
      description: 'Match real group IDs',
      args: [
        Arg(
        name: 'GID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-i', '--ignore-case'],
      description: 'Match case insensitively'
    ),
    Option(
      name: ['-n', '--newest'],
      description: 'Select most recently started'
    ),
    Option(
      name: ['-o', '--oldest'],
      description: 'Select least recently started'
    ),
    Option(
      name: ['-O', '--older'],
      description: 'Select where older than seconds',
      args: [
        Arg(
        name: 'seconds'
      )
      ]
    ),
    Option(
      name: ['-P', '--parent'],
      description: 'Match only child processes of the given parent',
      args: [
        Arg(
        name: 'PPID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-s', '--session'],
      description: 'Match session IDs',
      args: [
        Arg(
        name: 'SID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-t', '--terminal'],
      description: 'Match by controlling terminal',
      args: [
        Arg(
        name: 'tty',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-u', '--euid'],
      description: 'Match by effective IDs',
      args: [
        Arg(
        name: 'ID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-U', '--uid'],
      description: 'Match by real IDs',
      args: [
        Arg(
        name: 'ID',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-x', '--exact'],
      description: 'Match exactly with the command name'
    ),
    Option(
      name: ['-F', '--pidfile'],
      description: 'Read PIDs from file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-L', 'logpidfile'],
      description: 'Fail if PID file is not locked'
    ),
    Option(
      name: ['-r', '--runstates'],
      description: 'Match runstates',
      args: [
        Arg(
        name: 'state'
      )
      ]
    ),
    Option(
      name: '--ns',
      description: 'Match the processes that belong to a specified PID',
      args: [
        Arg(
        name: 'PID'
      )
      ]
    ),
    Option(
      name: '--nslist',
      description: 'List which namespaces will be considered for the --ns option',
      dependsOn: ['--ns'],
      args: [
        Arg(
        name: 'ns',
        isVariadic: true,
        suggestions: [

          FigSuggestion(name: 'ipc'),
          FigSuggestion(name: 'mnt'),
          FigSuggestion(name: 'net'),
          FigSuggestion(name: 'pid'),
          FigSuggestion(name: 'user'),
          FigSuggestion(name: 'uts')
        ]
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output help message and exit'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Output version information and exit'
    )
  ],
  args: [
    Arg(
    name: 'pattern',
    description: 'Specifies an Extended Regular Expression for matching against the process names or command lines'
  )
  ]
);
