// Auto-generated from TypeScript source: lsblk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lsblk` CLI
final FigSpec lsblkSpec = FigSpec(
  name: 'lsblk',
  description: 'List block devices',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for lsblk'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Show version for lsblk'
    ),
    Option(
      name: ['--all', '-a'],
      description: 'Also list empty devices and RAM disk devices'
    ),
    Option(
      name: ['--bytes', '-b'],
      description: 'Print the SIZE column in bytes'
    ),
    Option(
      name: ['--discard', '-D'],
      description: 'Print information about the discarding capabilities (TRIM, UNMAP) for each device'
    ),
    Option(
      name: ['--nodeps', '-d'],
      description: 'Do not print holder devices or slaves'
    ),
    Option(
      name: ['--dedup', '-E'],
      description: 'Use column as a de-duplication key to de-duplicate output tree',
      args: [
        Arg(
        name: 'column'
      )
      ]
    ),
    Option(
      name: ['--exclude', '-e'],
      description: 'Exclude the devices specified by the comma-separated list of major device numbers',
      args: [
        Arg(
        name: 'list'
      )
      ]
    ),
    Option(
      name: ['--fs', '-f'],
      description: 'Output info about filesystems'
    ),
    Option(
      name: ['--include', '-I'],
      description: 'Include devices specified by the comma-separated list of major device numbers',
      args: [
        Arg(
        name: 'list'
      )
      ]
    ),
    Option(
      name: ['--ascii', '-i'],
      description: 'Use ASCII characters for tree formatting'
    ),
    Option(
      name: ['--json', '-J'],
      description: 'Use JSON output format'
    ),
    Option(
      name: ['--list', '-l'],
      description: 'Produce output in the form of a list'
    ),
    Option(
      name: ['--merge', '-M'],
      description: 'Group parents of sub-trees to provide more readable output for RAIDs and Multi-path devices'
    ),
    Option(
      name: ['--perms', '-m'],
      description: 'Output info about device owner, group and mode'
    ),
    Option(
      name: ['--noheadings', '-n'],
      description: 'Do not print a header line'
    ),
    Option(
      name: ['--output', '-o'],
      description: 'Specify which output columns to print',
      args: [
        Arg(
        name: 'list',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['--output-all', '-O'],
      description: 'Output all available columns'
    ),
    Option(
      name: ['--pairs', '-P'],
      description: 'Produce output in the form of key-value pairs'
    ),
    Option(
      name: ['--raw', '-r'],
      description: 'Produce output in raw format'
    ),
    Option(
      name: ['--scsi', '-S'],
      description: 'Output info about SCSI devices only'
    ),
    Option(
      name: ['--inverse', '-s'],
      description: 'Print dependencies in inverse order'
    ),
    Option(
      name: ['--tree', '-T'],
      description: 'Force tree-like output format',
      args: [
        Arg(
        name: 'column'
      )
      ]
    ),
    Option(
      name: ['--topology', '-t'],
      description: 'Output info about block-device topology'
    ),
    Option(
      name: ['--width', '-w'],
      description: 'Specifies output width as a number of characters',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: ['--sort', '-x'],
      description: 'Sort output lines by column',
      args: [
        Arg(
        name: 'column'
      )
      ]
    ),
    Option(
      name: ['--zoned', '-z'],
      description: 'Print the zone model for each device'
    ),
    Option(
      name: '--sysroot',
      description: 'Gather data for a Linux instance other than the instance from which the lsblk command is issued',
      args: [
        Arg(
        name: 'directory'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'device',
    description: 'Device to list',
    isOptional: true
  )
  ]
);
