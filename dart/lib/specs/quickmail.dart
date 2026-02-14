// AI-generated from TypeScript source: quickmail.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator bodyTempalates = FigGenerator(
  script: ['quickmail', 'template', 'listall'],
  postProcess: (String output, [List<String>? tokens]) {
    final items = output.split('\n');
    return items.map((item) {
      return FigSuggestion(
        name: item,
        icon: 'fig://icon?type=box',
        description: item,
      );
    }).toList();
  },
);

final FigSpec quickmailSpec = FigSpec(
  name: 'quickmail',
  description: 'Quickmail is a terminal-based solution to send mail',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
  ),
  options: [
    FigOption(
      name: ['-v', '--version'],
      description: 'Output cli version',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Output cli help',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: ['init'],
      description: 'Initialise cli',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Get help regarding init command',
        ),
      ],
      args: [
        FigArg(
          isOptional: true,
          template: ['filepaths'],
        ),
      ],
    ),
    FigSubcommand(
      name: ['clear'],
      description: 'Clear the files stored locally',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Get help regarding clear command',
        ),
        FigOption(
          name: ['-j', '--justdoit'],
          description: 'Clear entire cli storage including token',
        ),
      ],
    ),
    FigSubcommand(
      name: ['send'],
      description: 'Send mail',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Get help regarding send command',
        ),
        FigOption(
          name: ['-r', '--receiver'],
          description: 'Receiver\'s email address',
          args: [
            FigArg(
              name: 'receiver',
            ),
          ],
        ),
        FigOption(
          name: ['-sub', '--subject'],
          description: 'Subject of mail',
          args: [
            FigArg(
              name: 'Subject',
            ),
          ],
        ),
        FigOption(
          name: ['-t', '--template'],
          description: 'Templates for mail body',
          args: [
            FigArg(
              name: 'Template',
              isOptional: true,
              generators: [bodyTempalates],
            ),
          ],
        ),
        FigOption(
          name: ['-b', '--body'],
          description: 'Body of the mail',
          args: [
            FigArg(
              name: 'Body',
              isOptional: true,
            ),
          ],
        ),
        FigOption(
          name: ['-a', '--attachment'],
          description: 'Path to attachment file',
          args: [
            FigArg(
              name: 'Attachment file',
              isOptional: true,
              template: ['filepaths'],
            ),
          ],
        ),
        FigOption(
          name: ['-l', '--lessgo'],
          description: 'Skip confirmation, and send mail',
        ),
      ],
    ),
    FigSubcommand(
      name: ['template'],
      description: 'Manage templates',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Get help regarding template command',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: ['add'],
          description: 'Add a new template',
          options: [
            FigOption(
              name: ['-h', '--help'],
              description: 'Get help regarding template add subcommand',
            ),
            FigOption(
              name: ['-n'],
              description: 'Set template id',
              args: [
                FigArg(
                  name: 'Template id',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: ['listall'],
          description: 'List all templates stored',
          options: [
            FigOption(
              name: ['-h', '--help'],
              description: 'Get help regarding template listall subcommand',
            ),
          ],
        ),
        FigSubcommand(
          name: ['edit'],
          description: 'Edit any particular template',
          options: [
            FigOption(
              name: ['-h', '--help'],
              description: 'Get help regarding template edit subcommand',
            ),
            FigOption(
              name: ['-n'],
              description: 'Edit template by id',
              args: [
                FigArg(
                  name: 'Template id',
                  generators: [bodyTempalates],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
