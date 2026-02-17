// Auto-generated from TypeScript source: mediapackage.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mediapackage` CLI
final FigSpec mediapackageSpec = FigSpec(
  name: 'mediapackage',
  description: 'AWS Elemental MediaPackage',
  subcommands: [

    Subcommand(
      name: 'configure-logs',
      description: 'Changes the Channel\'s properities to configure log subscription',
      options: [

        Option(
          name: '--egress-access-logs',
          description: 'Configure egress access logging',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the channel to log subscription',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ingress-access-logs',
          description: 'Configure ingress access logging',
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
      name: 'create-channel',
      description: 'Creates a new Channel',
      options: [

        Option(
          name: '--description',
          description: 'A short text description of the Channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the Channel. The ID must be unique within the region and it\ncannot be changed after a Channel is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of tags associated with a resource',
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
      name: 'create-harvest-job',
      description: 'Creates a new HarvestJob record',
      options: [

        Option(
          name: '--end-time',
          description: 'The end of the time-window which will be harvested',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-id',
          description: 'The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--s3-destination',
          description: 'Configuration parameters for where in an S3 bucket to place the harvested content',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The start of the time-window which will be harvested',
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
      name: 'create-origin-endpoint',
      description: 'Creates a new OriginEndpoint record',
      options: [

        Option(
          name: '--authorization',
          description: 'CDN Authorization credentials',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--channel-id',
          description: 'The ID of the Channel that the OriginEndpoint will be associated with.\nThis cannot be changed after the OriginEndpoint is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cmaf-package',
          description: 'A Common Media Application Format (CMAF) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--dash-package',
          description: 'A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A short text description of the OriginEndpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--hls-package',
          description: 'An HTTP Live Streaming (HLS) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the OriginEndpoint.  The ID must be unique within the region\nand it cannot be changed after the OriginEndpoint is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--manifest-name',
          description: 'A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--mss-package',
          description: 'A Microsoft Smooth Streaming (MSS) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--origination',
          description: 'Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--startover-window-seconds',
          description: 'Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of tags associated with a resource',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--time-delay-seconds',
          description: 'Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--whitelist',
          description: 'A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint',
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
      name: 'delete-channel',
      description: 'Deletes an existing Channel',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the Channel to delete',
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
      name: 'delete-origin-endpoint',
      description: 'Deletes an existing OriginEndpoint',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the OriginEndpoint to delete',
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
      name: 'describe-channel',
      description: 'Gets details about a Channel',
      options: [

        Option(
          name: '--id',
          description: 'The ID of a Channel',
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
      name: 'describe-harvest-job',
      description: 'Gets details about an existing HarvestJob',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the HarvestJob',
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
      name: 'describe-origin-endpoint',
      description: 'Gets details about an existing OriginEndpoint',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the OriginEndpoint',
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
      name: 'list-channels',
      description: 'Returns a collection of Channels',
      options: [

        Option(
          name: '--max-results',
          description: 'Upper bound on number of records to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token used to resume pagination from the end of a previous request',
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
      name: 'list-harvest-jobs',
      description: 'Returns a collection of HarvestJob records',
      options: [

        Option(
          name: '--include-channel-id',
          description: 'When specified, the request will return only HarvestJobs associated with the given Channel ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-status',
          description: 'When specified, the request will return only HarvestJobs in the given status',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The upper bound on the number of records to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token used to resume pagination from the end of a previous request',
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
      name: 'list-origin-endpoints',
      description: 'Returns a collection of OriginEndpoint records',
      options: [

        Option(
          name: '--channel-id',
          description: 'When specified, the request will return only OriginEndpoints associated with the given Channel ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The upper bound on the number of records to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token used to resume pagination from the end of a previous request',
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
      name: 'list-tags-for-resource',
      options: [

        Option(
          name: '--resource-arn',
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
      name: 'rotate-channel-credentials',
      description: 'Changes the Channel\'s first IngestEndpoint\'s username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the channel to update',
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
      name: 'rotate-ingest-endpoint-credentials',
      description: 'Rotate the IngestEndpoint\'s username and password, as specified by the IngestEndpoint\'s id',
      options: [

        Option(
          name: '--id',
          description: 'The ID of the channel the IngestEndpoint is on',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ingest-endpoint-id',
          description: 'The id of the IngestEndpoint whose credentials should be rotated',
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
      options: [

        Option(
          name: '--resource-arn',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
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
      options: [

        Option(
          name: '--resource-arn',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The key(s) of tag to be deleted',
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
      name: 'update-channel',
      description: 'Updates an existing Channel',
      options: [

        Option(
          name: '--description',
          description: 'A short text description of the Channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the Channel to update',
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
      name: 'update-origin-endpoint',
      description: 'Updates an existing OriginEndpoint',
      options: [

        Option(
          name: '--authorization',
          description: 'CDN Authorization credentials',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--cmaf-package',
          description: 'A Common Media Application Format (CMAF) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--dash-package',
          description: 'A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'A short text description of the OriginEndpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--hls-package',
          description: 'An HTTP Live Streaming (HLS) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'The ID of the OriginEndpoint to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--manifest-name',
          description: 'A short string that will be appended to the end of the Endpoint URL',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--mss-package',
          description: 'A Microsoft Smooth Streaming (MSS) packaging configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--origination',
          description: 'Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--startover-window-seconds',
          description: 'Maximum duration (in seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--time-delay-seconds',
          description: 'Amount of delay (in seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--whitelist',
          description: 'A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint',
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
    )
  ]
);
