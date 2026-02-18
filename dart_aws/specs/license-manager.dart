// Auto-generated from TypeScript source: license-manager.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `license-manager` CLI
final FigSpec licenseManagerSpec = FigSpec(
  name: 'license-manager',
  description: 'License Manager makes it easier to manage licenses from software vendors across multiple Amazon Web Services accounts and on-premises servers',
  subcommands: [

    Subcommand(
      name: 'accept-grant',
      description: 'Accepts the specified grant',
      options: [

        Option(
          name: '--grant-arn',
          description: 'Amazon Resource Name (ARN) of the grant',
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
      name: 'check-in-license',
      description: 'Checks in the specified license. Check in a license when it is no longer in use',
      options: [

        Option(
          name: '--license-consumption-token',
          description: 'License consumption token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--beneficiary',
          description: 'License beneficiary',
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
      name: 'checkout-borrow-license',
      description: 'Checks out the specified license for offline use',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entitlements',
          description: 'License entitlements. Partial checkouts are not supported',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--digital-signature-method',
          description: 'Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384. For more information, see RFC 7518 Digital Signature with RSASSA-PSS',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--node-id',
          description: 'Node ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--checkout-metadata',
          description: 'Information about constraints',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
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
      name: 'checkout-license',
      description: 'Checks out the specified license.  If the account that created the license is the same that is performing the check out, you must specify the account as the beneficiary',
      options: [

        Option(
          name: '--product-sku',
          description: 'Product SKU',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--checkout-type',
          description: 'Checkout type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--key-fingerprint',
          description: 'Key fingerprint identifying the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--entitlements',
          description: 'License entitlements',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--beneficiary',
          description: 'License beneficiary',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--node-id',
          description: 'Node ID',
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
      name: 'create-grant',
      description: 'Creates a grant for the specified license. A grant shares the use of license entitlements with a specific Amazon Web Services account, an organization, or an organizational unit (OU). For more information, see Granted licenses in License Manager in the License Manager User Guide',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-name',
          description: 'Grant name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--principals',
          description: 'The grant principals. You can specify one of the following as an Amazon Resource Name (ARN):   An Amazon Web Services account, which includes only the account specified.     An organizational unit (OU), which includes all accounts in the OU.     An organization, which will include all accounts across your organization',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--home-region',
          description: 'Home Region of the grant',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--allowed-operations',
          description: 'Allowed operations for the grant',
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
      name: 'create-grant-version',
      description: 'Creates a new version of the specified grant. For more information, see Granted licenses in License Manager in the License Manager User Guide',
      options: [

        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-arn',
          description: 'Amazon Resource Name (ARN) of the grant',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-name',
          description: 'Grant name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--allowed-operations',
          description: 'Allowed operations for the grant',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'Grant status',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status-reason',
          description: 'Grant status reason',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-version',
          description: 'Current version of the grant',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--options',
          description: 'The options specified for the grant',
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
      name: 'create-license',
      description: 'Creates a license',
      options: [

        Option(
          name: '--license-name',
          description: 'License name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-name',
          description: 'Product name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-sku',
          description: 'Product SKU',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--issuer',
          description: 'License issuer',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--home-region',
          description: 'Home Region for the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--validity',
          description: 'Date and time range during which the license is valid, in ISO8601-UTC format',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--entitlements',
          description: 'License entitlements',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--beneficiary',
          description: 'License beneficiary',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--consumption-configuration',
          description: 'Configuration for consumption of the license. Choose a provisional configuration for workloads running with continuous connectivity. Choose a borrow configuration for workloads with offline usage',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--license-metadata',
          description: 'Information about the license',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
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
      name: 'create-license-configuration',
      description: 'Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used',
      options: [

        Option(
          name: '--name',
          description: 'Name of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Description of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-counting-type',
          description: 'Dimension used to track the license inventory',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-count',
          description: 'Number of licenses managed by the license configuration',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--license-count-hard-limit',
          description: 'Indicates whether hard or soft license enforcement is used. Exceeding a hard limit blocks the launch of new instances'
        ),
        Option(
          name: '--no-license-count-hard-limit',
          description: 'Indicates whether hard or soft license enforcement is used. Exceeding a hard limit blocks the launch of new instances'
        ),
        Option(
          name: '--license-rules',
          description: 'License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules vary by dimension, as follows.    Cores dimension: allowedTenancy | licenseAffinityToHost | maximumCores | minimumCores     Instances dimension: allowedTenancy | maximumCores | minimumCores | maximumSockets | minimumSockets | maximumVcpus | minimumVcpus     Sockets dimension: allowedTenancy | licenseAffinityToHost | maximumSockets | minimumSockets     vCPUs dimension: allowedTenancy | honorVcpuOptimization | maximumVcpus | minimumVcpus    The unit for licenseAffinityToHost is days and the range is 1 to 180. The possible values for allowedTenancy are EC2-Default, EC2-DedicatedHost, and EC2-DedicatedInstance. The possible values for honorVcpuOptimization are True and False',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags to add to the license configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--disassociate-when-not-found',
          description: 'When true, disassociates a resource when software is uninstalled'
        ),
        Option(
          name: '--no-disassociate-when-not-found',
          description: 'When true, disassociates a resource when software is uninstalled'
        ),
        Option(
          name: '--product-information-list',
          description: 'Product information',
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
      name: 'create-license-conversion-task-for-resource',
      description: 'Creates a new license conversion task',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of the resource you are converting the license type for',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-license-context',
          description: 'Information that identifies the license type you are converting from. For the structure of the source license, see Convert a license type using the CLI  in the License Manager User Guide',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--destination-license-context',
          description: 'Information that identifies the license type you are converting to. For the structure of the destination license, see Convert a license type using the CLI  in the License Manager User Guide',
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
      name: 'create-license-manager-report-generator',
      description: 'Creates a report generator',
      options: [

        Option(
          name: '--report-generator-name',
          description: 'Name of the report generator',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Type of reports to generate. The following report types an be generated:   License configuration report - Reports the number and details of consumed licenses for a license configuration.   Resource report - Reports the tracked licenses and resource consumption for a license configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--report-context',
          description: 'Defines the type of license configuration the report generator tracks',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--report-frequency',
          description: 'Frequency by which reports are generated. Reports can be generated daily, monthly, or weekly',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Description of the report generator',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Tags to add to the report generator',
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
      name: 'create-license-version',
      description: 'Creates a new version of the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-name',
          description: 'License name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-name',
          description: 'Product name',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--issuer',
          description: 'License issuer',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--home-region',
          description: 'Home Region of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--validity',
          description: 'Date and time range during which the license is valid, in ISO8601-UTC format',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--license-metadata',
          description: 'Information about the license',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--entitlements',
          description: 'License entitlements',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--consumption-configuration',
          description: 'Configuration for consumption of the license. Choose a provisional configuration for workloads running with continuous connectivity. Choose a borrow configuration for workloads with offline usage',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'License status',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-version',
          description: 'Current version of the license',
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
      name: 'create-token',
      description: 'Creates a long-lived token. A refresh token is a JWT token used to get an access token. With an access token, you can call AssumeRoleWithWebIdentity to get role credentials that you can use to call License Manager to manage the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the JWT token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--role-arns',
          description: 'Amazon Resource Name (ARN) of the IAM roles to embed in the token. License Manager does not check whether the roles are in use',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--expiration-in-days',
          description: 'Token expiration, in days, counted from token creation. The default is 365 days',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--token-properties',
          description: 'Data specified by the caller to be included in the JWT token. The data is mapped to the amr claim of the JWT token',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Idempotency token, valid for 10 minutes',
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
      name: 'delete-grant',
      description: 'Deletes the specified grant',
      options: [

        Option(
          name: '--grant-arn',
          description: 'Amazon Resource Name (ARN) of the grant',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status-reason',
          description: 'The Status reason for the delete request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-version',
          description: 'Current version of the grant',
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
      name: 'delete-license',
      description: 'Deletes the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--source-version',
          description: 'Current version of the license',
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
      name: 'delete-license-configuration',
      description: 'Deletes the specified license configuration. You cannot delete a license configuration that is in use',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'ID of the license configuration',
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
      name: 'delete-license-manager-report-generator',
      description: 'Deletes the specified report generator. This action deletes the report generator, which stops it from generating future reports. The action cannot be reversed. It has no effect on the previous reports from this generator',
      options: [

        Option(
          name: '--license-manager-report-generator-arn',
          description: 'Amazon Resource Name (ARN) of the report generator to be deleted',
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
      name: 'delete-token',
      description: 'Deletes the specified token. Must be called in the license home Region',
      options: [

        Option(
          name: '--token-id',
          description: 'Token ID',
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
      name: 'extend-license-consumption',
      description: 'Extends the expiration date for license consumption',
      options: [

        Option(
          name: '--license-consumption-token',
          description: 'License consumption token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions'
        ),
        Option(
          name: '--no-dry-run',
          description: 'Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-access-token',
      description: 'Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens are valid for one hour',
      options: [

        Option(
          name: '--token',
          description: 'Refresh token, encoded as a JWT token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--token-properties',
          description: 'Token properties to validate against those present in the JWT token',
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
      name: 'get-grant',
      description: 'Gets detailed information about the specified grant',
      options: [

        Option(
          name: '--grant-arn',
          description: 'Amazon Resource Name (ARN) of the grant',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--grant-version',
          description: 'Grant version',
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
      name: 'get-license',
      description: 'Gets detailed information about the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-version',
          description: 'License version',
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
      name: 'get-license-configuration',
      description: 'Gets detailed information about the specified license configuration',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
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
      name: 'get-license-conversion-task',
      description: 'Gets information about the specified license type conversion task',
      options: [

        Option(
          name: '--license-conversion-task-id',
          description: 'ID of the license type conversion task to retrieve information on',
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
      name: 'get-license-manager-report-generator',
      description: 'Gets information about the specified report generator',
      options: [

        Option(
          name: '--license-manager-report-generator-arn',
          description: 'Amazon Resource Name (ARN) of the report generator',
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
      name: 'get-license-usage',
      description: 'Gets detailed information about the usage of the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
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
      name: 'get-service-settings',
      description: 'Gets the License Manager settings for the current Region',
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
      name: 'list-associations-for-license-configuration',
      description: 'Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules)',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'Amazon Resource Name (ARN) of a license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
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
      name: 'list-distributed-grants',
      description: 'Lists the grants distributed for the specified license',
      options: [

        Option(
          name: '--grant-arns',
          description: 'Amazon Resource Names (ARNs) of the grants',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    LicenseArn     GrantStatus     GranteePrincipalARN     ProductSKU     LicenseIssuerName',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-failures-for-license-configuration-operations',
      description: 'Lists the license configuration operations that failed',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'Amazon Resource Name of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
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
      name: 'list-license-configurations',
      description: 'Lists the license configurations for your account',
      options: [

        Option(
          name: '--license-configuration-arns',
          description: 'Amazon Resource Names (ARN) of the license configurations',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters and logical operators are supported:    licenseCountingType - The dimension for which licenses are counted. Possible values are vCPU | Instance | Core | Socket. Logical operators are EQUALS | NOT_EQUALS.    enforceLicenseCount - A Boolean value that indicates whether hard license enforcement is used. Logical operators are EQUALS | NOT_EQUALS.    usagelimitExceeded - A Boolean value that indicates whether the available licenses have been exceeded. Logical operators are EQUALS | NOT_EQUALS',
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
      name: 'list-license-conversion-tasks',
      description: 'Lists the license type conversion tasks for your account',
      options: [

        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. Valid filters are ResourceArns and Status',
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
      name: 'list-license-manager-report-generators',
      description: 'Lists the report generators for your account',
      options: [

        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:     LicenseConfigurationArn',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-license-specifications-for-resource',
      description: 'Describes the license configurations for the specified resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of a resource that has an associated license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
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
      name: 'list-license-versions',
      description: 'Lists all versions of the specified license',
      options: [

        Option(
          name: '--license-arn',
          description: 'Amazon Resource Name (ARN) of the license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-licenses',
      description: 'Lists the licenses for your account',
      options: [

        Option(
          name: '--license-arns',
          description: 'Amazon Resource Names (ARNs) of the licenses',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    Beneficiary     ProductSKU     Fingerprint     Status',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-received-grants',
      description: 'Lists grants that are received. Received grants are grants created while specifying the recipient as this Amazon Web Services account, your organization, or an organizational unit (OU) to which this member account belongs',
      options: [

        Option(
          name: '--grant-arns',
          description: 'Amazon Resource Names (ARNs) of the grants',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    ProductSKU     LicenseIssuerName     LicenseArn     GrantStatus     GranterAccountId',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-received-grants-for-organization',
      description: 'Lists the grants received for all accounts in the organization',
      options: [

        Option(
          name: '--license-arn',
          description: 'The Amazon Resource Name (ARN) of the received license',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    ParentArn     GranteePrincipalArn',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-received-licenses',
      description: 'Lists received licenses',
      options: [

        Option(
          name: '--license-arns',
          description: 'Amazon Resource Names (ARNs) of the licenses',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    ProductSKU     Status     Fingerprint     IssuerName     Beneficiary',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-received-licenses-for-organization',
      description: 'Lists the licenses received for all accounts in the organization',
      options: [

        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters are supported:    Beneficiary     ProductSKU',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-resource-inventory',
      description: 'Lists resources managed using Systems Manager inventory',
      options: [

        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters and logical operators are supported:    account_id - The ID of the Amazon Web Services account that owns the resource. Logical operators are EQUALS | NOT_EQUALS.    application_name - The name of the application. Logical operators are EQUALS | BEGINS_WITH.    license_included - The type of license included. Logical operators are EQUALS | NOT_EQUALS. Possible values are sql-server-enterprise | sql-server-standard | sql-server-web | windows-server-datacenter.    platform - The platform of the resource. Logical operators are EQUALS | BEGINS_WITH.    resource_id - The ID of the resource. Logical operators are EQUALS | NOT_EQUALS.    tag:<key> - The key/value combination of a tag assigned to the resource. Logical operators are EQUALS (single account) or EQUALS | NOT_EQUALS (cross account)',
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
      description: 'Lists the tags for the specified license configuration',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
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
      name: 'list-tokens',
      description: 'Lists your tokens',
      options: [

        Option(
          name: '--token-ids',
          description: 'Token IDs',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filter is supported:    LicenseArns',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
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
      name: 'list-usage-for-license-configuration',
      description: 'Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'Maximum number of results to return in a single call',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'Token for the next set of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'Filters to scope the results. The following filters and logical operators are supported:    resourceArn - The ARN of the license configuration resource. Logical operators are EQUALS | NOT_EQUALS.    resourceType - The resource type (EC2_INSTANCE | EC2_HOST | EC2_AMI | SYSTEMS_MANAGER_MANAGED_INSTANCE). Logical operators are EQUALS | NOT_EQUALS.    resourceAccount - The ID of the account that owns the resource. Logical operators are EQUALS | NOT_EQUALS',
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
      name: 'reject-grant',
      description: 'Rejects the specified grant',
      options: [

        Option(
          name: '--grant-arn',
          description: 'Amazon Resource Name (ARN) of the grant',
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
      description: 'Adds the specified tags to the specified license configuration',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'One or more tags',
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
      description: 'Removes the specified tags from the specified license configuration',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'Keys identifying the tags to remove',
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
      name: 'update-license-configuration',
      description: 'Modifies the attributes of an existing license configuration',
      options: [

        Option(
          name: '--license-configuration-arn',
          description: 'Amazon Resource Name (ARN) of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-configuration-status',
          description: 'New status of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--license-rules',
          description: 'New license rule. The only rule that you can add after you create a license configuration is licenseAffinityToHost',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--license-count',
          description: 'New number of licenses managed by the license configuration',
          args: [
            Arg(
            name: 'long'
          )
          ]
        ),
        Option(
          name: '--license-count-hard-limit',
          description: 'New hard limit of the number of available licenses'
        ),
        Option(
          name: '--no-license-count-hard-limit',
          description: 'New hard limit of the number of available licenses'
        ),
        Option(
          name: '--name',
          description: 'New name of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'New description of the license configuration',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--product-information-list',
          description: 'New product information',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--disassociate-when-not-found',
          description: 'When true, disassociates a resource when software is uninstalled'
        ),
        Option(
          name: '--no-disassociate-when-not-found',
          description: 'When true, disassociates a resource when software is uninstalled'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'input'),
              FigSuggestion(name: 'output')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-license-manager-report-generator',
      description: 'Updates a report generator. After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated',
      options: [

        Option(
          name: '--license-manager-report-generator-arn',
          description: 'Amazon Resource Name (ARN) of the report generator to update',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--report-generator-name',
          description: 'Name of the report generator',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Type of reports to generate. The following report types are supported:   License configuration report - Reports the number and details of consumed licenses for a license configuration.   Resource report - Reports the tracked licenses and resource consumption for a license configuration',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--report-context',
          description: 'The report context',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--report-frequency',
          description: 'Frequency by which reports are generated',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'Unique, case-sensitive identifier that you provide to ensure the idempotency of the request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Description of the report generator',
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
      name: 'update-license-specifications-for-resource',
      description: 'Adds or removes the specified license configurations for the specified Amazon Web Services resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and CloudFormation templates, as they send license configurations to the operation that creates the resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'Amazon Resource Name (ARN) of the Amazon Web Services resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--add-license-specifications',
          description: 'ARNs of the license configurations to add',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--remove-license-specifications',
          description: 'ARNs of the license configurations to remove',
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
      name: 'update-service-settings',
      description: 'Updates License Manager settings for the current Region',
      options: [

        Option(
          name: '--s3-bucket-arn',
          description: 'Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--sns-topic-arn',
          description: 'Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--organization-configuration',
          description: 'Enables integration with Organizations for cross-account discovery',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--enable-cross-accounts-discovery',
          description: 'Activates cross-account discovery'
        ),
        Option(
          name: '--no-enable-cross-accounts-discovery',
          description: 'Activates cross-account discovery'
        ),
        Option(
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
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
