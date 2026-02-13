// Auto-generated from TypeScript source: ps.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ps` CLI
final FigSpec psSpec = FigSpec(
  name: 'ps',
  description: 'Report a snapshot of the current processes',
  options: [

    Option(
      name: ['-A', '-e'],
      description: 'Select all processes'
    ),
    Option(
      name: '-a',
      description: 'Select all processes except both session leaders',
      args: [
        Arg(
        name: 'getsi'
      )
      ]
    ),
    Option(
      name: '-d',
      description: 'Select all processes except session leaders'
    ),
    Option(
      name: '--deselect',
      description: 'Select all processes except those that fulfill the specified conditions'
    ),
    Option(
      name: '-N',
      description: 'Select all processes except those that fulfill the specified conditions (negates the selection)'
    ),
    Option(
      name: '--pid',
      description: 'Select by process ID',
      args: [
        Arg(
        name: 'pidlis'
      )
      ]
    ),
    Option(
      name: '--ppid',
      description: 'Select by parent process ID. This selects the processes with a parent process ID in pidlist',
      args: [
        Arg(
        name: 'pidlis'
      )
      ]
    ),
    Option(
      name: '--sid',
      description: 'Select by session ID',
      args: [
        Arg(
        name: 'sesslis'
      )
      ]
    ),
    Option(
      name: '--tty',
      description: 'Select by terminal',
      args: [
        Arg(
        name: 'ttylis'
      )
      ]
    ),
    Option(
      name: 'U',
      description: 'Select by effective user ID (EUID) or name',
      args: [
        Arg(
        name: 'userlis'
      )
      ]
    ),
    Option(
      name: '-U',
      description: 'Select by real user ID (RUID) or name',
      args: [
        Arg(
        name: 'userlis'
      )
      ]
    ),
    Option(
      name: '-u',
      description: 'Select by effective user ID (EUID) or name',
      args: [
        Arg(
        name: 'userlis'
      )
      ]
    ),
    Option(
      name: '--User',
      description: 'Select by real user ID (RUID) or name',
      args: [
        Arg(
        name: 'userlis'
      )
      ]
    ),
    Option(
      name: '--user',
      description: 'Select by effective user ID (EUID) or name',
      args: [
        Arg(
        name: 'userlis'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Show different scheduler information for the -l option'
    ),
    Option(
      name: '--context',
      description: 'Display security context format (for SE Linux)'
    ),
    Option(
      name: '-f',
      description: 'Do full-format listing'
    ),
    Option(
      name: '-F',
      description: 'Extra full format'
    ),
    Option(
      name: ['--format', '-o', 'o'],
      description: '',
      args: [
        Arg(
        name: 'forma'
      )
      ],
      isRepeatable: true
    ),
    Option(
      name: ['-M', 'Z'],
      description: '(for SE Linux)'
    ),
    Option(
      name: ['-y', '-l'],
      description: ''
    ),
    Option(
      name: '--cols',
      description: 'Set screen width',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '--columns',
      description: 'Set screen width',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '--cumulative',
      description: 'Include some dead child process data (as a sum with the parent)'
    ),
    Option(
      name: '--forest',
      description: 'ASCII art process tree'
    ),
    Option(
      name: '-H',
      description: 'Show process hierarchy (forest)'
    ),
    Option(
      name: '--headers',
      description: 'Repeat header lines, one per page of output'
    ),
    Option(
      name: '-n',
      description: 'Set namelist file',
      args: [
        Arg(
        name: 'namelis'
      )
      ]
    ),
    Option(
      name: '--lines',
      description: 'Set screen height',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: ['--no-headers', '--no-heading'],
      description: 'Print no header line at all'
    ),
    Option(
      name: '--rows',
      description: 'Set screen height',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '--sort',
      description: 'Specify sorting order',
      args: [
        Arg(
        name: 'spe'
      )
      ]
    ),
    Option(
      name: '--width',
      description: 'Set screen width',
      args: [
        Arg(
        name: ''
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'Show threads, possibly with LWP and NLWP columns'
    ),
    Option(
      name: '-T',
      description: 'Show threads, possibly with SPID column'
    ),
    Option(
      name: '--help',
      description: 'Print a help message'
    ),
    Option(
      name: '--info',
      description: 'Print debugging info'
    ),
    Option(
      name: '--version',
      description: 'Print the procps version'
    )
  ]
);
