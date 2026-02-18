// Auto-generated from TypeScript source: iotdeviceadvisor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `iotdeviceadvisor` CLI
final FigSpec iotdeviceadvisorSpec = FigSpec(
  name: 'iotdeviceadvisor',
  description: 'Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test capability for validating IoT devices during device software development. Device Advisor provides pre-built tests that you can use to validate IoT devices for reliable and secure connectivity with Amazon Web Services IoT Core before deploying devices to production. By using Device Advisor, you can confirm that your devices can connect to Amazon Web Services IoT Core, follow security best practices and, if applicable, receive software updates from IoT Device Management. You can also download signed qualification reports to submit to the Amazon Web Services Partner Network to get your device qualified for the Amazon Web Services Partner Device Catalog without the need to send your device in and wait for it to be tested',
  subcommands: [

    Subcommand(
      name: 'create-suite-definition',
      description: 'Creates a Device Advisor test suite. Requires permission to access the CreateSuiteDefinition action',
      options: [

        Option(
          name: '--suite-definition-configuration',
          description: 'Creates a Device Advisor test suite with suite definition configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to be attached to the suite definition',
          args: [
            Arg(
            name: 'map'
          )
          ]
        ),
        Option(
          name: '--client-token',
          description: 'The client token for the test suite definition creation. This token is used for tracking test suite definition creation using retries and obtaining its status. This parameter is optional',
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
      name: 'delete-suite-definition',
      description: 'Deletes a Device Advisor test suite. Requires permission to access the DeleteSuiteDefinition action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite to be deleted',
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
      name: 'get-endpoint',
      description: 'Gets information about an Device Advisor endpoint',
      options: [

        Option(
          name: '--thing-arn',
          description: 'The thing ARN of the device. This is an optional parameter',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--certificate-arn',
          description: 'The certificate ARN of the device. This is an optional parameter',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--device-role-arn',
          description: 'The device role ARN of the device. This is an optional parameter',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--authentication-method',
          description: 'The authentication method used during the device connection',
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
      name: 'get-suite-definition',
      description: 'Gets information about a Device Advisor test suite. Requires permission to access the GetSuiteDefinition action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite to get',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-definition-version',
          description: 'Suite definition version of the test suite to get',
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
      name: 'get-suite-run',
      description: 'Gets information about a Device Advisor test suite run. Requires permission to access the GetSuiteRun action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID for the test suite run',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-run-id',
          description: 'Suite run ID for the test suite run',
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
      name: 'get-suite-run-report',
      description: 'Gets a report download link for a successful Device Advisor qualifying test suite run. Requires permission to access the GetSuiteRunReport action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-run-id',
          description: 'Suite run ID of the test suite run',
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
      name: 'list-suite-definitions',
      description: 'Lists the Device Advisor test suites you have created. Requires permission to access the ListSuiteDefinitions action',
      options: [

        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at once',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token used to get the next set of results',
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
      name: 'list-suite-runs',
      description: 'Lists runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite. Requires permission to access the ListSuiteRuns action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Lists the test suite runs of the specified test suite based on suite definition ID',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-definition-version',
          description: 'Must be passed along with suiteDefinitionId. Lists the test suite runs of the specified test suite based on suite definition version',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--max-results',
          description: 'The maximum number of results to return at once',
          args: [
            Arg(
            name: 'integer'
          )
          ]
        ),
        Option(
          name: '--next-token',
          description: 'A token to retrieve the next set of results',
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
      description: 'Lists the tags attached to an IoT Device Advisor resource. Requires permission to access the ListTagsForResource action',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource ARN of the IoT Device Advisor resource. This can be SuiteDefinition ARN or SuiteRun ARN',
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
      name: 'start-suite-run',
      description: 'Starts a Device Advisor test suite run. Requires permission to access the StartSuiteRun action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-definition-version',
          description: 'Suite definition version of the test suite',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-run-configuration',
          description: 'Suite run configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to be attached to the suite run',
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
      name: 'stop-suite-run',
      description: 'Stops a Device Advisor test suite run that is currently running. Requires permission to access the StopSuiteRun action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite run to be stopped',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-run-id',
          description: 'Suite run ID of the test suite run to be stopped',
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
      description: 'Adds to and modifies existing tags of an IoT Device Advisor resource. Requires permission to access the TagResource action',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or SuiteRun ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags to be attached to the IoT Device Advisor resource',
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
      description: 'Removes tags from an IoT Device Advisor resource. Requires permission to access the UntagResource action',
      options: [

        Option(
          name: '--resource-arn',
          description: 'The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or SuiteRun ARN',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--tag-keys',
          description: 'List of tag keys to remove from the IoT Device Advisor resource',
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
      name: 'update-suite-definition',
      description: 'Updates a Device Advisor test suite. Requires permission to access the UpdateSuiteDefinition action',
      options: [

        Option(
          name: '--suite-definition-id',
          description: 'Suite definition ID of the test suite to be updated',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--suite-definition-configuration',
          description: 'Updates a Device Advisor test suite with suite definition configuration',
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
