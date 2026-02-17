// Auto-generated from TypeScript source: nimble.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nimble` CLI
final FigSpec nimbleSpec = FigSpec(
  name: 'nimble',
  description: 'Welcome to the Amazon Nimble Studio API reference. This API reference provides methods, schema, resources, parameters, and more to help you get the most out of Nimble Studio. Nimble Studio is a virtual studio that empowers visual effects, animation, and interactive content teams to create content securely within a scalable, private cloud service',
  subcommands: [

    Subcommand(
      name: 'accept-eulas',
      description: 'Accept EULAs',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--eula-ids',
          description: 'The EULA ID',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'create-launch-profile',
      description: 'Create a launch profile',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ec2-subnet-ids',
          description: 'Specifies the IDs of the EC2 subnets where streaming sessions will be accessible from. These subnets must support the specified instance types',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--launch-profile-protocol-versions',
          description: 'The version number of the protocol that is used by the launch profile. The only valid version is "2021-03-31"',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name for the launch profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--stream-configuration',
          description: 'A configuration for a streaming session',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--studio-component-ids',
          description: 'Unique identifiers for a collection of studio components that can be used with this launch profile',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
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
      name: 'create-streaming-image',
      description: 'Creates a streaming image resource in a studio',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A human-readable description of the streaming image',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ec2-image-id',
          description: 'The ID of an EC2 machine image with which to create this streaming image',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A friendly name for a streaming image resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
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
      name: 'create-streaming-session',
      description: 'Creates a streaming session in a studio. After invoking this operation, you must poll GetStreamingSession until the streaming session is in the READY state',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ec2-instance-type',
          description: 'The EC2 Instance type used for the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owned-by',
          description: 'The user ID of the user that owns the streaming session. The user that owns the session will be logging into the session and interacting with the virtual workstation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--streaming-image-id',
          description: 'The ID of the streaming image',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
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
      name: 'create-streaming-session-stream',
      description: 'Creates a streaming session stream for a streaming session. After invoking this API, invoke GetStreamingSessionStream with the returned streamId to poll the resource until it is in the READY state',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--expiration-in-seconds',
          description: 'The expiration time in seconds',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The streaming session ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'create-studio',
      description: 'Create a new studio. When creating a studio, two IAM roles must be provided: the admin role and the user role. These roles are assumed by your users when they log in to the Nimble Studio portal. The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for the portal to function properly. The admin role must have the AmazonNimbleStudio-StudioAdmin managed policy attached for the portal to function properly. You may optionally specify a KMS key in the StudioEncryptionConfiguration. In Nimble Studio, resource names, descriptions, initialization scripts, and other data you provide are always encrypted at rest using an KMS key. By default, this key is owned by Amazon Web Services and managed on your behalf. You may provide your own KMS key when calling CreateStudio to encrypt this data using a key you own and manage. When providing an KMS key during studio creation, Nimble Studio creates KMS grants in your account to provide your studio user and admin roles access to these KMS keys. If you delete this grant, the studio will no longer be accessible to your portal users. If you delete the studio KMS key, your studio will no longer be accessible',
      options: [

        Option(
          name: '--admin-role-arn',
          description: 'The IAM role that studio admins will assume when logging in to the Nimble Studio portal',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'A friendly name for the studio',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-encryption-configuration',
          description: 'The studio encryption configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--studio-name',
          description: 'The studio name that is used in the URL of the Nimble Studio portal when accessed by Nimble Studio users',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--user-role-arn',
          description: 'The IAM role that studio users will assume when logging in to the Nimble Studio portal',
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
      name: 'create-studio-component',
      description: 'Creates a studio component resource',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration of the studio component, based on component type',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ec2-security-group-ids',
          description: 'The EC2 security groups that control access to the studio component',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--initialization-scripts',
          description: 'Initialization scripts for studio components',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name for the studio component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--runtime-role-arn',
          description: 'An IAM role attached to a Studio Component that gives the studio component access to Amazon Web Services resources at anytime while the instance is running',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--script-parameters',
          description: 'Parameters for the studio component scripts',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--secure-initialization-role-arn',
          description: 'An IAM role attached to Studio Component when the system initialization script runs which give the studio component access to Amazon Web Services resources when the system initialization script runs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subtype',
          description: 'The specific subtype of a studio component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The type of the studio component',
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
      name: 'delete-launch-profile',
      description: 'Permanently delete a launch profile',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-launch-profile-member',
      description: 'Delete a user from launch profile membership',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-streaming-image',
      description: 'Delete streaming image',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--streaming-image-id',
          description: 'The streaming image ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-streaming-session',
      description: 'Deletes streaming session resource. After invoking this operation, use GetStreamingSession to poll the resource until it transitions to a DELETED state. A streaming session will count against your streaming session quota until it is marked DELETED',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The streaming session ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-studio',
      description: 'Delete a studio resource',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-studio-component',
      description: 'Deletes a studio component resource',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-component-id',
          description: 'The studio component ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'delete-studio-member',
      description: 'Delete a user from studio membership',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-eula',
      description: 'Get EULA',
      options: [

        Option(
          name: '--eula-id',
          description: 'The EULA ID',
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
      name: 'get-launch-profile',
      description: 'Get a launch profile',
      options: [

        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-launch-profile-details',
      description: 'Launch profile details include the launch profile resource and summary information of resources that are used by, or available to, the launch profile. This includes the name and description of all studio components used by the launch profiles, and the name and description of streaming images that can be used with this launch profile',
      options: [

        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-launch-profile-initialization',
      description: 'Get a launch profile initialization',
      options: [

        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-protocol-versions',
          description: 'The launch profile protocol versions supported by the client',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--launch-purpose',
          description: 'The launch purpose',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--platform',
          description: 'The platform where this Launch Profile will be used, either Windows or Linux',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-launch-profile-member',
      description: 'Get a user persona in launch profile membership',
      options: [

        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-streaming-image',
      description: 'Get streaming image',
      options: [

        Option(
          name: '--streaming-image-id',
          description: 'The streaming image ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-streaming-session',
      description: 'Gets StreamingSession resource. Invoke this operation to poll for a streaming session state while creating or deleting a session',
      options: [

        Option(
          name: '--session-id',
          description: 'The streaming session ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-streaming-session-backup',
      description: 'Gets StreamingSessionBackup resource. Invoke this operation to poll for a streaming session backup while stopping a streaming session',
      options: [

        Option(
          name: '--backup-id',
          description: 'The ID of the backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-streaming-session-stream',
      description: 'Gets a StreamingSessionStream for a streaming session. Invoke this operation to poll the resource after invoking CreateStreamingSessionStream. After the StreamingSessionStream changes to the READY state, the url property will contain a stream to be used with the DCV streaming client',
      options: [

        Option(
          name: '--session-id',
          description: 'The streaming session ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--stream-id',
          description: 'The streaming session stream ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-studio',
      description: 'Get a studio resource',
      options: [

        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-studio-component',
      description: 'Gets a studio component resource',
      options: [

        Option(
          name: '--studio-component-id',
          description: 'The studio component ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'get-studio-member',
      description: 'Get a user\'s membership in a studio',
      options: [

        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'list-eula-acceptances',
      description: 'List EULA acceptances',
      options: [

        Option(
          name: '--eula-ids',
          description: 'The list of EULA IDs that have been previously accepted',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-eulas',
      description: 'List EULAs',
      options: [

        Option(
          name: '--eula-ids',
          description: 'The list of EULA IDs that should be returned',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-launch-profile-members',
      description: 'Get all users in a given launch profile membership',
      options: [

        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The max number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-launch-profiles',
      description: 'List all the launch profiles a studio',
      options: [

        Option(
          name: '--max-results',
          description: 'The max number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--states',
          description: 'Filter this request to launch profiles in any of the given states',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-streaming-images',
      description: 'List the streaming image resources available to this studio. This list will contain both images provided by Amazon Web Services, as well as streaming images that you have created in your studio',
      options: [

        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner',
          description: 'Filter this request to streaming images with the given owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-streaming-session-backups',
      description: 'Lists the backups of a streaming session in a studio',
      options: [

        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owned-by',
          description: 'The user ID of the user that owns the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-streaming-sessions',
      description: 'Lists the streaming sessions in a studio',
      options: [

        Option(
          name: '--created-by',
          description: 'Filters the request to streaming sessions created by the given user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owned-by',
          description: 'Filters the request to streaming session owned by the given user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-ids',
          description: 'Filters the request to only the provided session IDs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-studio-components',
      description: 'Lists the StudioComponents in a studio',
      options: [

        Option(
          name: '--max-results',
          description: 'The max number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--states',
          description: 'Filters the request to studio components that are in one of the given states',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--types',
          description: 'Filters the request to studio components that are of one of the given types',
          args: [
            Arg(
            name: 'list'
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-studio-members',
      description: 'Get all users in a given studio membership.   ListStudioMembers only returns admin members',
      options: [

        Option(
          name: '--max-results',
          description: 'The max number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'The size of each page to get in the AWS service call.  This\ndoes not affect the number of items returned in the command\'s\noutput.  Setting a smaller page size results in more calls to\nthe AWS service, retrieving fewer items in each call.  This can\nhelp prevent the AWS service calls from timing out.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-studios',
      description: 'List studios in your Amazon Web Services accounts in the requested Amazon Web Services Region',
      options: [

        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null if there are no more results',
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
          name: '--starting-token',
          description: 'A token to specify where to start paginating.  This is the\nNextToken from a previously truncated response.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-items',
          description: 'The total number of items to return in the command\'s output.\nIf the total number of items available is more than the value\nspecified, a NextToken is provided in the command\'s\noutput.  To resume pagination, provide the\nNextToken value in the starting-token\nargument of a subsequent command.  Do not use the\nNextToken response element directly outside of the\nAWS CLI.\nFor usage examples, see Pagination in the AWS Command Line Interface User\nGuide',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-tags-for-resource',
      description: 'Gets the tags for a resource, given its Amazon Resource Names (ARN). This operation supports ARNs for all resource types in Nimble Studio that support tags, including studio, studio component, launch profile, streaming image, and streaming session. All resources that can be tagged will contain an ARN property, so you do not have to create this ARN yourself',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource for which you want to list tags',
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
      name: 'put-launch-profile-members',
      description: 'Add/update users with given persona to launch profile membership',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The ID of the identity store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--members',
          description: 'A list of members',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'put-studio-members',
      description: 'Add/update users with given persona to studio membership',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The ID of the identity store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--members',
          description: 'A list of members',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'start-streaming-session',
      description: 'Transitions sessions from the STOPPED state into the READY state. The START_IN_PROGRESS state is the intermediate state between the STOPPED and READY states',
      options: [

        Option(
          name: '--backup-id',
          description: 'The ID of the backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The streaming session ID for the StartStreamingSessionRequest',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID for the StartStreamingSessionRequest',
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
      name: 'start-studio-sso-configuration-repair',
      description: 'Repairs the IAM Identity Center configuration for a given studio. If the studio has a valid IAM Identity Center configuration currently associated with it, this operation will fail with a validation error. If the studio does not have a valid IAM Identity Center configuration currently associated with it, then a new IAM Identity Center application is created for the studio and the studio is changed to the READY state. After the IAM Identity Center application is repaired, you must use the Amazon Nimble Studio console to add administrators and users to your studio',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'stop-streaming-session',
      description: 'Transitions sessions from the READY state into the STOPPED state. The STOP_IN_PROGRESS state is the intermediate state between the READY and STOPPED states',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The streaming session ID for the StopStreamingSessionRequest',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studioId for the StopStreamingSessionRequest',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--volume-retention-mode',
          description: 'Adds additional instructions to a streaming session stop action to either retain the EBS volumes or delete the EBS volumes',
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
      name: 'tag-resource',
      description: 'Creates tags for a resource, given its ARN',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource you want to add tags to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of labels, in the form of key-value pairs, that apply to this resource',
          args: [
            Arg(
            name: 'map'
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
      name: 'untag-resource',
      description: 'Deletes the tags for a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Identifies the Amazon Resource Name(ARN) key from which you are removing tags',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'One or more tag keys. Specify only the tag keys, not the tag values',
          args: [
            Arg(
            name: 'list'
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
      name: 'update-launch-profile',
      description: 'Update a launch profile',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-protocol-versions',
          description: 'The version number of the protocol that is used by the launch profile. The only valid version is "2021-03-31"',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name for the launch profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--stream-configuration',
          description: 'A configuration for a streaming session',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--studio-component-ids',
          description: 'Unique identifiers for a collection of studio components that can be used with this launch profile',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'update-launch-profile-member',
      description: 'Update a user persona in launch profile membership',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--launch-profile-id',
          description: 'The ID of the launch profile used to control access from the streaming session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--persona',
          description: 'The persona',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID. This currently supports a IAM Identity Center UserId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'update-streaming-image',
      description: 'Update streaming image',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name for the streaming image',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--streaming-image-id',
          description: 'The streaming image ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
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
      name: 'update-studio',
      description: 'Update a Studio resource. Currently, this operation only supports updating the displayName of your studio',
      options: [

        Option(
          name: '--admin-role-arn',
          description: 'The IAM role that Studio Admins will assume when logging in to the Nimble Studio portal',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'A friendly name for the studio',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--user-role-arn',
          description: 'The IAM role that Studio Users will assume when logging in to the Nimble Studio portal',
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
      name: 'update-studio-component',
      description: 'Updates a studio component resource',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration of the studio component, based on component type',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ec2-security-group-ids',
          description: 'The EC2 security groups that control access to the studio component',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--initialization-scripts',
          description: 'Initialization scripts for studio components',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name for the studio component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--runtime-role-arn',
          description: 'An IAM role attached to a Studio Component that gives the studio component access to Amazon Web Services resources at anytime while the instance is running',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--script-parameters',
          description: 'Parameters for the studio component scripts',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--secure-initialization-role-arn',
          description: 'An IAM role attached to Studio Component when the system initialization script runs which give the studio component access to Amazon Web Services resources when the system initialization script runs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-component-id',
          description: 'The studio component ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--studio-id',
          description: 'The studio ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subtype',
          description: 'The specific subtype of a studio component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The type of the studio component',
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
      name: 'wait',
      description: 'Wait until a particular condition is satisfied. Each subcommand polls an API until the listed requirement is met',
      subcommands: [

        Subcommand(
          name: 'launch-profile-deleted',
          description: 'Wait until a LaunchProfile is Deleted. Use this after invoking DeleteLaunchProfile It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 150 failed checks',
          options: [

            Option(
              name: '--launch-profile-id',
              description: 'The ID of the launch profile used to control access from the streaming session',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'launch-profile-ready',
          description: 'Wait until a LaunchProfile is Ready. Use this after invoking CreateLaunchProfile or UpdateLaunchProfile It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 150 failed checks',
          options: [

            Option(
              name: '--launch-profile-id',
              description: 'The ID of the launch profile used to control access from the streaming session',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-image-deleted',
          description: 'Wait until a StreamingImage Deleted. Use this after invoking DeleteStreamingImage It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [

            Option(
              name: '--streaming-image-id',
              description: 'The streaming image ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-image-ready',
          description: 'Wait until a StreamingImage is Ready. Use this after invoking CreateStreamingImage or UpdateStreamingImage It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [

            Option(
              name: '--streaming-image-id',
              description: 'The streaming image ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-session-deleted',
          description: 'Wait until a StreamingSessionDeleted. Use this after invoking DeleteStreamingSession It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 180 failed checks',
          options: [

            Option(
              name: '--session-id',
              description: 'The streaming session ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-session-ready',
          description: 'Wait until a StreamingSession is ready. Use this after invoking CreateStreamingSession, StartStreamingSession It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 180 failed checks',
          options: [

            Option(
              name: '--session-id',
              description: 'The streaming session ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-session-stopped',
          description: 'Wait until a StreamingSessionStopped. Use this after invoking StopStreamingSession It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 180 failed checks',
          options: [

            Option(
              name: '--session-id',
              description: 'The streaming session ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'streaming-session-stream-ready',
          description: 'Wait until a StreamingSessionStream is ready. Use this after invoking CreateStreamingSessionStream It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 30 failed checks',
          options: [

            Option(
              name: '--session-id',
              description: 'The streaming session ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--stream-id',
              description: 'The streaming session stream ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'studio-component-deleted',
          description: 'Wait until a StudioComponent Deleted. Use this after invoking DeleteStudioComponent It will poll every 1 seconds until a successful state has been reached. This will exit with a return code of 255 after 120 failed checks',
          options: [

            Option(
              name: '--studio-component-id',
              description: 'The studio component ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'studio-component-ready',
          description: 'Wait until a StudioComponent is Ready. Use this after invoking CreateStudioComponent or UpdateStudioComponent It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [

            Option(
              name: '--studio-component-id',
              description: 'The studio component ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'studio-deleted',
          description: 'Wait until a Studio is Deleted. Use this after invoking DeleteStudio. It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [

            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
          name: 'studio-ready',
          description: 'Wait until a Studio is Ready. Use this after invoking CreateStudio, UpdateStudio, or StartStudioSSOConfigurationRepair It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [

            Option(
              name: '--studio-id',
              description: 'The studio ID',
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
    )
  ]
);
