// Auto-generated from TypeScript source: invoicing.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `invoicing` CLI
final FigSpec invoicingSpec = FigSpec(
  name: 'invoicing',
  description: 'Amazon Web Services Invoice Configuration  You can use Amazon Web Services Invoice Configuration APIs to programmatically create, update, delete, get, and list invoice units. You can also programmatically fetch the information of the invoice receiver. For example, business legal name, address, and invoicing contacts.  You can use Amazon Web Services Invoice Configuration to receive separate Amazon Web Services invoices based your organizational needs. By using Amazon Web Services Invoice Configuration, you can configure invoice units that are groups of Amazon Web Services accounts that represent your business entities, and receive separate invoices for each business entity. You can also assign a unique member or payer account as the invoice receiver for each invoice unit. As you create new accounts within your Organizations using Amazon Web Services Invoice Configuration APIs, you can automate the creation of new invoice units and subsequently automate the addition of new accounts to your invoice units. Service endpoint You can use the following endpoints for Amazon Web Services Invoice Configuration:    https://invoicing.us-east-1.api.aws',
  subcommands: [

    Subcommand(
      name: 'batch-get-invoice-profile',
      description: 'This gets the invoice profile associated with a set of accounts. The accounts must be linked accounts under the requester management account organization',
      options: [

        Option(
          name: '--account-ids',
          description: 'Retrieves the corresponding invoice profile data for these account IDs',
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
      name: 'create-invoice-unit',
      description: 'This creates a new invoice unit with the provided definition',
      options: [

        Option(
          name: '--name',
          description: 'The unique name of the invoice unit that is shown on the generated invoice. This can\'t be changed once it is set. To change this name, you must delete the invoice unit recreate',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--invoice-receiver',
          description: 'The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The invoice unit\'s description. This can be changed at a later time',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tax-inheritance-disabled',
          description: 'Whether the invoice unit based tax inheritance is/ should be enabled or disabled'
        ),
        Option(
          name: '--no-tax-inheritance-disabled',
          description: 'Whether the invoice unit based tax inheritance is/ should be enabled or disabled'
        ),
        Option(
          name: '--rule',
          description: 'The InvoiceUnitRule object used to create invoice units',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--resource-tags',
          description: 'The tag structure that contains a tag key and value',
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
      name: 'delete-invoice-unit',
      description: 'This deletes an invoice unit with the provided invoice unit ARN',
      options: [

        Option(
          name: '--invoice-unit-arn',
          description: 'The ARN to identify an invoice unit. This information can\'t be modified or deleted',
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
      name: 'get-invoice-unit',
      description: 'This retrieves the invoice unit definition',
      options: [

        Option(
          name: '--invoice-unit-arn',
          description: 'The ARN to identify an invoice unit. This information can\'t be modified or deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--as-of',
          description: 'The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the AsOf time is set to before it was deleted. If an AsOf is not provided, the default value is the current time',
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
      name: 'list-invoice-units',
      description: 'This fetches a list of all invoice unit definitions for a given account, as of the provided AsOf date',
      options: [

        Option(
          name: '--filters',
          description: 'An optional input to the list API. If multiple filters are specified, the returned list will be a configuration that match all of the provided filters. Supported filter types are InvoiceReceivers, Names, and Accounts',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The next token used to indicate where the returned list should start from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of invoice units that can be returned',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--as-of',
          description: 'The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the AsOf time is set to before it was deleted. If an AsOf is not provided, the default value is the current time',
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
      name: 'list-tags-for-resource',
      description: 'Lists the tags for a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of tags to list',
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
      description: 'Adds a tag to a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) of the tags',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-tags',
          description: 'Adds a tag to a resource',
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
      description: 'Removes a tag from a resource',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The Amazon Resource Name (ARN) to untag',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-tag-keys',
          description: 'Keys for the tags to be removed',
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
      name: 'update-invoice-unit',
      description: 'You can update the invoice unit configuration at any time, and Amazon Web Services will use the latest configuration at the end of the month',
      options: [

        Option(
          name: '--invoice-unit-arn',
          description: 'The ARN to identify an invoice unit. This information can\'t be modified or deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'The assigned description for an invoice unit. This information can\'t be modified or deleted',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tax-inheritance-disabled',
          description: 'Whether the invoice unit based tax inheritance is/ should be enabled or disabled'
        ),
        Option(
          name: '--no-tax-inheritance-disabled',
          description: 'Whether the invoice unit based tax inheritance is/ should be enabled or disabled'
        ),
        Option(
          name: '--rule',
          description: 'The InvoiceUnitRule object used to update invoice units',
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
