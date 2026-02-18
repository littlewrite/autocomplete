// Auto-generated from TypeScript source: codeguru-security.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `codeguru-security` CLI
final FigSpec codeguruSecuritySpec = FigSpec(
  name: 'codeguru-security',
  description: 'Amazon CodeGuru Security is in preview release and is subject to change.  This section provides documentation for the Amazon CodeGuru Security API operations. CodeGuru Security is a service that uses program analysis and machine learning to detect security policy violations and vulnerabilities, and recommends ways to address these security risks. By proactively detecting and providing recommendations for addressing security risks, CodeGuru Security improves the overall security of your application code. For more information about CodeGuru Security, see the Amazon CodeGuru Security User Guide',
  subcommands: [

    Subcommand(
      name: 'batch-get-findings',
      description: 'Returns a list of requested findings from standard scans',
      options: [

        Option(
          name: '--finding-identifiers',
          description: 'A list of finding identifiers. Each identifier consists of a scanName and a findingId. You retrieve the findingId when you call GetFindings',
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
      name: 'create-scan',
      description: 'Use to create a scan using code uploaded to an Amazon S3 bucket',
      options: [

        Option(
          name: '--analysis-type',
          description: 'The type of analysis you want CodeGuru Security to perform in the scan, either Security or All. The Security type only generates findings related to security. The All type generates both security findings and quality findings. Defaults to Security type if missing',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'The idempotency token for the request. Amazon CodeGuru Security uses this value to prevent the accidental creation of duplicate scans if there are failures and retries',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--resource-id',
          description: 'The identifier for the resource object to be scanned',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--scan-name',
          description: 'The unique name that CodeGuru Security uses to track revisions across multiple scans of the same resource. Only allowed for a STANDARD scan type',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scan-type',
          description: 'The type of scan, either Standard or Express. Defaults to Standard type if missing.  Express scans run on limited resources and use a limited set of detectors to analyze your code in near-real time. Standard scans have standard resource limits and use the full set of detectors to analyze your code',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'An array of key-value pairs used to tag a scan. A tag is a custom attribute label with two parts:   A tag key. For example, CostCenter, Environment, or Secret. Tag keys are case sensitive.   An optional tag value field. For example, 111122223333, Production, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive',
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
      name: 'create-upload-url',
      description: 'Generates a pre-signed URL, request headers used to upload a code resource, and code artifact identifier for the uploaded resource. You can upload your code resource to the URL with the request headers using any HTTP client',
      options: [

        Option(
          name: '--scan-name',
          description: 'The name of the scan that will use the uploaded resource. CodeGuru Security uses the unique scan name to track revisions across multiple scans of the same resource. Use this scanName when you call CreateScan on the code resource you upload to this URL',
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
      name: 'get-account-configuration',
      description: 'Use to get the encryption configuration for an account',
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
      name: 'get-findings',
      description: 'Returns a list of all findings generated by a particular scan',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the nextToken element is returned in the response. Use nextToken in a subsequent request to retrieve additional results. If not specified, returns 1000 results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request to continue listing results after the first page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scan-name',
          description: 'The name of the scan you want to retrieve findings from',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--status',
          description: 'The status of the findings you want to get. Pass either Open, Closed, or All',
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
      name: 'get-metrics-summary',
      description: 'Returns a summary of metrics for an account from a specified date, including number of open findings, the categories with most findings, the scans with most open findings, and scans with most open critical findings',
      options: [

        Option(
          name: '--date',
          description: 'The date you want to retrieve summary metrics from, rounded to the nearest day. The date must be within the past two years',
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
      name: 'get-scan',
      description: 'Returns details about a scan, including whether or not a scan has completed',
      options: [

        Option(
          name: '--run-id',
          description: 'UUID that identifies the individual scan run you want to view details about. You retrieve this when you call the CreateScan operation. Defaults to the latest scan run if missing',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--scan-name',
          description: 'The name of the scan you want to view details about',
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
      name: 'list-findings-metrics',
      description: 'Returns metrics about all findings in an account within a specified time range',
      options: [

        Option(
          name: '--end-date',
          description: 'The end date of the interval which you want to retrieve metrics from. Round to the nearest day',
          args: [
            Arg(
            name: 'timestamp'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the nextToken element is returned in the response. Use nextToken in a subsequent request to retrieve additional results. If not specified, returns 1000 results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request to continue listing results after the first page',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--start-date',
          description: 'The start date of the interval which you want to retrieve metrics from. Rounds to the nearest day',
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
      name: 'list-scans',
      description: 'Returns a list of all scans in an account. Does not return EXPRESS scans',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the nextToken element is returned in the response. Use nextToken in a subsequent request to retrieve additional results. If not specified, returns 100 results',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request to continue listing results after the first page',
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
      description: 'Returns a list of all tags associated with a scan',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the ScanName object. You can retrieve this ARN by calling CreateScan, ListScans, or GetScan',
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
      description: 'Use to add one or more tags to an existing scan',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the ScanName object. You can retrieve this ARN by calling CreateScan, ListScans, or GetScan',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'An array of key-value pairs used to tag an existing scan. A tag is a custom attribute label with two parts:   A tag key. For example, CostCenter, Environment, or Secret. Tag keys are case sensitive.   An optional tag value field. For example, 111122223333, Production, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive',
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
      description: 'Use to remove one or more tags from an existing scan',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The ARN of the ScanName object. You can retrieve this ARN by calling CreateScan, ListScans, or GetScan',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'A list of keys for each tag you want to remove from a scan',
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
      name: 'update-account-configuration',
      description: 'Use to update the encryption configuration for an account',
      options: [

        Option(
          name: '--encryption-config',
          description: 'The customer-managed KMS key ARN you want to use for encryption. If not specified, CodeGuru Security will use an AWS-managed key for encryption. If you previously specified a customer-managed KMS key and want CodeGuru Security to use an AWS-managed key for encryption instead, pass nothing',
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
