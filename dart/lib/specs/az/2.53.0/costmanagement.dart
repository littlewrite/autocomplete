// Auto-generated from TypeScript source: costmanagement.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `costmanagement` CLI
final FigSpec costmanagementSpec = FigSpec(
  name: 'costmanagement',
  description: 'Manage cost and billing in Azure',
  subcommands: [

    Subcommand(
      name: 'export',
      description: 'Costmanagement export',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'The operation to create an export',
          options: [

            Option(
              name: '--name',
              description: 'Export Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope associated with query and export operations. This includes \'/subscriptions/{subscriptionId}/\' for subscription scope, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for resourceGroup scope, \'/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The ID of the storage account to store exports',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--storage-container',
              description: 'The storage container to deliver exports',
              args: [
                Arg(
                name: 'storage-containe'
              )
              ]
            ),
            Option(
              name: '--timeframe',
              description: 'The time frame for pulling data for the query. If custom, then a specific time period must be provided',
              args: [
                Arg(
                name: 'timeframe',
                suggestions: [

                  FigSuggestion(name: 'BillingMonthToDate'),
                  FigSuggestion(name: 'Custom'),
                  FigSuggestion(name: 'MonthToDate'),
                  FigSuggestion(name: 'TheLastBillingMonth'),
                  FigSuggestion(name: 'TheLastMonth'),
                  FigSuggestion(name: 'WeekToDate')
                ]
              )
              ]
            ),
            Option(
              name: '--dataset-configuration',
              description: 'Has configuration information for the data in the export. The configuration will be ignored if aggregation and grouping are provided. Expect value: columns=xx',
              args: [
                Arg(
                name: 'dataset-configuratio'
              )
              ]
            ),
            Option(
              name: '--recurrence',
              description: 'The schedule recurrence',
              args: [
                Arg(
                name: 'recurrence',
                suggestions: [

                  FigSuggestion(name: 'Annually'),
                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--recurrence-period',
              description: 'Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date. Expect value: KEY1=VALUE1 KEY2=VALUE2 ... , available KEYs are: from, to. The time format is like 2020-05-01T00:00:00',
              args: [
                Arg(
                name: 'recurrence-perio'
              )
              ]
            ),
            Option(
              name: '--schedule-status',
              description: 'The status of the export\'s schedule. If inactive, the export\'s scheduled execution is paused',
              args: [
                Arg(
                name: 'schedule-status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Inactive')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-directory',
              description: 'The root directory in the storage container to store exports',
              args: [
                Arg(
                name: 'storage-director'
              )
              ]
            ),
            Option(
              name: '--time-period',
              description: 'Has time period for pulling data for the query. Expect value: from=TIMESTAMP1 to=TIMESTAMP2. The timestamp format is like 2020-05-01T00:00:00.The TIMESTAMP1 must in the future and TIMESTAMP2 must be greater than TIMESTAMP1',
              args: [
                Arg(
                name: 'time-perio'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The type of the query',
              args: [
                Arg(
                name: 'type',
                suggestions: [

                  FigSuggestion(name: 'ActualCost'),
                  FigSuggestion(name: 'AmortizedCost'),
                  FigSuggestion(name: 'Usage')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'The operation to delete an export',
          options: [

            Option(
              name: '--name',
              description: 'Export Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope associated with query and export operations. This includes \'/subscriptions/{subscriptionId}/\' for subscription scope, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for resourceGroup scope, \'/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'The operation to list all exports at the given scope',
          options: [

            Option(
              name: '--scope',
              description: 'The scope associated with query and export operations. This includes \'/subscriptions/{subscriptionId}/\' for subscription scope, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for resourceGroup scope, \'/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'The operation to get the execution history of an export for the defined scope by export name',
          options: [

            Option(
              name: '--name',
              description: 'Export Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope associated with query and export operations. This includes \'/subscriptions/{subscriptionId}/\' for subscription scope, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for resourceGroup scope, \'/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'The operation to update an export',
          options: [

            Option(
              name: '--name',
              description: 'Export Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'The scope associated with query and export operations. This includes \'/subscriptions/{subscriptionId}/\' for subscription scope, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for resourceGroup scope, \'/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--dataset-configuration',
              description: 'Has configuration information for the data in the export. The configuration will be ignored if aggregation and grouping are provided. Expect value: columns=xx',
              args: [
                Arg(
                name: 'dataset-configuratio'
              )
              ]
            ),
            Option(
              name: '--recurrence',
              description: 'The schedule recurrence',
              args: [
                Arg(
                name: 'recurrence',
                suggestions: [

                  FigSuggestion(name: 'Annually'),
                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--recurrence-period',
              description: 'Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date. Expect value: KEY1=VALUE1 KEY2=VALUE2 ... , available KEYs are: from, to. The time format is like 2020-05-01T00:00:00',
              args: [
                Arg(
                name: 'recurrence-perio'
              )
              ]
            ),
            Option(
              name: '--schedule-status',
              description: 'The status of the export\'s schedule. If inactive, the export\'s scheduled execution is paused',
              args: [
                Arg(
                name: 'schedule-status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Inactive')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The ID of the storage account to store exports',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--storage-container',
              description: 'The storage container to deliver exports',
              args: [
                Arg(
                name: 'storage-containe'
              )
              ]
            ),
            Option(
              name: '--storage-directory',
              description: 'The root directory in the storage container to store exports',
              args: [
                Arg(
                name: 'storage-director'
              )
              ]
            ),
            Option(
              name: '--time-period',
              description: 'Has time period for pulling data for the query. Expect value: from=TIMESTAMP1 to=TIMESTAMP2. The timestamp format is like 2020-05-01T00:00:00.The TIMESTAMP1 must in the future and TIMESTAMP2 must be greater than TIMESTAMP1',
              args: [
                Arg(
                name: 'time-perio'
              )
              ]
            ),
            Option(
              name: '--timeframe',
              description: 'The time frame for pulling data for the query. If custom, then a specific time period must be provided',
              args: [
                Arg(
                name: 'timeframe',
                suggestions: [

                  FigSuggestion(name: 'BillingMonthToDate'),
                  FigSuggestion(name: 'Custom'),
                  FigSuggestion(name: 'MonthToDate'),
                  FigSuggestion(name: 'TheLastBillingMonth'),
                  FigSuggestion(name: 'TheLastMonth'),
                  FigSuggestion(name: 'WeekToDate')
                ]
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
