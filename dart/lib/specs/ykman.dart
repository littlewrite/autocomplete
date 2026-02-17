// AI-generated from TypeScript source: ykman.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigGenerator configModeGenerator = FigGenerator(
  trigger: '+',
  custom: (tokens, _, __) async {
    final previouslyAdded = tokens.last.split('+');
    final possibleSuggestionsMap = {
      'OTP': ['o'],
      'o': ['OTP'],
      'FIDO': ['f'],
      'f': ['FIDO'],
      'CCID': ['c'],
      'c': ['CCID'],
    };
    final suggestions =
        Set.from(possibleSuggestionsMap.values.expand((v) => v));

    for (final token in previouslyAdded) {
      suggestions.remove(token);
      final aliases = possibleSuggestionsMap[token];
      if (aliases != null) {
        for (final v in aliases) {
          suggestions.remove(v);
        }
      }
    }
    return suggestions.map((v) => FigSuggestion(name: v)).toList();
  },
);

/// Completion spec for `ykman` CLI
final FigSpec ykmanSpec = FigSpec(
    name: 'ykman',
    description: 'Configure your YubiKey via the command line',
    subcommands: [
      Subcommand(
          name: 'info',
          description:
              'Displays information about the attached YubiKey such as serial number, firmware version, capabilities, etc',
          options: [
            Option(
                name: ['-c', '--check-fips'],
                description:
                    'Check if YubiKey is in FIPS Approved mode (available on YubiKey 4 FIPS only)'),
            Option(
                name: ['-h', '--help'],
                description: 'Show info usage information')
          ]),
      Subcommand(
          name: 'list',
          description: 'List connected YubiKeys',
          options: [
            Option(
                name: ['-s', '--serials'],
                description:
                    'Output only serial numbers, one per line (devices without serial will be omitted)'),
            Option(
                name: ['-r', '--readers'],
                description: 'List available smart card readers'),
            Option(
                name: ['-h', '--help'],
                description: 'Show list usage information')
          ]),
      Subcommand(
          name: 'config',
          description: 'Enable or disable applications',
          subcommands: [
            Subcommand(
                name: 'mode',
                description: 'Manage connection modes (USB Interfaces)',
                args: [
                  Arg(
                      name: 'MODE',
                      description:
                          'MODE can be a string, such as \'OTP+FIDO+CCID\', or a shortened form: \'o+f+c\'. It can also be a mode number',
                      generators: configModeGenerator)
                ],
                options: [
                  Option(
                      name: '--touch-eject',
                      description:
                          'When set, the button toggles the state of the smartcard between ejected and inserted (CCID mode only)'),
                  Option(
                      name: '--autoeject-timeout',
                      description:
                          'When set, the button toggles the state of the smartcard between ejected and inserted (CCID mode only)',
                      args: [Arg(name: 'SECONDS')]),
                  Option(
                      name: '--chalresp-timeout',
                      description:
                          'When set, the smartcard will automatically eject after the given time. Implies --touch-eject (CCID mode only)',
                      args: [Arg(name: 'SECONDS')]),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show config mode usage information')
                ]),
            Subcommand(
                name: 'nfc',
                description: 'Enable or disable applications over NFC',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-e', '--enable'],
                      description: 'Enable applications',
                      args: [
                        Arg(name: 'application', suggestions: [
                          FigSuggestion(name: 'OTP'),
                          FigSuggestion(name: 'U2F'),
                          FigSuggestion(name: 'FIDO2'),
                          FigSuggestion(name: 'OATH'),
                          FigSuggestion(name: 'PIV'),
                          FigSuggestion(name: 'OPENPGP'),
                          FigSuggestion(name: 'HSMAUTH')
                        ])
                      ]),
                  Option(
                      name: ['-d', '--disable'],
                      description: 'Disable applications',
                      args: [
                        Arg(name: 'application', suggestions: [
                          FigSuggestion(name: 'OTP'),
                          FigSuggestion(name: 'U2F'),
                          FigSuggestion(name: 'FIDO2'),
                          FigSuggestion(name: 'OATH'),
                          FigSuggestion(name: 'PIV'),
                          FigSuggestion(name: 'OPENPGP'),
                          FigSuggestion(name: 'HSMAUTH')
                        ])
                      ]),
                  Option(
                      name: ['-a', '--enable-all'],
                      description: 'Enable all applications'),
                  Option(
                      name: ['-D', '--disable-all'],
                      description: 'Disable all applications'),
                  Option(
                      name: ['-l', '--list'],
                      description: 'List enabled applications'),
                  Option(
                      name: ['-L', '--lock-code'],
                      description:
                          'Current application configuration lock code',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show config nfc usage information')
                ]),
            Subcommand(
                name: 'set-lock-code',
                description: 'Set or change the configuration lock code',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-L', '--lock-code'],
                      description: 'Current lock code',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: ['-n', '--new-lock-code'],
                      description: 'New lock code. Conflicts with --generate',
                      exclusiveOn: ['--generate'],
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: ['-c', '--clear'],
                      description: 'Clear the lock code'),
                  Option(
                      name: ['-g', '--generate'],
                      description:
                          'Generate a random lock code. Conflicts with --new-lock-code',
                      exclusiveOn: ['--new-lock-code']),
                  Option(name: [
                    '-h',
                    '--help'
                  ], description: 'Show config set-lock-code usage information')
                ]),
            Subcommand(
                name: 'usb',
                description: 'Enable or disable applications over USB',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-e', '--enable'],
                      description: 'Enable applications',
                      args: [
                        Arg(name: 'applications', suggestions: [
                          FigSuggestion(name: 'OTP'),
                          FigSuggestion(name: 'U2F'),
                          FigSuggestion(name: 'FIDO2'),
                          FigSuggestion(name: 'OATH'),
                          FigSuggestion(name: 'PIV'),
                          FigSuggestion(name: 'OPENPGP'),
                          FigSuggestion(name: 'HSMAUTH')
                        ])
                      ]),
                  Option(
                      name: ['-d', '--disable'],
                      description: 'Disable applications',
                      args: [
                        Arg(name: 'application', suggestions: [
                          FigSuggestion(name: 'OTP'),
                          FigSuggestion(name: 'U2F'),
                          FigSuggestion(name: 'FIDO2'),
                          FigSuggestion(name: 'OATH'),
                          FigSuggestion(name: 'PIV'),
                          FigSuggestion(name: 'OPENPGP'),
                          FigSuggestion(name: 'HSMAUTH')
                        ])
                      ]),
                  Option(
                      name: ['-l', '--list'],
                      description: 'List enabled applications'),
                  Option(
                      name: ['-a', '--enable-all'],
                      description: 'Enable all applications'),
                  Option(
                      name: ['-D', '--disable-all'],
                      description: 'Disable all applications'),
                  Option(
                      name: ['-L', '--lock-code'],
                      description:
                          'Current application configuration lock code',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: '--touch-eject',
                      description:
                          'When set, the button toggles the state of the smartcard between ejected and inserted (CCID mode only)'),
                  Option(
                      name: '--no-touch-eject',
                      description: 'Disable touch eject (CCID only)'),
                  Option(
                      name: '--autoeject-timeout',
                      description:
                          'When set, the smartcard will automatically eject after the given time. Implies --touch-eject',
                      args: [Arg(name: 'SECONDS')]),
                  Option(
                      name: '--chalresp-timeout',
                      description:
                          'Sets the timeout when waiting for touch for challenge-response in the OTP application',
                      args: [Arg(name: 'SECONDS')]),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show config usb usage information')
                ])
          ],
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Show config usage information')
          ]),
      Subcommand(
          name: 'fido',
          description: 'Manage the FIDO applications',
          subcommands: [
            Subcommand(
                name: 'info',
                description: 'Display general status of the FIDO2 application',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show fido info usage information')
                ]),
            Subcommand(
                name: 'reset',
                description:
                    'Reset all FIDO applications. This action will wipe all FIDO credentials, including FIDO U2F credentials, on the YubiKey and remove the PIN code',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show fido reset usage information')
                ]),
            Subcommand(
                name: 'access',
                description: 'Manage the PIN for FIDO',
                subcommands: [
                  Subcommand(
                      name: 'change-pin',
                      description: 'Set or change PIN code',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'Current PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-n', '--new-pin'],
                            description: 'Current PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-u', '--u2f'],
                            description:
                                'Set FIDO U2F pin instead of FIDO2 PIN'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido access change-pin usage information')
                      ]),
                  Subcommand(
                      name: 'verify-pin',
                      description: 'Verify the PIN against a YubiKey',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'Current PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido access verify-pin usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show fido access usage information')
                ]),
            Subcommand(
                name: 'credentials',
                description:
                    'Manage discoverable (resident) credentials. This command lets you manage credentials stored on your YubiKey. Credential management is only available when a FIDO PIN is set on the YubiKey',
                subcommands: [
                  Subcommand(
                      name: 'delete',
                      description: 'Delete a credential',
                      args: [
                        Arg(
                            name: 'QUERY',
                            description:
                                'A unique substring match of a credentials RP ID, user ID (hex) or name, or credential ID')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm deletion without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido credentials delete usage information')
                      ]),
                  Subcommand(
                      name: 'list',
                      description: 'List credentials',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido credentials list usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show fido credentials usage information')
                ]),
            Subcommand(
                name: 'fingerprints',
                description: 'Manage fingerprints',
                subcommands: [
                  Subcommand(
                      name: 'add',
                      description: 'Add a new fingerprint',
                      args: [
                        Arg(
                            name: 'NAME',
                            description:
                                'A short readable name for the fingerprint (eg. "Left thumb")')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido fingerprints add usage information')
                      ]),
                  Subcommand(
                      name: 'delete',
                      description:
                          'Delete a fingerprint. Delete a fingerprint from the YubiKey by its ID, which can be seen by running the "list" subcommand',
                      args: [
                        Arg(name: 'ID')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm deletion without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido fingerprints delete usage information')
                      ]),
                  Subcommand(
                      name: 'list',
                      description:
                          'List registered fingerprint. Lists fingerprints by ID and (if available) label',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show fido fingerprints list usage information')
                      ]),
                  Subcommand(
                      name: 'rename',
                      description: 'Set the label for a fingerprint',
                      args: [
                        Arg(
                            name: 'ID',
                            description:
                                'The ID of the fingerprint to rename (as shown in "list")'),
                        Arg(
                            name: 'NAME',
                            description:
                                'A short readable name for the fingerprint (eg. "Left thumb")')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description: 'Show fido rename usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show fido fingerprints usage information')
                ])
          ],
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Show fido usage information')
          ]),
      Subcommand(
          name: 'oath',
          description: 'Manage the OATH applications',
          subcommands: [
            Subcommand(
                name: 'info',
                description: 'Display general status of OATH application',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show oath info usage information')
                ]),
            Subcommand(
                name: 'reset',
                description:
                    'Reset all OATH data. This action will delete all accounts and restore factory settings for the OATH application on the YubiKey',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show oath reset usage information'),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true)
                ]),
            Subcommand(
                name: 'access',
                description: 'Manage password protection for OATH',
                subcommands: [
                  Subcommand(
                      name: 'change',
                      description:
                          'Change the password used to protect OATH accounts. Alows you to set or change a password that will be required to access the OATH accounts stored on the YubiKey',
                      options: [
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-c', '--clear'],
                            description: 'Clear the current password'),
                        Option(
                            name: ['-n', '--new-password'],
                            description:
                                'Provide a new password as an argument',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath access change usage information')
                      ]),
                  Subcommand(
                      name: 'forget',
                      description:
                          'Remove a stored password from this computer',
                      options: [
                        Option(
                            name: ['-a', '--all'],
                            description: 'Remove all stored passwords'),
                        Option(
                            name: ['-h', '--help'],
                            description: 'Show oath forget usage information')
                      ]),
                  Subcommand(
                      name: 'remember',
                      description:
                          'Store the YubiKeys password on this computer to avoid having to enter it on each use',
                      options: [
                        Option(
                            name: ['-P', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description: 'Show oath remember usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show oath access usage information')
                ]),
            Subcommand(
                name: 'accounts',
                description: 'Manage and use OATH accounts',
                subcommands: [
                  Subcommand(
                      name: 'add',
                      description: 'Add a new account',
                      args: [
                        Arg(
                            name: 'NAME',
                            description:
                                'Human readable name of the account, such as a username or e-mail address'),
                        Arg(
                            name: 'SECRET',
                            description:
                                'Base32-encoded secret/key value provided by the server',
                            isOptional: true)
                      ],
                      options: [
                        Option(
                            name: ['-o', '--oath-type'],
                            description:
                                'Time-based (TOTP) or counter-based (HOTP) account',
                            args: [
                              Arg(
                                  name: 'oath type',
                                  defaultValue: 'TOTP',
                                  suggestions: [
                                    FigSuggestion(name: 'HOTP'),
                                    FigSuggestion(name: 'TOTP')
                                  ])
                            ]),
                        Option(
                            name: ['-d', '--digits'],
                            description: 'Number of digits in generated code',
                            args: [
                              Arg(
                                  name: 'number of digits',
                                  defaultValue: '6',
                                  suggestions: [
                                    FigSuggestion(name: '6'),
                                    FigSuggestion(name: '7'),
                                    FigSuggestion(name: '8')
                                  ])
                            ]),
                        Option(
                            name: ['-a', '--algorithm'],
                            description: 'Algorithm to use for code generation',
                            args: [
                              Arg(
                                  name: 'algorithm',
                                  defaultValue: 'SHA1',
                                  suggestions: [
                                    FigSuggestion(name: 'SHA1'),
                                    FigSuggestion(name: 'SHA256'),
                                    FigSuggestion(name: 'SHA512')
                                  ])
                            ]),
                        Option(
                            name: ['-c', '--counter'],
                            description:
                                'Initial counter value for HOTP accounts',
                            args: [Arg(name: 'INTEGER')]),
                        Option(
                            name: ['-i', '--issuer'],
                            description: 'Issuer of the account',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--period'],
                            description:
                                'Number of seconds a TOTP code is valid',
                            args: [Arg(name: 'INTEGER', defaultValue: '30')]),
                        Option(
                            name: ['-t', '--touch'],
                            description:
                                'Require touch on YubiKey to generate code'),
                        Option(
                            name: ['-f', '--force'],
                            isDangerous: true,
                            description:
                                'Confirm the action without prompting'),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts add usage information')
                      ]),
                  Subcommand(
                      name: 'code',
                      description: 'Generate codes',
                      args: [
                        Arg(
                            name: 'QUERY',
                            description:
                                'Provide a query string to match one or more specific accounts',
                            isOptional: true)
                      ],
                      options: [
                        Option(
                            name: ['-H', '--show-hidden'],
                            description: 'Include hidden accounts'),
                        Option(
                            name: ['-s', '--single'],
                            description:
                                'Ensure only a single match, and output only the code'),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts code usage information')
                      ]),
                  Subcommand(
                      name: 'delete',
                      description: 'Delete an account',
                      args: [
                        Arg(
                            name: 'QUERY',
                            description:
                                'A query to match a single account (as shown in "list")')
                      ],
                      options: [
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm deletion without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts delete usage information')
                      ]),
                  Subcommand(
                      name: 'list',
                      description: 'List all accounts',
                      options: [
                        Option(
                            name: ['-H', '--show-hidden'],
                            description: 'Include hidden accounts'),
                        Option(
                            name: ['-o', '--oath-type'],
                            description: 'Display the OATH type'),
                        Option(
                            name: ['-P', '--period'],
                            description: 'Display the period'),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts list usage information')
                      ]),
                  Subcommand(
                      name: 'rename',
                      description:
                          'Rename an account (Requires YubiKey 5.3 or later)',
                      args: [
                        Arg(
                            name: 'QUERY',
                            description:
                                'A query to match a single account (as shown in "list")'),
                        Arg(
                            name: 'NAME',
                            description:
                                'The name of the account (use "<issuer>:<name>" to specify issuer)')
                      ],
                      options: [
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm rename without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts rename usage information')
                      ]),
                  Subcommand(
                      name: 'uri',
                      description: 'Add a new account from an otpauth:// URI',
                      args: [
                        Arg(name: 'URI')
                      ],
                      options: [
                        Option(
                            name: ['-t', '--touch'],
                            description:
                                'Require touch on YubiKey to generate code'),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm the action without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Provide a password to unlock the YubiKey',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-r', '--remember'],
                            description:
                                'Remember the password on this machine'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show oath accounts uri usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show oath accounts usage information')
                ])
          ],
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Show oath usage information')
          ]),
      Subcommand(
          name: 'openpgp',
          description: 'Manage the OpenPGP applications',
          subcommands: [
            Subcommand(
                name: 'info',
                description:
                    'Display general status of the OpenPGP application',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show openpgp info usage information')
                ]),
            Subcommand(
                name: 'reset',
                description: 'Reset all the OpenPGP data',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show openpgp reset usage information')
                ]),
            Subcommand(
                name: 'access',
                description: 'Manage PIN, Reset Code, and Admin PIN',
                subcommands: [
                  Subcommand(
                      name: 'set-retries',
                      description: 'Set PIN, Reset Code and Admin PIN retries',
                      args: [
                        Arg(name: 'PIN-RETRIES'),
                        Arg(name: 'RESET-CODE-RETRIES'),
                        Arg(name: 'ADMIN-PIN-RETRIES')
                      ],
                      options: [
                        Option(
                            name: ['-a', '--admin-pin'],
                            description: 'Admin PIN for OpenPGP',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm the action without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp access set-retries usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show openpgp access usage information')
                ]),
            Subcommand(
                name: 'certificates',
                description: 'Manage certificates',
                subcommands: [
                  Subcommand(
                      name: 'delete',
                      description: 'Delete an OpenPGP certificate',
                      args: [
                        Arg(
                            name: 'KEY',
                            description:
                                'Key slot to delete certificate from (sig, enc, aut, or att)')
                      ],
                      options: [
                        Option(
                            name: ['-a', '--admin-pin'],
                            description: 'Admin PIN for OpenPGP',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp certificates delete usage information')
                      ]),
                  Subcommand(
                      name: 'export',
                      description: 'Export an OpenPGP certificate',
                      args: [
                        Arg(
                            name: 'KEY',
                            description:
                                'Key slot to read from (sig, enc, aut, or att)'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File to write certificate to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp certificates export usage information')
                      ]),
                  Subcommand(
                      name: 'import',
                      description: 'Import an OpenPGP certificate',
                      args: [
                        Arg(
                            name: 'KEY',
                            description:
                                'Key slot to import certificates to (sig, enc, aut, or att)'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File containing the certificate. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-a', '--admin-pin'],
                            description: 'Admin PIN for OpenPGP',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp certificates export usage information')
                      ])
                ],
                options: [
                  Option(name: [
                    '-h',
                    '--help'
                  ], description: 'Show openpgp certificates usage information')
                ]),
            Subcommand(
                name: 'keys',
                description: 'Manage private keys',
                subcommands: [
                  Subcommand(
                      name: 'attest',
                      description:
                          'Generate a attestation certificate for a key. Attestation is used to show that an asymmetric key was generated on the YubiKey and therefore doesn\'t exist outside the device',
                      args: [
                        Arg(
                            name: 'KEY',
                            description:
                                'Key slot to attest (sig, enc, aut, or att)'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File to write attestation certificate to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp keys attest usage information')
                      ]),
                  Subcommand(
                      name: 'import',
                      description:
                          'Import a private key (ONLY SUPPORTS ATTESTATION KEY)',
                      args: [
                        Arg(name: 'KEY'),
                        Arg(
                            name: 'PRIVATE-KEY',
                            description:
                                'File containing the private key. Use \'-\' to use stdin')
                      ],
                      options: [
                        Option(
                            name: ['-a', '--admin-pin'],
                            description: 'Admin PIN for OpenPGP',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp keys import usage information')
                      ]),
                  Subcommand(
                      name: 'set-touch',
                      description: 'Set touch policy for OpenPGP key',
                      args: [
                        Arg(
                            name: 'KEY',
                            description:
                                'Key slot to set (sig, enc, aut or att)'),
                        Arg(
                            name: 'POLICY',
                            description:
                                'Touch policy to set (on, off, fixed, cached or cached-fixed)')
                      ],
                      options: [
                        Option(
                            name: ['-a', '--admin-pin'],
                            description: 'Admin PIN for OpenPGP',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm the action without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show openpgp set-touch usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show openpgp keys usage information')
                ])
          ],
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Show openpgp usage information')
          ]),
      Subcommand(
          name: 'otp',
          description: 'Manage the YubiOTP applications',
          subcommands: [
            Subcommand(
                name: 'calculate',
                description:
                    'Perform a challenge-response operation. Send a challenge (in hex) to a YubiKey slot with a challenge-response credential, and read the response. Supports output as a OATH-TOTP code',
                options: [
                  Option(
                      name: ['-T', '--totp'],
                      description:
                          'Generate a TOTP code, use the current time if challenge is omitted'),
                  Option(
                      name: ['-d', '--digits'],
                      description: 'Number of digits in generated TOTP code',
                      args: [
                        Arg(
                            name: 'number of digits',
                            defaultValue: '6',
                            suggestions: [
                              FigSuggestion(name: '6'),
                              FigSuggestion(name: '8')
                            ])
                      ]),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp calculate usage information')
                ]),
            Subcommand(
                name: 'chalresp',
                description: 'Program a challenge-response operation',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ]),
                  Arg(
                      name: 'KEY',
                      description:
                          'A key given in hex (or base32, if --totp is specified)',
                      isOptional: true)
                ],
                options: [
                  Option(
                      name: ['-t', '--touch'],
                      description:
                          'Require touch on the YubiKey to generate a response'),
                  Option(
                      name: ['-T', '--totp'],
                      description:
                          'Use a base32 encoded key (optionally padded) for TOTP credentials'),
                  Option(
                      name: ['-g', '--generate'],
                      description:
                          'Generate a random secret key. Conflicts with KEY argument'),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp chalresp usage information')
                ]),
            Subcommand(
                name: 'delete',
                description: 'Deletes the configuration stored in a slot',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ])
                ],
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp delete usage information')
                ]),
            Subcommand(
                name: 'hotp',
                description: 'Program an HMAC-SHA1 OATH-HOTP credential',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ]),
                  Arg(name: 'KEY', isOptional: true)
                ],
                options: [
                  Option(
                      name: ['-d', '--digits'],
                      description: 'Number of digits in generated code',
                      args: [
                        Arg(
                            name: 'number of digits',
                            defaultValue: '6',
                            suggestions: [
                              FigSuggestion(name: '6'),
                              FigSuggestion(name: '8')
                            ])
                      ]),
                  Option(
                      name: ['-c', '--counter'],
                      description: 'Initial counter value',
                      args: [Arg(name: 'INTEGER')]),
                  Option(
                      name: ['-i', '--identifier'],
                      description: 'Token identifier',
                      args: [Arg(name: 'TEXT')]),
                  Option(
                      name: '--no-enter',
                      description:
                          'Don\'t send an Enter keystroke after outputting the code'),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp hotp usage information')
                ]),
            Subcommand(
                name: 'info',
                description: 'Display general status of the YubiKey OTP slots',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp info usage information')
                ]),
            Subcommand(
                name: 'ndef',
                description: 'Configure a slot to be used over NDEF (NFC)',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ])
                ],
                options: [
                  Option(
                      name: '--prefix',
                      description:
                          'Added before the NDEF payload. Typically a URI',
                      args: [
                        Arg(name: 'TEXT', defaultValue: 'an empty string')
                      ]),
                  Option(
                      name: ['-t', '--ndef-type'],
                      description: 'NDEF payload type',
                      args: [
                        Arg(
                            name: 'NDEF type',
                            defaultValue: 'URI',
                            suggestions: [
                              FigSuggestion(name: 'TEXT'),
                              FigSuggestion(name: 'URI')
                            ])
                      ]),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp ndef usage information')
                ]),
            Subcommand(
                name: 'settings',
                description: 'Update the settings for a slot',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-A', '--new-access-code'],
                      description:
                          'Set a new 6 byte access code for the slot. Use "-" as a value to prompt for input',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: '--delete-access-code',
                      description: 'Remove access code from the slot'),
                  Option(
                      name: ['--enter', '--no-enter'],
                      description:
                          'Should send \'Enter\' keystroke after slot output. (default: enter)'),
                  Option(
                      name: ['-p', '--pacing'],
                      description:
                          'Throttle output speed by adding a delay (in ms) between characters emitted',
                      args: [
                        Arg(
                            name: 'milliseconds',
                            defaultValue: '0',
                            suggestions: [
                              FigSuggestion(name: '0'),
                              FigSuggestion(name: '20'),
                              FigSuggestion(name: '40'),
                              FigSuggestion(name: '60')
                            ])
                      ]),
                  Option(
                      name: '--use-numeric-keypad',
                      description:
                          'Use scancodes for numeric keypad when sending digits. Helps with some keyboard layouts'),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp settings usage information')
                ]),
            Subcommand(
                name: 'static',
                description: 'Configure a static password',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ]),
                  Arg(name: 'PASSWORD', isOptional: true)
                ],
                options: [
                  Option(
                      name: ['-g', '--generate'],
                      description: 'Generate a random password'),
                  Option(
                      name: ['-l', '--length'],
                      description: 'Length of generated password',
                      args: [
                        Arg(name: 'LENGTH', defaultValue: '38 (1<=x<=38)')
                      ]),
                  Option(
                      name: ['-k', '--keyboard-layout'],
                      description:
                          'Keyboard layout to use for the static password',
                      args: [
                        Arg(
                            name: 'layout',
                            defaultValue: 'MODHEX',
                            suggestions: [
                              FigSuggestion(name: 'MODHEX'),
                              FigSuggestion(name: 'US'),
                              FigSuggestion(name: 'UK'),
                              FigSuggestion(name: 'DE'),
                              FigSuggestion(name: 'FR'),
                              FigSuggestion(name: 'BEPO'),
                              FigSuggestion(name: 'NORMAN')
                            ])
                      ]),
                  Option(
                      name: '--no-enter',
                      description:
                          'Don\'t send an Enter keystroke after outputting the password'),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp chalresp usage information')
                ]),
            Subcommand(
                name: 'swap',
                description: 'Swaps the two slot configurations',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp swap usage information')
                ]),
            Subcommand(
                name: 'yubiotp',
                description: 'Program a Yubico OTP credential',
                args: [
                  Arg(name: 'slot', suggestions: [
                    FigSuggestion(name: '1'),
                    FigSuggestion(name: '2')
                  ])
                ],
                options: [
                  Option(
                      name: ['-P', '--public-id'],
                      description: 'Public identifier prefix',
                      args: [Arg(name: 'MODHEX')]),
                  Option(
                      name: ['-p', '--private-id'],
                      description: '6 byte private identifier',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: ['-k', '--key'],
                      description: '16 byte secret key',
                      args: [Arg(name: 'HEX')]),
                  Option(
                      name: '--no-enter',
                      description:
                          'Don\'t send an Enter keystroke after emitting the OTP'),
                  Option(
                      name: ['-S', '--serial-public-id'],
                      description:
                          'Use YubiKey serial number as public ID. Conflicts with --public-id',
                      exclusiveOn: ['--public-id']),
                  Option(
                      name: ['-g', '--generate-private-id'],
                      description:
                          'Generate a random private ID. Conflicts with --private-id',
                      exclusiveOn: ['--private-id']),
                  Option(
                      name: ['-G', '--generate-key'],
                      description:
                          'Generate a random secret key. Conflicts with --key',
                      exclusiveOn: ['--key']),
                  Option(
                      name: ['-u', '--upload'],
                      description:
                          'Upload credential to YubiCloud (opens in browser). Conflicts with --force',
                      exclusiveOn: ['--force']),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting'),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show otp yubiotp usage information')
                ])
          ],
          options: [
            Option(
                name: '--access-code',
                description:
                    'A 6 byte access code. Use "-" as a value to prompt for input',
                args: [Arg(name: 'HEX')]),
            Option(
                name: ['-h', '--help'],
                description: 'Show otp usage information')
          ]),
      Subcommand(
          name: 'piv',
          description: 'Manage the PIV applications',
          subcommands: [
            Subcommand(
                name: 'info',
                description: 'Display general status of the PIV application',
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv info usage information')
                ]),
            Subcommand(
                name: 'reset',
                description: 'Reset all PIV data',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Confirm the action without prompting',
                      isDangerous: true),
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv reset usage information')
                ]),
            Subcommand(
                name: 'access',
                description: 'Manage PIN, PUK, and Management Key',
                subcommands: [
                  Subcommand(
                      name: 'change-management-key',
                      description: 'Change the management key',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-t', '--touch'],
                            description:
                                'Require touch on YubiKey to generate code'),
                        Option(
                            name: ['-n', '--new-management-key'],
                            description: 'A new management key',
                            args: [Arg(name: 'TEX')]),
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'Current management key',
                            args: [Arg(name: 'TEX')]),
                        Option(
                            name: ['-a', '--algorithm'],
                            description: 'Management key algorithm',
                            args: [
                              Arg(
                                  name: 'algorithm',
                                  defaultValue: 'TDES',
                                  suggestions: [
                                    FigSuggestion(name: 'TDES'),
                                    FigSuggestion(name: 'AES128'),
                                    FigSuggestion(name: 'AES192'),
                                    FigSuggestion(name: 'AES256')
                                  ])
                            ]),
                        Option(
                            name: ['-p', '--protect'],
                            description:
                                'Store new management key on the YubiKey, protected by PIN. A random key will be used if no key is provided'),
                        Option(
                            name: ['-g', '--generate'],
                            description:
                                'Generate a random management key. Implied by --protect unless --new-management-key is also given. Conflicts with --new-management-key',
                            exclusiveOn: ['--new-management-key']),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm the action without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv access change-management-key usage information')
                      ]),
                  Subcommand(
                      name: 'change-pin',
                      description: 'Change the PIN code',
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'Current PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-n', '--new-pin'],
                            description: 'A new PIN',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv access change-pin usage information')
                      ]),
                  Subcommand(
                      name: 'change-puk',
                      description: 'Change the PUK code',
                      options: [
                        Option(
                            name: ['-P', '--puk'],
                            description: 'Current PUK code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-n', '--new-puk'],
                            description: 'A new PUK',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv access change-puk usage information')
                      ]),
                  Subcommand(
                      name: 'set-retries',
                      description:
                          'Set the number of PIN and PUK retry attempts',
                      args: [
                        Arg(name: 'PIN-RETRIES'),
                        Arg(name: 'PUK-RETRIES')
                      ],
                      options: [
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-f', '--force'],
                            description: 'Confirm the action without prompting',
                            isDangerous: true),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv access set-retries usage information')
                      ]),
                  Subcommand(
                      name: 'unblock-pin',
                      description: 'Unblock the PIN (using PUK)',
                      options: [
                        Option(
                            name: ['-p', '--puk'], args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-n', '--new-pin'],
                            args: [Arg(name: 'NEW-PIN')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv access unblock-pin usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv access usage information')
                ]),
            Subcommand(
                name: 'certificates',
                description: 'Manage certificates',
                subcommands: [
                  Subcommand(
                      name: 'delete',
                      description: 'Delete a certificate',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the certificate')
                      ],
                      options: [
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv certificates delete usage information')
                      ]),
                  Subcommand(
                      name: 'export',
                      description: 'Export an X.509 certificate',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the certificate'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File to write certificate to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv certificates export usage information')
                      ]),
                  Subcommand(
                      name: 'generate',
                      description: 'Generate a self-signed X.509 certificate',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the certificate'),
                        Arg(
                            name: 'PUBLIC-KEY',
                            description:
                                'File containing a public key. Use \'-\' to use stdin')
                      ],
                      options: [
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-s', '--subject'],
                            description:
                                'Subject for the certificate, as an RFC 4514 string',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-d', '--valid-days'],
                            description:
                                'Number of days until the certificate expires',
                            args: [Arg(name: 'INTEGER', defaultValue: '365')]),
                        Option(
                            name: ['-a', '--hash-algorithm'],
                            description: 'Hash algorithm',
                            args: [
                              Arg(
                                  name: 'hash algorithm',
                                  defaultValue: 'SHA256',
                                  suggestions: [
                                    FigSuggestion(name: 'SHA1'),
                                    FigSuggestion(name: 'SHA256'),
                                    FigSuggestion(name: 'SHA384')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv certificates generate usage information')
                      ]),
                  Subcommand(
                      name: 'import',
                      description: 'Import an X.509 certificate',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the certificate'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File containing the certificate. Use \'-\' to use stdin')
                      ],
                      options: [
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'A password may be needed to decrypt the data',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-v', '--verify'],
                            description:
                                'Verify that the certificate matches the private key in the slot'),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv certificates import usage information')
                      ]),
                  Subcommand(
                      name: 'request',
                      description:
                          'Generate a Certificate Signing Request (CSR)',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the certificate'),
                        Arg(
                            name: 'PUBLIC-KEY',
                            description:
                                'File containing a public key. Use \'-\' to use stdin',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ]),
                        Arg(
                            name: 'CSR',
                            description:
                                'File to write CSR to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-s', '--subject'],
                            description:
                                'Subject for the certificate, as an RFC 4514 string',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-a', '--hash-algorithm'],
                            description: 'Hash algorithm',
                            args: [
                              Arg(
                                  name: 'hash algorithm',
                                  defaultValue: 'SHA256',
                                  suggestions: [
                                    FigSuggestion(name: 'SHA1'),
                                    FigSuggestion(name: 'SHA256'),
                                    FigSuggestion(name: 'SHA384'),
                                    FigSuggestion(name: 'SHA512')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv certificates request usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv certificates usage information')
                ]),
            Subcommand(
                name: 'keys',
                description: 'Manage private keys',
                subcommands: [
                  Subcommand(
                      name: 'attest',
                      description:
                          'Generate an attestation certificate for a key pair',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the private key'),
                        Arg(
                            name: 'CERTIFICATE',
                            description:
                                'File to write attestation certificate to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv keys attest usage information')
                      ]),
                  Subcommand(
                      name: 'export',
                      description:
                          'Export a public key corresponding to a stored private key',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the private key'),
                        Arg(
                            name: 'PUBLIC-KEY',
                            description:
                                'File containing the generated public key. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: ['-v', '--verify'],
                            description:
                                'Verify that the public key matches the private key in the slot'),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code (used for --verify)',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv keys attest usage information')
                      ]),
                  Subcommand(
                      name: 'generate',
                      description: 'Generate an asymmetric key pair',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the private key'),
                        Arg(
                            name: 'PUBLIC-KEY',
                            description:
                                'File containing the generated public key. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-a', '--algorithm'],
                            description: 'Algorithm to use in key generation',
                            args: [
                              Arg(
                                  name: 'algorithm',
                                  defaultValue: 'RSA2048',
                                  suggestions: [
                                    FigSuggestion(name: 'RSA1024'),
                                    FigSuggestion(name: 'RSA2048'),
                                    FigSuggestion(name: 'ECCP256'),
                                    FigSuggestion(name: 'ECCP384')
                                  ])
                            ]),
                        Option(
                            name: ['-F', '--format'],
                            description: 'Encoding format',
                            args: [
                              Arg(
                                  name: 'format',
                                  defaultValue: 'PEM',
                                  suggestions: [
                                    FigSuggestion(name: 'PEM'),
                                    FigSuggestion(name: 'DER')
                                  ])
                            ]),
                        Option(
                            name: '--pin-policy',
                            description: 'PIN policy for slot',
                            args: [
                              Arg(name: 'policy', suggestions: [
                                FigSuggestion(name: 'DEFAULT'),
                                FigSuggestion(name: 'NEVER'),
                                FigSuggestion(name: 'ONCE'),
                                FigSuggestion(name: 'ALWAYS')
                              ])
                            ]),
                        Option(
                            name: '--touch-policy',
                            description: 'Touch policy for slot',
                            args: [
                              Arg(name: 'policy', suggestions: [
                                FigSuggestion(name: 'DEFAULT'),
                                FigSuggestion(name: 'NEVER'),
                                FigSuggestion(name: 'ALWAYS'),
                                FigSuggestion(name: 'ONCE')
                              ])
                            ]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv keys generate usage information')
                      ]),
                  Subcommand(
                      name: 'import',
                      description: 'Import a private key from file',
                      args: [
                        Arg(
                            name: 'SLOT',
                            description: 'PIV slot of the private key'),
                        Arg(
                            name: 'PRIVATE-KEY',
                            description:
                                'File containing the private key. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: '--pin-policy',
                            description: 'PIN policy for slot',
                            args: [
                              Arg(name: 'policy', suggestions: [
                                FigSuggestion(name: 'DEFAULT'),
                                FigSuggestion(name: 'NEVER'),
                                FigSuggestion(name: 'ONCE'),
                                FigSuggestion(name: 'ALWAYS')
                              ])
                            ]),
                        Option(
                            name: '--touch-policy',
                            description: 'Touch policy for slot',
                            args: [
                              Arg(name: 'policy', suggestions: [
                                FigSuggestion(name: 'DEFAULT'),
                                FigSuggestion(name: 'NEVER'),
                                FigSuggestion(name: 'ALWAYS'),
                                FigSuggestion(name: 'ONCE')
                              ])
                            ]),
                        Option(
                            name: ['-p', '--password'],
                            description:
                                'Password used to decrypt the private key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv keys import usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv keys usage information')
                ]),
            Subcommand(
                name: 'objects',
                description: 'Manage PIV data objects',
                subcommands: [
                  Subcommand(
                      name: 'export',
                      description: 'Export an arbitrary PIV data object',
                      args: [
                        Arg(
                            name: 'OBJECT',
                            description:
                                'Name of PIV data object, or ID in HEX'),
                        Arg(
                            name: 'OUTPUT',
                            description:
                                'File to write object to. Use \'-\' to use stdout',
                            template: 'filepaths',
                            suggestions: [
                              FigSuggestion(name: '-', hidden: true)
                            ])
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv objects export usage information')
                      ]),
                  Subcommand(
                      name: 'generate',
                      description:
                          'Generate and write data for a supported data object',
                      args: [
                        Arg(
                            name: 'OBJECT',
                            description:
                                'Name of PIV data object, or ID in HEX')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv objects generate usage information')
                      ]),
                  Subcommand(
                      name: 'import',
                      description: 'Write an arbitrary PIV object',
                      args: [
                        Arg(
                            name: 'OBJECT',
                            description:
                                'Name of PIV data object, or ID in HEX'),
                        Arg(
                            name: 'DATA',
                            description:
                                'File containing the data to be written. Use \'-\' to use stdin')
                      ],
                      options: [
                        Option(
                            name: ['-P', '--pin'],
                            description: 'PIN code',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-m', '--management-key'],
                            description: 'The management key',
                            args: [Arg(name: 'TEXT')]),
                        Option(
                            name: ['-h', '--help'],
                            description:
                                'Show piv objects import usage information')
                      ])
                ],
                options: [
                  Option(
                      name: ['-h', '--help'],
                      description: 'Show piv objects usage information')
                ])
          ],
          options: [
            Option(
                name: ['-h', '--help'],
                description: 'Show piv usage information')
          ])
    ],
    options: [
      Option(
          name: ['-d', '--device'],
          description:
              'Specify which YubiKey to interact with by serial number',
          args: [
            Arg(
                name: 'SERIAL',
                generators: Generator(
                  script: [
                    'bash',
                    '-c',
                    "ykman list | sed -rn 's/.*Serial: (.*)/\\1/p'",
                  ],
                  postProcess: (out, [tokens]) {
                    return out
                        .split('\n')
                        .where((line) => line.isNotEmpty)
                        .map((serial) => FigSuggestion(
                              name: serial,
                              description: 'Yubikey serial',
                            ))
                        .toList();
                  },
                ))
          ]),
      Option(
          name: ['-r', '--reader'],
          description:
              'Use an exteral smart card reader. Conflicts with --device and list',
          exclusiveOn: ['--device'],
          args: [
            Arg(
                name: 'NAME',
                generators: Generator(
                  script: ['ykman', 'list', '--readers'],
                  postProcess: (out, [tokens]) {
                    return out
                        .split('\n')
                        .where((line) => line.isNotEmpty)
                        .map((readerName) => FigSuggestion(
                              name: readerName,
                              description: 'Yubikey name',
                            ))
                        .toList();
                  },
                ))
          ]),
      Option(
          name: ['-l', '--log-level'],
          description: 'Enable logging at given verbosity level',
          args: [
            Arg(name: 'log level', suggestions: [
              FigSuggestion(name: 'DEBUG'),
              FigSuggestion(name: 'INFO'),
              FigSuggestion(name: 'WARNING'),
              FigSuggestion(name: 'ERROR'),
              FigSuggestion(name: 'CRITICAL')
            ])
          ]),
      Option(
          name: '--log-file',
          description:
              'Write logs to the given FILE instead of standard error; ignore unless --log-level is also set',
          args: [Arg(name: 'FILE', template: 'filepaths')]),
      Option(
          name: '--diagnose',
          description:
              'Show diagnostics information useful for troubleshooting'),
      Option(
          name: ['-v', '--version'],
          description: 'Show version information about the app'),
      Option(
          name: '--full-help',
          description: 'Show --help, including hidden commands, and exit'),
      Option(name: ['-h', '--help'], description: 'Show usage information')
    ]);
