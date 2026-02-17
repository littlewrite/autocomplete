// Auto-generated from TypeScript source: change-analysis.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `change-analysis` CLI
final FigSpec changeAnalysisSpec = FigSpec(
  name: 'change-analysis',
  description: 'List changes for resources',
  subcommands: [

    Subcommand(
      name: 'list',
      description: 'List the changes of resources in the subscription within the specified time range. Customer data will always be masked',
      options: [

        Option(
          name: '--end-time',
          description: 'Specifies the end time of the changes request',
          args: [
            Arg(
            name: 'end-tim'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'Specifies the start time of the changes request',
          args: [
            Arg(
            name: 'start-tim'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'A skip token is used to continue retrieving items after an operation returns a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-by-resource',
      description: 'List the changes of a resource within the specified time range. Customer data will be masked if the user doesn\'t have access',
      options: [

        Option(
          name: '--end-time',
          description: 'Specifies the end time of the changes request',
          args: [
            Arg(
            name: 'end-tim'
          )
          ]
        ),
        Option(
          name: ['--resource', '-r'],
          description: 'The identifier of the resource',
          args: [
            Arg(
            name: 'resourc'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'Specifies the start time of the changes request',
          args: [
            Arg(
            name: 'start-tim'
          )
          ]
        ),
        Option(
          name: '--skip-token',
          description: 'A skip token is used to continue retrieving items after an operation returns a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls',
          args: [
            Arg(
            name: 'skip-toke'
          )
          ]
        )
      ]
    )
  ]
);
