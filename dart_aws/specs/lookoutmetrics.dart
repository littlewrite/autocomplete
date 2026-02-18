// Auto-generated from TypeScript source: lookoutmetrics.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lookoutmetrics` CLI
final FigSpec lookoutmetricsSpec = FigSpec(
  name: 'lookoutmetrics',
  description: 'This is the Amazon Lookout for Metrics API Reference. For an introduction to the service with tutorials for getting started, visit Amazon Lookout for Metrics Developer Guide',
  subcommands: [

    Subcommand(
      name: 'activate-anomaly-detector',
      description: 'Activates an anomaly detector',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'back-test-anomaly-detector',
      description: 'Runs a backtest for anomaly detection for the specified resource',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-alert',
      description: 'Creates an alert for an anomaly detector',
      options: [

        Option(
          name: '--alert-name',
          description: 'The name of the alert',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--alert-sensitivity-threshold',
          description: 'An integer from 0 to 100 specifying the alert sensitivity threshold',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--alert-description',
          description: 'A description of the alert',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the detector to which the alert is attached',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--action',
          description: 'Action that will be triggered when there is an alert',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of tags to apply to the alert',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--alert-filters',
          description: 'The configuration of the alert filters, containing MetricList and DimensionFilterList',
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
      name: 'create-anomaly-detector',
      description: 'Creates an anomaly detector',
      options: [

        Option(
          name: '--anomaly-detector-name',
          description: 'The name of the detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-description',
          description: 'A description of the detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-config',
          description: 'Contains information about the configuration of the anomaly detector',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--kms-key-arn',
          description: 'The ARN of the KMS key to use to encrypt your data',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of tags to apply to the anomaly detector',
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
      name: 'create-metric-set',
      description: 'Creates a dataset',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the anomaly detector that will use the dataset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-set-name',
          description: 'The name of the dataset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-set-description',
          description: 'A description of the dataset you are creating',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-list',
          description: 'A list of metrics that the dataset will contain',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--offset',
          description: 'After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--timestamp-column',
          description: 'Contains information about the column used for tracking time in your source data',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--dimension-list',
          description: 'A list of the fields you want to treat as dimensions',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--metric-set-frequency',
          description: 'The frequency with which the source data will be analyzed for anomalies',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-source',
          description: 'Contains information about how the source data should be interpreted',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--timezone',
          description: 'The time zone in which your source data was recorded',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of tags to apply to the dataset',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--dimension-filter-list',
          description: 'A list of filters that specify which data is kept for anomaly detection',
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
      name: 'deactivate-anomaly-detector',
      description: 'Deactivates an anomaly detector',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-alert',
      description: 'Deletes an alert',
      options: [

        Option(
          name: '--alert-arn',
          description: 'The ARN of the alert to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-anomaly-detector',
      description: 'Deletes a detector. Deleting an anomaly detector will delete all of its corresponding resources including any configured datasets and alerts',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the detector to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-alert',
      description: 'Describes an alert. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
      options: [

        Option(
          name: '--alert-arn',
          description: 'The ARN of the alert to describe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-anomaly-detection-executions',
      description: 'Returns information about the status of the specified anomaly detection jobs',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--timestamp',
          description: 'The timestamp of the anomaly detection job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The number of items to return in the response',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Specify the pagination token that\'s returned by a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-anomaly-detector',
      description: 'Describes a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the detector to describe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-metric-set',
      description: 'Describes a dataset. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
      options: [

        Option(
          name: '--metric-set-arn',
          description: 'The ARN of the dataset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'detect-metric-set-config',
      description: 'Detects an Amazon S3 dataset\'s file format, interval, and offset',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'An anomaly detector ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--auto-detection-metric-source',
          description: 'A data source',
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
      name: 'get-anomaly-group',
      description: 'Returns details about a group of anomalous metrics',
      options: [

        Option(
          name: '--anomaly-group-id',
          description: 'The ID of the anomaly group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-data-quality-metrics',
      description: 'Returns details about the requested data quality metrics',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector that you want to investigate',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-set-arn',
          description: 'The Amazon Resource Name (ARN) of a specific data quality metric set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-feedback',
      description: 'Get feedback for an anomaly group',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-group-time-series-feedback',
          description: 'The anomalous metric and group ID',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
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
          name: '--next-token',
          description: 'Specify the pagination token that\'s returned by a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-sample-data',
      description: 'Returns a selection of sample records from an Amazon S3 datasource',
      options: [

        Option(
          name: '--s3-source-config',
          description: 'A datasource bucket in Amazon S3',
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
      name: 'list-alerts',
      description: 'Lists the alerts attached to a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the alert\'s detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If the result of the previous request is truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results that will be displayed by the request',
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
      name: 'list-anomaly-detectors',
      description: 'Lists the detectors in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
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
          name: '--next-token',
          description: 'If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-anomaly-group-related-metrics',
      description: 'Returns a list of measures that are potential causes or effects of an anomaly group',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-group-id',
          description: 'The ID of the anomaly group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--relationship-type-filter',
          description: 'Filter for potential causes (CAUSE_OF_INPUT_ANOMALY_GROUP) or downstream effects (EFFECT_OF_INPUT_ANOMALY_GROUP) of the anomaly group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
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
          name: '--next-token',
          description: 'Specify the pagination token that\'s returned by a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-anomaly-group-summaries',
      description: 'Returns a list of anomaly groups',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sensitivity-threshold',
          description: 'The minimum severity score for inclusion in the output',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
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
          name: '--next-token',
          description: 'Specify the pagination token that\'s returned by a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-anomaly-group-time-series',
      description: 'Gets a list of anomalous metrics for a measure in an anomaly group',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-group-id',
          description: 'The ID of the anomaly group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-name',
          description: 'The name of the measure field',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
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
          name: '--next-token',
          description: 'Specify the pagination token that\'s returned by a previous request to retrieve the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-metric-sets',
      description: 'Lists the datasets in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the anomaly detector containing the metrics sets to list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
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
          name: '--next-token',
          description: 'If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

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
      description: 'Gets a list of tags for a detector, dataset, or alert',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s Amazon Resource Name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'put-feedback',
      description: 'Add feedback for an anomalous metric',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The Amazon Resource Name (ARN) of the anomaly detector',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-group-time-series-feedback',
          description: 'Feedback for an anomalous metric',
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
      name: 'tag-resource',
      description: 'Adds tags to a detector, dataset, or alert',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s Amazon Resource Name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following symbols: _.:/=+@-',
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
      description: 'Removes tags from a detector, dataset, or alert',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource\'s Amazon Resource Name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'Keys to remove from the resource\'s tags',
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
      name: 'update-alert',
      description: 'Make changes to an existing alert',
      options: [

        Option(
          name: '--alert-arn',
          description: 'The ARN of the alert to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--alert-description',
          description: 'A description of the alert',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--alert-sensitivity-threshold',
          description: 'An integer from 0 to 100 specifying the alert sensitivity threshold',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--action',
          description: 'Action that will be triggered when there is an alert',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--alert-filters',
          description: 'The configuration of the alert filters, containing MetricList and DimensionFilterList',
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
      name: 'update-anomaly-detector',
      description: 'Updates a detector. After activation, you can only change a detector\'s ingestion delay and description',
      options: [

        Option(
          name: '--anomaly-detector-arn',
          description: 'The ARN of the detector to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--kms-key-arn',
          description: 'The Amazon Resource Name (ARN) of an AWS KMS encryption key',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-description',
          description: 'The updated detector description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--anomaly-detector-config',
          description: 'Contains information about the configuration to which the detector will be updated',
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
      name: 'update-metric-set',
      description: 'Updates a dataset',
      options: [

        Option(
          name: '--metric-set-arn',
          description: 'The ARN of the dataset to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-set-description',
          description: 'The dataset\'s description',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-list',
          description: 'The metric list',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--offset',
          description: 'After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--timestamp-column',
          description: 'The timestamp column',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--dimension-list',
          description: 'The dimension list',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--metric-set-frequency',
          description: 'The dataset\'s interval',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--metric-source',
          description: 'Contains information about source data used to generate metrics',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--dimension-filter-list',
          description: 'Describes a list of filters for choosing specific dimensions and specific values. Each filter consists of the dimension and one of its values that you want to include. When multiple dimensions or values are specified, the dimensions are joined with an AND operation and the values are joined with an OR operation',
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
