// Auto-generated from TypeScript source: ssh-keygen.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ssh-keygen` CLI
final FigSpec sshKeygenSpec = FigSpec(
  name: 'ssh-keygen',
  description: 'Generates, manages and converts authentication keys for ssh',
  options: [

    Option(
      name: '-A',
      description: 'For each of the key types (rsa, dsa, ecdsa and ed25519) for which host keys do not exist, generate the host keys with the default key file path, an empty passphrase, default bits for the key type, and default comment'
    ),
    Option(
      name: '-a',
      description: 'When saving a private key, this option specifies the number of KDF',
      args: [
        Arg(
        name: 'rounds',
        description: 'Number of rounds being used',
        defaultValue: '16',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: '16')
        ]
      )
      ]
    ),
    Option(
      name: '-B',
      description: 'Show the bubblebabble digest of specified private or public key file'
    ),
    Option(
      name: '-b',
      description: 'Specifies the number of bits in the key to create',
      args: [
        Arg(
        name: 'bits',
        description: 'Number of bits in the key',
        defaultValue: '3072',
        suggestions: [

          FigSuggestion(name: '3072')
        ]
      )
      ]
    ),
    Option(
      name: '-C',
      description: 'Provides a new comment',
      args: [
        Arg(
        name: 'comment',
        description: 'New comment value'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Requests changing the comment in the private and public key files'
    ),
    Option(
      name: '-D',
      description: 'Download the public keys provided by the PKCS#11',
      args: [
        Arg(
        name: 'pkcs11',
        description: 'PKCS#11 public keys'
      )
      ]
    ),
    Option(
      name: '-E',
      description: 'Specifies the hash algorithm used',
      args: [
        Arg(
        name: 'fingerprint_hash',
        description: 'Hash algorithm value',
        defaultValue: 'sha256',
        suggestions: [

          FigSuggestion(
            name: 'md5'
          ),
          FigSuggestion(
            name: 'sha256'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-e',
      description: 'Read a OpenSSH key file and print to stdout'
    ),
    Option(
      name: '-F',
      description: 'Search for the specified hostname (with optional port number)',
      args: [
        Arg(
        name: 'hostname',
        description: 'Hostname with optional port number'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Specifies the filename of the key file',
      args: [
        Arg(
        name: 'filename',
        description: 'Filename of the key file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-g',
      description: 'Use generic DNS format when printing fingerprint resource records'
    ),
    Option(
      name: '-H',
      description: 'Hash a known_hosts file'
    ),
    Option(
      name: '-h',
      description: 'Create a host certificate instead of a user'
    ),
    Option(
      name: '-I',
      description: 'Specify the key identity when signing a public key',
      args: [
        Arg(
        name: 'certificate_identity',
        description: 'Key identity value',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Read an unencrypted private (or public) key file'
    ),
    Option(
      name: '-K',
      description: 'Download resident keys from a FIDO\tauthenticator'
    ),
    Option(
      name: '-k',
      description: 'Generate a\tKRL file',
      dependsOn: ['-f']
    ),
    Option(
      name: '-L',
      description: 'Generate a\tKRL file'
    ),
    Option(
      name: '-l',
      description: 'Show fingerprint of specified public key file'
    ),
    Option(
      name: '-M',
      description: 'Use for Moduli generation',
      args: [
        Arg(
        name: 'command',
        description: 'Use generate or screen',
        suggestions: [

          FigSuggestion(
            name: 'generate'
          ),
          FigSuggestion(
            name: 'screen'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-m',
      description: 'Specify a key format for key generation',
      args: [
        Arg(
        name: 'key_format',
        description: 'Key format for key generation'
      )
      ]
    ),
    Option(
      name: '-N',
      description: 'Provides the new passphrase',
      args: [
        Arg(
        name: 'new_passphrase',
        description: 'New passphrase value'
      )
      ]
    ),
    Option(
      name: '-n',
      description: 'Specify one or more principals (user or host names) to be included in a certificate when signing a key',
      args: [
        Arg(
        name: 'principals',
        description: 'Principals to be included in a certificate when signing a key'
      )
      ]
    ),
    Option(
      name: '-O',
      description: 'Specify a key/value option',
      isRepeatable: true,
      args: [
        Arg(
        name: 'option',
        description: 'Value for option'
      )
      ]
    ),
    Option(
      name: '-P',
      description: 'Provides the (old) passphrase',
      args: [
        Arg(
        name: 'passphrase',
        description: '(Old) passphrase value'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Requests changing the passphrase of a private key file instead of creating a new private key'
    ),
    Option(
      name: '-Q',
      description: 'Test whether keys have been revoked in a KRL'
    ),
    Option(
      name: '-q',
      description: 'Silence ssh-keygen'
    ),
    Option(
      name: '-R',
      description: 'Removes all keys belonging to hostname',
      args: [
        Arg(
        name: 'hostname',
        description: 'Hostname to remove keys from a known_hosts file'
      )
      ]
    ),
    Option(
      name: '-r',
      description: 'Print the SSHFP fingerprint resource record named hostname for the specified public key file',
      args: [
        Arg(
        name: 'hostname',
        description: 'Hostname for the specified public key file'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Certify (sign) a public key using the specified CA\tkey',
      args: [
        Arg(
        name: 'ca_key',
        description: 'Hostname for the specified public key file'
      )
      ]
    ),
    Option(
      name: '-t',
      description: 'Specifies the type of key to create',
      args: [
        Arg(
        name: 'command',
        suggestions: [

          FigSuggestion(
            name: 'dsa'
          ),
          FigSuggestion(
            name: 'ecdsa-sk'
          ),
          FigSuggestion(
            name: 'ed25519'
          ),
          FigSuggestion(
            name: 'ed25519-sk'
          ),
          FigSuggestion(
            name: 'rsa'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-U',
      description: 'When used in combination with -s, this option indicates that a CA key resides in a ssh-agent(1)'
    ),
    Option(
      name: '-u',
      description: 'Update a KRL'
    ),
    Option(
      name: '-V',
      description: 'Specify a validity interval when signing a certificate',
      args: [
        Arg(
        name: 'validity_interval',
        description: 'Value for validity interval'
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Verbose mode',
      isRepeatable: 3
    ),
    Option(
      name: '-w',
      description: 'Specifies a path to a library that will be used when creating FIDO authenticator-hosted keys',
      args: [
        Arg(
        name: 'provider',
        description: 'Path to library to be used when creating FIDO authenticator-hosted keys'
      )
      ]
    ),
    Option(
      name: '-Y',
      description: 'Multiple functions: find principals, match principals, check novalidate, sign, verify',
      args: [
        Arg(
        name: 'command',
        suggestions: [

          FigSuggestion(
            name: 'find-principals',
            description: 'Find the principal(s) associated with the public key of a signature'
          ),
          FigSuggestion(
            name: 'check-novalidate',
            description: 'Checks that a signature generated using ssh-keygen -Y sign has a valid structure'
          ),
          FigSuggestion(
            name: 'sign',
            description: 'Cryptographically sign a file or some data using a SSH key'
          ),
          FigSuggestion(
            name: 'verify',
            description: 'Request to verify a signature generated using ssh-keygen -Y'
          )
        ],
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '-y',
      description: 'Read a private OpenSSH format file and print an OpenSSH public key to stdout'
    ),
    Option(
      name: '-Z',
      description: 'Specifies the cipher to use for encryption when writing an OpenSSH-format private key file',
      args: [
        Arg(
        name: 'cipher',
        description: 'Cipher to use for encryption',
        defaultValue: 'aes256-ctr'
      )
      ]
    ),
    Option(
      name: '-z',
      description: 'Specifies a serial number to be embedded in the certificate to distinguish this certificate from others from the same CA',
      args: [
        Arg(
        name: 'serial_number',
        description: 'Serial number to distinguish this certificate',
        defaultValue: 'aes256-ctr'
      )
      ]
    )
  ]
);
