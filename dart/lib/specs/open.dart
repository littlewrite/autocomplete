// AI-generated from TypeScript source: open.ts
import 'package:autocomplete/src/spec.dart';

FigGenerator _generateApps(String unquotedPath) => FigGenerator(
      cache: const FigCache(strategy: 'stale-while-revalidate'),
      script: [
        'mdfind',
        'kMDItemContentTypeTree=com.apple.application-bundle',
        '-onlyin',
        unquotedPath,
      ],
      postProcess: (String out, [List<String>? tokens]) {
        return out
            .split('\n')
            .map((path) {
              if (path.isEmpty) return null;
              final basename = path.substring(path.lastIndexOf('/') + 1);
              final int priority = path.endsWith('/Applications/$basename')
                  ? 80
                  : path.startsWith('/Applications')
                      ? 76
                      : 50;
              return FigSuggestion(
                name: basename,
                description: path,
                icon: 'fig://path/$path',
                priority: priority,
              );
            })
            .whereType<FigSuggestion>()
            .toList();
      },
    );

FigGenerator _generateBundleIds(String unquotedPath) => FigGenerator(
      scriptTimeout: 15000,
      cache: const FigCache(strategy: 'stale-while-revalidate'),
      script: [
        'bash',
        '-c',
        'mdfind kMDItemContentTypeTree=com.apple.application-bundle -onlyin $unquotedPath | while read line; do echo \$(mdls -name kMDItemCFBundleIdentifier -r "\$line") \$line; done',
      ],
      postProcess: (String out, [List<String>? tokens]) {
        final ids = <String, String>{};
        for (final line in out.split('\n')) {
          final sep = line.indexOf(' ');
          if (sep != -1) {
            ids[line.substring(0, sep)] = line.substring(sep + 1);
          }
        }
        ids.remove('(null)');

        final suggestions = <FigSuggestion>[];
        ids.forEach((id, path) {
          suggestions.add(FigSuggestion(
            name: id,
            description: path,
            icon: 'fig://$path',
          ));
        });
        return suggestions;
      },
    );

final FigSpec openSpec = FigSpec(
  name: 'open',
  description: 'Open files, apps, or URLs using default application',
  options: [
    FigOption(
      name: ['-a'],
      description: 'Specify the application to use for opening the file',
      args: [
        FigArg(
          name: 'Application',
          generators: [_generateApps('/')],
        ),
      ],
    ),
    FigOption(
      name: ['-b'],
      description:
          'Specify the bundle identifier of the app to use to open the file',
      args: [
        FigArg(
          name: 'Bundle Identifier',
          generators: [_generateBundleIds('/')],
        ),
      ],
    ),
    FigOption(
      name: ['-D'],
      description: 'Reveals the enclosing folder in finder',
    ),
    FigOption(
      name: ['-e'],
      description: 'Opens the file with /Applications/TextEdit',
    ),
    FigOption(
      name: ['-t'],
      description: 'Open the file with the default text editor',
    ),
    FigOption(
      name: ['-f'],
      description:
          'Read input from standard input and open the results in the default text editor',
    ),
    FigOption(
      name: ['-F', '--fresh'],
      description: 'Opens the application without restoring windows',
    ),
    FigOption(
      name: ['-W', '--wait-apps'],
      description: 'Waits until the applications exit',
    ),
    FigOption(
      name: ['-R', '--reveal'],
      description: 'Reveals the file(s) in the Finder instead of opening them',
    ),
    FigOption(
      name: ['-n', '--new'],
      description:
          'Open a new instance of the application(s) even if one is already running',
    ),
    FigOption(
      name: ['-j', '--hide'],
      description: 'Launches the app hidden',
    ),
    FigOption(
      name: ['-g', '--background'],
      description: 'Do not bring the application to the foreground',
    ),
    FigOption(
      name: ['-h', '--header'],
      description:
          'Searches header locations for a header whose name matches the given string and then opens it',
    ),
    FigOption(
      name: ['-s'],
      description:
          'For -h, the SDK to use; if supplied, only SDKs whose names contain the argument value are searched',
      args: [
        FigArg(
          name: 'partial SDK name',
        ),
      ],
    ),
    FigOption(
      name: ['-u', '--url'],
      description: 'Open this URL, even if it matches exactly a filepath',
      args: [
        FigArg(
          name: 'URL',
        ),
      ],
    ),
    FigOption(
      name: ['-i', '--stdin'],
      description:
          'Launches the application with stdin connected to PATH; defaults to /dev/null',
      args: [
        FigArg(
          name: 'PATH',
          template: 'filepaths',
          defaultValue: '/dev/null',
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--stdout'],
      description:
          'Launches the application with /dev/stdout connected to PATH',
      args: [
        FigArg(
          name: 'PATH',
          template: 'filepaths',
          defaultValue: '/dev/null',
        ),
      ],
    ),
    FigOption(
      name: ['--stderr'],
      description:
          'Launches the application with /dev/stderr connected to PATH',
      args: [
        FigArg(
          name: 'PATH',
          template: 'filepaths',
          defaultValue: '/dev/null',
        ),
      ],
    ),
    FigOption(
      name: ['--env'],
      description:
          'Add an enviroment variable to the launched process, where VAR is formatted AAA=foo',
      isRepeatable: true,
      args: [
        FigArg(
          name: 'VAR',
        ),
      ],
    ),
    FigOption(
      name: ['--args'],
      description:
          'All remaining arguments are passed to the opened application in the argv parameter to main().  These arguments are not opened or interpreted by the open tool',
      args: [
        FigArg(
          name: 'Arguments',
          isVariadic: true,
        ),
      ],
    ),
  ],
  args: [
    FigArg(
      template: ['filepaths', 'folders'],
      isVariadic: true,
    ),
  ],
);
