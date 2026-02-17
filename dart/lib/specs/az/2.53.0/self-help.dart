// Auto-generated from TypeScript source: self-help.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `self-help` CLI
final FigSpec selfHelpSpec = FigSpec(
  name: 'self-help',
  description: 'Azure SelfHelp will help you troubleshoot issues with Azure resources',
  subcommands: [

    Subcommand(
      name: 'check-name-availability',
      description: 'This API is used to check the uniqueness of a resource name used for a diagnostic check',
      options: [

        Option(
          name: '--scope',
          description: 'This is an extension resource provider and only resource level extension is supported at the moment',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--name',
          description: 'The name of the resource for which availability needs to be checked',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The resource type',
          args: [
            Arg(
            name: 'typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'diagnostic',
      description: 'Diagnostic command will help you create diagnostics for azure resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a diagnostics that will help you troubleshoot an issue with your azure resource',
          options: [

            Option(
              name: '--diagnostic-name',
              description: 'Unique resource name for diagnostic proxy resources',
              args: [
                Arg(
                name: 'diagnostic-nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'This is an extension resource provider and only resource level extension is supported at the moment',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--global-parameters',
              description: 'Global parameters that can be passed to all solutionIds. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'global-parameter'
              )
              ]
            ),
            Option(
              name: '--insights',
              description: 'SolutionIds that are needed to be invoked. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'insight'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wait',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the diagnostics using the \'diagnosticsResourceName\' you chose while creating the diagnostic',
          options: [

            Option(
              name: '--diagnostic-name',
              description: 'Unique resource name for diagnostic proxy resources',
              args: [
                Arg(
                name: 'diagnostic-nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'This is an extension resource provider and only resource level extension is supported at the moment',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition is met',
          options: [

            Option(
              name: '--diagnostic-name',
              description: 'Unique resource name for diagnostic proxy resources',
              args: [
                Arg(
                name: 'diagnostic-nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'This is an extension resource provider and only resource level extension is supported at the moment',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'discovery-solution',
      description: 'Discovery-solution command will help you discover available solutions based on your resource type and problem classification Id',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the existing available solutions for the problemClassificationId or the resourceUri for the Azure resource',
          options: [

            Option(
              name: '--scope',
              description: 'This is an extension resource provider and only resource level extension is supported at the moment',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Can be used to filter solutionIds by \'ProblemClassificationId\'. The filter supports only \'and\' and \'eq\' operators. Example: \$filter=ProblemClassificationId eq \'1ddda5b4-cf6c-4d4f-91ad-bc38ab0e811e\' and ProblemClassificationId eq \'0a9673c2-7af6-4e19-90d3-4ee2461076d9\'',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--skiptoken',
              description: 'Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls',
              args: [
                Arg(
                name: 'skiptoke'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
