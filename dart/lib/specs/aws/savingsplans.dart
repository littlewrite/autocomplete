// Auto-generated from TypeScript source: savingsplans.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `savingsplans` CLI
final FigSpec savingsplansSpec = FigSpec(
  name: 'savingsplans',
  description: 'Savings Plans are a pricing model that offer significant savings on Amazon Web Services usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage per hour, in the specified currency, for a term of one or three years, and receive a lower price for that usage. For more information, see the Amazon Web Services Savings Plans User Guide',
  subcommands: [
    Subcommand(
      name: 'create-savings-plan',
      description: 'Creates a Savings Plan',
      options: [
        Option(
          name: '--savings-plan-offering-id',
          description: 'The ID of the offering',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--commitment',
          description: 'The hourly commitment, in the same currency of the savingsPlanOfferingId. This is a value between 0.001 and 1 million. You cannot specify more than five digits after the decimal point',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--upfront-payment-amount',
          description: 'The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan. This parameter is only supported if the payment option is Partial Upfront',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--purchase-time',
          description: 'The purchase time of the Savings Plan in UTC format (YYYY-MM-DDTHH:MM:SSZ)',
          args: [
            Arg(
            name: 'timestamp'
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
          name: '--tags',
          description: 'One or more tags',
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
      name: 'delete-queued-savings-plan',
      description: 'Deletes the queued purchase for the specified Savings Plan',
      options: [
        Option(
          name: '--savings-plan-id',
          description: 'The ID of the Savings Plan',
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
      name: 'describe-savings-plan-rates',
      description: 'Describes the rates for the specified Savings Plan',
      options: [
        Option(
          name: '--savings-plan-id',
          description: 'The ID of the Savings Plan',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'The filters',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value',
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
      name: 'describe-savings-plans',
      description: 'Describes the specified Savings Plans',
      options: [
        Option(
          name: '--savings-plan-arns',
          description: 'The Amazon Resource Names (ARN) of the Savings Plans',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--savings-plan-ids',
          description: 'The IDs of the Savings Plans',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--states',
          description: 'The current states of the Savings Plans',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'The filters',
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
      name: 'describe-savings-plans-offering-rates',
      description: 'Describes the offering rates for the specified Savings Plans',
      options: [
        Option(
          name: '--savings-plan-offering-ids',
          description: 'The IDs of the offerings',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--savings-plan-payment-options',
          description: 'The payment options',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--savings-plan-types',
          description: 'The plan types',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--products',
          description: 'The Amazon Web Services products',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--service-codes',
          description: 'The services',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--usage-types',
          description: 'The usage details of the line item in the billing report',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--operations',
          description: 'The specific Amazon Web Services operation for the line item in the billing report',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'The filters',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value',
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
      name: 'describe-savings-plans-offerings',
      description: 'Describes the offerings for the specified Savings Plans',
      options: [
        Option(
          name: '--offering-ids',
          description: 'The IDs of the offerings',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--payment-options',
          description: 'The payment options',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--product-type',
          description: 'The product type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--plan-types',
          description: 'The plan types',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--durations',
          description: 'The duration, in seconds',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--currencies',
          description: 'The currencies',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--descriptions',
          description: 'The descriptions',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--service-codes',
          description: 'The services',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--usage-types',
          description: 'The usage details of the line item in the billing report',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--operations',
          description: 'The specific Amazon Web Services operation for the line item in the billing report',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--filters',
          description: 'The filters',
          args: [
            Arg(
            name: 'list'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The token for the next page of results',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value',
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
      name: 'list-tags-for-resource',
      description: 'Lists the tags for the specified resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource',
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
      name: 'return-savings-plan',
      description: 'Returns the specified Savings Plan',
      options: [
        Option(
          name: '--savings-plan-id',
          description: 'The ID of the Savings Plan',
          args: [
            Arg(
            name: 'string'
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
          name: '--cli-input-json',
          description: 'Performs service operation based on the JSON string provided. The JSON string follows the format provided by ``--generate-cli-skeleton``. If other arguments are provided on the command line, the CLI values will override the JSON-provided values. It is not possible to pass arbitrary binary values using a JSON-provided value as the string will be taken literally',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--generate-cli-skeleton',
          description: 'Prints a JSON skeleton to standard output without sending an API request. If provided with no value or the value ``input``, prints a sample input JSON that can be used as an argument for ``--cli-input-json``. If provided with the value ``output``, it validates the command inputs and returns a sample output JSON for that command',
          args: [
            Arg(
            name: 'string',
            suggestions: [
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
      description: 'Adds the specified tags to the specified resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }',
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
      description: 'Removes the specified tags from the specified resource',
      options: [
        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the resource',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'The tag keys',
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
