// AI-generated from TypeScript source: passwd.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator _generateUsers = FigGenerator(
  script: ['bash', '-c', 'dscl . -list /Users | grep -E -v "^_"'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.trim().split('\n').map((name) {
      return FigSuggestion(name: name, icon: '👤');
    }).toList();
  },
);

final FigSpec passwdSpec = FigSpec(
  name: 'passwd',
  description: "Modify a user's password",
  options: [
    FigOption(
      name: ['-i'],
      description: 'Specify where the password update should be applied',
      args: [
        FigArg(
          name: 'infosystem',
          description: 'The directory system',
          suggestions: ['PAM', 'opendirectory', 'file', 'nis'],
        ),
      ],
    ),
    FigOption(
      name: ['-l'],
      description: 'Causes the password to be updated in the given location of the chosen directory system',
      args: [
        FigArg(
          name: 'location',
          description: 'The location of the chosen directory system',
          template: ['filepaths', 'folders'],
        ),
      ],
    ),
    FigOption(
      name: ['-u'],
      description: 'Specify the user name to use when authenticating to the directory node',
      args: [
        FigArg(
          name: 'authname',
          description: 'The user name',
          generators: [_generateUsers],
        ),
      ],
    ),
  ],
);
