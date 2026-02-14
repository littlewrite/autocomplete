// AI-generated from TypeScript source: src/ssh-keygen.ts
import 'package:autocomplete/src/spec.dart';

const List<String> allOptions = [
  "-A",
  "-a",
  "-B",
  "-b",
  "-C",
  "-c",
  "-D",
  "-E",
  "-e",
  "-F",
  "-f",
  "-g",
  "-H",
  "-h",
  "-I",
  "-i",
  "-K",
  "-k",
  "-L",
  "-l",
  "-M",
  "-m",
  "-N",
  "-n",
  "-O",
  "-P",
  "-p",
  "-Q",
  "-q",
  "-R",
  "-r",
  "-s",
  "-t",
  "-U",
  "-u",
  "-V",
  "-v",
  "-w",
  "-Y",
  "-y",
  "-Z",
  "-z",
];

final FigSpec sshKeygenSpec = FigSpec(
  name: "ssh-keygen",
  description: "Generates, manages and converts authentication keys for ssh",
  options: [
    FigOption(
      name: "-A",
      description:
          "For each of the key types (rsa, dsa, ecdsa and ed25519) for which host keys do not exist, generate the host keys with the default key file path, an empty passphrase, default bits for the key type, and default comment",
      exclusiveOn: allOptions
          .where((option) => option != "-a" && option != "-f")
          .toList(),
    ),
    FigOption(
      name: "-a",
      description:
          "When saving a private key, this option specifies the number of KDF",
      args: [
        FigArg(
          name: "rounds",
          description: "Number of rounds being used",
          defaultValue: "16",
          isOptional: true,
          suggestions: ["16"],
        )
      ],
    ),
    FigOption(
      name: "-B",
      description:
          "Show the bubblebabble digest of specified private or public key file",
      exclusiveOn: allOptions.where((option) => option != "-f").toList(),
    ),
    FigOption(
      name: "-b",
      description: "Specifies the number of bits in the key to create",
      args: [
        FigArg(
          name: "bits",
          description: "Number of bits in the key",
          defaultValue: "3072",
          suggestions: ["3072"],
        )
      ],
    ),
    FigOption(
      name: "-C",
      description: "Provides a new comment",
      args: [
        FigArg(
          name: "comment",
          description: "New comment value",
        )
      ],
    ),
    FigOption(
      name: "-c",
      description:
          "Requests changing the comment in the private and public key files",
      exclusiveOn: allOptions
          .where((option) =>
              option != "-a" &&
              option != "-C" &&
              option != "-f" &&
              option != "-P")
          .toList(),
    ),
    FigOption(
      name: "-D",
      description: "Download the public keys provided by the PKCS#11",
      args: [
        FigArg(
          name: "pkcs11",
          description: "PKCS#11 public keys",
        )
      ],
      exclusiveOn: allOptions,
    ),
    FigOption(
      name: "-E",
      description: "Specifies the hash algorithm used",
      args: [
        FigArg(
          name: "fingerprint_hash",
          description: "Hash algorithm value",
          defaultValue: "sha256",
          suggestions: const [
            FigSuggestion(name: "md5"),
            FigSuggestion(name: "sha256")
          ],
        )
      ],
    ),
    FigOption(
      name: "-e",
      description: "Read a OpenSSH key file and print to stdout",
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-m")
          .toList(),
    ),
    FigOption(
      name: "-F",
      description:
          "Search for the specified hostname (with optional port number)",
      args: [
        FigArg(
          name: "hostname",
          description: "Hostname with optional port number",
        )
      ],
      exclusiveOn: allOptions
          .where((option) => option != "-l" && option != "-v" && option != "-f")
          .toList(),
    ),
    FigOption(
      name: "-f",
      description: "Specifies the filename of the key file",
      args: [
        FigArg(
          name: "filename",
          description: "Filename of the key file",
          template: "filepaths",
          suggestCurrentToken: true,
        )
      ],
    ),
    FigOption(
      name: "-g",
      description:
          "Use generic DNS format when printing fingerprint resource records",
    ),
    FigOption(
      name: "-H",
      description: "Hash a known_hosts file",
      exclusiveOn: allOptions.where((option) => option != "-f").toList(),
    ),
    FigOption(
      name: "-h",
      description: "Create a host certificate instead of a user",
    ),
    FigOption(
      name: "-I",
      description: "Specify the key identity when signing a public key",
      args: [
        FigArg(
          name: "certificate_identity",
          description: "Key identity value",
          template: "filepaths",
        )
      ],
      exclusiveOn: allOptions
          .where((option) =>
              option != "-s" &&
              option != "-h" &&
              option != "-U" &&
              option != "-D")
          .toList(),
    ),
    FigOption(
      name: "-i",
      description: "Read an unencrypted private (or public) key file",
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-m")
          .toList(),
    ),
    FigOption(
      name: "-K",
      description: "Download resident keys from a FIDO	authenticator",
      exclusiveOn: allOptions
          .where((option) => option != "-a" && option != "-w")
          .toList(),
    ),
    FigOption(
      name: "-k",
      description: "Generate a	KRL file",
      dependsOn: ["-f"],
    ),
    FigOption(
      name: "-L",
      description: "Prints the contents of one or more certificates",
      exclusiveOn: allOptions.where((option) => option != "-f").toList(),
    ),
    FigOption(
      name: "-l",
      description: "Show fingerprint of specified public key file",
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-v")
          .toList(),
    ),
    FigOption(
      name: "-M",
      description:
          "Specify the amount of memory to use for generating moduli for the Diffie-Hellman Group Exchange",
      args: [
        FigArg(
          name: "memory",
          description: "Amount of memory (MB)",
        )
      ],
      exclusiveOn: allOptions
          .where((option) => option != "-G" && option != "-O")
          .toList(),
    ),
    FigOption(
      name: "-m",
      description: "Specify a key format for the -i (import) or -e (export)",
      args: [
        FigArg(
          name: "key_format",
          description: "Key format",
          suggestions: ["PEM", "PKCS8", "RFC4716"],
        )
      ],
    ),
    FigOption(
      name: "-N",
      description: "Provides the new passphrase",
      args: [
        FigArg(
          name: "new_passphrase",
          description: "New passphrase",
        )
      ],
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-P")
          .toList(),
    ),
    FigOption(
      name: "-n",
      description: "Specify one or more principals (user or host names)",
      args: [
        FigArg(
          name: "principals",
          description: "Principals",
        )
      ],
    ),
    FigOption(
      name: "-O",
      description: "Specify a key/value option",
      args: [
        FigArg(
          name: "option",
          description: "Option",
        )
      ],
    ),
    FigOption(
      name: "-P",
      description: "Provides the (old) passphrase",
      args: [
        FigArg(
          name: "passphrase",
          description: "Old passphrase",
        )
      ],
    ),
    FigOption(
      name: "-p",
      description: "Requests changing the passphrase of a private key file",
      exclusiveOn: allOptions
          .where((option) =>
              option != "-N" &&
              option != "-P" &&
              option != "-f" &&
              option != "-a")
          .toList(),
    ),
    FigOption(
      name: "-Q",
      description: "Test whether keys have been revoked in a KRL",
      exclusiveOn: allOptions.where((option) => option != "-f").toList(),
    ),
    FigOption(
      name: "-q",
      description: "Silence ssh-keygen",
    ),
    FigOption(
      name: "-R",
      description: "Removes all keys belonging to hostname from a known_hosts",
      args: [
        FigArg(
          name: "hostname",
          description: "Hostname",
        )
      ],
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-F")
          .toList(),
    ),
    FigOption(
      name: "-r",
      description: "Print the SSHFP fingerprint resource record",
      args: [
        FigArg(
          name: "hostname",
          description: "Hostname",
        )
      ],
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-g")
          .toList(),
    ),
    FigOption(
      name: "-s",
      description: "Certify (sign) a public key using the specified CA key",
      args: [
        FigArg(
          name: "ca_key",
          description: "CA key",
          template: "filepaths",
        )
      ],
      exclusiveOn: allOptions
          .where((option) =>
              option != "-h" &&
              option != "-U" &&
              option != "-D" &&
              option != "-I" &&
              option != "-n" &&
              option != "-O" &&
              option != "-V" &&
              option != "-z")
          .toList(),
    ),
    FigOption(
      name: "-t",
      description: "Specifies the type of key to create",
      args: [
        FigArg(
          name: "key_type",
          description: "Key type",
          suggestions: const [
            FigSuggestion(name: "dsa"),
            FigSuggestion(name: "ecdsa"),
            FigSuggestion(name: "ecdsa-sk"),
            FigSuggestion(name: "ed25519"),
            FigSuggestion(name: "ed25519-sk"),
            FigSuggestion(name: "rsa"),
          ],
        )
      ],
    ),
    FigOption(
      name: "-U",
      description:
          "When used in combination with -s, this option indicates that a CA key is held in a ssh-agent",
      exclusiveOn: allOptions
          .where((option) =>
              option != "-s" &&
              option != "-h" &&
              option != "-D" &&
              option != "-I" &&
              option != "-n" &&
              option != "-O" &&
              option != "-V" &&
              option != "-z")
          .toList(),
    ),
    FigOption(
      name: "-u",
      description: "Update a KRL",
      exclusiveOn: allOptions
          .where((option) => option != "-f" && option != "-s" && option != "-k")
          .toList(),
    ),
    FigOption(
      name: "-V",
      description: "Specify the validity interval when signing a certificate",
      args: [
        FigArg(
          name: "validity_interval",
          description: "Validity interval",
        )
      ],
    ),
    FigOption(
      name: "-v",
      description: "Verbose mode",
    ),
    FigOption(
      name: "-w",
      description:
          "Requests changing the passphrase of a private key file to be empty",
      args: [
        FigArg(
          name: "provider",
          description: "Provider",
          template: "filepaths",
        )
      ],
      exclusiveOn: allOptions.where((option) => option != "-K").toList(),
    ),
    FigOption(
      name: "-Y",
      description: "Find the principal(s) associated with the public key",
      args: [
        FigArg(
          name: "command",
          description: "Command",
          suggestions: const [
            FigSuggestion(
              name: "find-principals",
              description:
                  "Find the principal(s) associated with the public key of a signature",
            ),
            FigSuggestion(
              name: "check-novalidate",
              description:
                  "Checks that a signature generated using ssh-keygen -Y sign has a valid structure",
            ),
            FigSuggestion(
              name: "sign",
              description:
                  "Cryptographically sign a file or some data using a SSH key",
            ),
            FigSuggestion(
              name: "verify",
              description:
                  "Request to verify a signature generated using ssh-keygen -Y",
            ),
          ],
        )
      ],
    ),
    FigOption(
      name: "-y",
      description:
          "Read a private OpenSSH format file and print an OpenSSH public key to stdout",
      exclusiveOn: allOptions.where((option) => option != "-f").toList(),
    ),
    FigOption(
      name: "-Z",
      description: "Specifies the cipher to use for encryption",
      args: [
        FigArg(
          name: "cipher",
          description: "Cipher",
        )
      ],
    ),
    FigOption(
      name: "-z",
      description:
          "Specifies a serial number to be embedded in the certificate",
      args: [
        FigArg(
          name: "serial_number",
          description: "Serial number",
        )
      ],
    ),
  ],
);
