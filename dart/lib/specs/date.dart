// Auto-generated from TypeScript source: date.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `date` CLI
final FigSpec dateSpec = FigSpec(
  name: 'date',
  description: 'Display or set date and time',
  options: [

    Option(
      name: '-d',
      description: 'Set the kernel\'s value for daylight saving time',
      args: [
        Arg(
        name: 'dst'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Use specified format for input instead of the default [[[mm]dd]HH]MM[[cc]yy][.ss] format',
      args: [

        Arg(
          name: 'input_fmt',
          description: 'The format with which to parse the new date value'
        ),
        Arg(
          name: 'new_date',
          description: 'The new date to set'
        )
      ]
    ),
    Option(
      name: '-j',
      description: 'Don\'t try to set the date'
    ),
    Option(
      name: '-n',
      description: 'Only set time on the current machine, instead of all machines in the local group'
    ),
    Option(
      name: '-R',
      description: 'Use RFC 2822 date and time output format'
    ),
    Option(
      name: '-r',
      description: 'Print the date and time represented by the specified number of seconds since the Epoch',
      args: [
        Arg(
        name: 'seconds',
        description: 'Number of seconds since the Epoch (00:00:00 UTC, January 1, 1970)'
      )
      ]
    ),
    Option(
      name: '-t',
      description: 'Set the system\'s value for minutes west of GMT',
      args: [
        Arg(
        name: 'minutes_west'
      )
      ]
    ),
    Option(
      name: '-u',
      description: 'Display or set the date in UTC (Coordinated Universal) time'
    ),
    Option(
      name: '-v',
      description: 'Adjust and print (but don\'t set) the second, minute, hour, month day, week day, month, or year according to val',
      args: [
        Arg(
        name: 'val',
        description: '[+|-]val[ymwdHMS]'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'new_time OR output_fmt',
    description: 'New_time: [[[mm]dd]HH]MM[[cc]yy][.ss], output_fmt: \'+\' followed by user-defined format string',
    isOptional: true,
    isDangerous: true
  )
  ]
);
