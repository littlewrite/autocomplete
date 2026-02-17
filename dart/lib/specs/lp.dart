// Auto-generated from TypeScript source: lp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lp` CLI
final FigSpec lpSpec = FigSpec(
  name: 'lp',
  description: 'Print files',
  options: [

    Option(
      name: '-E',
      description: 'Force encryption when connecting to the server'
    ),
    Option(
      name: '-U',
      description: 'Specifies the username to use when connecting to the server',
      args: [
        Arg(
        name: 'Username'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'This  option is provided for backwards-compatibility only. On systems that support it, this option forces the print file to be copied to the spool directory before printing.  In CUPS, print files are always sent to the scheduler via IPP which has the  same effect'
    ),
    Option(
      name: '-d',
      description: 'Print files to the named printer',
      args: [
        Arg(
        name: 'Destination printer name'
      )
      ]
    ),
    Option(
      name: '-h',
      description: 'Chooses an alternate server',
      args: [
        Arg(
        name: 'hostname[:port]'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Specifies an existing job to modify',
      args: [
        Arg(
        name: 'job-id'
      )
      ]
    ),
    Option(
      name: '-m',
      description: 'Sends an email when the job is completed'
    ),
    Option(
      name: '-n',
      description: 'Sets the number of copies to print',
      args: [
        Arg(
        name: 'copies'
      )
      ]
    ),
    Option(
      name: '-q',
      description: 'Sets the job priority from 1 (lowest) to 100 (highest). The default priority is 50',
      args: [
        Arg(
        name: 'priority',
        defaultValue: '50'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Do not report the resulting job IDs (silent mode)'
    ),
    Option(
      name: '-t',
      description: 'Sets the job name',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '-H',
      description: 'Specifies when the job should be printed.  A value of immediate will print the file immediately, a value of hold will hold the job indefinitely, and a UTC time value (HH:MM) will hold the job until the specified UTC (not local) time. Use a value of resume with the -i option to resume a held job.  Use a value of restart with the -i option to restart a completed job',
      args: [
        Arg(
        name: 'pages'
      )
      ]
    ),
    Option(
      name: '-P',
      description: 'Specifies which pages to print in the document. The list can contain a list of numbers and ranges (#-#) separated by commas, e.g., "1,3-5,16". The page numbers refer to the output pages and not the document\'s original  pages - options like  "number-up" can affect the numbering of the pages',
      args: [
        Arg(
        name: 'hh:mm'
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Sets one or more job options',
      args: [
        Arg(
        name: 'name=value'
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Show help for lp'
    )
  ],
  args: [
    Arg(
    template: 'filepaths',
    description: 'Filepath you want to print'
  )
  ]
);
