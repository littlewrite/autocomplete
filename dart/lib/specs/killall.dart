// AI-generated from TypeScript source: killall.ts
import 'package:autocomplete/src/spec.dart';

final List<String> signals = [
  'hup',
  'int',
  'quit',
  'ill',
  'trap',
  'abrt',
  'emt',
  'fpe',
  'kill',
  'bus',
  'segv',
  'sys',
  'pipe',
  'alrm',
  'urg',
  'stop',
  'tstp',
  'cont',
  'chld',
  'ttin',
  'ttou',
  'io',
  'xcpu',
  'xfsz',
  'vtalrm',
  'prof',
  'winch',
  'info',
  'usr1',
  'usr2',
];

final FigSpec killallSpec = FigSpec(
  name: 'killall',
  description: 'Kill processes by name',
  args: [
    FigArg(
      name: 'process_name',
      isVariadic: true,
      generators: [
        FigGenerator(
          script: ['bash', '-c', 'ps -A -o comm | sort -u'],
          postProcess: (String out, [List<String>? tokens]) {
            return out.trim().split('\n').map((path) {
              final appExtIndex = path.indexOf('.app/');
              final isApp = appExtIndex != -1;
              final name = path.substring(path.lastIndexOf('/') + 1);
              final nameChars = name.split('').toSet();
              final badChars = ['(', '_', '.'];

              final hasBadChars =
                  badChars.any((char) => nameChars.contains(char));
              final priority = (!hasBadChars && isApp) ? 51 : 40;

              return FigSuggestion(
                name: [name],
                description: path,
                priority: priority,
                icon: isApp
                    ? 'fig://${path.substring(0, appExtIndex + 4)}'
                    : 'fig://icon?type=gear',
              );
            }).toList();
          },
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-d'],
      description: 'Be verbose (dry run) and display number of user processes',
    ),
    FigOption(
      name: ['-e'],
      description:
          'Use the effective user ID instead of the real user ID for matching processes with -u',
    ),
    FigOption(
      name: ['-help'],
      description: 'Display help and exit',
    ),
    FigOption(
      name: ['-I'],
      description: 'Request confirmation before killing each process',
    ),
    FigOption(
      name: ['-l'],
      description: 'List the names of the available signals and exit',
    ),
    FigOption(
      name: ['-m'],
      description: 'Match the process name as a regular expression',
    ),
    FigOption(
      name: ['-v'],
      description: 'Be verbose',
    ),
    FigOption(
      name: ['-s'],
      description: 'Be verbose (dry run)',
    ),
    ...signals.map((signal) => FigOption(
          name: ['-SIG${signal.toUpperCase()}'],
          description: 'Send ${signal.toUpperCase()} instead of TERM',
        )),
    FigOption(
      name: ['-u'],
      description:
          'Limit potentially matching processes to those belonging to the user',
      args: [
        FigArg(
          name: 'user',
          generators: [
            FigGenerator(
              script: ['bash', '-c', "dscl . -list /Users | grep -v '^_'"],
              postProcess: (String out, [List<String>? tokens]) {
                return out
                    .trim()
                    .split('\n')
                    .map((username) => FigSuggestion(
                          name: [username],
                          icon: 'fig://template?badge=👤',
                        ))
                    .toList();
              },
            ),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-t'],
      description:
          'Limit matching processes to those running on the specified TTY',
      args: [
        FigArg(
          name: 'tty',
        ),
      ],
    ),
    FigOption(
      name: ['-c'],
      description: 'Limit matching processes to those matching the given name',
      args: [
        FigArg(
          name: 'name',
        ),
      ],
    ),
    FigOption(
      name: ['-q'],
      description: 'Suppress error message if no processes are matched',
    ),
    FigOption(
      name: ['-z'],
      description: 'Do not skip zombies',
    ),
  ],
);
