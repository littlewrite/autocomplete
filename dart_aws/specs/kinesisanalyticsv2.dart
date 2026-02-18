// Auto-generated from TypeScript source: kinesisanalyticsv2.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `kinesisanalyticsv2` CLI
final FigSpec kinesisanalyticsv2Spec = FigSpec(
  name: 'kinesisanalyticsv2',
  description: 'Amazon Managed Service for Apache Flink was previously known as Amazon Kinesis Data Analytics for Apache Flink.  Amazon Managed Service for Apache Flink is a fully managed service that you can use to process and analyze streaming data using Java, Python, SQL, or Scala. The service enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics',
  subcommands: [

    Subcommand(
      name: 'add-application-cloud-watch-logging-option',
      description: 'Adds an Amazon CloudWatch log stream to monitor application configuration errors',
      options: [

        Option(
          name: '--application-name',
          description: 'The Kinesis Data Analytics application name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version ID of the SQL-based Kinesis Data Analytics application. You must provide the CurrentApplicationVersionId or the ConditionalToken.You can retrieve the application version ID using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--cloud-watch-logging-option',
          description: 'Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN)',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--conditional-token',
          description: 'A value you use to implement strong concurrency for application updates. You must provide the CurrentApplicationVersionId or the ConditionalToken. You get the application\'s current ConditionalToken using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
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
      name: 'add-application-input',
      description: 'Adds a streaming source to your SQL-based Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of your existing application to which you want to add the streaming source',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The current version of your application. You must provide the ApplicationVersionID or the ConditionalToken.You can use the DescribeApplication operation to find the current application version',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--input',
          description: 'The Input to add',
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
      name: 'add-application-input-processing-configuration',
      description: 'Adds an InputProcessingConfiguration to a SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application\'s SQL code executes. Currently, the only input processor available is Amazon Lambda',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application to which you want to add the input processing configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version of the application to which you want to add the input processing configuration. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--input-id',
          description: 'The ID of the input configuration to add the input processing configuration to. You can get a list of the input IDs for an application using the DescribeApplication operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-processing-configuration',
          description: 'The InputProcessingConfiguration to add to the application',
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
      name: 'add-application-output',
      description: 'Adds an external destination to your SQL-based Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application to which you want to add the output configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version of the application to which you want to add the output configuration. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--application-output',
          description: 'An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, a Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and record the formation to use when writing to the destination',
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
      name: 'add-application-reference-data-source',
      description: 'Adds a reference data source to an existing SQL-based Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version of the application for which you are adding the reference data source. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--reference-data-source',
          description: 'The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created',
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
      name: 'add-application-vpc-configuration',
      description: 'Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Managed Service for Apache Flink applications:   VPC configurations are not supported for SQL applications.   When a VPC is added to a Managed Service for Apache Flink application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version of the application to which you want to add the VPC configuration. You must provide the CurrentApplicationVersionId or the ConditionalToken. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--vpc-configuration',
          description: 'Description of the VPC to add to the application',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--conditional-token',
          description: 'A value you use to implement strong concurrency for application updates. You must provide the ApplicationVersionID or the ConditionalToken. You get the application\'s current ConditionalToken using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
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
      name: 'create-application',
      description: 'Creates a Managed Service for Apache Flink application. For information about creating a Managed Service for Apache Flink application, see Creating an Application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of your application (for example, sample-app)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--application-description',
          description: 'A summary description of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--runtime-environment',
          description: 'The runtime environment for the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--service-execution-role',
          description: 'The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--application-configuration',
          description: 'Use this parameter to configure the application',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--cloud-watch-logging-options',
          description: 'Use this parameter to configure an Amazon CloudWatch log stream to monitor application configuration errors',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--application-mode',
          description: 'Use the STREAMING mode to create a Managed Service for Apache Flink application. To create a Managed Service for Apache Flink Studio notebook, use the INTERACTIVE mode',
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
      name: 'create-application-presigned-url',
      description: 'Creates and returns a URL that you can use to connect to an application\'s extension. The IAM role or user used to call this API defines the permissions to access the extension. After the presigned URL is created, no additional permission is required to access this URL. IAM authorization policies for this API are also enforced for every HTTP request that attempts to connect to the extension.  You control the amount of time that the URL will be valid using the SessionExpirationDurationInSeconds parameter. If you do not provide this parameter, the returned URL is valid for twelve hours.  The URL that you get from a call to CreateApplicationPresignedUrl must be used within 3 minutes to be valid. If you first try to use the URL after the 3-minute limit expires, the service returns an HTTP 403 Forbidden error',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--url-type',
          description: 'The type of the extension for which to create and return a URL. Currently, the only valid extension URL type is FLINK_DASHBOARD_URL',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--session-expiration-duration-in-seconds',
          description: 'The duration in seconds for which the returned URL will be valid',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-application-snapshot',
      description: 'Creates a snapshot of the application\'s state data',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'An identifier for the application snapshot',
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
      name: 'delete-application',
      description: 'Deletes the specified application. Managed Service for Apache Flink halts application execution and deletes the application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--create-timestamp',
          description: 'Use the DescribeApplication operation to get this value',
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
      name: 'delete-application-cloud-watch-logging-option',
      description: 'Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics application',
      options: [

        Option(
          name: '--application-name',
          description: 'The application name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The version ID of the application. You must provide the CurrentApplicationVersionId or the ConditionalToken. You can retrieve the application version ID using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--cloud-watch-logging-option-id',
          description: 'The CloudWatchLoggingOptionId of the Amazon CloudWatch logging option to delete. You can get the CloudWatchLoggingOptionId by using the DescribeApplication operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--conditional-token',
          description: 'A value you use to implement strong concurrency for application updates. You must provide the CurrentApplicationVersionId or the ConditionalToken. You get the application\'s current ConditionalToken using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
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
      name: 'delete-application-input-processing-configuration',
      description: 'Deletes an InputProcessingConfiguration from an input',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--input-id',
          description: 'The ID of the input configuration from which to delete the input processing configuration. You can get a list of the input IDs for an application by using the DescribeApplication operation',
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
      name: 'delete-application-output',
      description: 'Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application\'s configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination',
      options: [

        Option(
          name: '--application-name',
          description: 'The application name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--output-id',
          description: 'The ID of the configuration to delete. Each output configuration that is added to the application (either when the application is created or later) using the AddApplicationOutput operation has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the DescribeApplication operation to get the specific OutputId',
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
      name: 'delete-application-reference-data-source',
      description: 'Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application\'s configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The current application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--reference-id',
          description: 'The ID of the reference data source. When you add a reference data source to your application using the AddApplicationReferenceDataSource, Kinesis Data Analytics assigns an ID. You can use the DescribeApplication operation to get the reference ID',
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
      name: 'delete-application-snapshot',
      description: 'Deletes a snapshot of application state',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The identifier for the snapshot delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-creation-timestamp',
          description: 'The creation timestamp of the application snapshot to delete. You can retrieve this value using or',
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
      name: 'delete-application-vpc-configuration',
      description: 'Removes a VPC configuration from a Managed Service for Apache Flink application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The current application version ID. You must provide the CurrentApplicationVersionId or the ConditionalToken. You can retrieve the application version ID using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--vpc-configuration-id',
          description: 'The ID of the VPC configuration to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--conditional-token',
          description: 'A value you use to implement strong concurrency for application updates. You must provide the CurrentApplicationVersionId or the ConditionalToken. You get the application\'s current ConditionalToken using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
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
      name: 'describe-application',
      description: 'Returns information about a specific Managed Service for Apache Flink application. If you want to retrieve a list of all applications in your account, use the ListApplications operation',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--include-additional-details',
          description: 'Displays verbose information about a Managed Service for Apache Flink application, including the application\'s job plan'
        ),
        Option(
          name: '--no-include-additional-details',
          description: 'Displays verbose information about a Managed Service for Apache Flink application, including the application\'s job plan'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-application-operation',
      description: 'Returns information about a specific operation performed on a Managed Service for Apache Flink application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--operation-id',
          description: 'Identifier of the Operation',
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
      name: 'describe-application-snapshot',
      description: 'Returns information about a snapshot of application state data',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The identifier of an application snapshot. You can retrieve this value using',
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
      name: 'describe-application-version',
      description: 'Provides a detailed description of a specified version of the application. To see a list of all the versions of an application, invoke the ListApplicationVersions operation.  This operation is supported only for Managed Service for Apache Flink',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application for which you want to get the version description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--application-version-id',
          description: 'The ID of the application version for which you want to get the description',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'discover-input-schema',
      description: 'Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the streaming source',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--service-execution-role',
          description: 'The ARN of the role that is used to access the streaming source',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-starting-position-configuration',
          description: 'The point at which you want Kinesis Data Analytics to start reading records from the specified streaming source for discovery purposes',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--s3-configuration',
          description: 'Specify this parameter to discover a schema from data in an Amazon S3 object',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--input-processing-configuration',
          description: 'The InputProcessingConfiguration to use to preprocess the records before discovering the schema of the records',
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
      name: 'list-application-operations',
      description: 'Lists information about operations performed on a Managed Service for Apache Flink application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'Limit on the number of records returned in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If a previous command returned a pagination token, pass it into this value to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--operation',
          description: 'Type of operation performed on an application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--operation-status',
          description: 'Status of the operation performed on an application',
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
      name: 'list-application-snapshots',
      description: 'Lists information about the current application snapshots',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of an existing application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of application snapshots to list',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Use this parameter if you receive a NextToken response in a previous request that indicates that there is more output available. Set it to the value of the previous call\'s NextToken response to indicate where the output should continue from',
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
      name: 'list-application-versions',
      description: 'Lists all the versions for the specified application, including versions that were rolled back. The response also includes a summary of the configuration associated with each version. To get the complete description of a specific application version, invoke the DescribeApplicationVersion operation.  This operation is supported only for Managed Service for Apache Flink',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application for which you want to list all versions',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--limit',
          description: 'The maximum number of versions to list in this invocation of the operation',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see Using the Amazon Command Line Interface\'s Pagination Options',
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
      name: 'list-applications',
      description: 'Returns a list of Managed Service for Apache Flink applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication',
      options: [

        Option(
          name: '--limit',
          description: 'The maximum number of applications to list',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If a previous command returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see Using the Amazon Command Line Interface\'s Pagination Options',
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
      description: 'Retrieves the list of key-value tags assigned to the application. For more information, see Using Tagging',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the application for which to retrieve tags',
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
      name: 'rollback-application',
      description: 'Reverts the application to the previous running version. You can roll back an application if you suspect it is stuck in a transient status or in the running status.  You can roll back an application only if it is in the UPDATING, AUTOSCALING, or RUNNING statuses. When you rollback an application, it loads state data from the last successful snapshot. If the application has no snapshots, Managed Service for Apache Flink rejects the rollback request',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The current application version ID. You can retrieve the application version ID using DescribeApplication',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start-application',
      description: 'Starts the specified Managed Service for Apache Flink application. After creating an application, you must exclusively call this operation to start your application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-configuration',
          description: 'Identifies the run configuration (start parameters) of a Managed Service for Apache Flink application',
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
      name: 'stop-application',
      description: 'Stops the application from processing data. You can stop an application only if it is in the running status, unless you set the Force parameter to true. You can use the DescribeApplication operation to find the application status.  Managed Service for Apache Flink takes a snapshot when the application is stopped, unless Force is set to true',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the running application to stop',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--force',
          description: 'Set to true to force the application to stop. If you set Force to true, Managed Service for Apache Flink stops the application without taking a snapshot.   Force-stopping your application may lead to data loss or duplication. To prevent data loss or duplicate processing of data during application restarts, we recommend you to take frequent snapshots of your application.  You can only force stop a Managed Service for Apache Flink application. You can\'t force stop a SQL-based Kinesis Data Analytics application. The application must be in the STARTING, UPDATING, STOPPING, AUTOSCALING, or RUNNING status'
        ),
        Option(
          name: '--no-force',
          description: 'Set to true to force the application to stop. If you set Force to true, Managed Service for Apache Flink stops the application without taking a snapshot.   Force-stopping your application may lead to data loss or duplication. To prevent data loss or duplicate processing of data during application restarts, we recommend you to take frequent snapshots of your application.  You can only force stop a Managed Service for Apache Flink application. You can\'t force stop a SQL-based Kinesis Data Analytics application. The application must be in the STARTING, UPDATING, STOPPING, AUTOSCALING, or RUNNING status'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

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
      description: 'Adds one or more key-value tags to a Managed Service for Apache Flink application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the application to assign the tags',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The key-value tags to assign to the application',
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
      name: 'untag-resource',
      description: 'Removes one or more tags from a Managed Service for Apache Flink application. For more information, see Using Tagging',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the Managed Service for Apache Flink application from which to remove the tags',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'A list of keys of tags to remove from the specified application',
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
      name: 'update-application',
      description: 'Updates an existing Managed Service for Apache Flink application. Using this operation, you can update application code, input configuration, and output configuration.  Managed Service for Apache Flink updates the ApplicationVersionId each time you update your application',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--current-application-version-id',
          description: 'The current application version ID. You must provide the CurrentApplicationVersionId or the ConditionalToken.You can retrieve the application version ID using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--application-configuration-update',
          description: 'Describes application configuration updates',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--service-execution-role-update',
          description: 'Describes updates to the service execution role',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-configuration-update',
          description: 'Describes updates to the application\'s starting parameters',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--cloud-watch-logging-option-updates',
          description: 'Describes application Amazon CloudWatch logging option updates. You can only update existing CloudWatch logging options with this action. To add a new CloudWatch logging option, use AddApplicationCloudWatchLoggingOption',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--conditional-token',
          description: 'A value you use to implement strong concurrency for application updates. You must provide the CurrentApplicationVersionId or the ConditionalToken. You get the application\'s current ConditionalToken using DescribeApplication. For better concurrency support, use the ConditionalToken parameter instead of CurrentApplicationVersionId',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--runtime-environment-update',
          description: 'Updates the Managed Service for Apache Flink runtime environment used to run your code. To avoid issues you must:   Ensure your new jar and dependencies are compatible with the new runtime selected.   Ensure your new code\'s state is compatible with the snapshot from which your application will start',
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
      name: 'update-application-maintenance-configuration',
      description: 'Updates the maintenance configuration of the Managed Service for Apache Flink application.  You can invoke this operation on an application that is in one of the two following states: READY or RUNNING. If you invoke it when the application is in a state other than these two states, it throws a ResourceInUseException. The service makes use of the updated configuration the next time it schedules maintenance for the application. If you invoke this operation after the service schedules maintenance, the service will apply the configuration update the next time it schedules maintenance for the application. This means that you might not see the maintenance configuration update applied to the maintenance process that follows a successful invocation of this operation, but to the following maintenance process instead. To see the current maintenance configuration of your application, invoke the DescribeApplication operation. For information about application maintenance, see Managed Service for Apache Flink for Apache Flink Maintenance.  This operation is supported only for Managed Service for Apache Flink',
      options: [

        Option(
          name: '--application-name',
          description: 'The name of the application for which you want to update the maintenance configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--application-maintenance-configuration-update',
          description: 'Describes the application maintenance configuration update',
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
    )
  ]
);
