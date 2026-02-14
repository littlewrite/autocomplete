// AI-generated from TypeScript source: chown.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator existingUsersandGroups = FigGenerator(
  trigger: ':',
  getQueryTerm: ':',
  script: (List<String> tokens) {
    final colonAdded = tokens.any((token) => token.contains(':'));
    if (colonAdded) {
      return ['bash', '-c', "dscl . -list /Groups PrimaryGroupID | tr -s ' '| sort -r"];
    } else {
      return ['bash', '-c', "dscl . -list /Users UniqueID | tr -s ' '| sort -r"];
    }
  },
  postProcess: (String out, [List<String>? tokens]) {
    final colonAdded = tokens?.any((token) => token.contains(':')) ?? false;
    final nFlagUsed = tokens?.any((token) => RegExp(r'^-.*n.*').hasMatch(token)) ?? false;

    return out.split('\n').map((line) {
      final parts = line.split(' ');
      if (parts.length < 2) return null;
      
      final name = parts[0];
      final id = parts[1];
      
      return FigSuggestion(
        name: nFlagUsed ? id : name,
        description: colonAdded
            ? 'Group - ${nFlagUsed ? name : 'gid: $id'}'
            : 'User - ${nFlagUsed ? name : 'uid: $id'}',
        icon: colonAdded ? '👥' : '👤',
        priority: 90,
      );
    }).whereType<FigSuggestion>().toList();
  },
);

final FigSpec chownSpec = FigSpec(
  name: 'chown',
  description: 'Change the user and/or group ownership of a given file, directory, or symbolic link',
  args: [
    FigArg(
      name: 'owner[:group] or :group',
      generators: [existingUsersandGroups],
    ),
    FigArg(
      name: 'file/directory',
      isVariadic: true,
      template: ['filepaths', 'folders'],
    ),
  ],
  options: [
    FigOption(
      name: '-f',
      description: "Don't report any failure to change file owner or group, nor modify the exit status to reflect such failures",
    ),
    FigOption(
      name: '-h',
      description: 'If the file is a symbolic link, change the user ID and/or the group ID of the link itself',
    ),
    FigOption(
      name: '-n',
      description: 'Interpret user ID and group ID as numeric, avoiding name lookups',
    ),
    FigOption(
      name: '-v',
      description: 'Cause chown to be verbose, showing files as the owner is modified',
    ),
    FigOption(
      name: '-R',
      description: 'Change the user ID and/or the group ID for the file hierarchies rooted in the files instead of just the files themselves',
    ),
    FigOption(
      name: '-H',
      description: 'If the -R option is specified, symbolic links on the command line are followed',
      exclusiveOn: ['-L', '-P'],
      dependsOn: ['-R'],
    ),
    FigOption(
      name: '-L',
      description: 'If the -R option is specified, all symbolic links are followed',
      exclusiveOn: ['-H', '-P'],
      dependsOn: ['-R'],
    ),
    FigOption(
      name: '-P',
      description: 'If the -R option is specified, no symbolic links are followed',
      exclusiveOn: ['-H', '-L'],
      dependsOn: ['-R'],
    ),
  ],
);
