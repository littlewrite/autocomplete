// Auto-generated from TypeScript source: backupstorage.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `backupstorage` CLI
final FigSpec backupstorageSpec = FigSpec(
  name: 'backupstorage',
  description: 'The frontend service for Cryo Storage',
  subcommands: [

    Subcommand(
      name: 'delete-object',
      description: 'Delete Object from the incremental base Backup',
      options: [

        Option(
          name: '--backup-job-id',
          description: 'Backup job Id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-name',
          description: 'The name of the Object',
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
      name: 'get-chunk',
      description: 'Gets the specified object\'s chunk',
      options: [

        Option(
          name: '--storage-job-id',
          description: 'Storage job id',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--chunk-token',
          description: 'Chunk token',
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
      name: 'get-object-metadata',
      description: 'Get metadata associated with an Object',
      options: [

        Option(
          name: '--storage-job-id',
          description: 'Backup job id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-token',
          description: 'Object token',
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
      name: 'list-chunks',
      description: 'List chunks in a given Object',
      options: [

        Option(
          name: '--storage-job-id',
          description: 'Storage job id',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-token',
          description: 'Object token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of chunks',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Pagination token',
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
      name: 'list-objects',
      description: 'List all Objects in a given Backup',
      options: [

        Option(
          name: '--storage-job-id',
          description: 'Storage job id',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-object-name',
          description: 'Optional, specifies the starting Object name to list from. Ignored if NextToken is not NULL',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--starting-object-prefix',
          description: 'Optional, specifies the starting Object prefix to list from. Ignored if NextToken is not NULL',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum objects count',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Pagination token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--created-before',
          description: '(Optional) Created before filter',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--created-after',
          description: '(Optional) Created after filter',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
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
      name: 'notify-object-complete',
      description: 'Complete upload',
      options: [

        Option(
          name: '--backup-job-id',
          description: 'Backup job Id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'Upload Id for the in-progress upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-checksum',
          description: 'Object checksum',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-checksum-algorithm',
          description: 'Checksum algorithm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metadata-string',
          description: 'Optional metadata associated with an Object. Maximum string length is 256 bytes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metadata-blob',
          description: 'Optional metadata associated with an Object. Maximum length is 4MB',
          args: [
            Arg(
            name: 'blob'
          )
          ]
        ),
        Option(
          name: '--metadata-blob-length',
          description: 'The size of MetadataBlob',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--metadata-blob-checksum',
          description: 'Checksum of MetadataBlob',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metadata-blob-checksum-algorithm',
          description: 'Checksum algorithm',
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
      name: 'put-chunk',
      description: 'Upload chunk',
      options: [

        Option(
          name: '--backup-job-id',
          description: 'Backup job Id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upload-id',
          description: 'Upload Id for the in-progress upload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--chunk-index',
          description: 'Describes this chunk\'s position relative to the other chunks',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--data',
          description: 'Data to be uploaded',
          args: [
            Arg(
            name: 'blob'
          )
          ]
        ),
        Option(
          name: '--length',
          description: 'Data length',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--checksum',
          description: 'Data checksum',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--checksum-algorithm',
          description: 'Checksum algorithm',
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
      name: 'put-object',
      description: 'Upload object that can store object metadata String and data blob in single API call using inline chunk field',
      options: [

        Option(
          name: '--backup-job-id',
          description: 'Backup job Id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-name',
          description: 'The name of the Object to be uploaded',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metadata-string',
          description: 'Store user defined metadata like backup checksum, disk ids, restore metadata etc',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--inline-chunk',
          description: 'Inline chunk data to be uploaded',
          args: [
            Arg(
            name: 'blob'
          )
          ]
        ),
        Option(
          name: '--inline-chunk-length',
          description: 'Length of the inline chunk data',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--inline-chunk-checksum',
          description: 'Inline chunk checksum',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--inline-chunk-checksum-algorithm',
          description: 'Inline chunk checksum algorithm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-checksum',
          description: 'Object checksum',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-checksum-algorithm',
          description: 'Object checksum algorithm',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--throw-on-duplicate',
          description: 'Throw an exception if Object name is already exist'
        ),
        Option(
          name: '--no-throw-on-duplicate',
          description: 'Throw an exception if Object name is already exist'
        ),
        Option(
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
      name: 'start-object',
      description: 'Start upload containing one or many chunks',
      options: [

        Option(
          name: '--backup-job-id',
          description: 'Backup job Id for the in-progress backup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--object-name',
          description: 'Name for the object',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--throw-on-duplicate',
          description: 'Throw an exception if Object name is already exist'
        ),
        Option(
          name: '--no-throw-on-duplicate',
          description: 'Throw an exception if Object name is already exist'
        ),
        Option(
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
