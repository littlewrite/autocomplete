// Auto-generated from TypeScript source: mediapackagev2.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mediapackagev2` CLI
final FigSpec mediapackagev2Spec = FigSpec(
  name: 'mediapackagev2',
  description: 'This guide is intended for creating AWS Elemental MediaPackage resources in MediaPackage Version 2 (v2) starting from May 2023. To get started with MediaPackage v2, create your MediaPackage resources. There isn\'t an automated process to migrate your resources from MediaPackage v1 to MediaPackage v2.  The names of the entities that you use to access this API, like URLs and ARNs, all have the versioning information added, like "v2", to distinguish from the prior version. If you used MediaPackage prior to this release, you can\'t use the MediaPackage v2 CLI or the MediaPackage v2 API to access any MediaPackage v1 resources. If you created resources in MediaPackage v1, use video on demand (VOD) workflows, and aren\'t looking to migrate to MediaPackage v2 yet, see the MediaPackage v1 Live API Reference.  This is the AWS Elemental MediaPackage v2 Live REST API Reference. It describes all the MediaPackage API operations for live content in detail, and provides sample requests, responses, and errors for the supported web services protocols. We assume that you have the IAM permissions that you need to use MediaPackage via the REST API. We also assume that you are familiar with the features and operations of MediaPackage, as described in the AWS Elemental MediaPackage User Guide',
  subcommands: [
    Subcommand(
      name: 'cancel-harvest-job',
      description: 'Cancels an in-progress harvest job',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name of the channel group containing the channel from which the harvest job is running',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name of the channel from which the harvest job is running',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name of the origin endpoint that the harvest job is harvesting from. This cannot be changed after the harvest job is submitted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--harvest-job-name',
          description: 'The name of the harvest job to cancel. This name must be unique within the channel and cannot be changed after the harvest job is submitted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--e-tag',
          description: 'The current Entity Tag (ETag) associated with the harvest job. Used for concurrency control',
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
      name: 'create-channel',
      description: 'Create a channel to start receiving content streams. The channel represents the input to MediaPackage for incoming live content from an encoder such as AWS Elemental MediaLive. The channel receives content, and after packaging it, outputs it through an origin endpoint to downstream devices (such as video players or CDNs) that request the content. You can create only one channel with each request. We recommend that you spread out channels between channel groups, such as putting redundant channels in the same AWS Region in different channel groups',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. You can\'t change the name after you create the channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique, case-sensitive token that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-type',
          description: 'The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior. The allowed values are:    HLS - The HLS streaming specification (which defines M3U8 manifests and TS segments).    CMAF - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Enter any descriptive text that helps you to identify the channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-switch-configuration',
          description: 'The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when InputType is CMAF',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--output-header-configuration',
          description: 'The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when InputType is CMAF',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A comma-separated list of tag key:value pairs that you define. For example:  "Key1": "Value1",   "Key2": "Value2"',
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
      name: 'create-channel-group',
      description: 'Create a channel group to group your channels and origin endpoints. A channel group is the top-level resource that consists of channels and origin endpoints that are associated with it and that provides predictable URLs for stream delivery. All channels and origin endpoints within the channel group are guaranteed to share the DNS. You can create only one channel group with each request',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region. You can\'t use spaces in the name. You can\'t change the name after you create the channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique, case-sensitive token that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Enter any descriptive text that helps you to identify the channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A comma-separated list of tag key:value pairs that you define. For example:  "Key1": "Value1",   "Key2": "Value2"',
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
      description: 'Creates a new harvest job to export content from a MediaPackage v2 channel to an S3 bucket',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name of the channel group containing the channel from which to harvest content',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name of the channel from which to harvest content',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name of the origin endpoint from which to harvest content',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'An optional description for the harvest job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--harvested-manifests',
          description: 'A list of manifests to be harvested',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--schedule-configuration',
          description: 'The configuration for when the harvest job should run, including start and end times',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--destination',
          description: 'The S3 destination where the harvested content will be placed',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--harvest-job-name',
          description: 'A name for the harvest job. This name must be unique within the channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A collection of tags associated with the harvest job',
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
      name: 'create-origin-endpoint',
      description: 'The endpoint is attached to a channel, and represents the output of the live content. You can associate multiple endpoints to a single channel. Each endpoint gives players and downstream CDNs (such as Amazon CloudFront) access to the content for playback. Content can\'t be served from a channel until it has an endpoint. You can create only one endpoint with each request',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and must be unique for your account in the AWS Region and channel. You can\'t use spaces in the name. You can\'t change the name after you create the endpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--container-type',
          description: 'The type of container to attach to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. You can\'t change the container type after you create the endpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--segment',
          description: 'The segment configuration, including the segment name, duration, and other configuration values',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'A unique, case-sensitive token that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Enter any descriptive text that helps you to identify the origin endpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--startover-window-seconds',
          description: 'The size of the window (in seconds) to create a window of the live stream that\'s available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days)',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--hls-manifests',
          description: 'An HTTP live streaming (HLS) manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--low-latency-hls-manifests',
          description: 'A low-latency HLS manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--dash-manifests',
          description: 'A DASH manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--force-endpoint-error-configuration',
          description: 'The failover settings for the endpoint',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A comma-separated list of tag key:value pairs that you define. For example:  "Key1": "Value1",   "Key2": "Value2"',
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
      name: 'delete-channel',
      description: 'Delete a channel to stop AWS Elemental MediaPackage from receiving further content. You must delete the channel\'s origin endpoints before you can delete the channel',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
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
      name: 'delete-channel-group',
      description: 'Delete a channel group. You must delete the channel group\'s channels and origin endpoints before you can delete the channel group. If you delete a channel group, you\'ll lose access to the egress domain and will have to create a new channel group to replace it',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
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
      name: 'delete-channel-policy',
      description: 'Delete a channel policy',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
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
      description: 'Origin endpoints can serve content until they\'re deleted. Delete the endpoint if it should no longer respond to playback requests. You must delete all endpoints from a channel before you can delete the channel',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
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
      name: 'delete-origin-endpoint-policy',
      description: 'Delete an origin endpoint policy',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
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
      name: 'get-channel',
      description: 'Retrieves the specified channel that\'s configured in AWS Elemental MediaPackage, including the origin endpoints that are associated with it',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
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
      name: 'get-channel-group',
      description: 'Retrieves the specified channel group that\'s configured in AWS Elemental MediaPackage, including the channels and origin endpoints that are associated with it',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
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
      name: 'get-channel-policy',
      description: 'Retrieves the specified channel policy that\'s configured in AWS Elemental MediaPackage. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
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
      name: 'get-harvest-job',
      description: 'Retrieves the details of a specific harvest job',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name of the channel group containing the channel associated with the harvest job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name of the channel associated with the harvest job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name of the origin endpoint associated with the harvest job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--harvest-job-name',
          description: 'The name of the harvest job to retrieve',
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
      name: 'get-origin-endpoint',
      description: 'Retrieves the specified origin endpoint that\'s configured in AWS Elemental MediaPackage to obtain its playback URL and to view the packaging settings that it\'s currently using',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
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
      name: 'get-origin-endpoint-policy',
      description: 'Retrieves the specified origin endpoint policy that\'s configured in AWS Elemental MediaPackage',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
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
      name: 'list-channel-groups',
      description: 'Retrieves all channel groups that are configured in AWS Elemental MediaPackage, including the channels and origin endpoints that are associated with it',
      options: [
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token from the GET list request. Use the token to fetch the next page of results',
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
      name: 'list-channels',
      description: 'Retrieves all channels in a specific channel group that are configured in AWS Elemental MediaPackage, including the origin endpoints that are associated with it',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token from the GET list request. Use the token to fetch the next page of results',
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
      description: 'Retrieves a list of harvest jobs that match the specified criteria',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name of the channel group to filter the harvest jobs by. If specified, only harvest jobs associated with channels in this group will be returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name of the channel to filter the harvest jobs by. If specified, only harvest jobs associated with this channel will be returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name of the origin endpoint to filter the harvest jobs by. If specified, only harvest jobs associated with this origin endpoint will be returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status to filter the harvest jobs by. If specified, only harvest jobs with this status will be returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of harvest jobs to return in a single request. If not specified, a default value will be used',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token used for pagination. Provide this value in subsequent requests to retrieve the next set of results',
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
      description: 'Retrieves all origin endpoints in a specific channel that are configured in AWS Elemental MediaPackage',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token from the GET list request. Use the token to fetch the next page of results',
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
      description: 'Lists the tags assigned to a resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The ARN of the CloudWatch resource that you want to view tags for',
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
      name: 'put-channel-policy',
      description: 'Attaches an IAM policy to the specified channel. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources. You can attach only one policy with each request',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--policy',
          description: 'The policy to attach to the specified channel',
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
      name: 'put-origin-endpoint-policy',
      description: 'Attaches an IAM policy to the specified origin endpoint. You can attach only one policy with each request',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--policy',
          description: 'The policy to attach to the specified origin endpoint',
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
      description: 'Assigns one of more tags (key-value pairs) to the specified MediaPackage resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The ARN of the MediaPackage resource that you\'re adding tags to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Contains a map of the key-value pairs for the resource tag or tags assigned to the resource',
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
      description: 'Removes one or more tags from the specified resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The ARN of the MediaPackage resource that you\'re removing tags from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The list of tag keys to remove from the resource',
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
      description: 'Update the specified channel. You can edit if MediaPackage sends ingest or egress access logs to the CloudWatch log group, if content will be encrypted, the description on a channel, and your channel\'s policy settings. You can\'t edit the name of the channel or CloudFront distribution details. Any edits you make that impact the video output may not be reflected for a few minutes',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--e-tag',
          description: 'The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource\'s current entity tag, the update request will be rejected',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Any descriptive information that you want to add to the channel for future identification purposes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-switch-configuration',
          description: 'The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when InputType is CMAF',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--output-header-configuration',
          description: 'The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when InputType is CMAF',
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
      name: 'update-channel-group',
      description: 'Update the specified channel group. You can edit the description on a channel group for easier identification later from the AWS Elemental MediaPackage console. You can\'t edit the name of the channel group. Any edits you make that impact the video output may not be reflected for a few minutes',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--e-tag',
          description: 'The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource\'s current entity tag, the update request will be rejected',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Any descriptive information that you want to add to the channel group for future identification purposes',
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
      description: 'Update the specified origin endpoint. Edit the packaging preferences on an endpoint to optimize the viewing experience. You can\'t edit the name of the endpoint. Any edits you make that impact the video output may not be reflected for a few minutes',
      options: [
        Option(
          name: '--channel-group-name',
          description: 'The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--channel-name',
          description: 'The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--origin-endpoint-name',
          description: 'The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--container-type',
          description: 'The type of container attached to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--segment',
          description: 'The segment configuration, including the segment name, duration, and other configuration values',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Any descriptive information that you want to add to the origin endpoint for future identification purposes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--startover-window-seconds',
          description: 'The size of the window (in seconds) to create a window of the live stream that\'s available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days)',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--hls-manifests',
          description: 'An HTTP live streaming (HLS) manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--low-latency-hls-manifests',
          description: 'A low-latency HLS manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--dash-manifests',
          description: 'A DASH manifest configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--force-endpoint-error-configuration',
          description: 'The failover settings for the endpoint',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--e-tag',
          description: 'The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource\'s current entity tag, the update request will be rejected',
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
          name: 'harvest-job-finished',
          description: 'Wait until JMESPath query Status returns COMPLETED when polling with ``get-harvest-job``. It will poll every 2 seconds until a successful state has been reached. This will exit with a return code of 255 after 60 failed checks',
          options: [
            Option(
              name: '--channel-group-name',
              description: 'The name of the channel group containing the channel associated with the harvest job',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--channel-name',
              description: 'The name of the channel associated with the harvest job',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--origin-endpoint-name',
              description: 'The name of the origin endpoint associated with the harvest job',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--harvest-job-name',
              description: 'The name of the harvest job to retrieve',
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
