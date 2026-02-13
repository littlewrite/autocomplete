// Auto-generated from TypeScript source: redshift-serverless.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `redshift-serverless` CLI
final FigSpec redshiftServerlessSpec = FigSpec(
  name: 'redshift-serverless',
  description: 'This is an interface reference for Amazon Redshift Serverless. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift Serverless.  Amazon Redshift Serverless automatically provisions data warehouse capacity and intelligently scales the underlying resources based on workload demands. Amazon Redshift Serverless adjusts capacity in seconds to deliver consistently high performance and simplified operations for even the most demanding and volatile workloads. Amazon Redshift Serverless lets you focus on using your data to acquire new insights for your business and customers.   To learn more about Amazon Redshift Serverless, see What is Amazon Redshift Serverless?',
  subcommands: [

    Subcommand(
      name: 'convert-recovery-point-to-snapshot',
      description: 'Converts a recovery point to a snapshot. For more information about recovery points and snapshots, see Working with snapshots and recovery points',
      options: [

        Option(
          name: '--recovery-point-id',
          description: 'The unique identifier of the recovery point',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--retention-period',
          description: 'How long to retain the snapshot',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'An array of Tag objects to associate with the created snapshot',
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
      name: 'create-custom-domain-association',
      description: 'Creates a custom domain association for Amazon Redshift Serverless',
      options: [

        Option(
          name: '--custom-domain-certificate-arn',
          description: 'The custom domain name’s certificate Amazon resource name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name to associate with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the database',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-endpoint-access',
      description: 'Creates an Amazon Redshift Serverless managed VPC endpoint',
      options: [

        Option(
          name: '--endpoint-name',
          description: 'The name of the VPC endpoint. An endpoint name must contain 1-30 characters. Valid characters are A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. The name can\'t contain two consecutive hyphens or end with a hyphen',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner-account',
          description: 'The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--subnet-ids',
          description: 'The unique identifers of subnets from which Amazon Redshift Serverless chooses one to deploy a VPC endpoint',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--vpc-security-group-ids',
          description: 'The unique identifiers of the security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup to associate with the VPC endpoint',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-namespace',
      description: 'Creates a namespace in Amazon Redshift Serverless',
      options: [

        Option(
          name: '--admin-password-secret-kms-key-id',
          description: 'The ID of the Key Management Service (KMS) key used to encrypt and store the namespace\'s admin credentials secret. You can only use this parameter if manageAdminPassword is true',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--admin-user-password',
          description: 'The password of the administrator for the first database created in the namespace. You can\'t use adminUserPassword if manageAdminPassword is true',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--admin-username',
          description: 'The username of the administrator for the first database created in the namespace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--db-name',
          description: 'The name of the first database created in the namespace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--default-iam-role-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--iam-roles',
          description: 'A list of IAM roles to associate with the namespace',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--kms-key-id',
          description: 'The ID of the Amazon Web Services Key Management Service key used to encrypt your data',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-exports',
          description: 'The types of logs the namespace can export. Available export types are userlog, connectionlog, and useractivitylog',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the namespace\'s admin credentials. You can\'t use adminUserPassword if manageAdminPassword is true. If manageAdminPassword is false or not set, Amazon Redshift uses adminUserPassword for the admin user account\'s password'
        ),
        Option(
          name: '--no-manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the namespace\'s admin credentials. You can\'t use adminUserPassword if manageAdminPassword is true. If manageAdminPassword is false or not set, Amazon Redshift uses adminUserPassword for the admin user account\'s password'
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--redshift-idc-application-arn',
          description: 'The ARN for the Redshift application that integrates with IAM Identity Center',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A list of tag instances',
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
      name: 'create-scheduled-action',
      description: 'Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action. For example, you can create a schedule of when to run the CreateSnapshot API operation',
      options: [

        Option(
          name: '--enabled',
          description: 'Indicates whether the schedule is enabled. If false, the scheduled action does not trigger. For more information about state of the scheduled action, see ScheduledAction'
        ),
        Option(
          name: '--no-enabled',
          description: 'Indicates whether the schedule is enabled. If false, the scheduled action does not trigger. For more information about state of the scheduled action, see ScheduledAction'
        ),
        Option(
          name: '--end-time',
          description: 'The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace for which to create a scheduled action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see Using Identity-Based Policies for Amazon Redshift in the Amazon Redshift Management Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--schedule',
          description: 'The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.   Format of at timestamp is yyyy-mm-ddThh:mm:ss. For example, 2016-03-04T17:27:00.   Format of cron expression is (Minutes Hours Day-of-month Month Day-of-week Year). For example, "(0 10 ? * MON *)". For more information, see Cron Expressions in the Amazon CloudWatch Events User Guide',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--scheduled-action-description',
          description: 'The description of the scheduled action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scheduled-action-name',
          description: 'The name of the scheduled action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--target-action',
          description: 'A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.  "{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"',
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
      name: 'create-snapshot',
      description: 'Creates a snapshot of all databases in a namespace. For more information about snapshots, see  Working with snapshots and recovery points',
      options: [

        Option(
          name: '--namespace-name',
          description: 'The namespace to create a snapshot for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--retention-period',
          description: 'How long to retain the created snapshot',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'An array of Tag objects to associate with the snapshot',
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
      name: 'create-snapshot-copy-configuration',
      description: 'Creates a snapshot copy configuration that lets you copy snapshots to another Amazon Web Services Region',
      options: [

        Option(
          name: '--destination-kms-key-id',
          description: 'The KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--destination-region',
          description: 'The destination Amazon Web Services Region that you want to copy snapshots to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to copy snapshots from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-retention-period',
          description: 'The retention period of the snapshots that you copy to the destination Amazon Web Services Region',
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
      name: 'create-usage-limit',
      description: 'Creates a usage limit for a specified Amazon Redshift Serverless usage type. The usage limit is identified by the returned usage limit identifier',
      options: [

        Option(
          name: '--amount',
          description: 'The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--breach-action',
          description: 'The action that Amazon Redshift Serverless takes when the limit is reached. The default is log',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--period',
          description: 'The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--usage-type',
          description: 'The type of Amazon Redshift Serverless usage to create a usage limit for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create-workgroup',
      description: 'Creates an workgroup in Amazon Redshift Serverless. VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that you own in a Region from reaching or being reached from the internet through internet gateways and egress-only internet gateways. If a workgroup is in an account with VPC BPA turned on, the following capabilities are blocked:    Creating a public access workgroup   Modifying a private workgroup to public   Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is public   For more information about VPC BPA, see Block public access to VPCs and subnets in the Amazon VPC User Guide',
      options: [

        Option(
          name: '--base-capacity',
          description: 'The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs)',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--config-parameters',
          description: 'An array of parameters to set for advanced control over a database. The options are auto_mv, datestyle, enable_case_sensitive_identifier, enable_user_activity_logging, query_group, search_path, require_ssl, use_fips_ssl, and query monitoring metrics that let you define performance boundaries. For more information about query monitoring rules and available metrics, see  Query monitoring metrics for Amazon Redshift Serverless',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--enhanced-vpc-routing',
          description: 'The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet'
        ),
        Option(
          name: '--no-enhanced-vpc-routing',
          description: 'The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet'
        ),
        Option(
          name: '--ip-address-type',
          description: 'The IP address type that the workgroup supports. Possible values are ipv4 and dualstack',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to associate with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--price-performance-target',
          description: 'An object that represents the price performance target settings for the workgroup',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--publicly-accessible',
          description: 'A value that specifies whether the workgroup can be accessed from a public network'
        ),
        Option(
          name: '--no-publicly-accessible',
          description: 'A value that specifies whether the workgroup can be accessed from a public network'
        ),
        Option(
          name: '--security-group-ids',
          description: 'An array of security group IDs to associate with the workgroup',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--subnet-ids',
          description: 'An array of VPC subnet IDs to associate with the workgroup',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'A array of tag instances',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the created workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-custom-domain-association',
      description: 'Deletes a custom domain association for Amazon Redshift Serverless',
      options: [

        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name associated with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the database',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-endpoint-access',
      description: 'Deletes an Amazon Redshift Serverless managed VPC endpoint',
      options: [

        Option(
          name: '--endpoint-name',
          description: 'The name of the VPC endpoint to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-namespace',
      description: 'Deletes a namespace from Amazon Redshift Serverless. Before you delete the namespace, you can create a final snapshot that has all of the data within the namespace',
      options: [

        Option(
          name: '--final-snapshot-name',
          description: 'The name of the snapshot to be created before the namespace is deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--final-snapshot-retention-period',
          description: 'How long to retain the final snapshot',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-resource-policy',
      description: 'Deletes the specified resource policy',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the policy to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-scheduled-action',
      description: 'Deletes a scheduled action',
      options: [

        Option(
          name: '--scheduled-action-name',
          description: 'The name of the scheduled action to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-snapshot',
      description: 'Deletes a snapshot from Amazon Redshift Serverless',
      options: [

        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-snapshot-copy-configuration',
      description: 'Deletes a snapshot copy configuration',
      options: [

        Option(
          name: '--snapshot-copy-configuration-id',
          description: 'The ID of the snapshot copy configuration to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-usage-limit',
      description: 'Deletes a usage limit from Amazon Redshift Serverless',
      options: [

        Option(
          name: '--usage-limit-id',
          description: 'The unique identifier of the usage limit to delete',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-workgroup',
      description: 'Deletes a workgroup',
      options: [

        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup to be deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-credentials',
      description: 'Returns a database user name and temporary password with temporary authorization to log in to Amazon Redshift Serverless. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). The Identity and Access Management (IAM) user or role that runs GetCredentials must have an IAM policy attached that allows access to all necessary actions and resources. If the DbName parameter is specified, the IAM policy must allow access to the resource dbname for the specified database name',
      options: [

        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name associated with the workgroup. The custom domain name or the workgroup name must be included in the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--db-name',
          description: 'The name of the database to get temporary authorization to log on to. Constraints:   Must be 1 to 64 alphanumeric characters or hyphens.   Must contain only uppercase or lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.   The first character must be a letter.   Must not contain a colon ( : ) or slash ( / ).   Cannot be a reserved word. A list of reserved words can be found in Reserved Words  in the Amazon Redshift Database Developer Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--duration-seconds',
          description: 'The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the database',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-custom-domain-association',
      description: 'Gets information about a specific custom domain association',
      options: [

        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name associated with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the database',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-endpoint-access',
      description: 'Returns information, such as the name, about a VPC endpoint',
      options: [

        Option(
          name: '--endpoint-name',
          description: 'The name of the VPC endpoint to return information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-namespace',
      description: 'Returns information about a namespace in Amazon Redshift Serverless',
      options: [

        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to retrieve information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-recovery-point',
      description: 'Returns information about a recovery point',
      options: [

        Option(
          name: '--recovery-point-id',
          description: 'The unique identifier of the recovery point to return information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-resource-policy',
      description: 'Returns a resource policy',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource to return',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-scheduled-action',
      description: 'Returns information about a scheduled action',
      options: [

        Option(
          name: '--scheduled-action-name',
          description: 'The name of the scheduled action',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-snapshot',
      description: 'Returns information about a specific snapshot',
      options: [

        Option(
          name: '--owner-account',
          description: 'The owner Amazon Web Services account of a snapshot shared with another user',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-arn',
          description: 'The Amazon Resource Name (ARN) of the snapshot to return',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot to return',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-table-restore-status',
      description: 'Returns information about a TableRestoreStatus object',
      options: [

        Option(
          name: '--table-restore-request-id',
          description: 'The ID of the RestoreTableFromSnapshot request to return status for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-usage-limit',
      description: 'Returns information about a usage limit',
      options: [

        Option(
          name: '--usage-limit-id',
          description: 'The unique identifier of the usage limit to return information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-workgroup',
      description: 'Returns information about a specific workgroup',
      options: [

        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup to return information for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-custom-domain-associations',
      description: 'Lists custom domain associations for Amazon Redshift Serverless',
      options: [

        Option(
          name: '--custom-domain-certificate-arn',
          description: 'The custom domain name’s certificate Amazon resource name (ARN)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name associated with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'When nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-endpoint-access',
      description: 'Returns an array of EndpointAccess objects and relevant information',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListEndpointAccess operation returns a nextToken, you can include the returned nextToken in following ListEndpointAccess operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner-account',
          description: 'The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--vpc-id',
          description: 'The unique identifier of the virtual private cloud with access to Amazon Redshift Serverless',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the VPC endpoint to return',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-managed-workgroups',
      description: 'Returns information about a list of specified managed workgroups in your account',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListManagedWorkgroups operation returns a nextToken, you can include the returned nextToken in following ListManagedWorkgroups operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-arn',
          description: 'The Amazon Resource Name (ARN) for the managed workgroup in the AWS Glue Data Catalog',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-namespaces',
      description: 'Returns information about a list of specified namespaces',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListNamespaces operation returns a nextToken, you can include the returned nextToken in following ListNamespaces operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-recovery-points',
      description: 'Returns an array of recovery points',
      options: [

        Option(
          name: '--end-time',
          description: 'The time when creation of the recovery point finished',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-arn',
          description: 'The Amazon Resource Name (ARN) of the namespace from which to list recovery points',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to list recovery points for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListRecoveryPoints operation returns a nextToken, you can include the returned nextToken in following ListRecoveryPoints operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The time when the recovery point\'s creation was initiated',
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
      name: 'list-scheduled-actions',
      description: 'Returns a list of scheduled actions. You can use the flags to filter the list of returned scheduled actions',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. Use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of namespace associated with the scheduled action to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-snapshot-copy-configurations',
      description: 'Returns a list of snapshot copy configurations',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace from which to list all snapshot copy configurations',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-snapshots',
      description: 'Returns a list of snapshots',
      options: [

        Option(
          name: '--end-time',
          description: 'The timestamp showing when the snapshot creation finished',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-arn',
          description: 'The Amazon Resource Name (ARN) of the namespace from which to list all snapshots',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace from which to list all snapshots',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner-account',
          description: 'The owner Amazon Web Services account of the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The time when the creation of the snapshot was initiated',
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
      name: 'list-table-restore-status',
      description: 'Returns information about an array of TableRestoreStatus objects',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace from which to list all of the statuses of RestoreTableFromSnapshot operations',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListTableRestoreStatus operation returns a nextToken, you can include the returned nextToken in following ListTableRestoreStatus operations. This will return results on the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The workgroup from which to list all of the statuses of RestoreTableFromSnapshot operations',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
          description: 'The Amazon Resource Name (ARN) of the resource to list tags for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-usage-limits',
      description: 'Lists all usage limits within Amazon Redshift Serverless',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to get the next page of results. The default is 100',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListUsageLimits operation returns a nextToken, you can include the returned nextToken in following ListUsageLimits operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) associated with the resource whose usage limits you want to list',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--usage-type',
          description: 'The Amazon Redshift Serverless feature whose limits you want to see',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'list-workgroups',
      description: 'Returns information about a list of specified workgroups',
      options: [

        Option(
          name: '--max-results',
          description: 'An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'If your initial ListWorkgroups operation returns a nextToken, you can include the returned nextToken in following ListNamespaces operations, which returns results in the next page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner-account',
          description: 'The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
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
      name: 'put-resource-policy',
      description: 'Creates or updates a resource policy. Currently, you can use policies to share snapshots across Amazon Web Services accounts',
      options: [

        Option(
          name: '--policy',
          description: 'The policy to create or update. For example, the following policy grants a user authorization to restore a snapshot.  "{\\"Version\\": \\"2012-10-17\\", \\"Statement\\" : [{ \\"Sid\\": \\"AllowUserRestoreFromSnapshot\\", \\"Principal\\":{\\"AWS\\": [\\"739247239426\\"]}, \\"Action\\": [\\"redshift-serverless:RestoreFromSnapshot\\"] , \\"Effect\\": \\"Allow\\" }]}"',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the account to create or update a resource policy for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore-from-recovery-point',
      description: 'Restore the data from a recovery point',
      options: [

        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to restore data into',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recovery-point-id',
          description: 'The unique identifier of the recovery point to restore from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup used to restore data',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore-from-snapshot',
      description: 'Restores a namespace from a snapshot',
      options: [

        Option(
          name: '--admin-password-secret-kms-key-id',
          description: 'The ID of the Key Management Service (KMS) key used to encrypt and store the namespace\'s admin credentials secret',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the restored snapshot\'s admin credentials. If MmanageAdminPassword is false or not set, Amazon Redshift uses the admin credentials that the namespace or cluster had at the time the snapshot was taken'
        ),
        Option(
          name: '--no-manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the restored snapshot\'s admin credentials. If MmanageAdminPassword is false or not set, Amazon Redshift uses the admin credentials that the namespace or cluster had at the time the snapshot was taken'
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to restore the snapshot to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--owner-account',
          description: 'The Amazon Web Services account that owns the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-arn',
          description: 'The Amazon Resource Name (ARN) of the snapshot to restore from. Required if restoring from Amazon Redshift Serverless to a provisioned cluster. Must not be specified at the same time as snapshotName. The format of the ARN is arn:aws:redshift:<region>:<account_id>:snapshot:<cluster_identifier>/<snapshot_identifier>',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot to restore from. Must not be specified at the same time as snapshotArn',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup used to restore the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore-table-from-recovery-point',
      description: 'Restores a table from a recovery point to your Amazon Redshift Serverless instance. You can\'t use this operation to restore tables with interleaved sort keys',
      options: [

        Option(
          name: '--activate-case-sensitive-identifier',
          description: 'Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false'
        ),
        Option(
          name: '--no-activate-case-sensitive-identifier',
          description: 'Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false'
        ),
        Option(
          name: '--namespace-name',
          description: 'Namespace of the recovery point to restore from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--new-table-name',
          description: 'The name of the table to create from the restore operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--recovery-point-id',
          description: 'The ID of the recovery point to restore the table from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-database-name',
          description: 'The name of the source database that contains the table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-schema-name',
          description: 'The name of the source schema that contains the table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-table-name',
          description: 'The name of the source table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-database-name',
          description: 'The name of the database to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-schema-name',
          description: 'The name of the schema to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The workgroup to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore-table-from-snapshot',
      description: 'Restores a table from a snapshot to your Amazon Redshift Serverless instance. You can\'t use this operation to restore tables with interleaved sort keys',
      options: [

        Option(
          name: '--activate-case-sensitive-identifier',
          description: 'Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false'
        ),
        Option(
          name: '--no-activate-case-sensitive-identifier',
          description: 'Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false'
        ),
        Option(
          name: '--namespace-name',
          description: 'The namespace of the snapshot to restore from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--new-table-name',
          description: 'The name of the table to create from the restore operation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot to restore the table from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-database-name',
          description: 'The name of the source database that contains the table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-schema-name',
          description: 'The name of the source schema that contains the table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-table-name',
          description: 'The name of the source table being restored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-database-name',
          description: 'The name of the database to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--target-schema-name',
          description: 'The name of the schema to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The workgroup to restore the table to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

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
      description: 'Assigns one or more tags to a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource to tag',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The map of the key-value pairs used to tag the resource',
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
      description: 'Removes a tag or set of tags from a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource to remove tags from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The tag or set of tags to remove from the resource',
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
      name: 'update-custom-domain-association',
      description: 'Updates an Amazon Redshift Serverless certificate associated with a custom domain',
      options: [

        Option(
          name: '--custom-domain-certificate-arn',
          description: 'The custom domain name’s certificate Amazon resource name (ARN). This is optional',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--custom-domain-name',
          description: 'The custom domain name associated with the workgroup',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup associated with the database',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-endpoint-access',
      description: 'Updates an Amazon Redshift Serverless managed endpoint',
      options: [

        Option(
          name: '--endpoint-name',
          description: 'The name of the VPC endpoint to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--vpc-security-group-ids',
          description: 'The list of VPC security groups associated with the endpoint after the endpoint is modified',
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
      name: 'update-namespace',
      description: 'Updates a namespace with the specified settings. Unless required, you can\'t update multiple parameters in one request. For example, you must specify both adminUsername and adminUserPassword to update either field, but you can\'t update both kmsKeyId and logExports in a single request',
      options: [

        Option(
          name: '--admin-password-secret-kms-key-id',
          description: 'The ID of the Key Management Service (KMS) key used to encrypt and store the namespace\'s admin credentials secret. You can only use this parameter if manageAdminPassword is true',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--admin-user-password',
          description: 'The password of the administrator for the first database created in the namespace. This parameter must be updated together with adminUsername. You can\'t use adminUserPassword if manageAdminPassword is true',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--admin-username',
          description: 'The username of the administrator for the first database created in the namespace. This parameter must be updated together with adminUserPassword',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--default-iam-role-arn',
          description: 'The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. This parameter must be updated together with iamRoles',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--iam-roles',
          description: 'A list of IAM roles to associate with the namespace. This parameter must be updated together with defaultIamRoleArn',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--kms-key-id',
          description: 'The ID of the Amazon Web Services Key Management Service key used to encrypt your data',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--log-exports',
          description: 'The types of logs the namespace can export. The export types are userlog, connectionlog, and useractivitylog',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the namespace\'s admin credentials. You can\'t use adminUserPassword if manageAdminPassword is true. If manageAdminPassword is false or not set, Amazon Redshift uses adminUserPassword for the admin user account\'s password'
        ),
        Option(
          name: '--no-manage-admin-password',
          description: 'If true, Amazon Redshift uses Secrets Manager to manage the namespace\'s admin credentials. You can\'t use adminUserPassword if manageAdminPassword is true. If manageAdminPassword is false or not set, Amazon Redshift uses adminUserPassword for the admin user account\'s password'
        ),
        Option(
          name: '--namespace-name',
          description: 'The name of the namespace to update. You can\'t update the name of a namespace once it is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-scheduled-action',
      description: 'Updates a scheduled action',
      options: [

        Option(
          name: '--enabled',
          description: 'Specifies whether to enable the scheduled action'
        ),
        Option(
          name: '--no-enabled',
          description: 'Specifies whether to enable the scheduled action'
        ),
        Option(
          name: '--end-time',
          description: 'The end time in UTC of the scheduled action to update',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--role-arn',
          description: 'The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see Using Identity-Based Policies for Amazon Redshift in the Amazon Redshift Management Guide',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--schedule',
          description: 'The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.   Format of at timestamp is yyyy-mm-ddThh:mm:ss. For example, 2016-03-04T17:27:00.   Format of cron expression is (Minutes Hours Day-of-month Month Day-of-week Year). For example, "(0 10 ? * MON *)". For more information, see Cron Expressions in the Amazon CloudWatch Events User Guide',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--scheduled-action-description',
          description: 'The descripion of the scheduled action to update to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scheduled-action-name',
          description: 'The name of the scheduled action to update to',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'The start time in UTC of the scheduled action to update to',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--target-action',
          description: 'A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.  "{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"',
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
      name: 'update-snapshot',
      description: 'Updates a snapshot',
      options: [

        Option(
          name: '--retention-period',
          description: 'The new retention period of the snapshot',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--snapshot-name',
          description: 'The name of the snapshot',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-snapshot-copy-configuration',
      description: 'Updates a snapshot copy configuration',
      options: [

        Option(
          name: '--snapshot-copy-configuration-id',
          description: 'The ID of the snapshot copy configuration to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--snapshot-retention-period',
          description: 'The new retention period of how long to keep a snapshot in the destination Amazon Web Services Region',
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
      name: 'update-usage-limit',
      description: 'Update a usage limit in Amazon Redshift Serverless. You can\'t update the usage type or period of a usage limit',
      options: [

        Option(
          name: '--amount',
          description: 'The new limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--breach-action',
          description: 'The new action that Amazon Redshift Serverless takes when the limit is reached',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--usage-limit-id',
          description: 'The identifier of the usage limit to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-workgroup',
      description: 'Updates a workgroup with the specified configuration settings. You can\'t update multiple parameters in one request. For example, you can update baseCapacity or port in a single request, but you can\'t update both in the same request. VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that you own in a Region from reaching or being reached from the internet through internet gateways and egress-only internet gateways. If a workgroup is in an account with VPC BPA turned on, the following capabilities are blocked:    Creating a public access workgroup   Modifying a private workgroup to public   Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is public   For more information about VPC BPA, see Block public access to VPCs and subnets in the Amazon VPC User Guide',
      options: [

        Option(
          name: '--base-capacity',
          description: 'The new base data warehouse capacity in Redshift Processing Units (RPUs)',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--config-parameters',
          description: 'An array of parameters to set for advanced control over a database. The options are auto_mv, datestyle, enable_case_sensitive_identifier, enable_user_activity_logging, query_group, search_path, require_ssl, use_fips_ssl, and query monitoring metrics that let you define performance boundaries. For more information about query monitoring rules and available metrics, see  Query monitoring metrics for Amazon Redshift Serverless',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--enhanced-vpc-routing',
          description: 'The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC'
        ),
        Option(
          name: '--no-enhanced-vpc-routing',
          description: 'The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC'
        ),
        Option(
          name: '--ip-address-type',
          description: 'The IP address type that the workgroup supports. Possible values are ipv4 and dualstack',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-capacity',
          description: 'The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--price-performance-target',
          description: 'An object that represents the price performance target settings for the workgroup',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--publicly-accessible',
          description: 'A value that specifies whether the workgroup can be accessible from a public network'
        ),
        Option(
          name: '--no-publicly-accessible',
          description: 'A value that specifies whether the workgroup can be accessible from a public network'
        ),
        Option(
          name: '--security-group-ids',
          description: 'An array of security group IDs to associate with the workgroup',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--subnet-ids',
          description: 'An array of VPC subnet IDs to associate with the workgroup',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--workgroup-name',
          description: 'The name of the workgroup to update. You can\'t update the name of a workgroup once it is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
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
