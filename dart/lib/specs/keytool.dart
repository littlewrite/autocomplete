// Auto-generated from TypeScript source: keytool.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: ['-h', '-?', '--help', '-help'],
    description: 'Show help message'
  ),
  Option(
    name: '-v',
    description: 'Verbose output'
  )
];

final List<Option> repeatedOptions = [

  Option(
    name: '-alias',
    description: 'Alias name of the entry to process',
    args: [
      Arg(
      name: 'alias'
    )
    ]
  ),
  Option(
    name: '-keystore',
    description: 'Keystore name',
    args: [
      Arg(
      name: 'keystore'
    )
    ]
  ),
  Option(
    name: '-storepass',
    description: 'Keystore password',
    args: [
      Arg(
      name: 'arg'
    )
    ]
  ),
  Option(
    name: '-storetype',
    description: 'Keystore type',
    args: [
      Arg(
      name: 'type'
    )
    ]
  ),
  Option(
    name: '-providername',
    description: 'Provider name',
    args: [
      Arg(
      name: 'name'
    )
    ]
  ),
  Option(
    name: '-addprovider',
    description: 'Add security provider by name (e.g. SunPKCS11)',
    args: [
      Arg(
      name: 'name'
    )
    ]
  ),
  Option(
    name: '-providerclass',
    description: 'Add security provider by fully-qualified class name',
    args: [
      Arg(
      name: 'class'
    )
    ]
  ),
  Option(
    name: '-providerarg',
    description: 'Configure argument for -addprovider or -providerclass',
    args: [
      Arg(
      name: 'arg'
    )
    ],
    dependsOn: ['-addprovider', '-providerclass']
  ),
  Option(
    name: '-providerpath',
    description: 'Provider classpath',
    args: [
      Arg(
      name: 'list'
    )
    ]
  ),
  Option(
    name: '-protected',
    description: 'Password through protected mechanism'
  )
];

