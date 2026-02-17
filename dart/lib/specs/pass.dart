// AI-generated from TypeScript source: pass.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator _listPasswords = FigGenerator(
  script: ['bash', '-c', 'grep -r -l "" "\$HOME/.password-store" --exclude-dir=.git'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((password) {
      if (password.isEmpty) return null;
      final parts = password.split('.password-store/');
      if (parts.length < 2) return null;
      final name = parts.last.replaceAll('.gpg', '');
      return FigSuggestion(
        name: name,
        icon: '🔐',
      );
    }).whereType<FigSuggestion>().toList();
  },
);

final FigGenerator _listDirectories = FigGenerator(
  script: ['bash', '-c', 'ls -dR1a "\$HOME/.password-store"'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((dir) {
      if (dir.isEmpty) return null;
      final parts = dir.split('.password-store/');
      if (parts.length < 2) return null;
      return FigSuggestion(
        name: parts.last,
        icon: '📁',
      );
    }).whereType<FigSuggestion>().toList();
  },
);

final FigSpec passSpec = FigSpec(
  name: 'pass',
  description: 'Pass - stores, retrieves, generates, and synchronizes passwords securely',
  args: [
    FigArg(
      name: 'pass-name',
      description: 'The password you want to show',
      generators: [_listPasswords],
    ),
  ],
  options: [
    FigOption(
      name: ['--clip', '-c'],
      description: 'Copy the password to the clipboard',
    ),
    FigOption(
      name: ['--qrcode', '-q'],
      description: 'Display a QRcode of the password',
    ),
    FigOption(
      name: ['--help'],
      description: 'Show help for pass',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: ['init'],
      description: 'Initialize new password storage and use gpg-id for encryption',
      args: [
        FigArg(
          name: 'gpg-id',
          description: 'The gpg-id you want to use to encrypt your password store',
        ),
      ],
      options: [
        FigOption(
          name: ['--path', '-p'],
          description: 'A specific gpg-id or set of gpg-ids is assigned for that specific sub folder of the password store',
          args: [
            FigArg(
              name: 'sub-folder',
              template: 'folders',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: ['insert'],
      description: 'Insert a new password into the password store called pass-name',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password name',
        ),
      ],
      options: [
        FigOption(
          name: ['--echo', '-e'],
          description: 'Disable keyboard echo when the password is entered and confirm the password by asking for it twice',
        ),
        FigOption(
          name: ['--multi-line', '-m'],
          description: 'Lines will be read until EOF or Ctrl+D is reached. Otherwise, only a single line from standard in is read',
        ),
        FigOption(
          name: ['--force', '-f'],
          description: "Don't prompt before overwriting an existing password",
        ),
      ],
    ),
    FigSubcommand(
      name: ['git'],
      description: 'Password store git functions',
      loadSpec: 'git',
    ),
    FigSubcommand(
      name: ['version'],
      description: 'Show version information',
    ),
    FigSubcommand(
      name: ['help'],
      description: 'Show usage message',
    ),
    FigSubcommand(
      name: ['cp'],
      description: 'Copies the password or directory named old-path to new-path',
      args: [
        FigArg(
          name: 'old-path',
          description: 'The old password name or directory',
          generators: [_listPasswords],
        ),
        FigArg(
          name: 'new-path',
          description: 'The new password name or directory',
        ),
      ],
      options: [
        FigOption(
          name: ['--force', '-f'],
          description: 'Do not interactively prompt before moving',
        ),
      ],
    ),
    FigSubcommand(
      name: ['mv'],
      description: 'Renames the password or directory named old-path to new-path',
      args: [
        FigArg(
          name: 'old-path',
          description: 'The old password name or directory',
          generators: [_listPasswords],
        ),
        FigArg(
          name: 'new-path',
          description: 'The new password name or directory',
        ),
      ],
      options: [
        FigOption(
          name: ['--force', '-f'],
          description: 'Do not interactively prompt before moving',
        ),
      ],
    ),
    FigSubcommand(
      name: ['rm'],
      description: 'Remove the password named pass-name from the password store',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password name',
          generators: [_listPasswords],
        ),
      ],
      options: [
        FigOption(
          name: ['--recursive', '-r'],
          description: 'Delete pass-name recursively if it is a directory',
        ),
        FigOption(
          name: ['--force', '-f'],
          description: 'Do not interactively prompt before removal',
        ),
      ],
    ),
    FigSubcommand(
      name: ['generate'],
      description: 'Generate a new password of length pass-length and insert into pass-name',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password name',
        ),
        FigArg(
          name: 'pass-length',
          description: 'The length of the password',
          isOptional: true,
        ),
      ],
      options: [
        FigOption(
          name: ['--no-symbols', '-n'],
          description: 'Do not use any non-alphanumeric characters in the generated password',
        ),
        FigOption(
          name: ['--clip', '-c'],
          description: 'Do not print the password but instead copy it to the clipboard',
        ),
        FigOption(
          name: ['--in-place', '-i'],
          description: 'Do not interactively prompt, and only replace the first line of the password file with the new generated password, keeping the remainder of the file intact',
        ),
        FigOption(
          name: ['--force', '-f'],
          description: 'Overwrite the existing password',
        ),
      ],
    ),
    FigSubcommand(
      name: ['ls', 'list'],
      description: 'List names of passwords inside the tree at subfolder by using the tree',
      args: [
        FigArg(
          name: 'password sub-directory',
          description: 'The password sub directory you want to list',
          isOptional: true,
          generators: [_listDirectories],
        ),
      ],
    ),
    FigSubcommand(
      name: ['find'],
      description: 'List names of passwords inside the tree that match pass-names',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password name you want to search for',
        ),
      ],
    ),
    FigSubcommand(
      name: ['show'],
      description: 'Decrypt and print a password',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password you want to show',
          generators: [_listPasswords],
        ),
      ],
      options: [
        FigOption(
          name: ['--clip', '-c'],
          description: 'Copy the password to the clipboard',
        ),
        FigOption(
          name: ['--qrcode', '-q'],
          description: 'Display a QRcode of the password',
        ),
      ],
    ),
    FigSubcommand(
      name: ['edit'],
      description: 'Insert a new password or edit an existing password using the default text editor specified by the environment',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password you want to edit',
          generators: [_listPasswords],
        ),
      ],
    ),
    FigSubcommand(
      name: ['grep'],
      description: 'Searches inside each decrypted password file for search-string. Grep options can be used',
      loadSpec: 'grep',
      args: [
        FigArg(
          name: 'pass-name',
          description: 'The password name you want to grep for',
        ),
      ],
    ),
  ],
);
