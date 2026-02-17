// Auto-generated from TypeScript source: bedrock-data-automation-runtime.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bedrock-data-automation-runtime` CLI
final FigSpec bedrockDataAutomationRuntimeSpec = FigSpec(
  name: 'bedrock-data-automation-runtime',
  description: 'Amazon Bedrock Keystone Runtime',
  subcommands: [

    Subcommand(
      name: 'get-data-automation-status',
      description: 'API used to get data automation status',
      options: [

        Option(
          name: '--invocation-arn',
          description: 'Invocation arn',
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
      name: 'invoke-data-automation-async',
      description: 'Async API: Invoke data automation',
      options: [

        Option(
          name: '--client-token',
          description: 'Idempotency token',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--input-configuration',
          description: 'Input configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--output-configuration',
          description: 'Output configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--data-automation-configuration',
          description: 'Data automation configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--encryption-configuration',
          description: 'Encryption configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--notification-configuration',
          description: 'Notification configuration',
          args: [
            Arg(
            name: 'structure'
          )
          ]
        ),
        Option(
          name: '--blueprints',
          description: 'Blueprint list',
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