/// Completion spec for `keytool` CLI
final FigSpec keytoolSpec = FigSpec(
  name: 'keytool',
  description: 'Key and Certificate Management Tool',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [

    Option(
      name: ['-h', '-?', '--help', '-help'],
      description: 'Show help message'
    ),
    Option(
      name: '-conf',
      description: 'Specify pre-configured options file',
      args: [
        Arg(
        name: 'url'
      )
      ]
    )
  ],
  subcommands: [

    Subcommand(
      name: '-certreq',
      description: 'Generates a certificate request',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-sigalg',
          description: 'Signature algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-file',
          description: 'Output file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-dname',
          description: 'Distinguished name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-ext',
          description: 'X.509 extension',
          args: [
            Arg(
            name: 'value'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-changealias',
      description: 'Changes an entry\'s alias',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-destalias',
          description: 'Destination alias',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    ),
    Subcommand(
      name: '-delete',
      description: 'Deletes an entry',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    ),
    Subcommand(
      name: '-exportcert',
      description: 'Exports certificate',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-rfc',
          description: 'Output in RFC style'
        ),
        Option(
          name: '-file',
          description: 'Output file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    ),
    Subcommand(
      name: '-genkeypair',
      description: 'Generate a key pair',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-keyalg',
          description: 'Key algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-keysize',
          description: 'Key bit size',
          args: [
            Arg(
            name: 'size'
          )
          ]
        ),
        Option(
          name: '-groupname',
          description: 'Group name. For example, an Elliptic Curve name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-sigalg',
          description: 'Signature algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-destalias',
          description: 'Destination alias',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: '-dname',
          description: 'Distinguished name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-startdate',
          description: 'Certificate validity start date/time',
          args: [
            Arg(
            name: 'date'
          )
          ]
        ),
        Option(
          name: '-ext',
          description: 'X.509 extension name',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-validity',
          description: 'Validity number of days',
          args: [
            Arg(
            name: 'days'
          )
          ]
        ),
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-genseckey',
      description: 'Generates a secret key',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-keyalg',
          description: 'Key algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-keysize',
          description: 'Key bit size',
          args: [
            Arg(
            name: 'size'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-gencert',
      description: 'Generates certificate from a certificate request',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-rfc',
          description: 'Output in RFC style'
        ),
        Option(
          name: '-infile',
          description: 'Input file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-outfile',
          description: 'Output file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-sigalg',
          description: 'Signature algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-dname',
          description: 'Distinguished name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-startdate',
          description: 'Certificate validity start date/time',
          args: [
            Arg(
            name: 'date'
          )
          ]
        ),
        Option(
          name: '-ext',
          description: 'X.509 extension name',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-validity',
          description: 'Validity number of days',
          args: [
            Arg(
            name: 'days'
          )
          ]
        ),
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-importcert',
      description: 'Imports a certificate or a certificate chain',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-noprompt',
          description: 'Do not prompt'
        ),
        Option(
          name: '-trustcacerts',
          description: 'Trust certificates from cacerts'
        ),
        Option(
          name: '-file',
          description: 'Output file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    ),
    Subcommand(
      name: '-importpass',
      description: 'Imports a password',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-keyalg',
          description: 'Key algorithm name',
          args: [
            Arg(
            name: 'alg'
          )
          ]
        ),
        Option(
          name: '-keysize',
          description: 'Key bit size',
          args: [
            Arg(
            name: 'size'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-importkeystore',
      description: 'Imports one or all entries from another keystore',
      options: [

        ...commonOptions,
        Option(
          name: '-srckeystore',
          description: 'Source keystore name',
          args: [
            Arg(
            name: 'keystore'
          )
          ]
        ),
        Option(
          name: '-destkeystore',
          description: 'Destination keystore name',
          args: [
            Arg(
            name: 'keystore'
          )
          ]
        ),
        Option(
          name: '-srcstoretype',
          description: 'Source keystore type',
          args: [
            Arg(
            name: 'type'
          )
          ]
        ),
        Option(
          name: '-deststoretype',
          description: 'Destination keystore type',
          args: [
            Arg(
            name: 'type'
          )
          ]
        ),
        Option(
          name: '-srcstorepass',
          description: 'Source keystore password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-deststorepass',
          description: 'Destination keystore password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-srcprotected',
          description: 'Source keystore password protected'
        ),
        Option(
          name: '-destprotected',
          description: 'Destination keystore password protected'
        ),
        Option(
          name: '-srcprovidername',
          description: 'Source keystore provider name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-destprovidername',
          description: 'Destination keystore provider name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-srcalias',
          description: 'Source alias',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: '-destalias',
          description: 'Destination alias',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: '-srckeypass',
          description: 'Source key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-destkeypass',
          description: 'Destination key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-noprompt',
          description: 'Do not prompt'
        ),
        Option(
          name: '-addprovider',
          description: 'Add security provider by name (e.g. SunPKCS11)',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '-providerclass',
          description: 'Add security provider by fully-qualified class name',
          args: [
            Arg(
            name: 'class'
          )
          ]
        ),
        Option(
          name: '-providerarg',
          description: 'Configure argument for -addprovider or -providerclass',
          args: [
            Arg(
            name: 'arg'
          )
          ],
          dependsOn: ['-addprovider', '-providerclass']
        ),
        Option(
          name: '-providerpath',
          description: 'Provider classpath',
          args: [
            Arg(
            name: 'list'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-keypasswd',
      description: 'Changes the key password of an entry',
      options: [

        ...commonOptions,
        Option(
          name: '-keypass',
          description: 'Key password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-new',
          description: 'New password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-list',
      description: 'Lists entries in a keystore',
      options: [

        ...commonOptions,
        ...repeatedOptions,
        Option(
          name: '-rfc',
          description: 'Output in RFC style'
        ),
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    ),
    Subcommand(
      name: '-printcert',
      description: 'Prints the content of a certificate',
      options: [

        ...commonOptions,
        Option(
          name: '-rfc',
          description: 'Output in RFC style'
        ),
        Option(
          name: '-file',
          description: 'Input file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '-sslserver',
          description: 'SSL server host and port',
          args: [
            Arg(
            name: 'server:[port]'
          )
          ]
        ),
        Option(
          name: '-jarfile',
          description: 'Signed jar file',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-printcertreq',
      description: 'Prints the content of a certificate request',
      options: [

        ...commonOptions,
        Option(
          name: '-file',
          description: 'Input file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-printcrl',
      description: 'Prints the content of a CRL file',
      options: [

        ...commonOptions,
        Option(
          name: '-file',
          description: 'Input file name',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: '-storepasswd',
      description: 'Changes the store password of a keystore',
      options: [

        ...commonOptions,
        Option(
          name: '-new',
          description: 'New password',
          args: [
            Arg(
            name: 'arg'
          )
          ]
        ),
        Option(
          name: '-cacerts',
          description: 'Access the cacerts keystore'
        )
      ]
    )
  ]
);
