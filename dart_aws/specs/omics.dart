// Auto-generated from TypeScript source: omics.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `omics` CLI
final FigSpec omicsSpec = FigSpec(
  name: 'omics',
  description: 'This is the AWS HealthOmics API Reference. For an introduction to the service, see What is AWS HealthOmics? in the AWS HealthOmics User Guide',
  subcommands: [

    Subcommand(
      name: 'abort-multipart-read-set-upload',
      description: 'Stops a multipart upload',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The sequence store ID for the store involved in the multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'The ID for the multipart upload',
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
      name: 'accept-share',
      description: 'Accept a resource share request',
      options: [

        Option(
          name: '--share-id',
          description: 'The ID of the resource share',
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
      name: 'batch-delete-read-set',
      description: 'Deletes one or more read sets',
      options: [

        Option(
          name: '--ids',
          description: 'The read sets\' IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The read sets\' sequence store ID',
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
      name: 'cancel-annotation-import-job',
      description: 'Cancels an annotation import job',
      options: [

        Option(
          name: '--job-id',
          description: 'The job\'s ID',
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
      name: 'cancel-run',
      description: 'Cancels a run',
      options: [

        Option(
          name: '--id',
          description: 'The run\'s ID',
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
      name: 'cancel-variant-import-job',
      description: 'Cancels a variant import job',
      options: [

        Option(
          name: '--job-id',
          description: 'The job\'s ID',
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
      name: 'complete-multipart-read-set-upload',
      description: 'Concludes a multipart upload once you have uploaded all the components',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The sequence store ID for the store involved in the multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'The ID for the multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parts',
          description: 'The individual uploads or parts of a multipart upload',
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
      name: 'create-annotation-store',
      description: 'Creates an annotation store',
      options: [

        Option(
          name: '--reference',
          description: 'The genome reference for the store\'s annotations',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the store',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--version-name',
          description: 'The name given to an annotation store version to distinguish it from other versions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sse-config',
          description: 'Server-side encryption (SSE) settings for the store',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--store-format',
          description: 'The annotation file format of the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--store-options',
          description: 'File parsing options for the annotation store',
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
      name: 'create-annotation-store-version',
      description: 'Creates a new version of an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'The name of an annotation store version from which versions are being created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-name',
          description: 'The name given to an annotation store version to distinguish it from other versions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of an annotation store version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-options',
          description: 'The options for an annotation store version',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Any tags added to annotation store version',
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
      name: 'create-multipart-read-set-upload',
      description: 'Begins a multipart read set upload',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The sequence store ID for the store that is the destination of the multipart uploads',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'An idempotency token that can be used to avoid triggering multiple multipart uploads',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-file-type',
          description: 'The type of file being uploaded',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subject-id',
          description: 'The source\'s subject ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sample-id',
          description: 'The source\'s sample ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generated-from',
          description: 'Where the source originated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-arn',
          description: 'The ARN of the reference',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the read set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the read set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Any tags to add to the read set',
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
      name: 'create-reference-store',
      description: 'Creates a reference store',
      options: [

        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sse-config',
          description: 'Server-side encryption (SSE) settings for the store',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the store',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that requests don\'t run multiple times, specify a unique token for each request',
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
      name: 'create-run-cache',
      description: 'You can create a run cache to save the task outputs from completed tasks in a run for a private workflow. Subsequent runs use the task outputs from the cache, rather than computing the task outputs again. You specify an Amazon S3 location where HealthOmics saves the cached data. This data must be immediately accessible (not in an archived state). For more information, see Creating a run cache in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--cache-behavior',
          description: 'Default cache behavior for runs that use this cache. Supported values are:  CACHE_ON_FAILURE: Caches task outputs from completed tasks for runs that fail. This setting is useful if you\'re debugging a workflow that fails after several tasks completed successfully. The subsequent run uses the cache outputs for previously-completed tasks if the task definition, inputs, and container in ECR are identical to the prior run.  CACHE_ALWAYS: Caches task outputs from completed tasks for all runs. This setting is useful in development mode, but do not use it in a production setting. If you don\'t specify a value, the default behavior is CACHE_ON_FAILURE. When you start a run that uses this cache, you can override the default cache behavior. For more information, see Run cache behavior in the AWS HealthOmics User Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cache-s3-location',
          description: 'Specify the S3 location for storing the cached task outputs. This data must be immediately accessible (not in an archived state)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Enter a description of the run cache',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Enter a user-friendly name for the run cache',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--request-id',
          description: 'A unique request token, to ensure idempotency. If you don\'t specify a token, HealthOmics automatically generates a universally unique identifier (UUID) for the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Specify one or more tags to associate with this run cache',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--cache-bucket-owner-id',
          description: 'The AWS account ID of the expected owner of the S3 bucket for the run cache. If not provided, your account ID is set as the owner of the bucket',
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
      name: 'create-run-group',
      description: 'You can optionally create a run group to limit the compute resources for the runs that you add to the group',
      options: [

        Option(
          name: '--name',
          description: 'A name for the group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-cpus',
          description: 'The maximum number of CPUs that can run concurrently across all active runs in the run group',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-runs',
          description: 'The maximum number of runs that can be running at the same time',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-duration',
          description: 'The maximum time for each run (in minutes). If a run exceeds the maximum run time, the run fails automatically',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the group',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--request-id',
          description: 'To ensure that requests don\'t run multiple times, specify a unique ID for each request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-gpus',
          description: 'The maximum number of GPUs that can run concurrently across all active runs in the run group',
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
      name: 'create-sequence-store',
      description: 'Creates a sequence store',
      options: [

        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sse-config',
          description: 'Server-side encryption (SSE) settings for the store',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the store',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that requests don\'t run multiple times, specify a unique token for each request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fallback-location',
          description: 'An S3 location that is used to store files that have failed a direct upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--e-tag-algorithm-family',
          description: 'The ETag algorithm family to use for ingested read sets',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--propagated-set-level-tags',
          description: 'The tags keys to propagate to the S3 objects associated with read sets in the sequence store',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--s3-access-config',
          description: 'S3 access configuration parameters',
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
      name: 'create-share',
      description: 'Creates a cross-account shared resource. The resource owner makes an offer to share the resource with the principal subscriber (an AWS user with a different account than the resource owner). The following resources support cross-account sharing:   HealthOmics variant stores   HealthOmics annotation stores   Private workflows',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the resource to be shared',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principal-subscriber',
          description: 'The principal subscriber is the account being offered shared access to the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--share-name',
          description: 'A name that the owner defines for the share',
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
      name: 'create-variant-store',
      description: 'Creates a variant store',
      options: [

        Option(
          name: '--reference',
          description: 'The genome reference for the store\'s variants',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the store',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--sse-config',
          description: 'Server-side encryption (SSE) settings for the store',
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
      name: 'create-workflow',
      description: 'Creates a workflow',
      options: [

        Option(
          name: '--name',
          description: 'A name for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--engine',
          description: 'An engine for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--definition-zip',
          description: 'A ZIP archive for the workflow',
          args: [
            Arg(
            name: 'blob'
          )
          ]
        ),
        Option(
          name: '--definition-uri',
          description: 'The URI of a definition for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--main',
          description: 'The path of the main definition file for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--parameter-template',
          description: 'A parameter template for the workflow',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--storage-capacity',
          description: 'The default storage capacity for the workflow runs, in gibibytes',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the workflow',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--request-id',
          description: 'To ensure that requests don\'t run multiple times, specify a unique ID for each request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--accelerators',
          description: 'The computational accelerator specified to run the workflow',
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
      name: 'delete-annotation-store',
      description: 'Deletes an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'The store\'s name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Whether to force deletion'
        ),
        Option(
          name: '--no-force',
          description: 'Whether to force deletion'
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
      name: 'delete-annotation-store-versions',
      description: 'Deletes one or multiple versions of an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'The name of the annotation store from which versions are being deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--versions',
          description: 'The versions of an annotation store to be deleted',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Forces the deletion of an annotation store version when imports are in-progress'
        ),
        Option(
          name: '--no-force',
          description: 'Forces the deletion of an annotation store version when imports are in-progress'
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
      name: 'delete-reference',
      description: 'Deletes a genome reference',
      options: [

        Option(
          name: '--id',
          description: 'The reference\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-store-id',
          description: 'The reference\'s store ID',
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
      name: 'delete-reference-store',
      description: 'Deletes a genome reference store',
      options: [

        Option(
          name: '--id',
          description: 'The store\'s ID',
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
      name: 'delete-run',
      description: 'Deletes a workflow run',
      options: [

        Option(
          name: '--id',
          description: 'The run\'s ID',
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
      name: 'delete-run-cache',
      description: 'Delete a run cache. This action removes the cache metadata stored in the service account, but doesn\'t delete the data in Amazon S3. You can access the cache data in Amazon S3, for inspection or to troubleshoot issues. You can remove old cache data using standard S3 Delete operations.  For more information, see Deleting a run cache in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--id',
          description: 'Run cache identifier for the cache you want to delete',
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
      name: 'delete-run-group',
      description: 'Deletes a workflow run group',
      options: [

        Option(
          name: '--id',
          description: 'The run group\'s ID',
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
      name: 'delete-s3-access-policy',
      description: 'Deletes an access policy for the specified store',
      options: [

        Option(
          name: '--s3-access-point-arn',
          description: 'The S3 access point ARN that has the access policy',
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
      name: 'delete-sequence-store',
      description: 'Deletes a sequence store',
      options: [

        Option(
          name: '--id',
          description: 'The sequence store\'s ID',
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
      name: 'delete-share',
      description: 'Deletes a resource share. If you are the resource owner, the subscriber will no longer have access to the shared resource. If you are the subscriber, this operation deletes your access to the share',
      options: [

        Option(
          name: '--share-id',
          description: 'The ID for the resource share to be deleted',
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
      name: 'delete-variant-store',
      description: 'Deletes a variant store',
      options: [

        Option(
          name: '--name',
          description: 'The store\'s name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Whether to force deletion'
        ),
        Option(
          name: '--no-force',
          description: 'Whether to force deletion'
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
      name: 'delete-workflow',
      description: 'Deletes a workflow',
      options: [

        Option(
          name: '--id',
          description: 'The workflow\'s ID',
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
      name: 'get-annotation-import-job',
      description: 'Gets information about an annotation import job',
      options: [

        Option(
          name: '--job-id',
          description: 'The job\'s ID',
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
      name: 'get-annotation-store',
      description: 'Gets information about an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'The store\'s name',
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
      name: 'get-annotation-store-version',
      description: 'Retrieves the metadata for an annotation store version',
      options: [

        Option(
          name: '--name',
          description: 'The name given to an annotation store version to distinguish it from others',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-name',
          description: 'The name given to an annotation store version to distinguish it from others',
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
      name: 'get-read-set',
      description: 'Gets a file from a read set',
      options: [

        Option(
          name: '--id',
          description: 'The read set\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--file',
          description: 'The file to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--part-number',
          description: 'The part number to retrieve',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: 'outfile',
          description: 'Filename where the content will be saved',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-read-set-activation-job',
      description: 'Gets information about a read set activation job',
      options: [

        Option(
          name: '--id',
          description: 'The job\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The job\'s sequence store ID',
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
      name: 'get-read-set-export-job',
      description: 'Gets information about a read set export job',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The job\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The job\'s ID',
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
      name: 'get-read-set-import-job',
      description: 'Gets information about a read set import job',
      options: [

        Option(
          name: '--id',
          description: 'The job\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The job\'s sequence store ID',
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
      name: 'get-read-set-metadata',
      description: 'Gets details about a read set',
      options: [

        Option(
          name: '--id',
          description: 'The read set\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
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
      name: 'get-reference',
      description: 'Gets a reference file',
      options: [

        Option(
          name: '--id',
          description: 'The reference\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-store-id',
          description: 'The reference\'s store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--range',
          description: 'The range to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--part-number',
          description: 'The part number to retrieve',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--file',
          description: 'The file to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: 'outfile',
          description: 'Filename where the content will be saved',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-reference-import-job',
      description: 'Gets information about a reference import job',
      options: [

        Option(
          name: '--id',
          description: 'The job\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-store-id',
          description: 'The job\'s reference store ID',
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
      name: 'get-reference-metadata',
      description: 'Gets information about a genome reference\'s metadata',
      options: [

        Option(
          name: '--id',
          description: 'The reference\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-store-id',
          description: 'The reference\'s reference store ID',
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
      name: 'get-reference-store',
      description: 'Gets information about a reference store',
      options: [

        Option(
          name: '--id',
          description: 'The store\'s ID',
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
      name: 'get-run',
      description: 'Gets information about a workflow run. If a workflow is shared with you, you cannot export information about the run. HealthOmics stores a fixed number of runs that are available to the console and API. If GetRun doesn\'t return the requested run, you can find run logs for all runs in the CloudWatch logs. For more information about viewing the run logs, see CloudWatch logs in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--id',
          description: 'The run\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--export',
          description: 'The run\'s export format',
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
      name: 'get-run-cache',
      description: 'Retrieve the details for the specified run cache. For more information, see Call caching for HealthOmics runs in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--id',
          description: 'The identifier of the run cache to retrieve',
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
      name: 'get-run-group',
      description: 'Gets information about a workflow run group',
      options: [

        Option(
          name: '--id',
          description: 'The group\'s ID',
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
      name: 'get-run-task',
      description: 'Gets information about a workflow run task',
      options: [

        Option(
          name: '--id',
          description: 'The workflow run ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--task-id',
          description: 'The task\'s ID',
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
      name: 'get-s3-access-policy',
      description: 'Retrieves details about an access policy on a given store',
      options: [

        Option(
          name: '--s3-access-point-arn',
          description: 'The S3 access point ARN that has the access policy',
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
      name: 'get-sequence-store',
      description: 'Gets information about a sequence store',
      options: [

        Option(
          name: '--id',
          description: 'The store\'s ID',
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
      name: 'get-share',
      description: 'Retrieves the metadata for the specified resource share',
      options: [

        Option(
          name: '--share-id',
          description: 'The ID of the share',
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
      name: 'get-variant-import-job',
      description: 'Gets information about a variant import job',
      options: [

        Option(
          name: '--job-id',
          description: 'The job\'s ID',
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
      name: 'get-variant-store',
      description: 'Gets information about a variant store',
      options: [

        Option(
          name: '--name',
          description: 'The store\'s name',
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
      name: 'get-workflow',
      description: 'Gets information about a workflow. If a workflow is shared with you, you cannot export the workflow',
      options: [

        Option(
          name: '--id',
          description: 'The workflow\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The workflow\'s type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--export',
          description: 'The export format for the workflow',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--workflow-owner-id',
          description: 'The ID of the workflow owner',
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
      name: 'list-annotation-import-jobs',
      description: 'Retrieves a list of annotation import jobs',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'IDs of annotation import jobs to retrieve',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specifies the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-annotation-store-versions',
      description: 'Lists the versions of an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'The name of an annotation store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of annotation store versions to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specifies the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list of annotation store versions',
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
      name: 'list-annotation-stores',
      description: 'Retrieves a list of annotation stores',
      options: [

        Option(
          name: '--ids',
          description: 'IDs of stores to list',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of stores to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-multipart-read-set-uploads',
      description: 'Lists multipart read set uploads and for in progress uploads. Once the upload is completed, a read set is created and the upload will no longer be returned in the response',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The Sequence Store ID used for the multipart uploads',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of multipart uploads returned in a page',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results',
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
      name: 'list-read-set-activation-jobs',
      description: 'Retrieves a list of read set activation jobs',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of read set activation jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-read-set-export-jobs',
      description: 'Retrieves a list of read set export jobs',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The jobs\' sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-read-set-import-jobs',
      description: 'Retrieves a list of read set import jobs',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sequence-store-id',
          description: 'The jobs\' sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-read-set-upload-parts',
      description: 'This operation will list all parts in a requested multipart upload for a sequence store',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The Sequence Store ID used for the multipart uploads',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'The ID for the initiated multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--part-source',
          description: 'The source file for the upload part',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of read set upload parts returned in a page',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Attributes used to filter for a specific subset of read set part uploads',
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
      name: 'list-read-sets',
      description: 'Retrieves a list of read sets',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The jobs\' sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of read sets to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-reference-import-jobs',
      description: 'Retrieves a list of reference import jobs',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--reference-store-id',
          description: 'The job\'s reference store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-reference-stores',
      description: 'Retrieves a list of reference stores',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of stores to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-references',
      description: 'Retrieves a list of references',
      options: [

        Option(
          name: '--reference-store-id',
          description: 'The references\' reference store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of references to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-run-caches',
      description: 'Retrieves a list of your run caches',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return',
          args: [
            Arg(
            name: 'integer'
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
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
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
      name: 'list-run-groups',
      description: 'Retrieves a list of run groups',
      options: [

        Option(
          name: '--name',
          description: 'The run groups\' name',
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
          name: '--max-results',
          description: 'The maximum number of run groups to return in one page of results',
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
      name: 'list-run-tasks',
      description: 'Retrieves a list of tasks for a run',
      options: [

        Option(
          name: '--id',
          description: 'The run\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Filter the list by status',
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
          name: '--max-results',
          description: 'The maximum number of run tasks to return in one page of results',
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
      name: 'list-runs',
      description: 'Retrieves a list of runs. HealthOmics stores a fixed number of runs that are available to the console and API. If the ListRuns response doesn\'t include specific runs that you expected, you can find run logs for all runs in the CloudWatch logs. For more information about viewing the run logs, see CloudWatch logs in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--name',
          description: 'Filter the list by run name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-group-id',
          description: 'Filter the list by run group ID',
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
          name: '--max-results',
          description: 'The maximum number of runs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status of a run',
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
      name: 'list-sequence-stores',
      description: 'Retrieves a list of sequence stores',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of stores to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-shares',
      description: 'Retrieves the resource shares associated with an account. Use the filter parameter to retrieve a specific subset of the shares',
      options: [

        Option(
          name: '--resource-owner',
          description: 'The account that owns the resource shares',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'Attributes that you use to filter for a specific subset of resource shares',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of shares to return in one page of results',
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
      description: 'Retrieves a list of tags for a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s ARN',
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
      name: 'list-variant-import-jobs',
      description: 'Retrieves a list of variant import jobs',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of import jobs to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'A list of job IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-variant-stores',
      description: 'Retrieves a list of variant stores',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of stores to return in one page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--ids',
          description: 'A list of store IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token from a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filter',
          description: 'A filter to apply to the list',
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
      name: 'list-workflows',
      description: 'Retrieves a list of workflows',
      options: [

        Option(
          name: '--type',
          description: 'Filter the list by workflow type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Filter the list by workflow name',
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
          name: '--max-results',
          description: 'The maximum number of workflows to return in one page of results',
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
      name: 'put-s3-access-policy',
      description: 'Adds an access policy to the specified store',
      options: [

        Option(
          name: '--s3-access-point-arn',
          description: 'The S3 access point ARN where you want to put the access policy',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--s3-access-policy',
          description: 'The resource policy that controls S3 access to the store',
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
      name: 'start-annotation-import-job',
      description: 'Starts an annotation import job',
      options: [

        Option(
          name: '--destination-name',
          description: 'A destination annotation store for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--items',
          description: 'Items to import',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--version-name',
          description: 'The name of the annotation store version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--format-options',
          description: 'Formatting options for the annotation file',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--run-left-normalization',
          description: 'The job\'s left normalization setting'
        ),
        Option(
          name: '--no-run-left-normalization',
          description: 'The job\'s left normalization setting'
        ),
        Option(
          name: '--annotation-fields',
          description: 'The annotation schema generated by the parsed annotation data',
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
      name: 'start-read-set-activation-job',
      description: 'Activates an archived read set. To reduce storage charges, Amazon Omics archives unused read sets after 30 days',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that jobs don\'t run multiple times, specify a unique token for each job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sources',
          description: 'The job\'s source files',
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
      name: 'start-read-set-export-job',
      description: 'Exports a read set to Amazon S3',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--destination',
          description: 'A location for exported files in Amazon S3',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that jobs don\'t run multiple times, specify a unique token for each job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sources',
          description: 'The job\'s source files',
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
      name: 'start-read-set-import-job',
      description: 'Starts a read set import job',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The read set\'s sequence store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that jobs don\'t run multiple times, specify a unique token for each job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sources',
          description: 'The job\'s source files',
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
      name: 'start-reference-import-job',
      description: 'Starts a reference import job',
      options: [

        Option(
          name: '--reference-store-id',
          description: 'The job\'s reference store ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that jobs don\'t run multiple times, specify a unique token for each job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sources',
          description: 'The job\'s source files',
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
      name: 'start-run',
      description: 'Starts a workflow run. To duplicate a run, specify the run\'s ID and a role ARN. The remaining parameters are copied from the previous run. StartRun will not support re-run for a workflow that is shared with you. HealthOmics stores a fixed number of runs that are available to the console and API. By default, HealthOmics doesn\'t any remove any runs. If HealthOmics reaches the maximum number of runs, you must manually remove runs. To have older runs removed automatically, set the retention mode to REMOVE. By default, the run uses STATIC storage. For STATIC storage, set the storageCapacity field. You can set the storage type to DYNAMIC. You do not set storageCapacity, because HealthOmics dynamically scales the storage up or down as required. For more information about static and dynamic storage, see Running workflows in the AWS HealthOmics User Guide',
      options: [

        Option(
          name: '--workflow-id',
          description: 'The run\'s workflow ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workflow-type',
          description: 'The run\'s workflow type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-id',
          description: 'The ID of a run to duplicate',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cache-id',
          description: 'Identifier of the cache associated with this run. If you don\'t specify a cache ID, no task outputs are cached for this run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cache-behavior',
          description: 'The cache behavior for the run. You specify this value if you want to override the default behavior for the cache. You had set the default value when you created the cache. For more information, see Run cache behavior in the AWS HealthOmics User Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-group-id',
          description: 'The run\'s group ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'A priority for the run',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--parameters',
          description: 'Parameters for the run',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--storage-capacity',
          description: 'A storage capacity for the run in gibibytes. This field is not required if the storage type is dynamic (the system ignores any value that you enter)',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--output-uri',
          description: 'An output URI for the run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-level',
          description: 'A log level for the run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the run',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--request-id',
          description: 'To ensure that requests don\'t run multiple times, specify a unique ID for each request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--retention-mode',
          description: 'The retention mode for the run. The default value is RETAIN.  HealthOmics stores a fixed number of runs that are available to the console and API. In the default mode (RETAIN), you need to remove runs manually when the number of run exceeds the maximum. If you set the retention mode to REMOVE, HealthOmics automatically removes runs (that have mode set to REMOVE) when the number of run exceeds the maximum. All run logs are available in CloudWatch logs, if you need information about a run that is no longer available to the API. For more information about retention mode, see Specifying run retention mode in the AWS HealthOmics User Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--storage-type',
          description: 'The run\'s storage type. By default, the run uses STATIC storage type, which allocates a fixed amount of storage. If you set the storage type to DYNAMIC, HealthOmics dynamically scales the storage up or down, based on file system utilization',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workflow-owner-id',
          description: 'The ID of the workflow owner',
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
      name: 'start-variant-import-job',
      description: 'Starts a variant import job',
      options: [

        Option(
          name: '--destination-name',
          description: 'The destination variant store for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'A service role for the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--items',
          description: 'Items to import',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--run-left-normalization',
          description: 'The job\'s left normalization setting'
        ),
        Option(
          name: '--no-run-left-normalization',
          description: 'The job\'s left normalization setting'
        ),
        Option(
          name: '--annotation-fields',
          description: 'The annotation schema generated by the parsed annotation data',
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
      name: 'tag-resource',
      description: 'Tags a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags for the resource',
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
      description: 'Removes tags from a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'Keys of tags to remove',
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
      name: 'update-annotation-store',
      description: 'Updates an annotation store',
      options: [

        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
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
      name: 'update-annotation-store-version',
      description: 'Updates the description of an annotation store version',
      options: [

        Option(
          name: '--name',
          description: 'The name of an annotation store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--version-name',
          description: 'The name of an annotation store version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of an annotation store',
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
      name: 'update-run-cache',
      description: 'Update a run cache',
      options: [

        Option(
          name: '--cache-behavior',
          description: 'Update the default run cache behavior',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Update the run cache description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The identifier of the run cache you want to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'Update the name of the run cache',
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
      name: 'update-run-group',
      description: 'Updates a run group',
      options: [

        Option(
          name: '--id',
          description: 'The group\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-cpus',
          description: 'The maximum number of CPUs to use',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-runs',
          description: 'The maximum number of concurrent runs for the group',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-duration',
          description: 'A maximum run time for the group in minutes',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-gpus',
          description: 'The maximum GPUs that can be used by a run group',
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
      name: 'update-sequence-store',
      description: 'Update one or more parameters for the sequence store',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the sequence store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the sequence store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the sequence store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'To ensure that requests don\'t run multiple times, specify a unique token for each request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--fallback-location',
          description: 'The S3 URI of a bucket and folder to store Read Sets that fail to upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--propagated-set-level-tags',
          description: 'The tags keys to propagate to the S3 objects associated with read sets in the sequence store',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--s3-access-config',
          description: 'S3 access configuration parameters',
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
      name: 'update-variant-store',
      description: 'Updates a variant store',
      options: [

        Option(
          name: '--name',
          description: 'A name for the store',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the store',
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
      name: 'update-workflow',
      description: 'Updates a workflow',
      options: [

        Option(
          name: '--id',
          description: 'The workflow\'s ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A name for the workflow',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A description for the workflow',
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
      name: 'upload-read-set-part',
      description: 'This operation uploads a specific part of a read set. If you upload a new part using a previously used part number, the previously uploaded part will be overwritten',
      options: [

        Option(
          name: '--sequence-store-id',
          description: 'The Sequence Store ID used for the multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'The ID for the initiated multipart upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--part-source',
          description: 'The source file for an upload part',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--part-number',
          description: 'The number of the part being uploaded',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--payload',
          description: 'The read set data to upload for a part',
          args: [
            Arg(
            name: 'blob'
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
          name: 'annotation-import-job-created',
          description: 'Wait until an annotation import is completed It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--job-id',
              description: 'The job\'s ID',
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
          name: 'annotation-store-created',
          description: 'Wait until an annotation store is created It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The store\'s name',
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
          name: 'annotation-store-deleted',
          description: 'Wait until an annotation store is deleted. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The store\'s name',
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
          name: 'annotation-store-version-created',
          description: 'Wait until an annotation store version is created It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The name given to an annotation store version to distinguish it from others',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--version-name',
              description: 'The name given to an annotation store version to distinguish it from others',
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
          name: 'annotation-store-version-deleted',
          description: 'Wait until an annotation store version is deleted. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The name given to an annotation store version to distinguish it from others',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--version-name',
              description: 'The name given to an annotation store version to distinguish it from others',
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
          name: 'read-set-activation-job-completed',
          description: 'Wait until a job is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The job\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--sequence-store-id',
              description: 'The job\'s sequence store ID',
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
          name: 'read-set-export-job-completed',
          description: 'Wait until a job is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--sequence-store-id',
              description: 'The job\'s sequence store ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The job\'s ID',
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
          name: 'read-set-import-job-completed',
          description: 'Wait until a job is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The job\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--sequence-store-id',
              description: 'The job\'s sequence store ID',
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
          name: 'reference-import-job-completed',
          description: 'Wait until a job is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The job\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--reference-store-id',
              description: 'The job\'s reference store ID',
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
          name: 'run-completed',
          description: 'Wait until a run is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The run\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--export',
              description: 'The run\'s export format',
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
          name: 'run-running',
          description: 'Wait until a run is running. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The run\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--export',
              description: 'The run\'s export format',
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
          name: 'task-completed',
          description: 'Wait until a task is completed. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The workflow run ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The task\'s ID',
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
          name: 'task-running',
          description: 'Wait until a task is running. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The workflow run ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--task-id',
              description: 'The task\'s ID',
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
          name: 'variant-import-job-created',
          description: 'Wait until variant import is completed It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--job-id',
              description: 'The job\'s ID',
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
          name: 'variant-store-created',
          description: 'Wait until a variant store is created It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The store\'s name',
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
          name: 'variant-store-deleted',
          description: 'Wait until a variant store is deleted. It will poll every 30 seconds until a successful state has been reached. This will exit with a return code of 255 after 20 failed checks',
          options: [

            Option(
              name: '--name',
              description: 'The store\'s name',
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
          name: 'workflow-active',
          description: 'Wait until a workflow is active. It will poll every 3 seconds until a successful state has been reached. This will exit with a return code of 255 after 10 failed checks',
          options: [

            Option(
              name: '--id',
              description: 'The workflow\'s ID',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The workflow\'s type',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--export',
              description: 'The export format for the workflow',
              args: [
                Arg(
                name: 'list'
              )
              ]
            ),
            Option(
              name: '--workflow-owner-id',
              description: 'The ID of the workflow owner',
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
