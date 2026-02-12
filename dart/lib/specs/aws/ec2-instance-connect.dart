// Auto-generated from TypeScript source: ec2-instance-connect.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ec2-instance-connect` CLI
final FigSpec ec2InstanceConnectSpec = FigSpec(
  name: 'ec2-instance-connect',
  description: 'This is the  Amazon EC2 Instance Connect API Reference. It provides descriptions, syntax, and usage examples for each of the actions for Amazon EC2 Instance Connect. Amazon EC2 Instance Connect enables system administrators to publish one-time use SSH public keys to EC2, providing users a simple and secure way to connect to their instances. To view the Amazon EC2 Instance Connect content in the  Amazon EC2 User Guide, see Connect to your Linux instance using EC2 Instance Connect. For Amazon EC2 APIs, see the Amazon EC2 API Reference',
  subcommands: [
    Subcommand(
      name: 'send-ssh-public-key',
      description: 'Pushes an SSH public key to the specified EC2 instance for use by the specified user. The key remains for 60 seconds. For more information, see Connect to your Linux instance using EC2 Instance Connect in the Amazon EC2 User Guide',
      options: [
        Option(
          name: '--instance-id',
          description: 'The ID of the EC2 instance',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--instance-os-user',
          description: 'The OS user on the EC2 instance for whom the key can be used to authenticate',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ssh-public-key',
          description: 'The public key material. To use the public key, you must have the matching private key',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--availability-zone',
          description: 'The Availability Zone in which the EC2 instance was launched',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'send-serial-console-ssh-public-key',
      description: 'Pushes an SSH public key to the specified EC2 instance. The key remains for 60 seconds, which gives you 60 seconds to establish a serial console connection to the instance using SSH. For more information, see EC2 Serial Console in the Amazon EC2 User Guide',
      options: [
        Option(
          name: '--instance-id',
          description: 'The ID of the EC2 instance',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--serial-port',
          description: 'The serial port of the EC2 instance. Currently only port 0 is supported. Default: 0',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--ssh-public-key',
          description: 'The public key material. To use the public key, you must have the matching private key. For information about the supported key formats and lengths, see Requirements for key pairs in the Amazon EC2 User Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    )
  ]
);
