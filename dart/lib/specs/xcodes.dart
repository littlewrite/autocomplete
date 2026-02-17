// AI-generated from TypeScript source: xcodes.ts
import 'package:autocomplete/src/spec.dart';

List<FigSuggestion> processXcodeList(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .reversed
      .map((line) {
        final nameIndex = line.indexOf(' (');
        if (nameIndex == -1) return null;
        final name = line.substring(0, nameIndex);

        String icon = '⬇️';
        if (line.contains('Selected')) {
          icon = '⭐️';
        } else if (line.contains('Installed')) {
          icon = '🔨';
        } else if (tokens != null &&
            (tokens.contains('select') || tokens.contains('uninstall'))) {
          icon = '🔨';
        }

        final description =
            line.substring(nameIndex).replaceAll(RegExp(r'[\(\)]'), '');
        return FigSuggestion(name: name, icon: icon, description: description);
      })
      .whereType<FigSuggestion>()
      .toList();
}

const FigGenerator allXcodes = FigGenerator(
  script: ['xcodes', 'list'],
  postProcess: processXcodeList,
);

const FigGenerator installedXcodes = FigGenerator(
  script: ['xcodes', 'installed'],
  postProcess: processXcodeList,
);

final FigSpec xcodesSpec = FigSpec(
  name: 'xcodes',
  description: 'Manage the Xcodes installed on your Mac',
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for xcodes',
    ),
    FigOption(
      name: ['--version'],
      description: 'Show the version of xcodes',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'list',
      description: 'List all available Xcodes',
      args: [
        FigArg(
          name: 'version',
          generators: [allXcodes],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'installed',
      description: 'List installed Xcodes',
      args: [
        FigArg(
          name: 'version',
          generators: [installedXcodes],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'install',
      description: 'Download and install a specific version of Xcode',
      args: [
        FigArg(
          name: 'version',
          description: 'The version to install',
          generators: [allXcodes],
        ),
      ],
      options: [
        FigOption(
          name: ['--latest'],
          description: 'Update to the latest version',
        ),
        FigOption(
          name: ['--aria2'],
          description:
              'Use aria2c to download (faster, but requires aria2c to be installed)',
        ),
        FigOption(
          name: ['--directory'],
          description:
              'The directory to install Xcode into (default: /Applications)',
          args: [
            FigArg(name: 'path', template: ['folders'])
          ],
        ),
        FigOption(
          name: ['--no-superuser'],
          description: 'Do not use superuser privileges',
        ),
        FigOption(
          name: ['--experimental-unxip'],
          description: 'Use experimental unxip for extraction',
        ),
      ],
    ),
    FigSubcommand(
      name: 'uninstall',
      description: 'Uninstall a specific version of Xcode',
      args: [
        FigArg(
          name: 'version',
          description: 'The version to uninstall',
          generators: [installedXcodes],
        ),
      ],
      options: [
        FigOption(
          name: ['--experimental-unxip'],
          description: 'Use experimental unxip for extraction',
        ),
      ],
    ),
    FigSubcommand(
      name: 'select',
      description: 'Select a specific version of Xcode',
      args: [
        FigArg(
          name: 'version',
          description: 'The version to select',
          generators: [installedXcodes],
        ),
      ],
      options: [
        FigOption(
          name: ['--print-path', '-p'],
          description: 'Print the path to the selected Xcode',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update the list of available Xcodes',
    ),
    FigSubcommand(
      name: 'version',
      description: 'Print the version of xcodes',
    ),
    FigSubcommand(
      name: 'runtimes',
      description: 'List available runtimes',
      options: [
        FigOption(
          name: ['--include-betas'],
          description: 'Include beta runtimes',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'install',
          description: 'Install a runtime',
          args: [
            FigArg(
              name: 'runtime',
              description: 'The runtime to install',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'signout',
      description: 'Sign out of your Apple ID',
    ),
    FigSubcommand(
      name: 'signin',
      description: 'Sign in to your Apple ID',
      args: [
        FigArg(
          name: 'username',
          description: 'Your Apple ID username',
        ),
      ],
    ),
  ],
);
