// Auto-generated from TypeScript source: iottwinmaker.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `iottwinmaker` CLI
final FigSpec iottwinmakerSpec = FigSpec(
  name: 'iottwinmaker',
  description: 'IoT TwinMaker is a service with which you can build operational digital twins of physical systems. IoT TwinMaker overlays measurements and analysis from real-world sensors, cameras, and enterprise applications so you can create data visualizations to monitor your physical factory, building, or industrial plant. You can use this real-world data to monitor operations and diagnose and repair errors',
  subcommands: [

    Subcommand(
      name: 'batch-put-property-values',
      description: 'Sets values for multiple time series properties',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the properties to set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entries',
          description: 'An object that maps strings to the property value entries to set. Each string in the mapping must be unique to this object',
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
      name: 'cancel-metadata-transfer-job',
      description: 'Cancels the metadata transfer job',
      options: [

        Option(
          name: '--metadata-transfer-job-id',
          description: 'The metadata transfer job Id',
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
      name: 'create-component-type',
      description: 'Creates a component type',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--is-singleton',
          description: 'A Boolean value that specifies whether an entity can have more than one component of this type'
        ),
        Option(
          name: '--no-is-singleton',
          description: 'A Boolean value that specifies whether an entity can have more than one component of this type'
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--property-definitions',
          description: 'An object that maps strings to the property definitions in the component type. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--extends-from',
          description: 'Specifies the parent component type to extend',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--functions',
          description: 'An object that maps strings to the functions in the component type. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata that you can use to manage the component type',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--property-groups',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--component-type-name',
          description: 'A friendly name for the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--composite-component-types',
          description: 'This is an object that maps strings to compositeComponentTypes of the componentType. CompositeComponentType is referenced by componentTypeId',
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
      name: 'create-entity',
      description: 'Creates an entity',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-name',
          description: 'The name of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--components',
          description: 'An object that maps strings to the components in the entity. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--composite-components',
          description: 'This is an object that maps strings to compositeComponent updates in the request. Each key of the map represents the componentPath of the compositeComponent',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--parent-entity-id',
          description: 'The ID of the entity\'s parent entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata that you can use to manage the entity',
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
      name: 'create-metadata-transfer-job',
      description: 'Creates a new metadata transfer job',
      options: [

        Option(
          name: '--metadata-transfer-job-id',
          description: 'The metadata transfer job Id',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The metadata transfer job description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sources',
          description: 'The metadata transfer job sources',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--destination',
          description: 'The metadata transfer job destination',
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
      name: 'create-scene',
      description: 'Creates a scene',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scene-id',
          description: 'The ID of the scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--content-location',
          description: 'The relative path that specifies the location of the content definition file',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description for this scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'A list of capabilities that the scene uses to render itself',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata that you can use to manage the scene',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--scene-metadata',
          description: 'The request metadata',
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
      name: 'create-sync-job',
      description: 'This action creates a SyncJob',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The workspace ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sync-source',
          description: 'The sync source.  Currently the only supported syncSoource is SITEWISE',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sync-role',
          description: 'The SyncJob IAM role. This IAM role is used by the SyncJob to read from the syncSource, and create, update, or delete the corresponding resources',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The SyncJob tags',
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
      name: 'create-workspace',
      description: 'Creates a workplace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--s3-location',
          description: 'The ARN of the S3 bucket where resources associated with the workspace are stored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'The ARN of the execution role associated with the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata that you can use to manage the workspace',
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
      name: 'delete-component-type',
      description: 'Deletes a component type',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type to delete',
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
      name: 'delete-entity',
      description: 'Deletes an entity',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the entity to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--is-recursive',
          description: 'A Boolean value that specifies whether the operation deletes child entities'
        ),
        Option(
          name: '--no-is-recursive',
          description: 'A Boolean value that specifies whether the operation deletes child entities'
        ),
        Option(
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
      name: 'delete-scene',
      description: 'Deletes a scene',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scene-id',
          description: 'The ID of the scene to delete',
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
      name: 'delete-sync-job',
      description: 'Delete the SyncJob',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The workspace ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sync-source',
          description: 'The sync source.  Currently the only supported syncSource is SITEWISE',
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
      name: 'delete-workspace',
      description: 'Deletes a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace to delete',
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
      name: 'execute-query',
      description: 'Run queries to access information from your knowledge graph of entities within individual workspaces.  The ExecuteQuery action only works with Amazon Web Services Java SDK2. ExecuteQuery will not work with any Amazon Web Services Java SDK version < 2.x',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--query-statement',
          description: 'The query statement',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 50',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'get-component-type',
      description: 'Retrieves information about a component type',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type',
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
      name: 'get-entity',
      description: 'Retrieves information about an entity',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity',
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
      name: 'get-metadata-transfer-job',
      description: 'Gets a nmetadata transfer job',
      options: [

        Option(
          name: '--metadata-transfer-job-id',
          description: 'The metadata transfer job Id',
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
      name: 'get-pricing-plan',
      description: 'Gets the pricing plan',
      options: [

        Option(
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
      name: 'get-property-value',
      description: 'Gets the property values for a component, component type, entity, or workspace. You must specify a value for either componentName, componentTypeId, entityId, or workspaceId',
      options: [

        Option(
          name: '--component-name',
          description: 'The name of the component whose property values the operation returns',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-path',
          description: 'This string specifies the path to the composite component, starting from the top-level component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type whose property values the operation returns',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity whose property values the operation returns',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--selected-properties',
          description: 'The properties whose values the operation returns',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace whose values the operation returns',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--property-group-name',
          description: 'The property group name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tabular-conditions',
          description: 'The tabular conditions',
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
      name: 'get-property-value-history',
      description: 'Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and entityId. For cross-entity quries, specify a value for componentTypeId',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-name',
          description: 'The name of the component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-path',
          description: 'This string specifies the path to the composite component, starting from the top-level component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--selected-properties',
          description: 'A list of properties whose value histories the request retrieves',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--property-filters',
          description: 'A list of objects that filter the property value history request',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--start-date-time',
          description: 'The date and time of the earliest property value to return',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--end-date-time',
          description: 'The date and time of the latest property value to return',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--interpolation',
          description: 'An object that specifies the interpolation type and the interval over which to interpolate data',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--order-by-time',
          description: 'The time direction to use in the result order',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The ISO8601 DateTime of the earliest property value to return. For more information about the ISO8601 DateTime format, see the data type PropertyValue',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'The ISO8601 DateTime of the latest property value to return. For more information about the ISO8601 DateTime format, see the data type PropertyValue',
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
      name: 'get-scene',
      description: 'Retrieves information about a scene',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scene-id',
          description: 'The ID of the scene',
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
      name: 'get-sync-job',
      description: 'Gets the SyncJob',
      options: [

        Option(
          name: '--sync-source',
          description: 'The sync source.  Currently the only supported syncSource is SITEWISE',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workspace-id',
          description: 'The workspace ID',
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
      name: 'get-workspace',
      description: 'Retrieves information about a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
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
      name: 'list-component-types',
      description: 'Lists all component types in a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'A list of objects that filter the request',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
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
      name: 'list-components',
      description: 'This API lists the components of an entity',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The workspace ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID for the entity whose metadata (component/properties) is returned by the operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-path',
          description: 'This string specifies the path to the composite component, starting from the top-level component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results returned at one time. The default is 25',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-entities',
      description: 'Lists all entities in a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'A list of objects that filter the request.  Only one object is accepted as a valid input',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-metadata-transfer-jobs',
      description: 'Lists the metadata transfer jobs',
      options: [

        Option(
          name: '--source-type',
          description: 'The metadata transfer job\'s source type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--destination-type',
          description: 'The metadata transfer job\'s destination type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'An object that filters metadata transfer jobs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time',
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
      name: 'list-properties',
      description: 'This API lists the properties of a component',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The workspace ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-name',
          description: 'The name of the component whose properties are returned by the operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-path',
          description: 'This string specifies the path to the composite component, starting from the top-level component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID for the entity whose metadata (component/properties) is returned by the operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results returned at one time. The default is 25',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-scenes',
      description: 'Lists all scenes in a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the scenes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Specifies the maximum number of results to display',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-sync-jobs',
      description: 'List all SyncJobs',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the sync job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 50. Valid Range: Minimum value of 0. Maximum value of 200',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-sync-resources',
      description: 'Lists the sync resources',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the sync job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sync-source',
          description: 'The sync source.  Currently the only supported syncSource is SITEWISE',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'A list of objects that filter the request. The following filter combinations are supported:   Filter with state   Filter with ResourceType and ResourceId   Filter with ResourceType and ExternalId',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 50. Valid Range: Minimum value of 0. Maximum value of 200',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-tags-for-resource',
      description: 'Lists all tags associated with a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      name: 'list-workspaces',
      description: 'Retrieves information about workspaces in the current account',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at one time. The default is 25. Valid Range: Minimum value of 1. Maximum value of 250',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The string that specifies the next page of results',
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
      description: 'Adds tags to a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata to add to this resource',
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
          description: 'The ARN of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'A list of tag key names to remove from the resource. You don\'t specify the value. Both the key and its associated value are removed',
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
      name: 'update-component-type',
      description: 'Updates information in a component type',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--is-singleton',
          description: 'A Boolean value that specifies whether an entity can have more than one component of this type'
        ),
        Option(
          name: '--no-is-singleton',
          description: 'A Boolean value that specifies whether an entity can have more than one component of this type'
        ),
        Option(
          name: '--component-type-id',
          description: 'The ID of the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the component type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--property-definitions',
          description: 'An object that maps strings to the property definitions in the component type. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--extends-from',
          description: 'Specifies the component type that this component type extends',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--functions',
          description: 'An object that maps strings to the functions in the component type. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--property-groups',
          description: 'The property groups',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--component-type-name',
          description: 'The component type name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--composite-component-types',
          description: 'This is an object that maps strings to compositeComponentTypes of the componentType. CompositeComponentType is referenced by componentTypeId',
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
      name: 'update-entity',
      description: 'Updates an entity',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-id',
          description: 'The ID of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entity-name',
          description: 'The name of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the entity',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-updates',
          description: 'An object that maps strings to the component updates in the request. Each string in the mapping must be unique to this object',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--composite-component-updates',
          description: 'This is an object that maps strings to compositeComponent updates in the request. Each key of the map represents the componentPath of the compositeComponent',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--parent-entity-update',
          description: 'An object that describes the update request for a parent entity',
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
      name: 'update-pricing-plan',
      description: 'Update the pricing plan',
      options: [

        Option(
          name: '--pricing-mode',
          description: 'The pricing mode',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--bundle-names',
          description: 'The bundle names',
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
      name: 'update-scene',
      description: 'Updates a scene',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace that contains the scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scene-id',
          description: 'The ID of the scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--content-location',
          description: 'The relative path that specifies the location of the content definition file',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of this scene',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--capabilities',
          description: 'A list of capabilities that the scene uses to render',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--scene-metadata',
          description: 'The scene metadata',
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
      name: 'update-workspace',
      description: 'Updates a workspace',
      options: [

        Option(
          name: '--workspace-id',
          description: 'The ID of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'The ARN of the execution role associated with the workspace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--s3-location',
          description: 'The ARN of the S3 bucket where resources associated with the workspace are stored',
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
