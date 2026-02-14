// AI-generated from TypeScript source: src/lsof.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec lsofSpec = FigSpec(
  name: 'lsof',
  description: 'List open files',
  args: [
    FigArg(
      name: 'names',
      description: 'Select named files or files on named file systems',
      template: 'folders',
      isVariadic: true,
      isOptional: true,
    )
  ],
  options: [
    FigOption(
      name: ['-?', '-h', '--help'],
      description: 'Help',
    ),
    FigOption(
      name: ['-a'],
      description: 'Apply AND to the selections (defaults to OR)',
    ),
    FigOption(
      name: ['-b'],
      description: 'Avoid kernel blocks',
    ),
    FigOption(
      name: ['-c'],
      description:
          'Select the listing of files for processes executing a command',
      args: [FigArg(name: 'string or regexp (optional ending with /i /b /x)')],
    ),
    FigOption(
      name: ['+c'],
      description: 'COMMAND width (9)',
      args: [FigArg(name: 'number')],
    ),
    FigOption(
      name: ['+d'],
      description:
          'Search for all open instances/files/directories of directory',
      args: [
        FigArg(
          name: 'file',
          template: 'folders',
        )
      ],
    ),
    FigOption(
      name: ['-d'],
      description:
          'Specify a list of file descriptors (FDs) to exclude from or include in the output listing',
      args: [FigArg(name: 'File descriptor number')],
    ),
    FigOption(
      name: ['+D'],
      description:
          'Search tree for all open instances/files/directories of directory. *SLOW?*',
      args: [
        FigArg(
          name: 'file',
          template: 'folders',
        )
      ],
    ),
    FigOption(
      name: ['+f'],
      description: 'Enable path name arguments to be interpreted',
      args: [
        FigArg(
          isOptional: true,
          name: 'flags',
          suggestions: [
            'c', // File structure use count
            'g', // File flag abbreviations
            'G', // File flags in hexadecimal
          ],
        )
      ],
    ),
    FigOption(
      name: ['-f'],
      description: 'Inhibit path name arguments to be interpreted',
      args: [
        FigArg(
          name: 'flags',
          suggestions: [
            'c', // File structure use count
            'g', // File flag abbreviations
            'G', // File flags in hexadecimal
          ],
        )
      ],
    ),
    FigOption(
      name: ['-F'],
      description: 'Select fields to output',
      args: [
        FigArg(
          name: 'options',
          isVariadic: true,
          suggestions: [
            'a', // Access: r = read; w = write; u = read/write
            'c', // Command name
            'C', // File struct share count
            'd', // Device character code
            'D', // Major/minor device number as 0x<hex>
            'f', // File descriptor (always selected)
            'G', // File flaGs
            'i', // Inode number
            'k', // Link count
            'K', // Task ID (TID)
            'l', // Lock: r/R = read; w/W = write; u = read/write
            'L', // Login name
            'm', // Marker between repeated output
            'M', // Task comMand name
            'n', // Comment, name, Internet addresses
            'o', // File offset as 0t<dec> or 0x<hex>
            'p', // Process ID (PID)
            'g', // Process group ID (PGID)
            'P', // Protocol name
            'r', // Raw device number as 0x<hex>
            'R', // PaRent PID
            's', // File size
            'S', // Stream module and device names
            't', // File type
            'T', // TCP/TPI info
            'u', // User ID (UID)
            '0', // (zero) use NUL field terminator instead of N
          ],
        )
      ],
    ),
    FigOption(
      name: ['-F?'],
      description: 'Show fields for -F',
    ),
    FigOption(
      name: ['-g'],
      description: 'Exclude or select by process group IDs (PGID)',
      args: [
        FigArg(
          name: 'PGID',
          description: 'Process Group ID (comma separated)',
        )
      ],
    ),
    FigOption(
      name: ['-i'],
      description:
          'Selects files by [46][protocol][@hostname|hostaddr][:service|port]',
      args: [
        FigArg(
          name: 'options',
          generators: [
            FigGenerator(
              script: ['echo'],
              postProcess: (String out, [List<String>? tokens]) {
                return ['4', '6']
                    .map((param) => FigSuggestion(name: param))
                    .toList();
              },
            ),
            FigGenerator(
              script: ['echo'],
              postProcess: (String out, [List<String>? tokens]) {
                const startParams = ['tcp', 'udp', 'TCP', 'UDP'];
                String prefix = '';
                if (tokens != null && tokens.length > 1) {
                  // Approximate logic from TS
                  // tokens[1] might be "-i" or "-i4" etc.
                  // This is a simplified version as tokens access in Dart might differ slightly
                  final token = tokens.length > 1 ? tokens.last : '';
                  if (token.startsWith('-i4') || token.startsWith('-i6')) {
                    prefix = token.substring(2); // Keep 4 or 6
                  }
                }
                return startParams
                    .map((param) => FigSuggestion(name: prefix + param))
                    .toList();
              },
            ),
            FigGenerator(
              script: ['ifconfig'],
              postProcess: (String out, [List<String>? tokens]) {
                final ips = out
                    .split('\n')
                    .where((line) => line.contains(RegExp(r'inet\b')))
                    .map((line) {
                      final parts = line.split(' ');
                      return parts.length > 1 ? parts[1] : null;
                    })
                    .whereType<String>()
                    .toList();

                String prefix = '@';
                if (tokens != null && tokens.isNotEmpty) {
                  final lastToken = tokens.last;
                  if (lastToken.contains('@')) {
                    prefix = lastToken.split('@')[0] + '@';
                  }
                }

                return ips
                    .map((ip) => FigSuggestion(name: prefix + ip))
                    .toList();
              },
              trigger: '@',
            ),
            FigGenerator(
              script: ['echo'],
              postProcess: (String out, [List<String>? tokens]) {
                const colonParams = ['http', 'https', 'who', 'time'];
                String prefix = ':';
                if (tokens != null && tokens.isNotEmpty) {
                  final lastToken = tokens.last;
                  if (lastToken.contains(':')) {
                    prefix = lastToken.split(':')[0] + ':';
                  }
                }
                return colonParams
                    .map((param) => FigSuggestion(name: prefix + param))
                    .toList();
              },
              trigger: ':',
            ),
          ],
        )
      ],
    ),
    FigOption(
      name: ['-l'],
      description: 'Inhibit conversion of user IDs to login names',
    ),
    FigOption(
      name: ['+L'],
      description: 'Enable listing of file link counts',
      args: [
        FigArg(
          isOptional: true,
          name: 'number',
        )
      ],
    ),
    FigOption(
      name: ['-L'],
      description: 'Disable listing of file link counts',
      args: [
        FigArg(
          isOptional: true,
          name: 'number',
        )
      ],
    ),
    FigOption(
      name: ['+M'],
      description: 'Enable portMap registration',
    ),
    FigOption(
      name: ['-M'],
      description: 'Disable portMap registration',
    ),
    FigOption(
      name: ['-n'],
      description: 'No host names',
    ),
    FigOption(
      name: ['-N'],
      description: 'Select NFS files',
    ),
    FigOption(
      name: ['-o'],
      description: 'List file offset',
    ),
    FigOption(
      name: ['-O'],
      description: 'No overhead *RISKY*',
    ),
    FigOption(
      name: ['-p'],
      description: 'Exclude or select process identification numbers (PIDs)',
      args: [
        FigArg(
          name: 'PIDs',
          description: 'PIDs to select or exclude ( with ^)',
        )
      ],
    ),
    FigOption(
      name: ['-P'],
      description: 'No port names',
    ),
    FigOption(
      name: ['+r'],
      description: 'Repeat every t seconds (15) until no files',
      args: [
        FigArg(
          name: 'time (seconds)',
          description: 'Time per repeat',
        )
      ],
    ),
    FigOption(
      name: ['-r'],
      description: 'Repeat every t seconds (15) forever',
      args: [
        FigArg(
          name: 'time (seconds)',
          description: 'Time per repeat',
        )
      ],
    ),
    FigOption(
      name: ['-R'],
      description: 'List parent PID',
    ),
    FigOption(
      name: ['-s'],
      description: 'List file size or exclude/select protocol',
      args: [
        FigArg(
          isOptional: true,
          name: 'protocol:state',
        )
      ],
    ),
    FigOption(
      name: ['-S'],
      description: 'Stat timeout in seconds (lstat/readlink/stat)',
      args: [
        FigArg(
          isOptional: true,
          name: 'timeout (seconds)',
        )
      ],
    ),
    FigOption(
      name: ['-T'],
      description: 'Disable TCP/TPI info',
      args: [
        FigArg(
          name: 'info',
          suggestions: [
            'f', // Selects reporting of socket options/states/values and tcp flag values
            'q', // Selects queue length reporting
            's', // Selects connection state reporting
            'w', // Selects window size reporting
            '', // Disables info
          ],
        )
      ],
    ),
    FigOption(
      name: ['-t'],
      description: 'Specify terse listing',
    ),
    FigOption(
      name: ['-u'],
      description: 'Exclude/select login|UID set',
      args: [FigArg(name: 'UIDs')],
    ),
    FigOption(
      name: ['-U'],
      description: 'Select Unix socket',
    ),
    FigOption(
      name: ['-v'],
      description: 'List version info',
    ),
    FigOption(
      name: ['-V'],
      description: 'Verbose search',
    ),
    FigOption(
      name: ['+w'],
      description: 'Enable warnings',
    ),
    FigOption(
      name: ['-w'],
      description: 'Disable warnings',
    ),
    FigOption(
      name: ['-x'],
      description: 'Cross over +d|+D File systems or symbolic links',
      args: [
        FigArg(
          name: 'cross-over option',
          suggestions: [
            'f', // File system mount point cross-over processing
            'l', // Symbolic link cross-over processing
          ],
        )
      ],
    ),
    FigOption(
      name: ['-X'],
      description: 'File descriptor table only',
    ),
  ],
);
