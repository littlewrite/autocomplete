// Auto-generated from TypeScript source: ls.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ls` CLI
final FigSpec lsSpec = FigSpec(
  name: 'ls',
  description: 'List directory contents',
  args: [
    Arg(
    isVariadic: true,
    template: ['filepaths', 'folders'],
    filterStrategy: 'fuzzy'
  )
  ],
  options: [

    Option(
      name: '-@',
      description: 'Display extended attribute keys and sizes in long (-l) output'
    ),
    Option(
      name: '-1',
      description: '(The numeric digit ``one\'\'.)  Force output to be one entry per line.  This is the default when output is not to a terminal'
    ),
    Option(
      name: '-A',
      description: 'List all entries except for . and ...  Always set for the super-user'
    ),
    Option(
      name: '-a',
      description: 'Include directory entries whose names begin with a dot (.)'
    ),
    Option(
      name: '-B',
      description: 'Force printing of non-printable characters (as defined by ctype(3) and current locale settings) in file names as xxx, where xxx is the numeric value of the character in octal'
    ),
    Option(
      name: '-b',
      description: 'As -B, but use C escape codes whenever possible'
    ),
    Option(
      name: '-C',
      description: 'Force multi-column output; this is the default when output is to a terminal'
    ),
    Option(
      name: '-c',
      description: 'Use time when file status was last changed for sorting (-t) or long printing (-l)'
    ),
    Option(
      name: '-d',
      description: 'Directories are listed as plain files (not searched recursively)'
    ),
    Option(
      name: '-e',
      description: 'Print the Access Control List (ACL) associated with the file, if present, in long (-l) output'
    ),
    Option(
      name: '-F',
      description: 'Display a slash (/) immediately after each pathname that is a directory, an asterisk (*) after each that is executable, an at sign (@) after each symbolic link, an equals sign (=) after each socket, a percent sign (%) after each whiteout, and a vertical bar (|) after each that is a FIFO'
    ),
    Option(
      name: '-f',
      description: 'Output is not sorted.  This option turns on the -a option'
    ),
    Option(
      name: '-G',
      description: 'Enable colorized output.  This option is equivalent to defining CLICOLOR in the environment.  (See below.)'
    ),
    Option(
      name: '-g',
      description: 'This option is only available for compatibility with POSIX; it is used to display the group name in the long (-l) format output (the owner name is suppressed)'
    ),
    Option(
      name: '-H',
      description: 'Symbolic links on the command line are followed.  This option is assumed if none of the -F, -d, or -l options are specified'
    ),
    Option(
      name: '-h',
      description: 'When used with the -l option, use unit suffixes: Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and Petabyte in order to reduce the number of digits to three or less using base 2 for sizes'
    ),
    Option(
      name: '-i',
      description: 'For each file, print the file\'s file serial number (inode number)'
    ),
    Option(
      name: '-k',
      description: 'If the -s option is specified, print the file size allocation in kilobytes, not blocks.  This option overrides the environment variable BLOCKSIZE'
    ),
    Option(
      name: '-L',
      description: 'Follow all symbolic links to final target and list the file or directory the link references rather than the link itself.  This option cancels the -P option'
    ),
    Option(
      name: '-l',
      description: '(The lowercase letter ``ell\'\'.)  List in long format.  (See below.)  A total sum for all the file sizes is output on a line before the long listing'
    ),
    Option(
      name: '-m',
      description: 'Stream output format; list files across the page, separated by commas'
    ),
    Option(
      name: '-n',
      description: 'Display user and group IDs numerically, rather than converting to a user or group name in a long (-l) output.  This option turns on the -l option'
    ),
    Option(
      name: '-O',
      description: 'Include the file flags in a long (-l) output'
    ),
    Option(
      name: '-o',
      description: 'List in long format, but omit the group id'
    ),
    Option(
      name: '-P',
      description: 'If argument is a symbolic link, list the link itself rather than the object the link references.  This option cancels the -H and -L options'
    ),
    Option(
      name: '-p',
      description: 'Write a slash (`/\') after each filename if that file is a directory'
    ),
    Option(
      name: '-q',
      description: 'Force printing of non-graphic characters in file names as the character `?\'; this is the default when output is to a terminal'
    ),
    Option(
      name: '-R',
      description: 'Recursively list subdirectories encountered'
    ),
    Option(
      name: '-r',
      description: 'Reverse the order of the sort to get reverse lexicographical order or the oldest entries first (or largest files last, if combined with sort by size'
    ),
    Option(
      name: '-S',
      description: 'Sort files by size'
    ),
    Option(
      name: '-s',
      description: 'Display the number of file system blocks actually used by each file, in units of 512 bytes, where partial units are rounded up to the next integer value.  If the output is to a terminal, a total sum for all the file sizes is output on a line before the listing.  The environment variable BLOCKSIZE overrides the unit size of 512 bytes'
    ),
    Option(
      name: '-T',
      description: 'When used with the -l (lowercase letter ``ell\'\') option, display complete time information for the file, including month, day, hour, minute, second, and year'
    ),
    Option(
      name: '-t',
      description: 'Sort by time modified (most recently modified first) before sorting the operands by lexicographical order'
    ),
    Option(
      name: '-u',
      description: 'Use time of last access, instead of last modification of the file for sorting (-t) or long printing (-l)'
    ),
    Option(
      name: '-U',
      description: 'Use time of file creation, instead of last modification for sorting (-t) or long output (-l)'
    ),
    Option(
      name: '-v',
      description: 'Force unedited printing of non-graphic characters; this is the default when output is not to a terminal'
    ),
    Option(
      name: '-W',
      description: 'Display whiteouts when scanning directories.  (-S) flag)'
    ),
    Option(
      name: '-w',
      description: 'Force raw printing of non-printable characters.  This is the default when output is not to a terminal'
    ),
    Option(
      name: '-x',
      description: 'The same as -C, except that the multi-column output is produced with entries sorted across, rather than down, the columns'
    ),
    Option(
      name: '-%',
      description: 'Distinguish dataless files and directories with a \'%\' character in long (-l) output, and don\'t materialize dataless directories when listing them'
    ),
    Option(
      name: '-,',
      dependsOn: ['-l']
    ),
    Option(
      name: '--color',
      args: [
        Arg(
        name: 'when',
        suggestions: [

          FigSuggestion(
            name: ['always', 'yes', 'force'],
            description: 'Will make ls always output color'
          ),
          FigSuggestion(
            name: 'auto',
            description: 'Will make ls output escape sequences based on termcap(5), but only if stdout is a tty and either the -G flag is specified or the COLORTERM environment variable is set and not empty'
          ),
          FigSuggestion(
            name: ['never', 'no', 'none'],
            description: 'Will disable color regardless of environment variables'
          )
        ]
      )
      ]
    )
  ]
);
