// Auto-generated from TypeScript source: managedblockchain-query.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `managedblockchain-query` CLI
final FigSpec managedblockchainQuerySpec = FigSpec(
  name: 'managedblockchain-query',
  description: 'Amazon Managed Blockchain (AMB) Query provides you with convenient access to multi-blockchain network data, which makes it easier for you to extract contextual data related to blockchain activity. You can use AMB Query to read data from public blockchain networks, such as Bitcoin Mainnet and Ethereum Mainnet. You can also get information such as the current and historical balances of addresses, or you can get a list of blockchain transactions for a given time period. Additionally, you can get details of a given transaction, such as transaction events, which you can further analyze or use in business logic for your applications',
  subcommands: [

    Subcommand(
      name: 'batch-get-token-balance',
      description: 'Gets the token balance for a batch of tokens by using the BatchGetTokenBalance action for every token in the request.  Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC 1155 token standards are supported',
      options: [

        Option(
          name: '--get-token-balance-inputs',
          description: 'An array of BatchGetTokenBalanceInputItem objects whose balance is being requested',
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
      name: 'get-asset-contract',
      description: 'Gets the information about a specific contract deployed on the blockchain.    The Bitcoin blockchain networks do not support this operation.   Metadata is currently only available for some ERC-20 contracts. Metadata will be available for additional contracts in the future',
      options: [

        Option(
          name: '--contract-identifier',
          description: 'Contains the blockchain address and network information about the contract',
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
      name: 'get-token-balance',
      description: 'Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.  Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC 1155 token standards are supported',
      options: [

        Option(
          name: '--token-identifier',
          description: 'The container for the identifier for the token, including the unique token ID and its blockchain network',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--owner-identifier',
          description: 'The container for the identifier for the owner',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--at-blockchain-instant',
          description: 'The time for when the TokenBalance is requested or the current time if a time is not provided in the request.  This time will only be recorded up to the second',
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
      name: 'get-transaction',
      description: 'Gets the details of a transaction.  This action will return transaction details for all transactions that are confirmed on the blockchain, even if they have not reached finality',
      options: [

        Option(
          name: '--transaction-hash',
          description: 'The hash of a transaction. It is generated when a transaction is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--transaction-id',
          description: 'The identifier of a Bitcoin transaction. It is generated when a transaction is created.   transactionId is only supported on the Bitcoin networks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'The blockchain network where the transaction occurred',
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
      name: 'list-asset-contracts',
      description: 'Lists all the contracts for a given contract type deployed by an address (either a contract address or a wallet address). The Bitcoin blockchain networks do not support this operation',
      options: [

        Option(
          name: '--contract-filter',
          description: 'Contains the filter parameter for the request',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token that indicates the next set of results to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of contracts to list. Default: 100   Even if additional results can be retrieved, the request can return less results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the returned nextToken value. The value of nextToken is null when there are no more results to return',
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
      name: 'list-filtered-transaction-events',
      description: 'Lists all the transaction events for an address on the blockchain.  This operation is only supported on the Bitcoin networks',
      options: [

        Option(
          name: '--network',
          description: 'The blockchain network where the transaction occurred. Valid Values: BITCOIN_MAINNET | BITCOIN_TESTNET',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--address-identifier-filter',
          description: 'This is the unique public address on the blockchain for which the transaction events are being requested',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--time-filter',
          description: 'This container specifies the time frame for the transaction events returned in the response',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--vout-filter',
          description: 'This container specifies filtering attributes related to BITCOIN_VOUT event types',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--confirmation-status-filter',
          description: 'The container for the ConfirmationStatusFilter that filters for the  finality  of the results',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'The order by which the results will be sorted',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token that indicates the next set of results to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the returned nextToken value. The value of nextToken is null when there are no more results to return',
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
      name: 'list-token-balances',
      description: 'This action returns the following for a given blockchain network:   Lists all token balances owned by an address (either a contract address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of the tokenFilter when using this operation',
      options: [

        Option(
          name: '--owner-filter',
          description: 'The contract or wallet address on the blockchain network by which to filter the request. You must specify the address property of the ownerFilter when listing balances of tokens owned by the address',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--token-filter',
          description: 'The contract address or a token identifier on the blockchain network by which to filter the request. You must specify the contractAddress property of this container when listing tokens minted by a contract.  You must always specify the network property of this container when using this operation',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token that indicates the next set of results to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of token balances to return. Default: 100   Even if additional results can be retrieved, the request can return less results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the returned nextToken value. The value of nextToken is null when there are no more results to return',
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
      name: 'list-transaction-events',
      description: 'Lists all the transaction events for a transaction   This action will return transaction details for all transactions that are confirmed on the blockchain, even if they have not reached finality',
      options: [

        Option(
          name: '--transaction-hash',
          description: 'The hash of a transaction. It is generated when a transaction is created',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--transaction-id',
          description: 'The identifier of a Bitcoin transaction. It is generated when a transaction is created.   transactionId is only supported on the Bitcoin networks',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'The blockchain network where the transaction events occurred',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token that indicates the next set of results to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the returned nextToken value. The value of nextToken is null when there are no more results to return',
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
      name: 'list-transactions',
      description: 'Lists all the transaction events for a transaction',
      options: [

        Option(
          name: '--address',
          description: 'The address (either a contract or wallet), whose transactions are being requested',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--network',
          description: 'The blockchain network where the transactions occurred',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--from-blockchain-instant',
          description: 'The container for time',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--to-blockchain-instant',
          description: 'The container for time',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'The order by which the results will be sorted',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'The pagination token that indicates the next set of results to retrieve',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of transactions to list. Default: 100   Even if additional results can be retrieved, the request can return less results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the returned nextToken value. The value of nextToken is null when there are no more results to return',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--confirmation-status-filter',
          description: 'This filter is used to include transactions in the response that haven\'t reached  finality . Transactions that have reached finality are always part of the response',
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
    )
  ]
);
