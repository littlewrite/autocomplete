// Auto-generated from TypeScript source: deadline.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `deadline` CLI
final FigSpec deadlineSpec = FigSpec(
  name: 'deadline',
  description: 'The Amazon Web Services Deadline Cloud API provides infrastructure and centralized management for your projects. Use the Deadline Cloud API to onboard users, assign projects, and attach permissions specific to their job function. With Deadline Cloud, content production teams can deploy resources for their workforce securely in the cloud, reducing the costs of added physical infrastructure. Keep your content production operations secure, while allowing your contributors to access the tools they need, such as scalable high-speed storage, licenses, and cost management services',
  subcommands: [
    Subcommand(
      name: 'associate-member-to-farm',
      description: 'Assigns a farm membership level to a member',
      options: [
        Option(
          name: '--farm-id',
          description: 'The ID of the farm to associate with the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The member\'s principal ID to associate with the farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-type',
          description: 'The principal type of the member to associate with the farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The identity store ID of the member to associate with the farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--membership-level',
          description: 'The principal\'s membership level for the associated farm',
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
      name: 'associate-member-to-fleet',
      description: 'Assigns a fleet membership level to a member',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the fleet to associate with the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The ID of the fleet to associate with a member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The member\'s principal ID to associate with a fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-type',
          description: 'The member\'s principal type to associate with the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The member\'s identity store ID to associate with the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--membership-level',
          description: 'The principal\'s membership level for the associated fleet',
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
      name: 'associate-member-to-job',
      description: 'Assigns a job membership level to a member',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the job to associate with the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to associate to the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to associate with the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The member\'s principal ID to associate with the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-type',
          description: 'The member\'s principal type to associate with the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The member\'s identity store ID to associate with the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--membership-level',
          description: 'The principal\'s membership level for the associated job',
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
      name: 'associate-member-to-queue',
      description: 'Assigns a queue membership level to a member',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the queue to associate with the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The ID of the queue to associate to the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The member\'s principal ID to associate with the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-type',
          description: 'The member\'s principal type to associate with the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-store-id',
          description: 'The member\'s identity store ID to associate with the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--membership-level',
          description: 'The principal\'s membership level for the associated queue',
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
      name: 'assume-fleet-role-for-read',
      description: 'Get Amazon Web Services credentials from the fleet role. The IAM permissions of the credentials are scoped down to have read-only access',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the fleet\'s farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID',
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
      name: 'assume-fleet-role-for-worker',
      description: 'Get credentials from the fleet role for a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the fleet\'s farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID that contains the worker',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The ID of the worker assuming the fleet role',
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
      name: 'assume-queue-role-for-read',
      description: 'Gets Amazon Web Services credentials from the queue role. The IAM permissions of the credentials are scoped down to have read-only access',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm containing the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID',
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
      name: 'assume-queue-role-for-user',
      description: 'Allows a user to assume a role for a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the queue that the user assumes the role for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue that the user assumes the role for',
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
      name: 'assume-queue-role-for-worker',
      description: 'Allows a worker to assume a queue role',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the worker assuming the queue role',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the worker assuming the queue role',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID of the worker assuming the queue role',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the worker assuming the queue role',
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
      name: 'batch-get-job-entity',
      description: 'Get batched job details for a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the worker that\'s fetching job details. The worker must have an assignment on a job to fetch job details',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the worker that\'s fetching job details. The worker must have an assignment on a job to fetch job details',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID of the worker containing the job details to get',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identifiers',
          description: 'The job identifiers to include within the job entity batch details',
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
      name: 'copy-job-template',
      description: 'Copies a job template to an Amazon S3 bucket',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to copy',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to copy',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to copy',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-s3-location',
          description: 'The Amazon S3 bucket name and key where you would like to add a copy of the job template',
          args: [
            Arg(
            name: 'structure'
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
      name: 'create-budget',
      description: 'Creates a budget to set spending thresholds for your rendering activity',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to include in this budget',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--usage-tracking-resource',
          description: 'The queue ID provided to this budget to track usage',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the budget.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the budget.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--approximate-dollar-limit',
          description: 'The dollar limit based on consumed usage',
          args: [
            Arg(
            name: 'float'
          )
          ]
        ),
        Option(
          name: '--actions',
          description: 'The budget actions to specify what happens when the budget runs out',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--schedule',
          description: 'The schedule to associate with this budget',
          args: [
            Arg(
            name: 'structure'
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
      name: 'create-farm',
      description: 'Creates a farm to allow space for queues and fleets. Farms are the space where the components of your renders gather and are pieced together in the cloud. Farms contain budgets and allow you to enforce permissions. Deadline Cloud farms are a useful container for large projects',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the farm.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the farm.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--kms-key-arn',
          description: 'The ARN of the KMS key to use on the farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to add to your farm. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings',
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
      name: 'create-fleet',
      description: 'Creates a fleet. Fleets gather information relating to compute, or capacity, for renders within your farms. You can choose to manage your own capacity or opt to have fleets fully managed by Deadline Cloud',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the fleet.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the fleet.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The IAM role ARN for the role that the fleet\'s workers will use',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--min-worker-count',
          description: 'The minimum number of workers for the fleet',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-worker-count',
          description: 'The maximum number of workers for the fleet',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration settings for the fleet. Customer managed fleets are self-managed. Service managed Amazon EC2 fleets are managed by Deadline Cloud',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings',
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
      name: 'create-job',
      description: 'Creates a job. A job is a set of instructions that AWS Deadline Cloud uses to schedule and run work on available workers. For more information, see Deadline Cloud jobs',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The ID of the queue that the job is submitted to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--template',
          description: 'The job template to use for this job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--template-type',
          description: 'The file type for the job template',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'The priority of the job on a scale of 0 to 100. The highest priority (first scheduled) is 100. When two jobs have the same priority, the oldest job is scheduled first',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--parameters',
          description: 'The parameters for the job',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--attachments',
          description: 'The attachments for the job. Attach files required for the job to run to a render job',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--storage-profile-id',
          description: 'The storage profile ID for the storage profile to connect to the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-task-run-status',
          description: 'The initial job status when it is created. Jobs that are created with a SUSPENDED status will not run until manually requeued',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-failed-tasks-count',
          description: 'The number of task failures before the job stops running and is marked as FAILED',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries-per-task',
          description: 'The maximum number of retries for each task',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--source-job-id',
          description: 'The job ID for the source job',
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
      name: 'create-license-endpoint',
      description: 'Creates a license endpoint to integrate your various licensed software used for rendering on Deadline Cloud',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--vpc-id',
          description: 'The VPC (virtual private cloud) ID to use with the license endpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subnet-ids',
          description: 'The subnet IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--security-group-ids',
          description: 'The security group IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings',
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
      name: 'create-monitor',
      description: 'Creates an Amazon Web Services Deadline Cloud monitor that you can use to view your farms, queues, and fleets. After you submit a job, you can track the progress of the tasks and steps that make up the job, and then download the job\'s results',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The name that you give the monitor that is displayed in the Deadline Cloud console.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--identity-center-instance-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM Identity Center instance that authenticates monitor users',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subdomain',
          description: 'The subdomain to use when creating the monitor URL. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM role that the monitor uses to connect to Deadline Cloud. Every user that signs in to the monitor using IAM Identity Center uses this role to access Deadline Cloud resources',
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
      name: 'create-queue',
      description: 'Creates a queue to coordinate the order in which jobs run on a farm. A queue can also specify where to pull resources and indicate where to output completed jobs',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the queue.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the queue.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--default-budget-action',
          description: 'The default action to take on a queue if a budget isn\'t configured',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-attachment-settings',
          description: 'The job attachment settings for the queue. These are the Amazon S3 bucket name and the Amazon S3 prefix',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The IAM role ARN that workers will use while running jobs for this queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-run-as-user',
          description: 'The jobs in the queue run as the specified POSIX user',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--required-file-system-location-names',
          description: 'The file system location name to include in the queue',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--allowed-storage-profile-ids',
          description: 'The storage profile IDs to include in the queue',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings',
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
      name: 'create-queue-environment',
      description: 'Creates an environment for a queue that defines how jobs in the queue run',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the environment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to connect the queue and environment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Sets the priority of the environments in the queue from 0 to 10,000, where 0 is the highest priority. If two environments share the same priority value, the environment created first takes higher priority',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--template-type',
          description: 'The template\'s file type, JSON or YAML',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--template',
          description: 'The environment template to use in the queue',
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
      name: 'create-queue-fleet-association',
      description: 'Creates an association between a queue and a fleet',
      options: [
        Option(
          name: '--farm-id',
          description: 'The ID of the farm that the queue and fleet belong to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID',
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
      name: 'create-storage-profile',
      description: 'Creates a storage profile that specifies the operating system, file type, and file location of resources used on a farm',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the storage profile.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--os-family',
          description: 'The type of operating system (OS) for the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--file-system-locations',
          description: 'File system paths to include in the storage profile',
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
      name: 'create-worker',
      description: 'Creates a worker. A worker tells your instance how much processing power (vCPU), and memory (GiB) you’ll need to assemble the digital assets held within a particular instance. You can specify certain instance types to use, or let the worker know which instances types to exclude',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to connect to the worker',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to connect to the worker',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--host-properties',
          description: 'The IP address and host name of the worker',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
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
      name: 'delete-budget',
      description: 'Deletes a budget',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to remove from the budget',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--budget-id',
          description: 'The budget ID of the budget to delete',
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
      name: 'delete-farm',
      description: 'Deletes a farm',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to delete',
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
      name: 'delete-fleet',
      description: 'Deletes a fleet',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to remove from the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the fleet to delete',
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
      name: 'delete-license-endpoint',
      description: 'Deletes a license endpoint',
      options: [
        Option(
          name: '--license-endpoint-id',
          description: 'The license endpoint ID of the license endpoint to delete',
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
      name: 'delete-metered-product',
      description: 'Deletes a metered product',
      options: [
        Option(
          name: '--license-endpoint-id',
          description: 'The ID of the license endpoint from which to remove the metered product',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-id',
          description: 'The product ID to remove from the license endpoint',
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
      name: 'delete-monitor',
      description: 'Removes a Deadline Cloud monitor. After you delete a monitor, you can create a new one and attach farms to the monitor',
      options: [
        Option(
          name: '--monitor-id',
          description: 'The unique identifier of the monitor to delete. This ID is returned by the CreateMonitor operation, and is included in the response to the GetMonitor operation',
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
      name: 'delete-queue',
      description: 'Deletes a queue.  You can\'t recover the jobs in a queue if you delete the queue. Deleting the queue also deletes the jobs in that queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The ID of the farm from which to remove the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue to delete',
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
      name: 'delete-queue-environment',
      description: 'Deletes a queue environment',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm from which to remove the queue environment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue environment to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-environment-id',
          description: 'The queue environment ID of the queue environment to delete',
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
      name: 'delete-queue-fleet-association',
      description: 'Deletes a queue-fleet association',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm that holds the queue-fleet association',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue-fleet association',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the queue-fleet association',
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
      name: 'delete-storage-profile',
      description: 'Deletes a storage profile',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm from which to remove the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-profile-id',
          description: 'The storage profile ID of the storage profile to delete',
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
      name: 'delete-worker',
      description: 'Deletes a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the worker to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the worker to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID of the worker to delete',
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
      name: 'disassociate-member-from-farm',
      description: 'Disassociates a member from a farm',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm to disassociate from the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'A member\'s principal ID to disassociate from a farm',
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
      name: 'disassociate-member-from-fleet',
      description: 'Disassociates a member from a fleet',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the fleet to disassociate a member from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the fleet to from which to disassociate a member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'A member\'s principal ID to disassociate from a fleet',
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
      name: 'disassociate-member-from-job',
      description: 'Disassociates a member from a job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the job to disassociate from the member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID connected to a job for which you\'re disassociating a member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to disassociate from a member in a job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'A member\'s principal ID to disassociate from a job',
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
      name: 'disassociate-member-from-queue',
      description: 'Disassociates a member from a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue to disassociate from a member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue in which you\'re disassociating from a member',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'A member\'s principal ID to disassociate from a queue',
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
      name: 'get-budget',
      description: 'Get a budget',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm connected to the budget',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--budget-id',
          description: 'The budget ID',
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
      name: 'get-farm',
      description: 'Get a farm',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm',
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
      name: 'get-fleet',
      description: 'Get a fleet',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm in the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the fleet to get',
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
      name: 'get-job',
      description: 'Gets a Deadline Cloud job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm in the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID associated with the job',
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
      name: 'get-license-endpoint',
      description: 'Gets a licence endpoint',
      options: [
        Option(
          name: '--license-endpoint-id',
          description: 'The license endpoint ID',
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
      name: 'get-monitor',
      description: 'Gets information about the specified monitor',
      options: [
        Option(
          name: '--monitor-id',
          description: 'The unique identifier for the monitor. This ID is returned by the CreateMonitor operation',
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
      name: 'get-queue',
      description: 'Gets a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm in the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue to retrieve',
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
      name: 'get-queue-environment',
      description: 'Gets a queue environment',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue environment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue environment',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-environment-id',
          description: 'The queue environment ID',
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
      name: 'get-queue-fleet-association',
      description: 'Gets a queue-fleet association',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm that contains the queue-fleet association',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue-fleet association',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID for the queue-fleet association',
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
      name: 'get-session',
      description: 'Gets a session',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The session ID',
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
      name: 'get-session-action',
      description: 'Gets a session action for the job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the session action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the session action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-action-id',
          description: 'The session action ID for the session',
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
      name: 'get-sessions-statistics-aggregation',
      description: 'Gets a set of statistics for queues or farms. Before you can call the GetSessionStatisticsAggregation operation, you must first call the StartSessionsStatisticsAggregation operation. Statistics are available for 1 hour after you call the StartSessionsStatisticsAggregation operation',
      options: [
        Option(
          name: '--farm-id',
          description: 'The identifier of the farm to include in the statistics. This should be the same as the farm ID used in the call to the StartSessionsStatisticsAggregation operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--aggregation-id',
          description: 'The identifier returned by the StartSessionsStatisticsAggregation operation that identifies the aggregated statistics',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
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
      name: 'get-step',
      description: 'Gets a step',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the step',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the step',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the step',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID',
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
      name: 'get-storage-profile',
      description: 'Gets a storage profile',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-profile-id',
          description: 'The storage profile ID',
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
      name: 'get-storage-profile-for-queue',
      description: 'Gets a storage profile for a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue in storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID the queue in the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-profile-id',
          description: 'The storage profile ID for the storage profile in the queue',
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
      name: 'get-task',
      description: 'Gets a task',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the farm connected to the task',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue connected to the task',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID of the job connected to the task',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID for the step connected to the task',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--task-id',
          description: 'The task ID',
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
      name: 'get-worker',
      description: 'Gets a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the worker',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the worker',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID',
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
      name: 'list-available-metered-products',
      description: 'A list of the available metered products',
      options: [
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-budgets',
      description: 'A list of budgets in a farm',
      options: [
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID associated with the budgets',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status to list for the budgets',
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
      name: 'list-farm-members',
      description: 'Lists the members of a farm',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-farms',
      description: 'Lists farms',
      options: [
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID of the member to list on the farm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-fleet-members',
      description: 'Lists fleet members',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-fleets',
      description: 'Lists fleets',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the fleets',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID of the members to include in the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display names of a list of fleets.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status of the fleet',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-job-members',
      description: 'Lists members on a job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the job to list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-job-parameter-definitions',
      description: 'Lists parameter definitions of a job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the job to list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-jobs',
      description: 'Lists jobs',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the jobs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal ID of the members on the jobs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-license-endpoints',
      description: 'Lists license endpoints',
      options: [
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-metered-products',
      description: 'Lists metered products',
      options: [
        Option(
          name: '--license-endpoint-id',
          description: 'The license endpoint ID to include on the list of metered products',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-monitors',
      description: 'Gets a list of your monitors in Deadline Cloud',
      options: [
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-queue-environments',
      description: 'Lists queue environments',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue environment list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue environment list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-queue-fleet-associations',
      description: 'Lists queue-fleet associations',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue-fleet association list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the queue-fleet association list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID for the queue-fleet association list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-queue-members',
      description: 'Lists the members in a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-queues',
      description: 'Lists queues',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-id',
          description: 'The principal IDs to include in the list of queues',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status of the queues listed.    ACTIVE–The queues are active.    SCHEDULING–The queues are scheduling.    SCHEDULING_BLOCKED–The queue scheduling is blocked for these queues',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-session-actions',
      description: 'Lists session actions',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the session actions list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the session actions list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the session actions list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The session ID to include on the sessions action list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--task-id',
          description: 'The task ID for the session actions list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-sessions',
      description: 'Lists sessions',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the list of sessions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the list of sessions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the list of sessions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-sessions-for-worker',
      description: 'Lists sessions for a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID for the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-step-consumers',
      description: 'Lists step consumers',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the list of step consumers',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the step consumer',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the step consumer',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-step-dependencies',
      description: 'Lists the dependencies for a step',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID for the step dependencies list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the step dependencies list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the step dependencies list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID to include on the list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-steps',
      description: 'Lists steps for a job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to include on the list of steps',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to include on the list of steps',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to include on the list of steps',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-storage-profiles',
      description: 'Lists storage profiles',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-storage-profiles-for-queue',
      description: 'Lists storage profiles for a queue',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the queue\'s storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID for the storage profile',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-tags-for-resource',
      description: 'Lists tags for a resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The resource ARN to list tags for',
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
      name: 'list-tasks',
      description: 'Lists tasks for a job',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID connected to the tasks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID connected to the tasks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the tasks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID for the tasks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'list-workers',
      description: 'Lists workers',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID connected to the workers',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID of the workers',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next set of results, or null to start from the beginning',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages',
          args: [
            Arg(
            name: 'integer'
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
      name: 'put-metered-product',
      description: 'Adds a metered product',
      options: [
        Option(
          name: '--license-endpoint-id',
          description: 'The license endpoint ID to add to the metered product',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-id',
          description: 'The product ID to add to the metered product',
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
      name: 'search-jobs',
      description: 'Searches for jobs',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-ids',
          description: 'The queue ID to use in the job search',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filter-expressions',
          description: 'The filter expression, AND or OR, to use when searching among a group of search strings in a resource. You can use two groupings per search each within parenthesis ()',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort-expressions',
          description: 'The search terms for a resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--item-offset',
          description: 'Defines how far into the scrollable list to start the return of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'Specifies the number of items per page for the resource',
          args: [
            Arg(
            name: 'integer'
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
      name: 'search-steps',
      description: 'Searches for steps',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to use for the step search',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-ids',
          description: 'The queue IDs in the step search',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to use in the step search',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter-expressions',
          description: 'The filter expression, AND or OR, to use when searching among a group of search strings in a resource. You can use two groupings per search each within parenthesis ()',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort-expressions',
          description: 'The search terms for a resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--item-offset',
          description: 'Defines how far into the scrollable list to start the return of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'Specifies the number of items per page for the resource',
          args: [
            Arg(
            name: 'integer'
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
      name: 'search-tasks',
      description: 'Searches for tasks',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID of the task',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-ids',
          description: 'The queue IDs to include in the search',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID for the task search',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter-expressions',
          description: 'The filter expression, AND or OR, to use when searching among a group of search strings in a resource. You can use two groupings per search each within parenthesis ()',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort-expressions',
          description: 'The search terms for a resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--item-offset',
          description: 'Defines how far into the scrollable list to start the return of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'Specifies the number of items per page for the resource',
          args: [
            Arg(
            name: 'integer'
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
      name: 'search-workers',
      description: 'Searches for workers',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID in the workers search',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-ids',
          description: 'The fleet ID of the workers to search for',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filter-expressions',
          description: 'The filter expression, AND or OR, to use when searching among a group of search strings in a resource. You can use two groupings per search each within parenthesis ()',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort-expressions',
          description: 'The search terms for a resource',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--item-offset',
          description: 'Defines how far into the scrollable list to start the return of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--page-size',
          description: 'Specifies the number of items per page for the resource',
          args: [
            Arg(
            name: 'integer'
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
      name: 'start-sessions-statistics-aggregation',
      description: 'Starts an asynchronous request for getting aggregated statistics about queues and farms. Get the statistics using the GetSessionsStatisticsAggregation operation. You can only have one running aggregation for your Deadline Cloud farm. Call the GetSessionsStatisticsAggregation operation and check the status field to see if an aggregation is running. Statistics are available for 1 hour after you call the StartSessionsStatisticsAggregation operation',
      options: [
        Option(
          name: '--farm-id',
          description: 'The identifier of the farm that contains queues or fleets to return statistics for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-ids',
          description: 'A list of fleet IDs or queue IDs to gather statistics for',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The Linux timestamp of the date and time that the statistics start',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'The Linux timestamp of the date and time that the statistics end',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--timezone',
          description: 'The timezone to use for the statistics. Use UTC notation such as "UTC+8."',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--period',
          description: 'The period to aggregate the statistics',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--group-by',
          description: 'The field to use to group the statistics',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--statistics',
          description: 'One to four statistics to return',
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
      name: 'tag-resource',
      description: 'Tags a resource using the resource\'s ARN and desired tags',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The ARN of the resource to apply tags to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings',
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
      description: 'Removes a tag from a resource using the resource\'s ARN and tag to remove',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The ARN of the resource to remove the tag from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'They keys of the tag',
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
      name: 'update-budget',
      description: 'Updates a budget that sets spending thresholds for rendering activity',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the budget to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--budget-id',
          description: 'The budget ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the budget to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the budget to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Updates the status of the budget.    ACTIVE–The budget is being evaluated.    INACTIVE–The budget is inactive. This can include Expired, Canceled, or deleted Deleted statuses',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--approximate-dollar-limit',
          description: 'The dollar limit to update on the budget. Based on consumed usage',
          args: [
            Arg(
            name: 'float'
          )
          ]
        ),
        Option(
          name: '--actions-to-add',
          description: 'The budget actions to add. Budget actions specify what happens when the budget runs out',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--actions-to-remove',
          description: 'The budget actions to remove from the budget',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--schedule',
          description: 'The schedule to update',
          args: [
            Arg(
            name: 'structure'
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
      name: 'update-farm',
      description: 'Updates a farm',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the farm to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the farm to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
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
      name: 'update-fleet',
      description: 'Updates a fleet',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the fleet to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the fleet to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The IAM role ARN that the fleet\'s workers assume while running jobs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--min-worker-count',
          description: 'The minimum number of workers in the fleet',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-worker-count',
          description: 'The maximum number of workers in the fleet',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The fleet configuration to update',
          args: [
            Arg(
            name: 'structure'
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
      name: 'update-job',
      description: 'Updates a job.  When you change the status of the job to ARCHIVED, the job can\'t be scheduled or archived.  An archived jobs and its steps and tasks are deleted after 120 days. The job can\'t be recovered',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the job to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the job to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-task-run-status',
          description: 'The task status to update the job\'s tasks to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'The job priority to update',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-failed-tasks-count',
          description: 'The number of task failures before the job stops running and is marked as FAILED',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries-per-task',
          description: 'The maximum number of retries for a job',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--lifecycle-status',
          description: 'The status of a job in its lifecycle. When you change the status of the job to ARCHIVED, the job can\'t be scheduled or archived.  An archived jobs and its steps and tasks are deleted after 120 days. The job can\'t be recovered',
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
      name: 'update-monitor',
      description: 'Modifies the settings for a Deadline Cloud monitor. You can modify one or all of the settings when you call UpdateMonitor',
      options: [
        Option(
          name: '--monitor-id',
          description: 'The unique identifier of the monitor to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subdomain',
          description: 'The new value of the subdomain to use when forming the monitor URL',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The new value to use for the monitor\'s display name.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the new IAM role to use with the monitor',
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
      name: 'update-queue',
      description: 'Updates a queue',
      options: [
        Option(
          name: '--client-token',
          description: 'The idempotency token to update in the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update in the queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the queue to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the queue to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--default-budget-action',
          description: 'The default action to take for a queue update if a budget isn\'t configured',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-attachment-settings',
          description: 'The job attachment settings to update for the queue',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The IAM role ARN that\'s used to run jobs from this queue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-run-as-user',
          description: 'Update the jobs in the queue to run as a specified POSIX user',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--required-file-system-location-names-to-add',
          description: 'The required file system location names to add to the queue',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--required-file-system-location-names-to-remove',
          description: 'The required file system location names to remove from the queue',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--allowed-storage-profile-ids-to-add',
          description: 'The storage profile IDs to add',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--allowed-storage-profile-ids-to-remove',
          description: 'The storage profile ID to remove',
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
      name: 'update-queue-environment',
      description: 'Updates the queue environment',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID of the queue environment to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID of the queue environment to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-environment-id',
          description: 'The queue environment ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'The priority to update',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--template-type',
          description: 'The template type to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--template',
          description: 'The template to update',
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
      name: 'update-queue-fleet-association',
      description: 'Updates a queue-fleet association',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status to update',
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
      name: 'update-session',
      description: 'Updates a session',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update in the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to update in the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to update in the session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-id',
          description: 'The session ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-lifecycle-status',
          description: 'The life cycle status to update in the session',
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
      name: 'update-step',
      description: 'Updates a step',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-task-run-status',
          description: 'The task status to update the step\'s tasks to',
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
      name: 'update-storage-profile',
      description: 'Updates a storage profile',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-profile-id',
          description: 'The storage profile ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--display-name',
          description: 'The display name of the storage profile to update.  This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--os-family',
          description: 'The OS system to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--file-system-locations-to-add',
          description: 'The file system location names to add',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--file-system-locations-to-remove',
          description: 'The file system location names to remove',
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
      name: 'update-task',
      description: 'Updates a task',
      options: [
        Option(
          name: '--client-token',
          description: 'The unique token which the server uses to recognize retries of the same request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--queue-id',
          description: 'The queue ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--job-id',
          description: 'The job ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--step-id',
          description: 'The step ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--task-id',
          description: 'The task ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-run-status',
          description: 'The run status with which to start the task',
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
      name: 'update-worker',
      description: 'Updates a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The worker status to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'The worker capabilities to update',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--host-properties',
          description: 'The host properties to update',
          args: [
            Arg(
            name: 'structure'
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
      name: 'update-worker-schedule',
      description: 'Updates the schedule for a worker',
      options: [
        Option(
          name: '--farm-id',
          description: 'The farm ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fleet-id',
          description: 'The fleet ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--worker-id',
          description: 'The worker ID to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--updated-session-actions',
          description: 'The session actions associated with the worker schedule to update',
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
      name: 'wait',
      description: 'Wait until a particular condition is satisfied. Each subcommand polls an API until the listed requirement is met',
      subcommands: [
        Subcommand(
          name: 'fleet-active',
          description: 'Wait until a Fleet is activated. Use this after invoking CreateFleet or UpdateFleet. It will poll every 5 seconds until a successful state has been reached. This will exit with a return code of 255 after 180 failed checks',
          options: [
            Option(
              name: '--farm-id',
              description: 'The farm ID of the farm in the fleet',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--fleet-id',
              description: 'The fleet ID of the fleet to get',
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
          name: 'job-create-complete',
          description: 'Wait until a Job is created. Use this after invoking CreateJob. It will poll every 1 seconds until a successful state has been reached. This will exit with a return code of 255 after 120 failed checks',
          options: [
            Option(
              name: '--farm-id',
              description: 'The farm ID of the farm in the job',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--job-id',
              description: 'The job ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--queue-id',
              description: 'The queue ID associated with the job',
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
          name: 'license-endpoint-deleted',
          description: 'Wait until a LicenseEndpoint is Deleted. Use this after invoking DeleteLicenseEndpoint. It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 234 failed checks',
          options: [
            Option(
              name: '--license-endpoint-id',
              description: 'The license endpoint ID',
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
          name: 'license-endpoint-valid',
          description: 'Wait until a LicenseEndpoint is Ready. Use this after invoking CreateLicenseEndpoint. It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 114 failed checks',
          options: [
            Option(
              name: '--license-endpoint-id',
              description: 'The license endpoint ID',
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
          name: 'queue-fleet-association-stopped',
          description: 'Wait until a QueueFleetAssociation is stopped. Use this after setting the status to STOP_SCHEDULING_AND_COMPLETE_TASKS or STOP_SCHEDULING_AND_CANCEL_TASKS to wait for a QueueFleetAssociation to reach STOPPED It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [
            Option(
              name: '--farm-id',
              description: 'The farm ID of the farm that contains the queue-fleet association',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--queue-id',
              description: 'The queue ID for the queue-fleet association',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--fleet-id',
              description: 'The fleet ID for the queue-fleet association',
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
          name: 'queue-scheduling',
          description: 'Wait until JMESPath query status returns SCHEDULING when polling with ``get-queue``. It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 70 failed checks',
          options: [
            Option(
              name: '--farm-id',
              description: 'The farm ID of the farm in the queue',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--queue-id',
              description: 'The queue ID for the queue to retrieve',
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
          name: 'queue-scheduling-blocked',
          description: 'Wait until JMESPath query status returns SCHEDULING_BLOCKED when polling with ``get-queue``. It will poll every 10 seconds until a successful state has been reached. This will exit with a return code of 255 after 30 failed checks',
          options: [
            Option(
              name: '--farm-id',
              description: 'The farm ID of the farm in the queue',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--queue-id',
              description: 'The queue ID for the queue to retrieve',
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
