// Auto-generated from TypeScript source: databrew.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `databrew` CLI
final FigSpec databrewSpec = FigSpec(
  name: 'databrew',
  description: 'Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew simplifies data preparation tasks, targeting data issues that are hard to spot and time-consuming to fix. DataBrew empowers users of all technical levels to visualize the data and perform one-click data transformations, with no coding required',
  subcommands: [

    Subcommand(
      name: 'batch-delete-recipe-version',
      description: 'Deletes one or more versions of a recipe at a time. The entire request will be rejected if:   The recipe does not exist.   There is an invalid version identifier in the list of versions.   The version list is empty.   The version list size exceeds 50.   The version list contains duplicate entries.   The request will complete successfully, but with partial failures, if:   A version does not exist.   A version is being used by a job.   You specify LATEST_WORKING, but it\'s being used by a project.   The version fails to be deleted.   The LATEST_WORKING version will only be deleted if the recipe has no other versions. If you try to delete LATEST_WORKING while other versions exist (or if they can\'t be deleted), then LATEST_WORKING will be listed as partial failure in the response',
      options: [

        Option(
          name: '--name',
          description: 'The name of the recipe whose versions are to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-versions',
          description: 'An array of version identifiers, for the recipe versions to be deleted. You can specify numeric versions (X.Y) or LATEST_WORKING. LATEST_PUBLISHED is not supported',
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
      name: 'create-dataset',
      description: 'Creates a new DataBrew dataset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'The file format of a dataset that is created from an Amazon S3 file or folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--format-options',
          description: 'Represents a set of options that define the structure of either comma-separated value (CSV), Excel, or JSON input',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--input',
          description: 'Represents information on how DataBrew can find data, in either the Glue Data Catalog or Amazon S3',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--path-options',
          description: 'A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this dataset',
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
      name: 'create-profile-job',
      description: 'Creates a new job to analyze a dataset and create its data profile',
      options: [

        Option(
          name: '--dataset-name',
          description: 'The name of the dataset that this job is to act upon',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-key-arn',
          description: 'The Amazon Resource Name (ARN) of an encryption key that is used to protect the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-mode',
          description: 'The encryption mode for the job, which can be one of the following:    SSE-KMS - SSE-KMS - Server-side encryption with KMS-managed keys.    SSE-S3 - Server-side encryption with keys managed by Amazon S3',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-subscription',
          description: 'Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum number of nodes that DataBrew can use when the job processes data',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries',
          description: 'The maximum number of times to retry the job after a job run fails',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--output-location',
          description: 'Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read input data, or write output from a job',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'Configuration for profile jobs. Used to select columns, do evaluations, and override default parameters of evaluations. When configuration is null, the profile job will run with default settings',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--validation-configurations',
          description: 'List of validation configurations that are applied to the profile job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to be assumed when DataBrew runs the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this job',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The job\'s timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--job-sample',
          description: 'Sample configuration for profile jobs only. Determines the number of rows on which the profile job will be executed. If a JobSample value is not provided, the default value will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the size parameter',
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
      name: 'create-project',
      description: 'Creates a new DataBrew project',
      options: [

        Option(
          name: '--dataset-name',
          description: 'The name of an existing dataset to associate this project with',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-name',
          description: 'The name of an existing recipe to associate with the project',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sample',
          description: 'Represents the sample size and sampling type for DataBrew to use for interactive data analysis',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to be assumed for this request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this project',
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
      name: 'create-recipe',
      description: 'Creates a new DataBrew recipe',
      options: [

        Option(
          name: '--description',
          description: 'A description for the recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--steps',
          description: 'An array containing the steps to be performed by the recipe. Each recipe step consists of one recipe action and (optionally) an array of condition expressions',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this recipe',
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
      name: 'create-recipe-job',
      description: 'Creates a new job to transform input data, using steps defined in an existing Glue DataBrew recipe',
      options: [

        Option(
          name: '--dataset-name',
          description: 'The name of the dataset that this job processes',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-key-arn',
          description: 'The Amazon Resource Name (ARN) of an encryption key that is used to protect the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-mode',
          description: 'The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with keys managed by KMS.    SSE-S3 - Server-side encryption with keys managed by Amazon S3',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-subscription',
          description: 'Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum number of nodes that DataBrew can consume when the job processes data',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries',
          description: 'The maximum number of times to retry the job after a job run fails',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--outputs',
          description: 'One or more artifacts that represent the output from running the job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--data-catalog-outputs',
          description: 'One or more artifacts that represent the Glue Data Catalog output from running the job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--database-outputs',
          description: 'Represents a list of JDBC database output objects which defines the output destination for a DataBrew recipe job to write to',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--project-name',
          description: 'Either the name of an existing project, or a combination of a recipe and a dataset to associate with the recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-reference',
          description: 'Represents the name and version of a DataBrew recipe',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to be assumed when DataBrew runs the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this job',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The job\'s timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT',
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
      name: 'create-ruleset',
      description: 'Creates a new ruleset that can be used in a profile job to validate the data quality of a dataset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the ruleset to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the ruleset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-arn',
          description: 'The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is associated with',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--rules',
          description: 'A list of rules that are defined with the ruleset. A rule includes one or more checks to be validated on a DataBrew dataset',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to the ruleset',
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
      name: 'create-schedule',
      description: 'Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific date and time, or at regular intervals',
      options: [

        Option(
          name: '--job-names',
          description: 'The name or names of one or more jobs to be run',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--cron-expression',
          description: 'The date or dates and time or times when the jobs are to be run. For more information, see Cron expressions in the Glue DataBrew Developer Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Metadata tags to apply to this schedule',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-dataset',
      description: 'Deletes a dataset from DataBrew',
      options: [

        Option(
          name: '--name',
          description: 'The name of the dataset to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-job',
      description: 'Deletes the specified DataBrew job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-project',
      description: 'Deletes an existing DataBrew project',
      options: [

        Option(
          name: '--name',
          description: 'The name of the project to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-recipe-version',
      description: 'Deletes a single version of a DataBrew recipe',
      options: [

        Option(
          name: '--name',
          description: 'The name of the recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-version',
          description: 'The version of the recipe to be deleted. You can specify a numeric versions (X.Y) or LATEST_WORKING. LATEST_PUBLISHED is not supported',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-ruleset',
      description: 'Deletes a ruleset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the ruleset to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-schedule',
      description: 'Deletes the specified DataBrew schedule',
      options: [

        Option(
          name: '--name',
          description: 'The name of the schedule to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-dataset',
      description: 'Returns the definition of a specific DataBrew dataset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the dataset to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-job',
      description: 'Returns the definition of a specific DataBrew job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-job-run',
      description: 'Represents one run of a DataBrew job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job being processed during this run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-id',
          description: 'The unique identifier of the job run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-project',
      description: 'Returns the definition of a specific DataBrew project',
      options: [

        Option(
          name: '--name',
          description: 'The name of the project to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-recipe',
      description: 'Returns the definition of a specific DataBrew recipe corresponding to a particular version',
      options: [

        Option(
          name: '--name',
          description: 'The name of the recipe to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-version',
          description: 'The recipe version identifier. If this parameter isn\'t specified, then the latest published version is returned',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-ruleset',
      description: 'Retrieves detailed information about the ruleset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the ruleset to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'describe-schedule',
      description: 'Returns the definition of a specific DataBrew schedule',
      options: [

        Option(
          name: '--name',
          description: 'The name of the schedule to be described',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-datasets',
      description: 'Lists all of the DataBrew datasets',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-job-runs',
      description: 'Lists all of the previous runs of a particular DataBrew job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      description: 'Lists all of the DataBrew jobs that are defined',
      options: [

        Option(
          name: '--dataset-name',
          description: 'The name of a dataset. Using this parameter indicates to return only those jobs that act on the specified dataset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token generated by DataBrew that specifies where to continue pagination if a previous request was truncated. To get the next set of pages, pass in the NextToken value from the response object of the previous page call',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--project-name',
          description: 'The name of a project. Using this parameter indicates to return only those jobs that are associated with the specified project',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-projects',
      description: 'Lists all of the DataBrew projects that are defined',
      options: [

        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
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
      name: 'list-recipe-versions',
      description: 'Lists the versions of a particular DataBrew recipe, except for LATEST_WORKING',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the recipe for which to return version information',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-recipes',
      description: 'Lists all of the DataBrew recipes that are defined',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-version',
          description: 'Return only those recipes with a version identifier of LATEST_WORKING or LATEST_PUBLISHED. If RecipeVersion is omitted, ListRecipes returns all of the LATEST_PUBLISHED recipe versions. Valid values: LATEST_WORKING | LATEST_PUBLISHED',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-rulesets',
      description: 'List all rulesets available in the current account or rulesets associated with a specific resource (dataset)',
      options: [

        Option(
          name: '--target-arn',
          description: 'The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter indicates to return only those rulesets that are associated with the specified resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token generated by DataBrew that specifies where to continue pagination if a previous request was truncated. To get the next set of pages, pass in the NextToken value from the response object of the previous page call',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-schedules',
      description: 'Lists the DataBrew schedules that are defined',
      options: [

        Option(
          name: '--job-name',
          description: 'The name of the job that these schedules apply to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in this request',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token returned by a previous call to retrieve the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      description: 'Lists all the tags for a DataBrew resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'publish-recipe',
      description: 'Publishes a new version of a DataBrew recipe',
      options: [

        Option(
          name: '--description',
          description: 'A description of the recipe to be published, for this version of the recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the recipe to be published',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'send-project-session-action',
      description: 'Performs a recipe step within an interactive DataBrew session that\'s currently open',
      options: [

        Option(
          name: '--preview',
          description: 'If true, the result of the recipe step will be returned, but not applied'
        ),
        Option(
          name: '--no-preview',
          description: 'If true, the result of the recipe step will be returned, but not applied'
        ),
        Option(
          name: '--name',
          description: 'The name of the project to apply the action to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recipe-step',
          description: 'Represents a single step from a DataBrew recipe to be performed',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--step-index',
          description: 'The index from which to preview a step. This index is used to preview the result of steps that have already been applied, so that the resulting view frame is from earlier in the view frame stack',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--client-session-id',
          description: 'A unique identifier for an interactive session that\'s currently open and ready for work. The action will be performed on this session',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--view-frame',
          description: 'Represents the data being transformed during an action',
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
      name: 'start-job-run',
      description: 'Runs a DataBrew job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job to be run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start-project-session',
      description: 'Creates an interactive session, enabling you to manipulate data in a DataBrew project',
      options: [

        Option(
          name: '--name',
          description: 'The name of the project to act upon',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--assume-control',
          description: 'A value that, if true, enables you to take control of a session, even if a different client is currently accessing the project'
        ),
        Option(
          name: '--no-assume-control',
          description: 'A value that, if true, enables you to take control of a session, even if a different client is currently accessing the project'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stop-job-run',
      description: 'Stops a particular run of a job',
      options: [

        Option(
          name: '--name',
          description: 'The name of the job to be stopped',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-id',
          description: 'The ID of the job run to be stopped',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

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
      description: 'Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or schedule',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The DataBrew resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or a recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'One or more tags to be assigned to the resource',
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
      description: 'Removes metadata tags from a DataBrew resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'A DataBrew resource from which you want to remove a tag or tags. The value for this parameter is an Amazon Resource Name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The tag keys (names) of one or more tags to be removed',
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
      name: 'update-dataset',
      description: 'Modifies the definition of an existing DataBrew dataset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the dataset to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'The file format of a dataset that is created from an Amazon S3 file or folder',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--format-options',
          description: 'Represents a set of options that define the structure of either comma-separated value (CSV), Excel, or JSON input',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--input',
          description: 'Represents information on how DataBrew can find data, in either the Glue Data Catalog or Amazon S3',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--path-options',
          description: 'A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset',
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
      name: 'update-profile-job',
      description: 'Modifies the definition of an existing profile job',
      options: [

        Option(
          name: '--configuration',
          description: 'Configuration for profile jobs. Used to select columns, do evaluations, and override default parameters of evaluations. When configuration is null, the profile job will run with default settings',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--encryption-key-arn',
          description: 'The Amazon Resource Name (ARN) of an encryption key that is used to protect the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-mode',
          description: 'The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with keys managed by KMS.    SSE-S3 - Server-side encryption with keys managed by Amazon S3',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the job to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-subscription',
          description: 'Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum number of compute nodes that DataBrew can use when the job processes data',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries',
          description: 'The maximum number of times to retry the job after a job run fails',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--output-location',
          description: 'Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read input data, or write output from a job',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--validation-configurations',
          description: 'List of validation configurations that are applied to the profile job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to be assumed when DataBrew runs the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The job\'s timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--job-sample',
          description: 'Sample configuration for Profile Jobs only. Determines the number of rows on which the Profile job will be executed. If a JobSample value is not provided for profile jobs, the default value will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the size parameter',
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
      name: 'update-project',
      description: 'Modifies the definition of an existing DataBrew project',
      options: [

        Option(
          name: '--sample',
          description: 'Represents the sample size and sampling type for DataBrew to use for interactive data analysis',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM role to be assumed for this request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the project to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-recipe',
      description: 'Modifies the definition of the LATEST_WORKING version of a DataBrew recipe',
      options: [

        Option(
          name: '--description',
          description: 'A description of the recipe',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the recipe to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--steps',
          description: 'One or more steps to be performed by the recipe. Each step consists of an action, and the conditions under which the action should succeed',
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
      name: 'update-recipe-job',
      description: 'Modifies the definition of an existing DataBrew recipe job',
      options: [

        Option(
          name: '--encryption-key-arn',
          description: 'The Amazon Resource Name (ARN) of an encryption key that is used to protect the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--encryption-mode',
          description: 'The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with keys managed by KMS.    SSE-S3 - Server-side encryption with keys managed by Amazon S3',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the job to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-subscription',
          description: 'Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum number of nodes that DataBrew can consume when the job processes data',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--max-retries',
          description: 'The maximum number of times to retry the job after a job run fails',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--outputs',
          description: 'One or more artifacts that represent the output from running the job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--data-catalog-outputs',
          description: 'One or more artifacts that represent the Glue Data Catalog output from running the job',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--database-outputs',
          description: 'Represents a list of JDBC database output objects which defines the output destination for a DataBrew recipe job to write into',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to be assumed when DataBrew runs the job',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'The job\'s timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT',
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
      name: 'update-ruleset',
      description: 'Updates specified ruleset',
      options: [

        Option(
          name: '--name',
          description: 'The name of the ruleset to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The description of the ruleset',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--rules',
          description: 'A list of rules that are defined with the ruleset. A rule includes one or more checks to be validated on a DataBrew dataset',
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
      name: 'update-schedule',
      description: 'Modifies the definition of an existing DataBrew schedule',
      options: [

        Option(
          name: '--job-names',
          description: 'The name or names of one or more jobs to be run for this schedule',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--cron-expression',
          description: 'The date or dates and time or times when the jobs are to be run. For more information, see Cron expressions in the Glue DataBrew Developer Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the schedule to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
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
