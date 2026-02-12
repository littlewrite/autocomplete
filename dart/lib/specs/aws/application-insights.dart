// Auto-generated from TypeScript source: application-insights.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `application-insights` CLI
final FigSpec applicationInsightsSpec = FigSpec(
  name: 'application-insights',
  description: 'Amazon CloudWatch Application Insights  Amazon CloudWatch Application Insights is a service that helps you detect common problems with your applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors',
  subcommands: [
    Subcommand(
      name: 'add-workload',
      description: 'Adds a workload to a component. Each component can have at most five workloads',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--workload-configuration',
          description: 'The configuration settings of the workload. The value is the escaped JSON of the configuration',
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
      name: 'create-application',
      description: 'Adds an application that is created from a resource group',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ops-center-enabled',
          description: 'When set to true, creates opsItems for any problems detected on an application'
        ),
        Option(
          name: '--no-ops-center-enabled',
          description: 'When set to true, creates opsItems for any problems detected on an application'
        ),
        Option(
          name: '--cwe-monitor-enabled',
          description: 'Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others'
        ),
        Option(
          name: '--no-cwe-monitor-enabled',
          description: 'Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others'
        ),
        Option(
          name: '--ops-item-sns-topic-arn',
          description: 'The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sns-notification-arn',
          description: 'The SNS notification topic ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'List of tags to add to the application. tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--auto-config-enabled',
          description: 'Indicates whether Application Insights automatically configures unmonitored resources in the resource group'
        ),
        Option(
          name: '--no-auto-config-enabled',
          description: 'Indicates whether Application Insights automatically configures unmonitored resources in the resource group'
        ),
        Option(
          name: '--auto-create',
          description: 'Configures all of the resources in the resource group by applying the recommended configurations'
        ),
        Option(
          name: '--no-auto-create',
          description: 'Configures all of the resources in the resource group by applying the recommended configurations'
        ),
        Option(
          name: '--grouping-type',
          description: 'Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to ACCOUNT_BASED',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--attach-missing-permission',
          description: 'If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing'
        ),
        Option(
          name: '--no-attach-missing-permission',
          description: 'If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-component',
      description: 'Creates a custom component by grouping similar standalone instances to monitor',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--resource-list',
          description: 'The list of resource ARNs that belong to the component',
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
      name: 'create-log-pattern',
      description: 'Adds an log pattern to a LogPatternSet',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-set-name',
          description: 'The name of the log pattern set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-name',
          description: 'The name of the log pattern',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern',
          description: 'The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--rank',
          description: 'Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern of rank 1,000,000 will be last to get matched. When you configure custom log patterns from the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank. Rank values less than 1 or greater than 1,000,000 are reserved for Amazon Web Services provided patterns',
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
      name: 'delete-application',
      description: 'Removes the specified application from monitoring. Does not delete the application',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-component',
      description: 'Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-log-pattern',
      description: 'Removes the specified log pattern from a LogPatternSet',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-set-name',
          description: 'The name of the log pattern set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-name',
          description: 'The name of the log pattern',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Describes the application',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-component',
      description: 'Describes a component and lists the resources that are grouped together in a component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-component-configuration',
      description: 'Describes the monitoring configuration of the component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-component-configuration-recommendation',
      description: 'Describes the recommended monitoring configuration of the component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--tier',
          description: 'The tier of the application component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workload-name',
          description: 'The name of the workload. The name of the workload is required when the tier of the application component is SAP_ASE_SINGLE_NODE or SAP_ASE_HIGH_AVAILABILITY',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recommendation-type',
          description: 'The recommended configuration type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-log-pattern',
      description: 'Describe a specific log pattern from a LogPatternSet',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-set-name',
          description: 'The name of the log pattern set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-name',
          description: 'The name of the log pattern',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-observation',
      description: 'Describes an anomaly or error with the application',
      options: [
        Option(
          name: '--observation-id',
          description: 'The ID of the observation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-problem',
      description: 'Describes an application problem',
      options: [
        Option(
          name: '--problem-id',
          description: 'The ID of the problem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the owner of the resource group affected by the problem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-problem-observations',
      description: 'Describes the anomalies or errors associated with the problem',
      options: [
        Option(
          name: '--problem-id',
          description: 'The ID of the problem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-workload',
      description: 'Describes a workload and its configuration',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--workload-id',
          description: 'The ID of the workload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the workload owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Lists the IDs of the applications that you are monitoring',
      options: [
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Lists the auto-grouped, standalone, and custom components of the application',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-configuration-history',
      description: 'Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'Resource group to which the application belongs',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The start time of the event',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'The end time of the event',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--event-status',
          description: 'The status of the configuration update event. Possible values include INFO, WARN, and ERROR',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results returned by ListConfigurationHistory in paginated output. When this parameter is used, ListConfigurationHistory returns only MaxResults in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another ListConfigurationHistory request with the returned NextToken value. If this parameter is not used, then ListConfigurationHistory returns all results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The NextToken value returned from a previous paginated ListConfigurationHistory request where MaxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the NextToken value. This value is null when there are no more results to return',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-log-pattern-sets',
      description: 'Lists the log pattern sets in the specific application',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-log-patterns',
      description: 'Lists the log patterns in the specific log LogPatternSet',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-set-name',
          description: 'The name of the log pattern set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-problems',
      description: 'Lists the problems with your application',
      options: [
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID for the resource group owner',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The time when the problem was detected, in epoch seconds. If you don\'t specify a time frame for the request, problems within the past seven days are returned',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--end-time',
          description: 'The time when the problem ended, in epoch seconds. If not specified, problems within the past seven days are returned',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
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
          name: '--visibility',
          description: 'Specifies whether or not you can view the problem. If not specified, visible and ignored problems are returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the application that you want to retrieve tag information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-workloads',
      description: 'Lists the workloads that are configured on a given component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--max-results',
          description: 'The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token to request the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--account-id',
          description: 'The Amazon Web Services account ID of the owner of the workload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove-workload',
      description: 'Remove workload from a component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--workload-id',
          description: 'The ID of the workload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the application that you want to add one or more tags to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of tags that to add to the application. A tag consists of a required tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters',
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
      description: 'Remove one or more tags (keys and values) from a specified application',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the application that you want to remove one or more tags from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value. To remove more than one tag from the application, append the TagKeys parameter and argument for each additional tag to remove, separated by an ampersand',
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
      description: 'Updates the application',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--ops-center-enabled',
          description: 'When set to true, creates opsItems for any problems detected on an application'
        ),
        Option(
          name: '--no-ops-center-enabled',
          description: 'When set to true, creates opsItems for any problems detected on an application'
        ),
        Option(
          name: '--cwe-monitor-enabled',
          description: 'Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others'
        ),
        Option(
          name: '--no-cwe-monitor-enabled',
          description: 'Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others'
        ),
        Option(
          name: '--ops-item-sns-topic-arn',
          description: 'The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sns-notification-arn',
          description: 'The SNS topic ARN. Allows you to receive SNS notifications for updates and issues with an application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--remove-sns-topic',
          description: 'Disassociates the SNS topic from the opsItem created for detected problems'
        ),
        Option(
          name: '--no-remove-sns-topic',
          description: 'Disassociates the SNS topic from the opsItem created for detected problems'
        ),
        Option(
          name: '--auto-config-enabled',
          description: 'Turns auto-configuration on or off'
        ),
        Option(
          name: '--no-auto-config-enabled',
          description: 'Turns auto-configuration on or off'
        ),
        Option(
          name: '--attach-missing-permission',
          description: 'If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing'
        ),
        Option(
          name: '--no-attach-missing-permission',
          description: 'If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-component',
      description: 'Updates the custom component name and/or the list of resources that make up the component',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--new-component-name',
          description: 'The new name of the component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-list',
          description: 'The list of resource ARNs that belong to the component',
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
      name: 'update-component-configuration',
      description: 'Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--monitor',
          description: 'Indicates whether the application component is monitored'
        ),
        Option(
          name: '--no-monitor',
          description: 'Indicates whether the application component is monitored'
        ),
        Option(
          name: '--tier',
          description: 'The tier of the application component',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--component-configuration',
          description: 'The configuration settings of the component. The value is the escaped JSON of the configuration. For more information about the JSON format, see Working with JSON. You can send a request to DescribeComponentConfigurationRecommendation to see the recommended configuration for a component. For the complete format of the component configuration file, see Component Configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--auto-config-enabled',
          description: 'Automatically configures the component by applying the recommended configurations'
        ),
        Option(
          name: '--no-auto-config-enabled',
          description: 'Automatically configures the component by applying the recommended configurations'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-log-pattern',
      description: 'Adds a log pattern to a LogPatternSet',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-set-name',
          description: 'The name of the log pattern set',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern-name',
          description: 'The name of the log pattern',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--pattern',
          description: 'The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--rank',
          description: 'Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern of rank 1,000,000 will be last to get matched. When you configure custom log patterns from the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank. Rank values less than 1 or greater than 1,000,000 are reserved for Amazon Web Services provided patterns',
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
      name: 'update-problem',
      description: 'Updates the visibility of the problem or specifies the problem as RESOLVED',
      options: [
        Option(
          name: '--problem-id',
          description: 'The ID of the problem',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--update-status',
          description: 'The status of the problem. Arguments can be passed for only problems that show a status of RECOVERING',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--visibility',
          description: 'The visibility of a problem. When you pass a value of IGNORED, the problem is removed from the default view, and all notifications for the problem are suspended. When VISIBLE is passed, the IGNORED action is reversed',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-workload',
      description: 'Adds a workload to a component. Each component can have at most five workloads',
      options: [
        Option(
          name: '--resource-group-name',
          description: 'The name of the resource group',
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
          name: '--workload-id',
          description: 'The ID of the workload',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workload-configuration',
          description: 'The configuration settings of the workload. The value is the escaped JSON of the configuration',
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
