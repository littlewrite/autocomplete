// Auto-generated from TypeScript source: monitor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `monitor` CLI
final FigSpec monitorSpec = FigSpec(
  name: 'monitor',
  description: 'Manage the Azure Monitor Service',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage monitor account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a workspace',
          options: [

            Option(
              name: ['--azure-monitor-workspace-name', '--name', '-n'],
              description: 'The name of the Azure Monitor workspace. The name is case insensitive',
              args: [
                Arg(
                name: 'azure-monitor-workspace-nam'
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
              name: ['--location', '-l'],
              description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a workspace',
          options: [

            Option(
              name: ['--azure-monitor-workspace-name', '--name', '-n'],
              description: 'The name of the Azure Monitor workspace. The name is case insensitive',
              args: [
                Arg(
                name: 'azure-monitor-workspace-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List all workspaces in the specified subscription',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the specific azure monitor workspace',
          options: [

            Option(
              name: ['--azure-monitor-workspace-name', '--name', '-n'],
              description: 'The name of the Azure Monitor workspace. The name is case insensitive',
              args: [
                Arg(
                name: 'azure-monitor-workspace-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a workspace',
          options: [

            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: ['--azure-monitor-workspace-name', '--name', '-n'],
              description: 'The name of the Azure Monitor workspace. The name is case insensitive',
              args: [
                Arg(
                name: 'azure-monitor-workspace-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
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
              name: ['--azure-monitor-workspace-name', '--name', '-n'],
              description: 'The name of the Azure Monitor workspace. The name is case insensitive',
              args: [
                Arg(
                name: 'azure-monitor-workspace-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
      name: 'action-group',
      description: 'Manage action groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new action group',
          options: [

            Option(
              name: ['--action-group-name', '--name', '-n'],
              description: 'The name of the action group',
              args: [
                Arg(
                name: 'action-group-nam'
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
              name: ['--actions', '--action', '-a'],
              description: 'Add receivers to the action group during the creation. Usage: --action TYPE NAME [ARG ...] Email: Format: --action email NAME EMAIL_ADDRESS [usecommonalertschema] Example: --action email bob bob@contoso.com SMS: Format: --action sms NAME COUNTRY_CODE PHONE_NUMBER Example: --action sms charli 1 5551234567 Webhook: Format: --action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI] [usecommonalertschema] Example: --action webhook alert_hook https://www.contoso.com/alert useaadauth testobj http://identifier usecommonalertschema Arm Role: Format: --action armrole NAME ROLE_ID [usecommonalertschema] Example: --action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Azure App Push: Format: --action azureapppush NAME EMAIL_ADDRESS Example: --action azureapppush test_apppush bob@contoso.com ITSM: Format: --action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION Example: --action itsm test_itsm test_workspace test_conn ticket_blob useast Automation runbook: Format: --action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema] Example: --action automationrunbook test_runbook test_acc test_book test_webhook test_rsrc http://example.com isglobalrunbook usecommonalertschema Voice: Format: --action voice NAME COUNTRY_CODE PHONE_NUMBER Example: --action voice charli 1 4441234567 Logic App: Format: --action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema] Example: --action logicapp test_logicapp test_rsrc http://callback Azure Function: Format: --action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME HTTP_TRIGGER_URL [usecommonalertschema] Example: --action azurefunction test_function test_rsrc test_func http://trigger usecommonalertschema Event Hub: Format: --action eventhub NAME SUBSCRIPTION_ID EVENT_HUB_NAME_SPACE EVENT_HUB_NAME [usecommonalertschema] Example: --action eventhub test_eventhub 5def922a-3ed4-49c1-b9fd-05ec533819a3 eventhubNameSpace testEventHubName usecommonalertschema Multiple actions can be specified by using more than one --add-action argument. \'useaadauth\', \'isglobalrunbook\' and \'usecommonalertschema\' are optional arguements that only need to be passed to set the respective parameter to True. If the \'useaadauth\' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are required as well. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'action'
              )
              ]
            ),
            Option(
              name: ['--group-short-name', '--short-name'],
              description: 'The short name of the action group. This will be used in SMS messages',
              args: [
                Arg(
                name: 'group-short-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use \'\' to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an action group',
          options: [

            Option(
              name: ['--action-group-name', '--name', '-n'],
              description: 'The name of the action group',
              args: [
                Arg(
                name: 'action-group-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-receiver',
          description: 'Enable a receiver in an action group',
          options: [

            Option(
              name: ['--receiver-name', '--name', '-n'],
              description: 'The name of the receiver to resubscribe',
              args: [
                Arg(
                name: 'receiver-nam'
              )
              ]
            ),
            Option(
              name: ['--action-group-name', '--action-group'],
              description: 'The name of the action group',
              args: [
                Arg(
                name: 'action-group-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List action groups under a resource group or the current subscription',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of an action group',
          options: [

            Option(
              name: ['--action-group-name', '--name', '-n'],
              description: 'The name of the action group',
              args: [
                Arg(
                name: 'action-group-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an action group',
          options: [

            Option(
              name: ['--action-group-name', '--name', '-n'],
              description: 'The name of the action group',
              args: [
                Arg(
                name: 'action-group-nam'
              )
              ]
            ),
            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: ['--add-actions', '--add-action', '-a'],
              description: 'Add receivers to the action group. Usage: --add-action TYPE NAME [ARG ...] Email: Format: --add-action email NAME EMAIL_ADDRESS [usecommonalertschema] Example: --add-action email bob bob@contoso.com SMS: Format: --add-action sms NAME COUNTRY_CODE PHONE_NUMBER Example: --add-action sms charli 1 5551234567 Webhook: Format: --add-action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI] [usecommonalertschema] Example: --add-action https://www.contoso.com/alert useaadauth testobj http://identifier usecommonalertschema Arm Role: Format: --add-action armrole NAME ROLE_ID [usecommonalertschema] Example: --add-action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Azure App Push: Format: --add-action azureapppush NAME EMAIL_ADDRESS Example: --add-action azureapppush test_apppush bob@contoso.com ITSM: Format: --add-action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION Example: --add-action itsm test_itsm test_workspace test_conn ticket_blob useast Automation runbook: Format: --add-action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema] Example: --add-action automationrunbook test_runbook test_acc test_book test_webhook test_rsrc http://example.com isglobalrunbook usecommonalertschema Voice: Format: --add-action voice NAME COUNTRY_CODE PHONE_NUMBER Example: --add-action voice charli 1 4441234567 Logic App: Format: --add-action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema] Example: --add-action logicapp test_logicapp test_rsrc http://callback Azure Function: Format: --add-action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME HTTP_TRIGGER_URL [usecommonalertschema] Example: --add-action azurefunction test_function test_rsrc test_func http://trigger usecommonalertschema Event Hub: Format: --action eventhub NAME SUBSCRIPTION_ID EVENT_HUB_NAME_SPACE EVENT_HUB_NAME [usecommonalertschema] Example: --action eventhub test_eventhub 5def922a-3ed4-49c1-b9fd-05ec533819a3 eventhubNameSpace testEventHubName usecommonalertschema Multiple actions can be specified by using more than one --add-action argument. \'useaadauth\', \'isglobalrunbook\' and \'usecommonalertschema\' are optional arguements that only need to be passed to set the respective parameter to True. If the \'useaadauth\' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are required as well. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'add-action'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: ['--group-short-name', '--short-name'],
              description: 'The short name of the action group. This will be used in SMS messages',
              args: [
                Arg(
                name: 'group-short-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
              )
              ]
            ),
            Option(
              name: ['--remove-action', '-r'],
              description: 'Remove receivers from the action group. Accept space-separated list of receiver names. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'remove-actio'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use \'\' to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state',
          options: [

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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
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
              name: ['--name', '-n'],
              description: 'The name of the action group. Required',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
        ),
        Subcommand(
          name: 'test-notifications',
          description: 'Manage action groups test-notifications',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an action group test-notifications',
              options: [

                Option(
                  name: ['--action-group-name', '--action-group'],
                  description: 'The name of the action group',
                  args: [
                    Arg(
                    name: 'action-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--alert-type',
                  description: 'The value of the supported alert type. Supported alert type values are: servicehealth, metricstaticthreshold, metricsdynamicthreshold, logalertv2, smartalert, webtestalert, logalertv1numresult, logalertv1metricmeasurement, resourcehealth, activitylog, budget',
                  args: [
                    Arg(
                    name: 'alert-typ'
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
                  name: ['--add-actions', '--add-action', '-a'],
                  description: 'Add receivers to the action group. Usage: --add-action TYPE NAME [ARG ...] Email: Format: --add-action email NAME EMAIL_ADDRESS [usecommonalertschema] Example: --add-action email bob bob@contoso.com SMS: Format: --add-action sms NAME COUNTRY_CODE PHONE_NUMBER Example: --add-action sms charli 1 5551234567 Webhook: Format: --add-action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI] [usecommonalertschema] Example: --add-action https://www.contoso.com/alert useaadauth testobj http://identifier usecommonalertschema Arm Role: Format: --add-action armrole NAME ROLE_ID [usecommonalertschema] Example: --add-action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Azure App Push: Format: --add-action azureapppush NAME EMAIL_ADDRESS Example: --add-action azureapppush test_apppush bob@contoso.com ITSM: Format: --add-action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION Example: --add-action itsm test_itsm test_workspace test_conn ticket_blob useast Automation runbook: Format: --add-action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema] Example: --add-action automationrunbook test_runbook test_acc test_book test_webhook test_rsrc http://example.com isglobalrunbook usecommonalertschema Voice: Format: --add-action voice NAME COUNTRY_CODE PHONE_NUMBER Example: --add-action voice charli 1 4441234567 Logic App: Format: --add-action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema] Example: --add-action logicapp test_logicapp test_rsrc http://callback Azure Function: Format: --add-action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME HTTP_TRIGGER_URL [usecommonalertschema] Example: --add-action azurefunction test_function test_rsrc test_func http://trigger usecommonalertschema Event Hub: Format: --action eventhub NAME SUBSCRIPTION_ID EVENT_HUB_NAME_SPACE EVENT_HUB_NAME [usecommonalertschema] Example: --action eventhub test_eventhub 5def922a-3ed4-49c1-b9fd-05ec533819a3 eventhubNameSpace testEventHubName usecommonalertschema Multiple actions can be specified by using more than one --add-action argument. \'useaadauth\', \'isglobalrunbook\' and \'usecommonalertschema\' are optional arguements that only need to be passed to set the respective parameter to True. If the \'useaadauth\' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are required as well. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'add-action'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'activity-log',
      description: 'Manage activity logs',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List and query activity log events',
          options: [

            Option(
              name: '--caller',
              description: 'Caller to query for, such as an e-mail address or service principal ID',
              args: [
                Arg(
                name: 'calle'
              )
              ]
            ),
            Option(
              name: '--correlation-id',
              description: 'Correlation ID to query',
              args: [
                Arg(
                name: 'correlation-i'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'End time of the query. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--max-events',
              description: 'Maximum number of records to return',
              args: [
                Arg(
                name: 'max-event'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Resource provider namespace',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Time offset of the query range, in ##d##h format',
              args: [
                Arg(
                name: 'offse'
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
              name: '--resource-id',
              description: 'ARM ID of a resource',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--select',
              description: 'Space-separated list of properties to return',
              args: [
                Arg(
                name: 'select',
                suggestions: [

                  FigSuggestion(name: 'authorization'),
                  FigSuggestion(name: 'caller'),
                  FigSuggestion(name: 'category'),
                  FigSuggestion(name: 'claims'),
                  FigSuggestion(name: 'correlationId'),
                  FigSuggestion(name: 'description'),
                  FigSuggestion(name: 'eventDataId'),
                  FigSuggestion(name: 'eventName'),
                  FigSuggestion(name: 'eventTimestamp'),
                  FigSuggestion(name: 'httpRequest'),
                  FigSuggestion(name: 'id'),
                  FigSuggestion(name: 'level'),
                  FigSuggestion(name: 'operationId'),
                  FigSuggestion(name: 'operationName'),
                  FigSuggestion(name: 'properties'),
                  FigSuggestion(name: 'resourceGroupName'),
                  FigSuggestion(name: 'resourceId'),
                  FigSuggestion(name: 'resourceProviderName'),
                  FigSuggestion(name: 'resourceType'),
                  FigSuggestion(name: 'status'),
                  FigSuggestion(name: 'subStatus'),
                  FigSuggestion(name: 'submissionTimestamp'),
                  FigSuggestion(name: 'subscriptionId'),
                  FigSuggestion(name: 'tenantId')
                ]
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status to query for (ex: Failed)',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-categories',
          description: 'List the event categories of activity logs'
        ),
        Subcommand(
          name: 'alert',
          description: 'Manage activity log alert rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a default activity log alert rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the activity log alert rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--action-group', '-a'],
                  description: 'Add an action group. Accepts space-separated action group identifiers. The identifier can be the action group\'s name or its resource ID',
                  args: [
                    Arg(
                    name: 'action-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--condition', '-c'],
                  description: 'The condition that will cause the alert rule to activate. The format is FIELD=VALUE[ and FIELD=VALUE...]',
                  args: [
                    Arg(
                    name: 'conditio'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'A description of this activity log alert rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--disable',
                  description: 'Disable the activity log alert rule after it is created'
                ),
                Option(
                  name: ['--scope', '-s'],
                  description: 'A list of strings that will be used as prefixes',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--webhook-properties', '-w'],
                  description: 'Space-separated webhook properties in \'key[=value]\' format. These properties are associated with the action groups added in this command',
                  args: [
                    Arg(
                    name: 'webhook-propertie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an activity log alert',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the activity log alert. Required',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List activity log alert rules under a resource group or the current subscription',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group under which the activity log alert rules are being listed. If it is omitted, all the activity log alert rules under the current subscription are listed',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an activity log alert',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the activity log alert. Required',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the details of this activity log alert rule',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: ['--condition', '-c'],
                  description: 'The conditional expression that will cause the alert rule to activate. The format is FIELD=VALUE[ and FIELD=VALUE...]',
                  args: [
                    Arg(
                    name: 'conditio'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'A description of this activity log alert rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: '',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the activity log alert. Required',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'action-group',
              description: 'Manage action groups for activity log alert rules',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add action groups to this activity log alert rule. It can also be used to overwrite existing webhook properties of particular action groups',
                  options: [

                    Option(
                      name: ['--action-group', '-a'],
                      description: 'The names or the resource ids of the action groups to be added',
                      args: [
                        Arg(
                        name: 'action-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the activity log alert rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--reset',
                      description: 'Remove all the existing action groups before add new conditions'
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
                      name: '--strict',
                      description: 'Fails the command if an action group to be added will change existing webhook properties'
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--webhook-properties', '-w'],
                      description: 'Space-separated webhook properties in \'key[=value]\' format. These properties will be associated with the action groups added in this command',
                      args: [
                        Arg(
                        name: 'webhook-propertie'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove action groups from this activity log alert rule',
                  options: [

                    Option(
                      name: ['--action-group', '-a'],
                      description: 'The names or the resource ids of the action groups to be removed',
                      args: [
                        Arg(
                        name: 'action-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the activity log alert rule',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'scope',
              description: 'Manage scopes for activity log alert rules',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add scopes to this activity log alert rule',
                  options: [

                    Option(
                      name: ['--scope', '-s'],
                      description: 'List of scopes to add. Each scope could be a resource ID, a resource group ID or a subscription ID',
                      args: [
                        Arg(
                        name: 'scop'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the activity log alert rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--reset',
                      description: 'Remove all the existing scopes before add new scopes'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Removes scopes from this activity log alert rule',
                  options: [

                    Option(
                      name: ['--scope', '-s'],
                      description: 'The scopes to remove',
                      args: [
                        Arg(
                        name: 'scop'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the activity log alert rule',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'alert-processing-rule',
      description: 'Manage alert processing rule with alertsmanagement',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an alert processing rule',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the alert processing rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--rule-type',
              description: 'Indicate type of the alert processing rule',
              args: [
                Arg(
                name: 'rule-type',
                suggestions: [

                  FigSuggestion(name: 'AddActionGroups'),
                  FigSuggestion(name: 'RemoveAllActionGroups')
                ]
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'List of resource IDs (space-delimited) for scope. The rule will apply to alerts that fired on resources within that scope',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--action-groups',
              description: 'List of resource ids (space-delimited) of action groups to add. A use of this argument requires that rule-type is AddActionGroups',
              args: [
                Arg(
                name: 'action-group'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the alert processing rule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Indicate if the given alert processing rule is enabled or disabled (default is enabled)',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--filter-alert-context',
              description: 'Filter alerts by alert context (payload)',
              args: [
                Arg(
                name: 'filter-alert-contex'
              )
              ]
            ),
            Option(
              name: '--filter-alert-rule-description',
              description: 'Filter alerts by alert rule description',
              args: [
                Arg(
                name: 'filter-alert-rule-descriptio'
              )
              ]
            ),
            Option(
              name: '--filter-alert-rule-id',
              description: 'Filter alerts by alert ID',
              args: [
                Arg(
                name: 'filter-alert-rule-i'
              )
              ]
            ),
            Option(
              name: '--filter-alert-rule-name',
              description: 'Filter alerts by alert rule name',
              args: [
                Arg(
                name: 'filter-alert-rule-nam'
              )
              ]
            ),
            Option(
              name: '--filter-monitor-condition',
              description: 'Filter alerts by monitor condition',
              args: [
                Arg(
                name: 'filter-monitor-conditio'
              )
              ]
            ),
            Option(
              name: '--filter-monitor-service',
              description: 'Filter alerts by monitor service',
              args: [
                Arg(
                name: 'filter-monitor-servic'
              )
              ]
            ),
            Option(
              name: '--filter-resource-group',
              description: 'Filter alerts by resource group',
              args: [
                Arg(
                name: 'filter-resource-grou'
              )
              ]
            ),
            Option(
              name: '--filter-resource-type',
              description: 'Filter alerts by resource type',
              args: [
                Arg(
                name: 'filter-resource-typ'
              )
              ]
            ),
            Option(
              name: '--filter-severity',
              description: 'Filter alerts by severity <Sev0, Sev1, Sev2, Sev3, Sev4>',
              args: [
                Arg(
                name: 'filter-severit'
              )
              ]
            ),
            Option(
              name: '--filter-signal-type',
              description: 'Filter alerts by signal type',
              args: [
                Arg(
                name: 'filter-signal-typ'
              )
              ]
            ),
            Option(
              name: '--filter-target-resource',
              description: 'Filter alerts by resource',
              args: [
                Arg(
                name: 'filter-target-resourc'
              )
              ]
            ),
            Option(
              name: '--schedule-end-datetime',
              description: 'End date for the rule. Format: \'YYYY-MM-DD hh:mm:ss\'',
              args: [
                Arg(
                name: 'schedule-end-datetim'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence',
              description: 'List of recurrence pattern values',
              args: [
                Arg(
                name: 'schedule-recurrenc'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-2',
              description: 'List of recurrence pattern values for the second recurrence pattern',
              args: [
                Arg(
                name: 'schedule-recurrence-'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-2-end-time',
              description: 'End time for each recurrence. Format: hh:mm:ss',
              args: [
                Arg(
                name: 'schedule-recurrence-2-end-tim'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-2-start-time',
              description: 'Start time for each recurrence. Format: hh:mm:ss',
              args: [
                Arg(
                name: 'schedule-recurrence-2-start-tim'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-2-type',
              description: 'Specifies when the processing rule should be applied. Default to Always',
              args: [
                Arg(
                name: 'schedule-recurrence-2-type',
                suggestions: [

                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-end-time',
              description: 'End time for each recurrence. Format: \'hh:mm:ss\'',
              args: [
                Arg(
                name: 'schedule-recurrence-end-tim'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-start-time',
              description: 'Start time for each recurrence. Format: \'hh:mm:ss\'',
              args: [
                Arg(
                name: 'schedule-recurrence-start-tim'
              )
              ]
            ),
            Option(
              name: '--schedule-recurrence-type',
              description: 'Specifies when the processing rule should be applied',
              args: [
                Arg(
                name: 'schedule-recurrence-type',
                suggestions: [

                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--schedule-start-datetime',
              description: 'Start date for the rule. Format: \'YYYY-MM-DD hh:mm:ss\'',
              args: [
                Arg(
                name: 'schedule-start-datetim'
              )
              ]
            ),
            Option(
              name: '--schedule-time-zone',
              description: 'Schedule time zone',
              args: [
                Arg(
                name: 'schedule-time-zon'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an alert processing rule',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the alert processing rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List all alert processing rules in a subscription or resource group',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an alert processing rule',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the alert processing rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Enable, disable, or update tags for an alert processing rule',
          options: [

            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Indicate if the given processing rule is enabled or disabled (values are True and False)',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the alert processing rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'app-insights',
      description: 'Commands for querying data in Application Insights applications',
      subcommands: [

        Subcommand(
          name: 'query',
          description: 'Execute a query over data in your application',
          options: [

            Option(
              name: '--analytics-query',
              description: 'Query to execute over Application Insights data',
              args: [
                Arg(
                name: 'analytics-quer'
              )
              ]
            ),
            Option(
              name: ['--apps', '-a'],
              description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
              args: [
                Arg(
                name: 'app'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'End of time range for current operation. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Time offset of the query range, in ##d##h format',
              args: [
                Arg(
                name: 'offse'
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
              name: '--start-time',
              description: 'Start-time of time range for which to retrieve data. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'api-key',
          description: 'Operations on API keys associated with an Application Insights component',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an API Key of an Application Insights component',
              options: [

                Option(
                  name: '--api-key',
                  description: 'Name of the API key to create',
                  args: [
                    Arg(
                    name: 'api-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
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
                  name: '--read-properties',
                  description: 'A space-separated list of names of read Roles for this API key to inherit. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'read-propertie'
                  )
                  ]
                ),
                Option(
                  name: '--write-properties',
                  description: 'A space-separated list of names of write Roles for this API key to inherit. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'write-propertie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an API key from an Application Insights resource',
              options: [

                Option(
                  name: '--api-key',
                  description: 'Name of the API key to delete. Can be found using api-key show',
                  args: [
                    Arg(
                    name: 'api-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              name: 'show',
              description: 'Get all keys or a specific API key associated with an Application Insights resource',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'The name of the Application Insights component resource',
                  args: [
                    Arg(
                    name: 'ap'
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
                  name: '--api-key',
                  description: 'Name of the API key to fetch. Can be found using api-key show',
                  args: [
                    Arg(
                    name: 'api-ke'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'component',
          description: 'Manage an Application Insights component or its subcomponents',
          subcommands: [

            Subcommand(
              name: 'connect-function',
              description: 'Connect AI to an Azure function',
              options: [

                Option(
                  name: '--function',
                  description: 'Name or resource id of the Azure function',
                  args: [
                    Arg(
                    name: 'functio'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'connect-webapp',
              description: 'Connect AI to a web app',
              options: [

                Option(
                  name: '--web-app',
                  description: 'Name or resource id of the web app',
                  args: [
                    Arg(
                    name: 'web-ap'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--enable-snapshot-debugger', '--enable-debugger'],
                  description: 'Enable snapshot debugger when an exception is thrown. Currently it is only supported for .NET/.NET Core Web Apps',
                  args: [
                    Arg(
                    name: 'enable-snapshot-debugger',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-profiler',
                  description: 'Enable collecting profiling traces that help you see where time is spent in code. Currently it is only supported for .NET/.NET Core Web Apps',
                  args: [
                    Arg(
                    name: 'enable-profiler',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a new Application Insights resource',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
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
                  name: '--application-type',
                  description: 'Type of application being monitored. Possible values include \'web\', \'other\'. Default value is\'web\'',
                  args: [
                    Arg(
                    name: 'application-typ'
                  )
                  ]
                ),
                Option(
                  name: '--ingestion-access',
                  description: 'The public network access type for accessing Application Insights ingestion',
                  args: [
                    Arg(
                    name: 'ingestion-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kind', '-k'],
                  description: 'The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of web, ios, other, store, java, phone',
                  args: [
                    Arg(
                    name: 'kin'
                  )
                  ]
                ),
                Option(
                  name: '--query-access',
                  description: 'The public network access type for accessing Application Insights query',
                  args: [
                    Arg(
                    name: 'query-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--retention-time',
                  description: 'Retention in days for Application Insights. The value can be one of the following values: 30,60,90,120,180,270,365,550,730. It can be set only when Application Insights is not connected to a Log Analytics workspace',
                  args: [
                    Arg(
                    name: 'retention-tim'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--workspace',
                  description: 'Name or resource ID of a log analytics workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a new Application Insights resource',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an Application Insights resource',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update properties on an existing Application Insights resource. The primary value which can be updated is kind, which customizes the UI experience',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ingestion-access',
                  description: 'The public network access type for accessing Application Insights ingestion',
                  args: [
                    Arg(
                    name: 'ingestion-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kind', '-k'],
                  description: 'The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of web, ios, other, store, java, phone',
                  args: [
                    Arg(
                    name: 'kin'
                  )
                  ]
                ),
                Option(
                  name: '--query-access',
                  description: 'The public network access type for accessing Application Insights query',
                  args: [
                    Arg(
                    name: 'query-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  name: '--retention-time',
                  description: 'Retention in days for Application Insights. The value can be one of the following values: 30,60,90,120,180,270,365,550,730. It can be set only when Application Insights is not connected to a Log Analytics workspace',
                  args: [
                    Arg(
                    name: 'retention-tim'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace',
                  description: 'Name or resource ID of a log analytics workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-tags',
              description: 'Update tags on an existing Application Insights resource',
              options: [

                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'billing',
              description: 'Manage an Application Insights component billing features',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Show the billing features of an Application Insights resource',
                  options: [

                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update the billing features of an Application Insights resource',
                  options: [

                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--cap',
                      description: 'Daily data volume cap in GB',
                      args: [
                        Arg(
                        name: 'ca'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                      args: [
                        Arg(
                        name: 'force-string',
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
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
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
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: ['--stop', '-s'],
                      description: 'Do not send a notification email when the daily data volume cap is met',
                      args: [
                        Arg(
                        name: 'stop',
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
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'continues-export',
              description: 'Manage Continuous Export configurations for an Application Insights component',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a Continuous Export configuration for an Application Insights component',
                  options: [

                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-account',
                      description: 'The name of destination storage account',
                      args: [
                        Arg(
                        name: 'dest-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-container',
                      description: 'The name of the destination storage container',
                      args: [
                        Arg(
                        name: 'dest-containe'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-sas',
                      description: 'The SAS token for the destination storage container. It must grant write permission',
                      args: [
                        Arg(
                        name: 'dest-sa'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-sub-id',
                      description: 'The subscription ID of the destination storage account',
                      args: [
                        Arg(
                        name: 'dest-sub-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--record-types',
                      description: 'The document types to be exported, as comma separated values. Allowed values include \'Requests\', \'Event\', \'Exceptions\', \'Metrics\', \'PageViews\', \'PageViewPerformance\', \'Rdd\', \'PerformanceCounters\', \'Availability\', \'Messages\'',
                      args: [
                        Arg(
                        name: 'record-types',
                        suggestions: [

                          FigSuggestion(name: 'Availability'),
                          FigSuggestion(name: 'Event'),
                          FigSuggestion(name: 'Exceptions'),
                          FigSuggestion(name: 'Messages'),
                          FigSuggestion(name: 'Metrics'),
                          FigSuggestion(name: 'PageViewPerformance'),
                          FigSuggestion(name: 'PageViews'),
                          FigSuggestion(name: 'PerformanceCounters'),
                          FigSuggestion(name: 'Rdd'),
                          FigSuggestion(name: 'Requests')
                        ]
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
                      name: '--dest-type',
                      description: 'The Continuous Export destination type. This has to be \'Blob\'',
                      args: [
                        Arg(
                        name: 'dest-type',
                        suggestions: [

                          FigSuggestion(name: 'Blob')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--is-enabled',
                      description: 'Set to \'true\' to create a Continuous Export configuration as enabled, otherwise set it to \'false\'',
                      args: [
                        Arg(
                        name: 'is-enabled',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a specific Continuous Export     configuration of an Application Insights component',
                  options: [

                    Option(
                      name: '--id',
                      description: 'The Continuous Export configuration ID. This is unique within a Application Insights component',
                      args: [
                        Arg(
                        name: 'i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
                  description: 'List a list of Continuous Export configuration of an Application Insights component',
                  options: [

                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
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
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the Continuous Export configuration for this export id',
                  options: [

                    Option(
                      name: '--id',
                      description: 'The Continuous Export configuration ID. This is unique within a Application Insights component',
                      args: [
                        Arg(
                        name: 'i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a Continuous Export configuration for an Application Insights component',
                  options: [

                    Option(
                      name: '--id',
                      description: 'The Continuous Export configuration ID. This is unique within a Application Insights component',
                      args: [
                        Arg(
                        name: 'i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-account',
                      description: 'The name of destination storage account',
                      args: [
                        Arg(
                        name: 'dest-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-container',
                      description: 'The name of the destination storage container',
                      args: [
                        Arg(
                        name: 'dest-containe'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-sas',
                      description: 'The SAS token for the destination storage container. It must grant write permission',
                      args: [
                        Arg(
                        name: 'dest-sa'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-sub-id',
                      description: 'The subscription ID of the destination storage account',
                      args: [
                        Arg(
                        name: 'dest-sub-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--dest-type',
                      description: 'The Continuous Export destination type. This has to be \'Blob\'',
                      args: [
                        Arg(
                        name: 'dest-type',
                        suggestions: [

                          FigSuggestion(name: 'Blob')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--is-enabled',
                      description: 'Set to \'true\' to create a Continuous Export configuration as enabled, otherwise set it to \'false\'',
                      args: [
                        Arg(
                        name: 'is-enabled',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--record-types',
                      description: 'The document types to be exported, as comma separated values. Allowed values include \'Requests\', \'Event\', \'Exceptions\', \'Metrics\', \'PageViews\', \'PageViewPerformance\', \'Rdd\', \'PerformanceCounters\', \'Availability\', \'Messages\'',
                      args: [
                        Arg(
                        name: 'record-types',
                        suggestions: [

                          FigSuggestion(name: 'Availability'),
                          FigSuggestion(name: 'Event'),
                          FigSuggestion(name: 'Exceptions'),
                          FigSuggestion(name: 'Messages'),
                          FigSuggestion(name: 'Metrics'),
                          FigSuggestion(name: 'PageViewPerformance'),
                          FigSuggestion(name: 'PageViews'),
                          FigSuggestion(name: 'PerformanceCounters'),
                          FigSuggestion(name: 'Rdd'),
                          FigSuggestion(name: 'Requests')
                        ]
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'linked-storage',
              description: 'Manage linked storage account for an Application Insights component',
              subcommands: [

                Subcommand(
                  name: 'link',
                  description: 'Link a storage account with an     Application Insights component',
                  options: [

                    Option(
                      name: ['--storage-account', '-s'],
                      description: 'Name or ID of a linked storage account',
                      args: [
                        Arg(
                        name: 'storage-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the current linked storage settings for an Application Insights component',
                  options: [

                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'unlink',
                  description: 'Unlink a storage account with an Application Insights component',
                  options: [

                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
                  name: 'update',
                  description: 'Update current linked storage account for an Application Insights component',
                  options: [

                    Option(
                      name: ['--storage-account', '-s'],
                      description: 'Name or ID of a linked storage account',
                      args: [
                        Arg(
                        name: 'storage-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: ['--app', '-a'],
                      description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                      args: [
                        Arg(
                        name: 'ap'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'events',
          description: 'Retrieve events from an application',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'List events by type or view a single event from an application, specified by type and ID',
              options: [

                Option(
                  name: '--type',
                  description: 'The type of events to retrieve',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: '\$all'),
                      FigSuggestion(name: 'availabilityResults'),
                      FigSuggestion(name: 'browserTimings'),
                      FigSuggestion(name: 'customEvents'),
                      FigSuggestion(name: 'customMetrics'),
                      FigSuggestion(name: 'dependencies'),
                      FigSuggestion(name: 'exceptions'),
                      FigSuggestion(name: 'pageViews'),
                      FigSuggestion(name: 'performanceCounters'),
                      FigSuggestion(name: 'requests'),
                      FigSuggestion(name: 'traces')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'End of time range for current operation. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--event',
                  description: 'GUID of the event to retrieve. This could be obtained by first listing and filtering events, then selecting an event of interest',
                  args: [
                    Arg(
                    name: 'even'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Time offset of the query range, in ##d##h format',
                  args: [
                    Arg(
                    name: 'offse'
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
                  name: '--start-time',
                  description: 'Start-time of time range for which to retrieve data. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'metrics',
          description: 'Retrieve metrics from an application',
          subcommands: [

            Subcommand(
              name: 'get-metadata',
              description: 'Get the metadata for metrics on a particular application',
              options: [

                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'View the value of a single metric',
              options: [

                Option(
                  name: ['--metrics', '-m'],
                  description: 'The metric to retrieve. May be either a standard AI metric or an application-specific custom metric',
                  args: [
                    Arg(
                    name: 'metric'
                  )
                  ]
                ),
                Option(
                  name: '--aggregation',
                  description: 'The aggregation to use when computing the metric values. To retrieve more than one aggregation at a time, separate them with a comma. If no aggregation is specified, then the default aggregation for the metric is used',
                  args: [
                    Arg(
                    name: 'aggregatio'
                  )
                  ]
                ),
                Option(
                  name: ['--app', '-a'],
                  description: 'GUID, app name, or fully-qualified Azure resource name of Application Insights component. The application GUID may be acquired from the API Access menu item on any Application Insights resource in the Azure portal. If using an application name, please specify resource group',
                  args: [
                    Arg(
                    name: 'ap'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'End of time range for current operation. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An expression used to filter the results. This value should be a valid OData filter expression where the keys of each clause should be applicable dimensions for the metric you are retrieving',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'The interval over which to aggregate metrics, in ##h##m format',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Time offset of the query range, in ##d##h format',
                  args: [
                    Arg(
                    name: 'offse'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'The aggregation function and direction to sort the segments by. This value is only valid when segment is specified',
                  args: [
                    Arg(
                    name: 'orderb'
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
                  name: '--segment',
                  description: 'The name of the dimension to segment the metric values by. This dimension must be applicable to the metric you are retrieving. To segment by more than one dimension at a time, separate them with a comma (,). In this case, the metric data will be segmented in the order the dimensions are listed in the parameter',
                  args: [
                    Arg(
                    name: 'segmen'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Start-time of time range for which to retrieve data. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'The number of segments to return. This value is only valid when segment is specified',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'web-test',
          description: 'Manage web test with application insights',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Application Insights web test definition',
              options: [

                Option(
                  name: ['--web-test-name', '--name', '-n'],
                  description: 'The name of the Application Insights WebTest resource',
                  args: [
                    Arg(
                    name: 'web-test-nam'
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
                  name: '--content-validation',
                  description: 'The collection of content validation properties',
                  args: [
                    Arg(
                    name: 'content-validatio'
                  )
                  ]
                ),
                Option(
                  name: '--defined-web-test-name',
                  description: 'User defined name if this WebTest',
                  args: [
                    Arg(
                    name: 'defined-web-test-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'User defined description for this WebTest',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Is the test actively being monitored',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--expected-status-code',
                  description: 'Validate that the WebTest returns the http status code provided',
                  args: [
                    Arg(
                    name: 'expected-status-cod'
                  )
                  ]
                ),
                Option(
                  name: '--follow-redirects',
                  description: 'Follow redirects for this web test',
                  args: [
                    Arg(
                    name: 'follow-redirects',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--frequency',
                  description: 'Interval in seconds between test runs for this WebTest. Default value is 300',
                  args: [
                    Arg(
                    name: 'frequenc'
                  )
                  ]
                ),
                Option(
                  name: '--headers',
                  description: 'List of headers and their values to add to the WebTest call',
                  args: [
                    Arg(
                    name: 'header'
                  )
                  ]
                ),
                Option(
                  name: '--http-verb',
                  description: 'Http verb to use for this web test',
                  args: [
                    Arg(
                    name: 'http-ver'
                  )
                  ]
                ),
                Option(
                  name: '--ignore-status-code',
                  description: 'When set, validation will ignore the status code',
                  args: [
                    Arg(
                    name: 'ignore-status-code',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The kind of WebTest that this web test watches. Choices are ping and multistep',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'multistep'),
                      FigSuggestion(name: 'ping')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--locations',
                  description: 'A list of where to physically run the tests from to give global coverage for accessibility of your application',
                  args: [
                    Arg(
                    name: 'location'
                  )
                  ]
                ),
                Option(
                  name: '--parse-requests',
                  description: 'Parse Dependent request for this WebTest',
                  args: [
                    Arg(
                    name: 'parse-requests',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--request-body',
                  description: 'Base64 encoded string body to send with this web test',
                  args: [
                    Arg(
                    name: 'request-bod'
                  )
                  ]
                ),
                Option(
                  name: '--request-url',
                  description: 'Url location to test',
                  args: [
                    Arg(
                    name: 'request-ur'
                  )
                  ]
                ),
                Option(
                  name: '--retry-enabled',
                  description: 'Allow for retries should this WebTest fail',
                  args: [
                    Arg(
                    name: 'retry-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ssl-check',
                  description: 'Checks to see if the SSL cert is still valid',
                  args: [
                    Arg(
                    name: 'ssl-check',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ssl-lifetime-check',
                  description: 'A number of days to check still remain before the the existing SSL cert expires. Value must be positive and the SSLCheck must be set to true',
                  args: [
                    Arg(
                    name: 'ssl-lifetime-chec'
                  )
                  ]
                ),
                Option(
                  name: '--synthetic-monitor-id',
                  description: 'Unique ID of this WebTest. This is typically the same value as the Name field',
                  args: [
                    Arg(
                    name: 'synthetic-monitor-i'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Seconds until this WebTest will timeout and fail. Default value is 30',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--web-test',
                  description: 'The XML specification of a WebTest to run against an application',
                  args: [
                    Arg(
                    name: 'web-tes'
                  )
                  ]
                ),
                Option(
                  name: '--web-test-kind',
                  description: 'The kind of web test this is, valid choices are ping, multistep and standard',
                  args: [
                    Arg(
                    name: 'web-test-kind',
                    suggestions: [

                      FigSuggestion(name: 'multistep'),
                      FigSuggestion(name: 'ping'),
                      FigSuggestion(name: 'standard')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Application Insights web test',
              options: [

                Option(
                  name: ['--web-test-name', '--name', '-n'],
                  description: 'The name of the Application Insights WebTest resource',
                  args: [
                    Arg(
                    name: 'web-test-nam'
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get all Application Insights web tests defined for the specified component. And Get all Application Insights web tests defined within a specified resource group. And Get all Application Insights web test alerts definitions within a subscription',
              options: [

                Option(
                  name: '--component-name',
                  description: 'The name of the Application Insights component resource',
                  args: [
                    Arg(
                    name: 'component-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get a specific Application Insights web test definition',
              options: [

                Option(
                  name: ['--web-test-name', '--name', '-n'],
                  description: 'The name of the Application Insights WebTest resource',
                  args: [
                    Arg(
                    name: 'web-test-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an Application Insights web test definition',
              options: [

                Option(
                  name: ['--web-test-name', '--name', '-n'],
                  description: 'The name of the Application Insights WebTest resource',
                  args: [
                    Arg(
                    name: 'web-test-nam'
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
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--content-validation',
                  description: 'The collection of content validation properties',
                  args: [
                    Arg(
                    name: 'content-validatio'
                  )
                  ]
                ),
                Option(
                  name: '--defined-web-test-name',
                  description: 'User defined name if this WebTest',
                  args: [
                    Arg(
                    name: 'defined-web-test-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'User defined description for this WebTest',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Is the test actively being monitored',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--expected-status-code',
                  description: 'Validate that the WebTest returns the http status code provided',
                  args: [
                    Arg(
                    name: 'expected-status-cod'
                  )
                  ]
                ),
                Option(
                  name: '--follow-redirects',
                  description: 'Follow redirects for this web test',
                  args: [
                    Arg(
                    name: 'follow-redirects',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--frequency',
                  description: 'Interval in seconds between test runs for this WebTest. Default value is 300',
                  args: [
                    Arg(
                    name: 'frequenc'
                  )
                  ]
                ),
                Option(
                  name: '--headers',
                  description: 'List of headers and their values to add to the WebTest call',
                  args: [
                    Arg(
                    name: 'header'
                  )
                  ]
                ),
                Option(
                  name: '--http-verb',
                  description: 'Http verb to use for this web test',
                  args: [
                    Arg(
                    name: 'http-ver'
                  )
                  ]
                ),
                Option(
                  name: '--ignore-status-code',
                  description: 'When set, validation will ignore the status code',
                  args: [
                    Arg(
                    name: 'ignore-status-code',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The kind of WebTest that this web test watches. Choices are ping and multistep',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'multistep'),
                      FigSuggestion(name: 'ping')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--locations',
                  description: 'A list of where to physically run the tests from to give global coverage for accessibility of your application',
                  args: [
                    Arg(
                    name: 'location'
                  )
                  ]
                ),
                Option(
                  name: '--parse-requests',
                  description: 'Parse Dependent request for this WebTest',
                  args: [
                    Arg(
                    name: 'parse-requests',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: '--request-body',
                  description: 'Base64 encoded string body to send with this web test',
                  args: [
                    Arg(
                    name: 'request-bod'
                  )
                  ]
                ),
                Option(
                  name: '--request-url',
                  description: 'Url location to test',
                  args: [
                    Arg(
                    name: 'request-ur'
                  )
                  ]
                ),
                Option(
                  name: '--retry-enabled',
                  description: 'Allow for retries should this WebTest fail',
                  args: [
                    Arg(
                    name: 'retry-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-check',
                  description: 'Checks to see if the SSL cert is still valid',
                  args: [
                    Arg(
                    name: 'ssl-check',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ssl-lifetime-check',
                  description: 'A number of days to check still remain before the the existing SSL cert expires. Value must be positive and the SSLCheck must be set to true',
                  args: [
                    Arg(
                    name: 'ssl-lifetime-chec'
                  )
                  ]
                ),
                Option(
                  name: '--synthetic-monitor-id',
                  description: 'Unique ID of this WebTest. This is typically the same value as the Name field',
                  args: [
                    Arg(
                    name: 'synthetic-monitor-i'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Seconds until this WebTest will timeout and fail. Default value is 30',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--web-test',
                  description: 'The XML specification of a WebTest to run against an application',
                  args: [
                    Arg(
                    name: 'web-tes'
                  )
                  ]
                ),
                Option(
                  name: '--web-test-kind',
                  description: 'The kind of web test this is, valid choices are ping, multistep and standard',
                  args: [
                    Arg(
                    name: 'web-test-kind',
                    suggestions: [

                      FigSuggestion(name: 'multistep'),
                      FigSuggestion(name: 'ping'),
                      FigSuggestion(name: 'standard')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'autoscale',
      description: 'Manage autoscale settings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create new autoscale settings',
          options: [

            Option(
              name: '--count',
              description: 'The numer of instances to use. If used with --min/max-count, the default number of instances to use',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: ['--action', '-a'],
              description: 'Add an action to fire when a scaling event occurs',
              args: [
                Arg(
                name: 'actio'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Create the autoscale settings in a disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--email-administrator',
              description: 'Send email to subscription administrator on scaling',
              args: [
                Arg(
                name: 'email-administrator',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--email-coadministrators',
              description: 'Send email to subscription co-administrators on scaling',
              args: [
                Arg(
                name: 'email-coadministrators',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--max-count',
              description: 'The maximum number of instances',
              args: [
                Arg(
                name: 'max-coun'
              )
              ]
            ),
            Option(
              name: '--min-count',
              description: 'The minimum number of instances',
              args: [
                Arg(
                name: 'min-coun'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the autoscale settings',
              args: [
                Arg(
                name: 'nam'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--scale-look-ahead-time',
              description: 'The amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'scale-look-ahead-tim'
              )
              ]
            ),
            Option(
              name: '--scale-mode',
              description: 'The predictive autoscale mode',
              args: [
                Arg(
                name: 'scale-mode',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'ForecastOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an autoscale setting',
          options: [

            Option(
              name: ['--autoscale-name', '--name', '-n'],
              description: 'The autoscale setting name',
              args: [
                Arg(
                name: 'autoscale-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the autoscale settings for a resource group',
          options: [

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
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an autoscale setting',
          options: [

            Option(
              name: ['--autoscale-name', '--name', '-n'],
              description: 'The autoscale setting name',
              args: [
                Arg(
                name: 'autoscale-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-predictive-metric',
          description: 'Show predictive autoscale metric future data',
          options: [

            Option(
              name: '--aggregation',
              description: 'The list of aggregation types (comma separated) to retrieve',
              args: [
                Arg(
                name: 'aggregatio'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'The interval (i.e. timegrain) of the query',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--metric-name',
              description: 'The names of the metrics (comma separated) to retrieve. Special case: If a metricname itself has a comma in it then use %2 to indicate it. Eg: \'Metric,Name1\' should be \'Metric%2Name1\'',
              args: [
                Arg(
                name: 'metric-nam'
              )
              ]
            ),
            Option(
              name: '--metric-namespace',
              description: 'Metric namespace to query metric definitions for',
              args: [
                Arg(
                name: 'metric-namespac'
              )
              ]
            ),
            Option(
              name: '--timespan',
              description: 'The timespan of the query. It is a string with the following format \'startDateTime_ISO/endDateTime_ISO\'',
              args: [
                Arg(
                name: 'timespa'
              )
              ]
            ),
            Option(
              name: '--autoscale-setting-name',
              description: 'The autoscale setting name',
              args: [
                Arg(
                name: 'autoscale-setting-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an autoscale setting',
          options: [

            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: ['--add-actions', '--add-action', '-a'],
              description: 'Add an action to fire when a scaling event occurs. Usage: --add-action TYPE KEY [ARG ...] Email: --add-action email bob@contoso.com ann@contoso.com Webhook: --add-action webhook https://www.contoso.com/alert apiKey=value Webhook: --add-action webhook https://www.contoso.com/alert?apiKey=value Multiple actions can be specified by using more than one --add-action argument. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'add-action'
              )
              ]
            ),
            Option(
              name: ['--autoscale-name', '--name', '-n'],
              description: 'The autoscale setting name',
              args: [
                Arg(
                name: 'autoscale-nam'
              )
              ]
            ),
            Option(
              name: '--count',
              description: 'The numer of instances to use. If used with --min/max-count, the default number of instances to use',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--email-administrator',
              description: 'Send email to subscription administrator on scaling',
              args: [
                Arg(
                name: 'email-administrator',
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
            ),
            Option(
              name: '--email-coadministrators',
              description: 'Send email to subscription co-administrators on scaling',
              args: [
                Arg(
                name: 'email-coadministrators',
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
            ),
            Option(
              name: '--enabled',
              description: 'The enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is \'false\'',
              args: [
                Arg(
                name: 'enabled',
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
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--max-count',
              description: 'The maximum number of instances',
              args: [
                Arg(
                name: 'max-coun'
              )
              ]
            ),
            Option(
              name: '--min-count',
              description: 'The minimum number of instances',
              args: [
                Arg(
                name: 'min-coun'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
              )
              ]
            ),
            Option(
              name: ['--remove-actions', '--remove-action', '-r'],
              description: 'Remove one or more actions. Usage: --remove-action TYPE KEY [KEY ...] Email: --remove-action email bob@contoso.com ann@contoso.com Webhook: --remove-action webhook https://contoso.com/alert https://alerts.contoso.com. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'remove-action'
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
              name: '--scale-look-ahead-time',
              description: 'The amount of time to specify by which instances are launched in advance. It must be between 1 minute and 60 minutes in ISO 8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'scale-look-ahead-tim'
              )
              ]
            ),
            Option(
              name: '--scale-mode',
              description: 'The predictive autoscale mode',
              args: [
                Arg(
                name: 'scale-mode',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'ForecastOnly')
                ]
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'profile',
          description: 'Manage autoscaling profiles.\n\n\t\tFor more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-diagnostics/monitoring-understanding-autoscale-settings',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a fixed or recurring autoscale profile',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: '--count',
                  description: 'The numer of instances to use. If used with --min/max-count, the default number of instances to use',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--timezone',
                  description: 'Timezone name. value from: az monitor autoscale profile list-timezones',
                  args: [
                    Arg(
                    name: 'timezon'
                  )
                  ]
                ),
                Option(
                  name: '--copy-rules',
                  description: 'Name of an existing schedule from which to copy the scaling rules for the new schedule',
                  args: [
                    Arg(
                    name: 'copy-rule'
                  )
                  ]
                ),
                Option(
                  name: '--end',
                  description: 'When the autoscale profile ends. Format depends on the type of profile',
                  args: [
                    Arg(
                    name: 'en'
                  )
                  ]
                ),
                Option(
                  name: '--max-count',
                  description: 'The maximum number of instances',
                  args: [
                    Arg(
                    name: 'max-coun'
                  )
                  ]
                ),
                Option(
                  name: '--min-count',
                  description: 'The minimum number of instances',
                  args: [
                    Arg(
                    name: 'min-coun'
                  )
                  ]
                ),
                Option(
                  name: ['--recurrence', '-r'],
                  description: 'When the profile recurs. If omitted, a fixed (non-recurring) profile is created',
                  args: [
                    Arg(
                    name: 'recurrenc'
                  )
                  ]
                ),
                Option(
                  name: '--start',
                  description: 'When the autoscale profile begins. Format depends on the type of profile',
                  args: [
                    Arg(
                    name: 'star'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an autoscale profile',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List autoscale profiles',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'list-timezones',
              description: 'Look up time zone information',
              options: [

                Option(
                  name: '--offset',
                  description: 'Filter results based on UTC hour offset',
                  args: [
                    Arg(
                    name: 'offse'
                  )
                  ]
                ),
                Option(
                  name: ['--search-query', '-q'],
                  description: 'Query text to find',
                  args: [
                    Arg(
                    name: 'search-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of an autoscale profile',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'nam'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rule',
          description: 'Manage autoscale scaling rules.\n\n\t\tFor more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-diagnostics/monitoring-understanding-autoscale-settings',
          subcommands: [

            Subcommand(
              name: 'copy',
              description: 'Copy autoscale rules from one profile to another',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: '--dest-schedule',
                  description: 'Name of the profile to copy rules to',
                  args: [
                    Arg(
                    name: 'dest-schedul'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Space-separated list of rule indices to copy, or \'*\' to copy all rules',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--source-schedule',
                  description: 'Name of the profile to copy rules from',
                  args: [
                    Arg(
                    name: 'source-schedul'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Add a new autoscale rule',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: '--condition',
                  description: 'The condition which triggers the scaling action',
                  args: [
                    Arg(
                    name: 'conditio'
                  )
                  ]
                ),
                Option(
                  name: '--scale',
                  description: 'The direction and amount to scale',
                  args: [
                    Arg(
                    name: 'scal'
                  )
                  ]
                ),
                Option(
                  name: '--cooldown',
                  description: 'The number of minutes that must elapse before another scaling event can occur',
                  args: [
                    Arg(
                    name: 'cooldow'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--resource',
                  description: 'Name or ID of the target resource',
                  args: [
                    Arg(
                    name: 'resourc'
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
                  name: '--resource-namespace',
                  description: 'Target resource provider namespace',
                  args: [
                    Arg(
                    name: 'resource-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--resource-parent',
                  description: 'Target resource parent path, if applicable',
                  args: [
                    Arg(
                    name: 'resource-paren'
                  )
                  ]
                ),
                Option(
                  name: '--resource-type',
                  description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
                  args: [
                    Arg(
                    name: 'resource-typ'
                  )
                  ]
                ),
                Option(
                  name: '--timegrain',
                  description: 'The way metrics are polled across instances',
                  args: [
                    Arg(
                    name: 'timegrai'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Remove autoscale rules from a profile',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'Space-separated list of rule indices to remove, or \'*\' to clear all rules',
                  args: [
                    Arg(
                    name: 'inde'
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
                  name: '--profile-name',
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List autoscale rules for a profile',
              options: [

                Option(
                  name: '--autoscale-name',
                  description: 'Name of the autoscale settings',
                  args: [
                    Arg(
                    name: 'autoscale-nam'
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
                  name: '--profile-name',
                  description: 'Name of the autoscale profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clone',
      description: 'Clone metrics alert rules from one resource to another resource',
      options: [

        Option(
          name: '--source-resource',
          description: 'Resource ID of the source resource',
          args: [
            Arg(
            name: 'source-resourc'
          )
          ]
        ),
        Option(
          name: '--target-resource',
          description: 'Resource ID of the target resource',
          args: [
            Arg(
            name: 'target-resourc'
          )
          ]
        ),
        Option(
          name: '--always-clone',
          description: 'If this argument is applied, all monitor settings would be cloned instead of expanding its scope'
        ),
        Option(
          name: ['--types', '-t'],
          description: 'List of types of monitor settings which would be cloned',
          args: [
            Arg(
            name: 'types',
            suggestions: [

              FigSuggestion(name: 'metricsAlert')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'data-collection',
      description: 'Manage data collection for monitor control service',
      subcommands: [

        Subcommand(
          name: 'endpoint',
          description: 'Manage data collection endpoint for monitor control service',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a data collection endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection endpoint. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'The configuration to set whether network access from public internet to the endpoints are allowed',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  name: '--description',
                  description: 'Description of the data collection endpoint',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The kind of the resource',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'Linux'),
                      FigSuggestion(name: 'Windows')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a data collection endpoint',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection endpoint. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List all data collection endpoints',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the specified data collection endpoint',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection endpoint. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a data collection endpoint',
              options: [

                Option(
                  name: '--description',
                  description: 'Description of the data collection endpoint',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kind',
                  description: 'The kind of the resource',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'Linux'),
                      FigSuggestion(name: 'Windows')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection endpoint. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'The configuration to set whether network access from public internet to the endpoints are allowed',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rule',
          description: 'Manage data collection rule for monitor control service',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a data collection rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection rule. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--rule-file',
                  description: 'The json file for rule parameters',
                  args: [
                    Arg(
                    name: 'rule-fil'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the data collection rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a data collection rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection rule. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List all data collection rules in the specified resource group. And Lists all data collection rules in the specified subscription',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Return the specified data collection rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection rule. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a data collection rule',
              options: [

                Option(
                  name: '--data-flows',
                  description: 'The specification of data flows',
                  args: [
                    Arg(
                    name: 'data-flow'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the data collection rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--extensions',
                  description: 'The list of Azure VM extension data source configurations. Expected value: json-string/@json-file',
                  args: [
                    Arg(
                    name: 'extension'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--log-analytics',
                  description: 'List of Log Analytics destinations',
                  args: [
                    Arg(
                    name: 'log-analytic'
                  )
                  ]
                ),
                Option(
                  name: '--monitor-metrics',
                  description: 'Azure Monitor Metrics destination',
                  args: [
                    Arg(
                    name: 'monitor-metric'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the data collection rule. The name is case insensitive',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--performance-counters',
                  description: 'The list of performance counter data source configurations',
                  args: [
                    Arg(
                    name: 'performance-counter'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--syslog',
                  description: 'The list of Syslog data source configurations',
                  args: [
                    Arg(
                    name: 'syslo'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--windows-event-logs',
                  description: 'The list of Windows Event Log data source configurations',
                  args: [
                    Arg(
                    name: 'windows-event-log'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'association',
              description: 'Manage data collection rule association for monitor control service',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create an association',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the association',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource',
                      description: 'The identifier of the resource',
                      args: [
                        Arg(
                        name: 'resourc'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Description of the association',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The resource ID of the data collection rule that is to be associated',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete an association',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the association. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource',
                      description: 'The identifier of the resource',
                      args: [
                        Arg(
                        name: 'resourc'
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
                  description: 'List associations for the specified data collection rule. And Lists associations for the specified resource',
                  options: [

                    Option(
                      name: '--endpoint-name',
                      description: 'The name of the data collection endpoint. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'endpoint-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource',
                      description: 'The identifier of the resource',
                      args: [
                        Arg(
                        name: 'resourc'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Return the specified association',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the association. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource',
                      description: 'The identifier of the resource',
                      args: [
                        Arg(
                        name: 'resourc'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an association',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the association',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource',
                      description: 'The identifier of the resource',
                      args: [
                        Arg(
                        name: 'resourc'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Description of the association',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The resource ID of the data collection rule that is to be associated',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'data-flow',
              description: 'Manage data flows',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a data flow',
                  options: [

                    Option(
                      name: '--destinations',
                      description: 'List of destinations for this data flow',
                      args: [
                        Arg(
                        name: 'destination'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams for this data flow',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-Event'),
                          FigSuggestion(name: 'Microsoft-InsightsMetrics'),
                          FigSuggestion(name: 'Microsoft-Perf'),
                          FigSuggestion(name: 'Microsoft-Syslog'),
                          FigSuggestion(name: 'Microsoft-WindowsEvent')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List data flows',
                  options: [

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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'log-analytics',
              description: 'Manage Log Analytics destinations',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add Log Analytics destinations of a data collection rule',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the destination. This name should be unique across all destinations (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource-id',
                      description: 'The resource ID of the Log Analytics workspace',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Log Analytics destinations of a data collection rule',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the destination. This name should be unique across all destinations (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List Log Analytics destinations of a data collection rule',
                  options: [

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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a Log Analytics destination of a data collection rule',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the destination. This name should be unique across all destinations (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a Log Analytics destination of a data collection rule',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the destination. This name should be unique across all destinations (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--resource-id',
                      description: 'The resource ID of the Log Analytics workspace',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'performance-counter',
              description: 'Manage Log performance counter data source',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Log performance counter data source',
                  options: [

                    Option(
                      name: '--counter-specifiers',
                      description: 'A list of specifier names of the performance counters you want to collect.Use a wildcard (*) to collect a counter for all instances. To get a list of performance counters on Windows, run the command \'typeperf\'',
                      args: [
                        Arg(
                        name: 'counter-specifier'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--sampling-frequency',
                      description: 'The number of seconds between consecutive counter measurements (samples)',
                      args: [
                        Arg(
                        name: 'sampling-frequenc'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-InsightsMetrics'),
                          FigSuggestion(name: 'Microsoft-Perf')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Log performance counter data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List Log performance counter data sources',
                  options: [

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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a Log performance counter data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a Log performance counter data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--counter-specifiers',
                      description: 'A list of specifier names of the performance counters you want to collect.Use a wildcard (*) to collect a counter for all instances. To get a list of performance counters on Windows, run the command \'typeperf\'',
                      args: [
                        Arg(
                        name: 'counter-specifier'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--sampling-frequency',
                      description: 'The number of seconds between consecutive counter measurements (samples)',
                      args: [
                        Arg(
                        name: 'sampling-frequenc'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-InsightsMetrics'),
                          FigSuggestion(name: 'Microsoft-Perf')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'syslog',
              description: 'Manage Syslog data source',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Syslog data source',
                  options: [

                    Option(
                      name: '--facility-names',
                      description: 'The list of facility names',
                      args: [
                        Arg(
                        name: 'facility-names',
                        suggestions: [

                          FigSuggestion(name: '*'),
                          FigSuggestion(name: 'auth'),
                          FigSuggestion(name: 'authpriv'),
                          FigSuggestion(name: 'cron'),
                          FigSuggestion(name: 'daemon'),
                          FigSuggestion(name: 'kern'),
                          FigSuggestion(name: 'local0'),
                          FigSuggestion(name: 'local1'),
                          FigSuggestion(name: 'local2'),
                          FigSuggestion(name: 'local3'),
                          FigSuggestion(name: 'local4'),
                          FigSuggestion(name: 'local5'),
                          FigSuggestion(name: 'local6'),
                          FigSuggestion(name: 'local7'),
                          FigSuggestion(name: 'lpr'),
                          FigSuggestion(name: 'mail'),
                          FigSuggestion(name: 'mark'),
                          FigSuggestion(name: 'news'),
                          FigSuggestion(name: 'syslog'),
                          FigSuggestion(name: 'user'),
                          FigSuggestion(name: 'uucp')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-Syslog')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--log-levels',
                      description: 'The log levels to collect',
                      args: [
                        Arg(
                        name: 'log-levels',
                        suggestions: [

                          FigSuggestion(name: '*'),
                          FigSuggestion(name: 'Alert'),
                          FigSuggestion(name: 'Critical'),
                          FigSuggestion(name: 'Debug'),
                          FigSuggestion(name: 'Emergency'),
                          FigSuggestion(name: 'Error'),
                          FigSuggestion(name: 'Info'),
                          FigSuggestion(name: 'Notice'),
                          FigSuggestion(name: 'Warning')
                        ]
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Syslog data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List Syslog data sources',
                  options: [

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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a Syslog data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a Syslog data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--facility-names',
                      description: 'The list of facility names',
                      args: [
                        Arg(
                        name: 'facility-names',
                        suggestions: [

                          FigSuggestion(name: '*'),
                          FigSuggestion(name: 'auth'),
                          FigSuggestion(name: 'authpriv'),
                          FigSuggestion(name: 'cron'),
                          FigSuggestion(name: 'daemon'),
                          FigSuggestion(name: 'kern'),
                          FigSuggestion(name: 'local0'),
                          FigSuggestion(name: 'local1'),
                          FigSuggestion(name: 'local2'),
                          FigSuggestion(name: 'local3'),
                          FigSuggestion(name: 'local4'),
                          FigSuggestion(name: 'local5'),
                          FigSuggestion(name: 'local6'),
                          FigSuggestion(name: 'local7'),
                          FigSuggestion(name: 'lpr'),
                          FigSuggestion(name: 'mail'),
                          FigSuggestion(name: 'mark'),
                          FigSuggestion(name: 'news'),
                          FigSuggestion(name: 'syslog'),
                          FigSuggestion(name: 'user'),
                          FigSuggestion(name: 'uucp')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--log-levels',
                      description: 'The log levels to collect',
                      args: [
                        Arg(
                        name: 'log-levels',
                        suggestions: [

                          FigSuggestion(name: '*'),
                          FigSuggestion(name: 'Alert'),
                          FigSuggestion(name: 'Critical'),
                          FigSuggestion(name: 'Debug'),
                          FigSuggestion(name: 'Emergency'),
                          FigSuggestion(name: 'Error'),
                          FigSuggestion(name: 'Info'),
                          FigSuggestion(name: 'Notice'),
                          FigSuggestion(name: 'Warning')
                        ]
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-Syslog')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'windows-event-log',
              description: 'Manage Windows Event Log data source',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a Windows Event Log data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-Event'),
                          FigSuggestion(name: 'Microsoft-WindowsEvent')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--x-path-queries',
                      description: 'A list of Windows Event Log queries in XPATH format',
                      args: [
                        Arg(
                        name: 'x-path-querie'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Windows Event Log data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List Windows Event Log data sources',
                  options: [

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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a Windows Event Log data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a Windows Event Log data source',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'A friendly name for the data source. This name should be unique across all data sources (regardless of type) within the data collection rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--rule-name',
                      description: 'The name of the data collection rule. The name is case insensitive',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--streams',
                      description: 'List of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to',
                      args: [
                        Arg(
                        name: 'streams',
                        suggestions: [

                          FigSuggestion(name: 'Microsoft-Event'),
                          FigSuggestion(name: 'Microsoft-WindowsEvent')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--x-path-queries',
                      description: 'A list of Windows Event Log queries in XPATH format',
                      args: [
                        Arg(
                        name: 'x-path-querie'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'diagnostic-settings',
      description: 'Manage service diagnostic settings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create diagnostic settings for the specified resource. For more information, visit: https://docs.microsoft.com/rest/api/monitor/diagnosticsettings/createorupdate#metricsettings',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the diagnostic setting. Required',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: '--event-hub',
              description: 'Name or ID an event hub. If none is specified, the default event hub will be selected',
              args: [
                Arg(
                name: 'event-hu'
              )
              ]
            ),
            Option(
              name: '--event-hub-rule',
              description: 'Name or ID of the event hub authorization rule',
              args: [
                Arg(
                name: 'event-hub-rul'
              )
              ]
            ),
            Option(
              name: '--export-to-resource-specific',
              description: 'Indicate that the export to LA must be done to a resource specific table, a.k.a. dedicated or fixed schema table, as opposed to the default dynamic schema table called AzureDiagnostics. This argument is effective only when the argument --workspace is also given. Allowed values: false, true',
              args: [
                Arg(
                name: 'export-to-resource-specific',
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
            ),
            Option(
              name: '--logs',
              description: 'JSON encoded list of logs settings. Use \'@{file}\' to load from a file.For more information, visit: https://docs.microsoft.com/rest/api/monitor/diagnosticsettings/createorupdate#logsettings. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'log'
              )
              ]
            ),
            Option(
              name: '--marketplace-partner-id',
              description: 'The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs',
              args: [
                Arg(
                name: 'marketplace-partner-i'
              )
              ]
            ),
            Option(
              name: '--metrics',
              description: 'The list of metric settings. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'metric'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Name or ID of the storage account to send diagnostic logs to',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--workspace',
              description: 'Name or ID of the Log Analytics workspace to send diagnostic logs to',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes existing diagnostic settings for the specified resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the diagnostic setting. Required',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets the active diagnostic settings list for the specified resource',
          options: [

            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the active diagnostic settings for the specified resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the diagnostic setting. Required',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update diagnostic settings for the specified resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the diagnostic setting. Required',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--event-hub',
              description: 'The name of the event hub. If none is specified, the default event hub will be selected',
              args: [
                Arg(
                name: 'event-hu'
              )
              ]
            ),
            Option(
              name: '--event-hub-rule',
              description: 'The resource Id for the event hub authorization rule',
              args: [
                Arg(
                name: 'event-hub-rul'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: ['--log-analytics-destination-type', '--log-ana-dtype'],
              description: 'A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: _. Possible values are: Dedicated and null (null is default.)',
              args: [
                Arg(
                name: 'log-analytics-destination-typ'
              )
              ]
            ),
            Option(
              name: '--logs',
              description: 'The list of logs settings. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'log'
              )
              ]
            ),
            Option(
              name: '--marketplace-partner-id',
              description: 'The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs',
              args: [
                Arg(
                name: 'marketplace-partner-i'
              )
              ]
            ),
            Option(
              name: '--metrics',
              description: 'The list of metric settings. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'metric'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--service-bus-rule-id',
              description: 'The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility',
              args: [
                Arg(
                name: 'service-bus-rule-i'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The resource ID of the storage account to which you would like to send Diagnostic Logs',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--workspace-id',
              description: 'The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2',
              args: [
                Arg(
                name: 'workspace-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'categories',
          description: 'Retrieve service diagnostic settings categories',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the diagnostic settings categories for the specified resource',
              options: [

                Option(
                  name: '--resource',
                  description: 'Name or ID of the target resource',
                  args: [
                    Arg(
                    name: 'resourc'
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
                  name: '--resource-namespace',
                  description: 'Target resource provider namespace',
                  args: [
                    Arg(
                    name: 'resource-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--resource-parent',
                  description: 'Target resource parent path, if applicable',
                  args: [
                    Arg(
                    name: 'resource-paren'
                  )
                  ]
                ),
                Option(
                  name: '--resource-type',
                  description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
                  args: [
                    Arg(
                    name: 'resource-typ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the diagnostic settings category for the specified resource',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the diagnostic setting. Required',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--resource',
                  description: 'Name or ID of the target resource',
                  args: [
                    Arg(
                    name: 'resourc'
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
                  name: '--resource-namespace',
                  description: 'Target resource provider namespace',
                  args: [
                    Arg(
                    name: 'resource-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--resource-parent',
                  description: 'Target resource parent path, if applicable',
                  args: [
                    Arg(
                    name: 'resource-paren'
                  )
                  ]
                ),
                Option(
                  name: '--resource-type',
                  description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
                  args: [
                    Arg(
                    name: 'resource-typ'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'subscription',
          description: 'Manage diagnostic settings for subscription',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create subscription diagnostic settings for the specified resource',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the diagnostic setting',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-auth-rule',
                  description: 'The resource Id for the event hub authorization rule',
                  args: [
                    Arg(
                    name: 'event-hub-auth-rul'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-name',
                  description: 'The name of the event hub. If none is specified, the default event hub will be selected',
                  args: [
                    Arg(
                    name: 'event-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location of the resource',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--logs',
                  description: 'JSON encoded list of logs settings. Use \'@{file}\' to load from a file. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'log'
                  )
                  ]
                ),
                Option(
                  name: '--service-bus-rule',
                  description: 'The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format \'{service bus resourceID}/authorizationrules/{key name}\'',
                  args: [
                    Arg(
                    name: 'service-bus-rul'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'The resource id of the storage account to which you would like to send the Activity Log',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--workspace',
                  description: 'The resource id of the log analytics workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes existing subscription diagnostic settings for the specified resource',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the diagnostic setting',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'Gets the active subscription diagnostic settings list for the specified subscriptionId. :keyword callable cls: A custom type or function that will be passed the direct response:return: SubscriptionDiagnosticSettingsResourceCollection or the result of cls(response):rtype:  ~\$(python-base-namespace).v2017_05_01_preview.models.SubscriptionDiagnosticSettingsResourceCollection:raises ~azure.core.exceptions.HttpResponseError:'
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the active subscription diagnostic settings for the specified resource',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the diagnostic setting',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update subscription diagnostic settings for the specified resource',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-auth-rule',
                  description: 'The resource Id for the event hub authorization rule',
                  args: [
                    Arg(
                    name: 'event-hub-auth-rul'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-name',
                  description: 'The name of the event hub. If none is specified, the default event hub will be selected',
                  args: [
                    Arg(
                    name: 'event-hub-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location of the resource',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--logs',
                  description: 'JSON encoded list of logs settings. Use \'@{file}\' to load from a file. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'log'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the diagnostic setting',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: '--service-bus-rule',
                  description: 'The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format \'{service bus resourceID}/authorizationrules/{key name}\'',
                  args: [
                    Arg(
                    name: 'service-bus-rul'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'The resource id of the storage account to which you would like to send the Activity Log',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace',
                  description: 'The resource id of the log analytics workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'log-analytics',
      description: 'Manage Azure log analytics',
      subcommands: [

        Subcommand(
          name: 'query',
          description: 'Query a Log Analytics workspace',
          options: [

            Option(
              name: '--analytics-query',
              description: 'Query to execute over Log Analytics data',
              args: [
                Arg(
                name: 'analytics-quer'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'GUID of the Log Analytics Workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: ['--timespan', '-t'],
              description: 'Timespan over which to query. Defaults to querying all available data',
              args: [
                Arg(
                name: 'timespa'
              )
              ]
            ),
            Option(
              name: '--workspaces',
              description: 'Additional workspaces to union data for querying. Specify additional workspace IDs separated by space',
              args: [
                Arg(
                name: 'workspace'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cluster',
          description: 'Manage Azure log analytics cluster',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a cluster instance',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'The name of the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
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
                  name: '--billing-type',
                  description: 'The cluster\'s billing type',
                  args: [
                    Arg(
                    name: 'billing-type',
                    suggestions: [

                      FigSuggestion(name: 'Cluster'),
                      FigSuggestion(name: 'Workspaces')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of managed service identity',
                  args: [
                    Arg(
                    name: 'identity-type',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'SystemAssigned'),
                      FigSuggestion(name: 'UserAssigned')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--key-name',
                  description: 'The name of the key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: '--key-rsa-size',
                  description: 'Selected key minimum required size',
                  args: [
                    Arg(
                    name: 'key-rsa-siz'
                  )
                  ]
                ),
                Option(
                  name: '--key-vault-uri',
                  description: 'The Key Vault uri which holds they key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-vault-ur'
                  )
                  ]
                ),
                Option(
                  name: '--key-version',
                  description: 'The version of the key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
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
                ),
                Option(
                  name: '--sku-capacity',
                  description: 'The capacity of the SKU. It can be decreased only after 31 days',
                  args: [
                    Arg(
                    name: 'sku-capacity',
                    suggestions: [

                      FigSuggestion(name: '1000'),
                      FigSuggestion(name: '2000'),
                      FigSuggestion(name: '500'),
                      FigSuggestion(name: '5000')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--sku-name',
                  description: 'The name of the SKU',
                  args: [
                    Arg(
                    name: 'sku-name',
                    suggestions: [

                      FigSuggestion(name: 'CapacityReservation')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}\'. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a cluster instance',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List all cluster instances in a resource group or in current subscription',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the properties of a cluster instance',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a cluster instance',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--billing-type',
                  description: 'The cluster\'s billing type',
                  args: [
                    Arg(
                    name: 'billing-type',
                    suggestions: [

                      FigSuggestion(name: 'Cluster'),
                      FigSuggestion(name: 'Workspaces')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of managed service identity',
                  args: [
                    Arg(
                    name: 'identity-type',
                    suggestions: [

                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'SystemAssigned'),
                      FigSuggestion(name: 'UserAssigned')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--key-name',
                  description: 'The name of the key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: '--key-rsa-size',
                  description: 'Selected key minimum required size',
                  args: [
                    Arg(
                    name: 'key-rsa-siz'
                  )
                  ]
                ),
                Option(
                  name: '--key-vault-uri',
                  description: 'The Key Vault uri which holds they key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-vault-ur'
                  )
                  ]
                ),
                Option(
                  name: '--key-version',
                  description: 'The version of the key associated with the Log Analytics cluster',
                  args: [
                    Arg(
                    name: 'key-versio'
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
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--sku-capacity',
                  description: 'The capacity of the SKU. It can be decreased only after 31 days',
                  args: [
                    Arg(
                    name: 'sku-capacity',
                    suggestions: [

                      FigSuggestion(name: '1000'),
                      FigSuggestion(name: '2000'),
                      FigSuggestion(name: '500'),
                      FigSuggestion(name: '5000')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}\'. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'user-assigne'
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
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'query-pack',
          description: 'Manage Azure log analytics query pack',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a log analytics query pack',
              options: [

                Option(
                  name: ['--query-pack-name', '--name', '-n'],
                  description: 'The name of the log analytics query pack',
                  args: [
                    Arg(
                    name: 'query-pack-nam'
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
                  name: ['--location', '-l'],
                  description: 'Resource location When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a log analytics query pack',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--query-pack-name', '--name', '-n'],
                  description: 'The name of the log analytics query pack',
                  args: [
                    Arg(
                    name: 'query-pack-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List of all log analytics query packs',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a log analytics query pack',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--query-pack-name', '--name', '-n'],
                  description: 'The name of the log analytics query pack',
                  args: [
                    Arg(
                    name: 'query-pack-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a log analytics query pack',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--query-pack-name', '--name', '-n'],
                  description: 'The name of the log analytics query pack',
                  args: [
                    Arg(
                    name: 'query-pack-nam'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'query',
              description: 'Manage the query of log analytics query pack',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a specific query within a log analytics query pack',
                  options: [

                    Option(
                      name: '--body',
                      description: 'Content of the query',
                      args: [
                        Arg(
                        name: 'bod'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Unique display name for your query within the query pack',
                      args: [
                        Arg(
                        name: 'display-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--query-id', '--name', '-n'],
                      description: 'The id name of a specific query defined in the log analytics query pack. It must be of type GUID',
                      args: [
                        Arg(
                        name: 'query-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
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
                      name: '--categories',
                      description: 'The related categories for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'categorie'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Description of the query',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--resource-types',
                      description: 'The related resource types for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'resource-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--solutions',
                      description: 'The related Log Analytics solutions for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'solution'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Tags associated with the query. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a specific query defined within a log analytics query pack',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--query-id', '--name', '-n'],
                      description: 'The id name of a specific query defined in the log analytics query pack. It must be of type GUID',
                      args: [
                        Arg(
                        name: 'query-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
                  description: 'List queries defined within a log analytics query pack',
                  options: [

                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
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
                      name: '--include-body',
                      description: 'Whether or not to return the body of each applicable query. If false, only return the query information. Default: true',
                      args: [
                        Arg(
                        name: 'include-body',
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
                  name: 'search',
                  description: 'Search a list of queries defined within a log analytics query pack according to given search properties',
                  options: [

                    Option(
                      name: '--categories',
                      description: 'The related categories for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'categorie'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--include-body',
                      description: 'Whether or not to return the body of each applicable query. If false, only return the query information. Default: true',
                      args: [
                        Arg(
                        name: 'include-body',
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
                    ),
                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
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
                      name: '--resource-types',
                      description: 'The related resource types for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'resource-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--solutions',
                      description: 'The related Log Analytics solutions for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'solution'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Tags associated with the query. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a specific query defined within a log analytics query pack',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--query-id', '--name', '-n'],
                      description: 'The id name of a specific query defined in the log analytics query pack. It must be of type GUID',
                      args: [
                        Arg(
                        name: 'query-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a specific query within a log analytics query pack',
                  options: [

                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: '--body',
                      description: 'Content of the query',
                      args: [
                        Arg(
                        name: 'bod'
                      )
                      ]
                    ),
                    Option(
                      name: '--categories',
                      description: 'The related categories for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'categorie'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Description of the query',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Unique display name for your query within the query pack',
                      args: [
                        Arg(
                        name: 'display-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                      args: [
                        Arg(
                        name: 'force-string',
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
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--query-id', '--name', '-n'],
                      description: 'The id name of a specific query defined in the log analytics query pack. It must be of type GUID',
                      args: [
                        Arg(
                        name: 'query-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-pack-name',
                      description: 'The name of the log analytics query pack',
                      args: [
                        Arg(
                        name: 'query-pack-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
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
                      name: '--resource-types',
                      description: 'The related resource types for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'resource-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--solutions',
                      description: 'The related Log Analytics solutions for the function. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'solution'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Tags associated with the query. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'solution',
          description: 'Commands to manage monitor log-analytics solution',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the Solution',
              options: [

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
                  name: ['--solution-type', '-t'],
                  description: 'Type of the log-analytics solution. The most used are: SecurityCenterFree, Security, Updates, ContainerInsights, ServiceMap, AzureActivity, ChangeTracking, VMInsights, SecurityInsights, NetworkMonitoring, SQLVulnerabilityAssessment, SQLAdvancedThreatProtection, AntiMalware, AzureAutomation, LogicAppsManagement, SQLDataClassification',
                  args: [
                    Arg(
                    name: 'solution-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace', '-w'],
                  description: 'The name or resource ID of the log analytics workspace with which the solution will be linked',
                  args: [
                    Arg(
                    name: 'workspac'
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
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the solution in the subscription',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the log-analytics solution. It should be in the format of solutionType(workspaceName). SolutionType part is case sensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the solution list. It will retrieve both first party and third party solutions',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the user solution',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the log-analytics solution. It should be in the format of solutionType(workspaceName). SolutionType part is case sensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Solution. Only updating tags supported',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the log-analytics solution. It should be in the format of solutionType(workspaceName). SolutionType part is case sensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
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
                  name: ['--name', '-n'],
                  description: 'Name of the log-analytics solution. It should be in the format of solutionType(workspaceName). SolutionType part is case sensitive',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'workspace',
          description: 'Manage Azure log analytics workspace',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a workspace instance',
              options: [

                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                  name: ['--capacity-reservation-level', '--level'],
                  description: 'The capacity reservation level for this workspace, when CapacityReservation sku is selected. The maximum value is 1000 and must be in multiples of 100. If you want to increase the limit, please contact LAIngestionRate@microsoft.com',
                  args: [
                    Arg(
                    name: 'capacity-reservation-level',
                    suggestions: [

                      FigSuggestion(name: '100'),
                      FigSuggestion(name: '1000'),
                      FigSuggestion(name: '200'),
                      FigSuggestion(name: '2000'),
                      FigSuggestion(name: '300'),
                      FigSuggestion(name: '400'),
                      FigSuggestion(name: '500'),
                      FigSuggestion(name: '5000')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ingestion-access',
                  description: 'The public network access type to access workspace ingestion',
                  args: [
                    Arg(
                    name: 'ingestion-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
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
                ),
                Option(
                  name: '--query-access',
                  description: 'The public network access type to access workspace query',
                  args: [
                    Arg(
                    name: 'query-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--quota',
                  description: 'The workspace daily quota for ingestion in gigabytes. The minimum value is 0.023 and default is -1 which means unlimited',
                  args: [
                    Arg(
                    name: 'quot'
                  )
                  ]
                ),
                Option(
                  name: '--retention-time',
                  description: 'The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details',
                  args: [
                    Arg(
                    name: 'retention-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--sku-name', '--sku'],
                  description: 'The name of the SKU',
                  args: [
                    Arg(
                    name: 'sku-name',
                    suggestions: [

                      FigSuggestion(name: 'CapacityReservation'),
                      FigSuggestion(name: 'Free'),
                      FigSuggestion(name: 'LACluster'),
                      FigSuggestion(name: 'PerGB2018'),
                      FigSuggestion(name: 'PerNode'),
                      FigSuggestion(name: 'Premium'),
                      FigSuggestion(name: 'Standalone'),
                      FigSuggestion(name: 'Standard')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a workspace resource',
              options: [

                Option(
                  name: ['--force', '-f'],
                  description: 'Deletes the workspace without the recovery option. A workspace that was deleted with this flag cannot be recovered',
                  args: [
                    Arg(
                    name: 'force',
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
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              name: 'get-schema',
              description: 'Get the schema for a given workspace',
              options: [

                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'get-shared-keys',
              description: 'Get the shared keys for a workspace',
              options: [

                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get a list of workspaces under a resource group or a subscription',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-deleted-workspaces',
              description: 'Get a list of deleted workspaces that can be recovered in a subscription or a resource group',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-management-groups',
              description: 'Get a list of management groups connected to a workspace',
              options: [

                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'list-usages',
              description: 'Get a list of usage metrics for a workspace',
              options: [

                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'The name of the workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'recover',
              description: 'Recover a workspace in a soft-delete state within 14 days',
              options: [

                Option(
                  name: ['--workspace-name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a workspace instance',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a workspace instance',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: ['--capacity-reservation-level', '--level'],
                  description: 'The capacity reservation level for this workspace, when CapacityReservation sku is selected. The maximum value is 1000 and must be in multiples of 100. If you want to increase the limit, please contact LAIngestionRate@microsoft.com',
                  args: [
                    Arg(
                    name: 'capacity-reservation-level',
                    suggestions: [

                      FigSuggestion(name: '100'),
                      FigSuggestion(name: '1000'),
                      FigSuggestion(name: '200'),
                      FigSuggestion(name: '2000'),
                      FigSuggestion(name: '300'),
                      FigSuggestion(name: '400'),
                      FigSuggestion(name: '500'),
                      FigSuggestion(name: '5000')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--data-collection-rule',
                  description: 'The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}',
                  args: [
                    Arg(
                    name: 'data-collection-rul'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--ingestion-access',
                  description: 'The public network access type to access workspace ingestion',
                  args: [
                    Arg(
                    name: 'ingestion-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                ),
                Option(
                  name: '--query-access',
                  description: 'The public network access type to access workspace query',
                  args: [
                    Arg(
                    name: 'query-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--quota',
                  description: 'The workspace daily quota for ingestion in gigabytes. The minimum value is 0.023 and default is -1 which means unlimited',
                  args: [
                    Arg(
                    name: 'quot'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--retention-time',
                  description: 'The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details',
                  args: [
                    Arg(
                    name: 'retention-tim'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
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
                  name: ['--workspace-name', '--name', '-n'],
                  description: 'Name of the Log Analytics Workspace',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
            ),
            Subcommand(
              name: 'data-export',
              description: 'Manage data export ruls for log analytics workspace',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a data export rule for a given workspace',
                  options: [

                    Option(
                      name: ['--data-export-name', '--name', '-n'],
                      description: 'The data export rule name',
                      args: [
                        Arg(
                        name: 'data-export-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination',
                      description: 'The destination resource ID. It should be a storage account, an event hub namespace. If event hub namespace is provided without --event-hub-name, event hub would be created for each table automatically',
                      args: [
                        Arg(
                        name: 'destinatio'
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
                      name: ['--tables', '-t'],
                      description: 'An array of tables to export. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'table'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--enable',
                      description: 'Active when enabled',
                      args: [
                        Arg(
                        name: 'enable',
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
                    ),
                    Option(
                      name: '--event-hub-name',
                      description: 'Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account',
                      args: [
                        Arg(
                        name: 'event-hub-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a data export rule for a given workspace',
                  options: [

                    Option(
                      name: ['--data-export-name', '--name', '-n'],
                      description: 'The data export rule name',
                      args: [
                        Arg(
                        name: 'data-export-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'List all data export ruleses for a given workspace',
                  options: [

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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a data export rule for a given workspace',
                  options: [

                    Option(
                      name: ['--data-export-name', '--name', '-n'],
                      description: 'The data export rule name',
                      args: [
                        Arg(
                        name: 'data-export-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a data export rule for a given workspace',
                  options: [

                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: ['--data-export-name', '--name', '-n'],
                      description: 'The data export rule name',
                      args: [
                        Arg(
                        name: 'data-export-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination',
                      description: 'The destination resource ID. It should be a storage account, an event hub namespace. If event hub namespace is provided without --event-hub-name, event hub would be created for each table automatically',
                      args: [
                        Arg(
                        name: 'destinatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--enable',
                      description: 'Active when enabled',
                      args: [
                        Arg(
                        name: 'enable',
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
                    ),
                    Option(
                      name: '--event-hub-name',
                      description: 'Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account',
                      args: [
                        Arg(
                        name: 'event-hub-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                      args: [
                        Arg(
                        name: 'force-string',
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
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
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
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--tables', '-t'],
                      description: 'An array of tables to export. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'table'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'linked-service',
              description: 'Manage linked service for log analytics workspace.\n\n\t\tLinked services is used to define a relation from the workspace to another Azure resource. Log Analytics and Azure resources then leverage this connection in their operations. Example uses of Linked Services in Log Analytics workspace are Automation account and workspace association to CMK',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a linked service',
                  options: [

                    Option(
                      name: ['--linked-service-name', '--name', '-n'],
                      description: 'Name of the linkedServices resource. Supported values: cluster, automation',
                      args: [
                        Arg(
                        name: 'linked-service-nam'
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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                    ),
                    Option(
                      name: '--resource-id',
                      description: 'The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    ),
                    Option(
                      name: '--write-access-resource-id',
                      description: 'The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access',
                      args: [
                        Arg(
                        name: 'write-access-resource-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a linked service',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--linked-service-name', '--name', '-n'],
                      description: 'Name of the linkedServices resource. Supported values: cluster, automation',
                      args: [
                        Arg(
                        name: 'linked-service-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'Get all the linked services in a workspace',
                  options: [

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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show the properties of a linked service',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--linked-service-name', '--name', '-n'],
                      description: 'Name of the linkedServices resource. Supported values: cluster, automation',
                      args: [
                        Arg(
                        name: 'linked-service-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a linked service',
                  options: [

                    Option(
                      name: '--add',
                      description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                      args: [
                        Arg(
                        name: 'ad'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                      args: [
                        Arg(
                        name: 'force-string',
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
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--linked-service-name', '--name', '-n'],
                      description: 'Name of the linkedServices resource. Supported values: cluster, automation',
                      args: [
                        Arg(
                        name: 'linked-service-nam'
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
                    ),
                    Option(
                      name: '--remove',
                      description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                      args: [
                        Arg(
                        name: 'remov'
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
                      name: '--resource-id',
                      description: 'The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access',
                      args: [
                        Arg(
                        name: 'resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--write-access-resource-id',
                      description: 'The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access',
                      args: [
                        Arg(
                        name: 'write-access-resource-i'
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
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
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
                      name: ['--linked-service-name', '--name', '-n'],
                      description: 'Name of the linkedServices resource. Supported values: cluster, automation',
                      args: [
                        Arg(
                        name: 'linked-service-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'linked-storage',
              description: 'Manage linked storage account for log analytics workspace',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add some linked storage accounts with specific data source type for log analytics workspace',
                  options: [

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
                      name: '--storage-accounts',
                      description: 'List of Name or ID of Azure Storage Account',
                      args: [
                        Arg(
                        name: 'storage-account'
                      )
                      ]
                    ),
                    Option(
                      name: '--type',
                      description: 'Data source type for the linked storage account',
                      args: [
                        Arg(
                        name: 'type',
                        suggestions: [

                          FigSuggestion(name: 'Alerts'),
                          FigSuggestion(name: 'AzureWatson'),
                          FigSuggestion(name: 'CustomLogs'),
                          FigSuggestion(name: 'Ingestion'),
                          FigSuggestion(name: 'Query')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-n'],
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'create',
                  description: 'Create some linked storage accounts for log analytics workspace',
                  options: [

                    Option(
                      name: ['--data-source-type', '--type'],
                      description: 'Data source type for the linked storage account',
                      args: [
                        Arg(
                        name: 'data-source-type',
                        suggestions: [

                          FigSuggestion(name: 'Alerts'),
                          FigSuggestion(name: 'AzureWatson'),
                          FigSuggestion(name: 'CustomLogs'),
                          FigSuggestion(name: 'Ingestion'),
                          FigSuggestion(name: 'Query')
                        ]
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
                      name: '--storage-accounts',
                      description: 'List of Name or ID of Azure Storage Account. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'storage-account'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-n'],
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete all linked storage accounts with specific data source type for log analytics workspace',
                  options: [

                    Option(
                      name: ['--data-source-type', '--type'],
                      description: 'Data source type for the linked storage account',
                      args: [
                        Arg(
                        name: 'data-source-type',
                        suggestions: [

                          FigSuggestion(name: 'Alerts'),
                          FigSuggestion(name: 'AzureWatson'),
                          FigSuggestion(name: 'CustomLogs'),
                          FigSuggestion(name: 'Ingestion'),
                          FigSuggestion(name: 'Query')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-n'],
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'List all linked storage accounts for a log analytics workspace',
                  options: [

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
                      name: ['--workspace-name', '-n'],
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove some linked storage accounts with specific data source type for log analytics workspace',
                  options: [

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
                      name: '--storage-accounts',
                      description: 'List of Name or ID of Azure Storage Account',
                      args: [
                        Arg(
                        name: 'storage-account'
                      )
                      ]
                    ),
                    Option(
                      name: '--type',
                      description: 'Data source type for the linked storage account',
                      args: [
                        Arg(
                        name: 'type',
                        suggestions: [

                          FigSuggestion(name: 'Alerts'),
                          FigSuggestion(name: 'AzureWatson'),
                          FigSuggestion(name: 'CustomLogs'),
                          FigSuggestion(name: 'Ingestion'),
                          FigSuggestion(name: 'Query')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-n'],
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show all linked storage accounts with specific data source type for a log analytics workspace',
                  options: [

                    Option(
                      name: ['--data-source-type', '--type'],
                      description: 'Data source type for the linked storage account',
                      args: [
                        Arg(
                        name: 'data-source-type',
                        suggestions: [

                          FigSuggestion(name: 'Alerts'),
                          FigSuggestion(name: 'AzureWatson'),
                          FigSuggestion(name: 'CustomLogs'),
                          FigSuggestion(name: 'Ingestion'),
                          FigSuggestion(name: 'Query')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-n'],
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pack',
              description: 'Manage intelligent packs for log analytics workspace',
              subcommands: [

                Subcommand(
                  name: 'disable',
                  description: 'Disable an intelligence pack for a given workspace',
                  options: [

                    Option(
                      name: ['--intelligence-pack-name', '--name', '-n'],
                      description: 'The name of the intelligence pack to be enabled',
                      args: [
                        Arg(
                        name: 'intelligence-pack-nam'
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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'enable',
                  description: 'Enable an intelligence pack for a given workspace',
                  options: [

                    Option(
                      name: ['--intelligence-pack-name', '--name', '-n'],
                      description: 'The name of the intelligence pack to be enabled',
                      args: [
                        Arg(
                        name: 'intelligence-pack-nam'
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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all the intelligence packs possible and whether they are enabled or disabled for a given workspace',
                  options: [

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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'saved-search',
              description: 'Manage saved search for log analytics workspace',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a saved search for a given workspace',
                  options: [

                    Option(
                      name: '--category',
                      description: 'The category of the saved search. This helps the user to find a saved search faster',
                      args: [
                        Arg(
                        name: 'categor'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the saved search',
                      args: [
                        Arg(
                        name: 'display-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the saved search and it\'s unique in a given workspace',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: ['--saved-query', '-q'],
                      description: 'The query expression for the saved search',
                      args: [
                        Arg(
                        name: 'saved-quer'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--func-alias', '--fa'],
                      description: 'Function Aliases are short names given to Saved Searches so they can be easily referenced in query. They are required for Computer Groups',
                      args: [
                        Arg(
                        name: 'func-alia'
                      )
                      ]
                    ),
                    Option(
                      name: ['--func-param', '--fp'],
                      description: 'The optional function parameters if query serves as a function. Value should be in the following format: \'param-name1:type1 = default_value1, param-name2:type2 = default_value2\'. For more examples and proper syntax please refer to https://docs.microsoft.com/azure/kusto/query/functions/user-defined-functions',
                      args: [
                        Arg(
                        name: 'func-para'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a saved search for a given workspace',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--saved-search-name', '--name', '-n'],
                      description: 'Name of the saved search and it\'s unique in a given workspace',
                      args: [
                        Arg(
                        name: 'saved-search-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'List all saved searches for a given workspace',
                  options: [

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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show a saved search for a given workspace',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--saved-search-name', '--name', '-n'],
                      description: 'Name of the saved search and it\'s unique in a given workspace',
                      args: [
                        Arg(
                        name: 'saved-search-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a saved search for a given workspace',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the saved search and it\'s unique in a given workspace',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: '--workspace-name',
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--category',
                      description: 'The category of the saved search. This helps the user to find a saved search faster',
                      args: [
                        Arg(
                        name: 'categor'
                      )
                      ]
                    ),
                    Option(
                      name: '--display-name',
                      description: 'Display name of the saved search',
                      args: [
                        Arg(
                        name: 'display-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--func-alias', '--fa'],
                      description: 'Function Aliases are short names given to Saved Searches so they can be easily referenced in query. They are required for Computer Groups',
                      args: [
                        Arg(
                        name: 'func-alia'
                      )
                      ]
                    ),
                    Option(
                      name: ['--func-param', '--fp'],
                      description: 'The optional function parameters if query serves as a function. Value should be in the following format: \'param-name1:type1 = default_value1, param-name2:type2 = default_value2\'. For more examples and proper syntax please refer to https://docs.microsoft.com/azure/kusto/query/functions/user-defined-functions',
                      args: [
                        Arg(
                        name: 'func-para'
                      )
                      ]
                    ),
                    Option(
                      name: ['--saved-query', '-q'],
                      description: 'The query expression for the saved search',
                      args: [
                        Arg(
                        name: 'saved-quer'
                      )
                      ]
                    ),
                    Option(
                      name: '--tags',
                      description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                      args: [
                        Arg(
                        name: 'tag'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'table',
              description: 'Manage tables for log analytics workspace',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a Log Analytics workspace microsoft/custom log table. The table name needs to end with \'_CL\'',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the table',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: '--workspace-name',
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--columns',
                      description: 'A list of table custom columns.Extracts multiple space-separated columns in column_name=column_type format',
                      args: [
                        Arg(
                        name: 'column'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Schema description',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--plan',
                      description: 'The table plan. Possible values include: "Basic", "Analytics"',
                      args: [
                        Arg(
                        name: 'plan',
                        suggestions: [

                          FigSuggestion(name: 'Analytics'),
                          FigSuggestion(name: 'Basic')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--retention-time',
                      description: 'The data table data retention in days, between 4 and 730. Setting this property to null will default to the workspace',
                      args: [
                        Arg(
                        name: 'retention-tim'
                      )
                      ]
                    ),
                    Option(
                      name: '--total-retention-time',
                      description: 'The table data total retention in days, between 4 and 2555. Setting this property to null will default to table retention',
                      args: [
                        Arg(
                        name: 'total-retention-tim'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Log Analytics workspace table',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--table-name', '--name', '-n'],
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'table-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'List all the tables for the given Log Analytics workspace',
                  options: [

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
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'migrate',
                  description: 'Migrate a Log Analytics table from support of the Data Collector API and Custom Fields features to support of Data Collection Rule-based Custom Logs',
                  options: [

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
                      name: '--table-name',
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'table-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get a Log Analytics workspace table',
                  options: [

                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--table-name', '--name', '-n'],
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'table-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update the properties of a Log Analytics workspace table',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the table',
                      args: [
                        Arg(
                        name: 'nam'
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
                      name: '--workspace-name',
                      description: 'Name of the Log Analytics Workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--columns',
                      description: 'A list of table custom columns.Extracts multiple space-separated columns in column_name=column_type format',
                      args: [
                        Arg(
                        name: 'column'
                      )
                      ]
                    ),
                    Option(
                      name: '--description',
                      description: 'Table description',
                      args: [
                        Arg(
                        name: 'descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish'
                    ),
                    Option(
                      name: '--plan',
                      description: 'The table plan. Possible values include: "Basic", "Analytics"',
                      args: [
                        Arg(
                        name: 'plan',
                        suggestions: [

                          FigSuggestion(name: 'Analytics'),
                          FigSuggestion(name: 'Basic')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--retention-time',
                      description: 'The data table data retention in days, between 4 and 730. Setting this property to null will default to the workspace',
                      args: [
                        Arg(
                        name: 'retention-tim'
                      )
                      ]
                    ),
                    Option(
                      name: '--total-retention-time',
                      description: 'The table data total retention in days, between 4 and 2555. Setting this property to null will default to table retention',
                      args: [
                        Arg(
                        name: 'total-retention-tim'
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
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
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
                      name: ['--table-name', '--name', '-n'],
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'table-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of the workspace',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'restore',
                  description: 'Manage tables for log analytics workspace restore logs table',
                  subcommands: [

                    Subcommand(
                      name: 'create',
                      description: 'Create a Log Analytics workspace restore logs table. The table name needs to end with \'_RST\'',
                      options: [

                        Option(
                          name: '--end-restore-time',
                          description: 'Datetime format. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                          args: [
                            Arg(
                            name: 'end-restore-tim'
                          )
                          ]
                        ),
                        Option(
                          name: ['--name', '-n'],
                          description: 'Name of the table',
                          args: [
                            Arg(
                            name: 'nam'
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
                          name: '--restore-source-table',
                          description: 'The table to restore data from',
                          args: [
                            Arg(
                            name: 'restore-source-tabl'
                          )
                          ]
                        ),
                        Option(
                          name: '--start-restore-time',
                          description: 'Datetime format. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                          args: [
                            Arg(
                            name: 'start-restore-tim'
                          )
                          ]
                        ),
                        Option(
                          name: '--workspace-name',
                          description: 'Name of the Log Analytics Workspace',
                          args: [
                            Arg(
                            name: 'workspace-nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--no-wait',
                          description: 'Do not wait for the long-running operation to finish'
                        )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'search-job',
                  description: 'Manage tables for log analytics workspace search results table',
                  subcommands: [

                    Subcommand(
                      name: 'create',
                      description: 'Create a Log Analytics workspace search results table. The table name needs to end with \'_SRCH\'',
                      options: [

                        Option(
                          name: '--end-search-time',
                          description: 'Datetime format. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                          args: [
                            Arg(
                            name: 'end-search-tim'
                          )
                          ]
                        ),
                        Option(
                          name: ['--name', '-n'],
                          description: 'Name of the table',
                          args: [
                            Arg(
                            name: 'nam'
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
                          name: '--search-query',
                          description: 'Search job query',
                          args: [
                            Arg(
                            name: 'search-quer'
                          )
                          ]
                        ),
                        Option(
                          name: '--start-search-time',
                          description: 'Datetime format. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                          args: [
                            Arg(
                            name: 'start-search-tim'
                          )
                          ]
                        ),
                        Option(
                          name: '--workspace-name',
                          description: 'Name of the Log Analytics Workspace',
                          args: [
                            Arg(
                            name: 'workspace-nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--limit',
                          description: 'Limit the search job to return up to specified number of rows',
                          args: [
                            Arg(
                            name: 'limi'
                          )
                          ]
                        ),
                        Option(
                          name: '--no-wait',
                          description: 'Do not wait for the long-running operation to finish'
                        ),
                        Option(
                          name: '--retention-time',
                          description: 'The data table data retention in days, between 4 and 730. Setting this property to null will default to the workspace',
                          args: [
                            Arg(
                            name: 'retention-tim'
                          )
                          ]
                        ),
                        Option(
                          name: '--total-retention-time',
                          description: 'The table data total retention in days, between 4 and 2555. Setting this property to null will default to table retention',
                          args: [
                            Arg(
                            name: 'total-retention-tim'
                          )
                          ]
                        )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'log-profiles',
      description: 'Manage log profiles',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a log profile in Azure Monitoring REST API',
          options: [

            Option(
              name: '--categories',
              description: 'Space-separated categories of the logs. These categories are created as is convenient to the user. Some values are: \'Write\', \'Delete\', and/or \'Action.\' Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'categorie'
              )
              ]
            ),
            Option(
              name: '--days',
              description: 'The number of days for the retention in days. A value of 0 will retain the events indefinitely',
              args: [
                Arg(
                name: 'day'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Whether the retention policy is enabled. Allowed values: false, true',
              args: [
                Arg(
                name: 'enabled',
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
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--locations',
              description: 'Space-separated list of regions for which Activity Log events should be stored. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'location'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the log profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--service-bus-rule-id',
              description: 'The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format: \'{service bus resource ID}/authorizationrules/{key name}\'',
              args: [
                Arg(
                name: 'service-bus-rule-i'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The resource id of the storage account to which you would like to send the Activity Log',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use \'\' to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the log profile',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the log profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the log profiles'
        ),
        Subcommand(
          name: 'show',
          description: 'Get the log profile',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the log profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a log profile in Azure Monitoring REST API',
          options: [

            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--categories',
              description: 'Space-separated categories of the logs. These categories are created as is convenient to the user. Some values are: \'Write\', \'Delete\', and/or \'Action.\' Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'categorie'
              )
              ]
            ),
            Option(
              name: '--days',
              description: 'The number of days for the retention in days. A value of 0 will retain the events indefinitely',
              args: [
                Arg(
                name: 'day'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Whether the retention policy is enabled. Allowed values: false, true',
              args: [
                Arg(
                name: 'enabled',
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
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--locations',
              description: 'Space-separated list of regions for which Activity Log events should be stored. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'location'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the log profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
              )
              ]
            ),
            Option(
              name: '--service-bus-rule-id',
              description: 'The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format: \'{service bus resource ID}/authorizationrules/{key name}\'',
              args: [
                Arg(
                name: 'service-bus-rule-i'
              )
              ]
            ),
            Option(
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--storage-account-id',
              description: 'The resource id of the storage account to which you would like to send the Activity Log',
              args: [
                Arg(
                name: 'storage-account-i'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use \'\' to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'metrics',
      description: 'View Azure resource metrics',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the metric values for a resource',
          options: [

            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: '--aggregation',
              description: 'The list of aggregation types (space-separated) to retrieve. value from: az monitor metrics list-definitions',
              args: [
                Arg(
                name: 'aggregation',
                suggestions: [

                  FigSuggestion(name: 'Average'),
                  FigSuggestion(name: 'Count'),
                  FigSuggestion(name: 'Maximum'),
                  FigSuggestion(name: 'Minimum'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Total')
                ]
              )
              ]
            ),
            Option(
              name: '--dimension',
              description: 'The list of dimensions (space-separated) the metrics are queried into. value from: az monitor metrics list-definitions',
              args: [
                Arg(
                name: 'dimensio'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'End time of the query. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'A string used to reduce the set of metric data returned. eg. "BlobType eq \'*\'"',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'The interval over which to aggregate metrics, in ##h##m format',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Returns the metadata values instead of metric data',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: '--metrics',
              description: 'Space-separated list of metric names to retrieve. value from: az monitor metrics list-definitions',
              args: [
                Arg(
                name: 'metric'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Namespace to query metric definitions for. value from: az monitor metrics list-namespaces',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Time offset of the query range, in ##d##h format',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Aggregation to use for sorting results and the direction of the sort. Only one order can be specificed. Examples: sum asc',
              args: [
                Arg(
                name: 'orderb'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Max number of records to retrieve. Valid only if --filter used',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-definitions',
          description: 'List the metric definitions for the resource',
          options: [

            Option(
              name: '--resource',
              description: 'Name or ID of the target resource',
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Namespace to query metric definitions for. value from: az monitor metrics list-namespaces',
              args: [
                Arg(
                name: 'namespac'
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
              name: '--resource-namespace',
              description: 'Target resource provider namespace',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-parent',
              description: 'Target resource parent path, if applicable',
              args: [
                Arg(
                name: 'resource-paren'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Target resource type. Can also accept namespace/type format (Ex: \'Microsoft.Compute/virtualMachines\')',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-namespaces',
          description: 'List the metric namespaces for the resource',
          options: [

            Option(
              name: '--resource-uri',
              description: 'The identifier of the resource',
              args: [
                Arg(
                name: 'resource-ur'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'alert',
          description: 'Manage near-realtime metric alert rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a metric-based alert rule',
              options: [

                Option(
                  name: '--condition',
                  description: 'The condition which triggers the rule. It can be created by \'az monitor metrics alert condition create\' command',
                  args: [
                    Arg(
                    name: 'conditio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the alert rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scopes',
                  description: 'Space-separated list of scopes the rule applies to. The resources specified in this parameter must be of the same type and exist in the same location',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: ['--action', '-a'],
                  description: 'Add an action group and optional webhook properties to fire when the alert is triggered',
                  args: [
                    Arg(
                    name: 'actio'
                  )
                  ]
                ),
                Option(
                  name: '--auto-mitigate',
                  description: 'Automatically resolve the alert',
                  args: [
                    Arg(
                    name: 'auto-mitigate',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Free-text description of the rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Create the rule in a disabled state'
                ),
                Option(
                  name: '--evaluation-frequency',
                  description: 'Frequency with which to evaluate the rule in "##h##m##s" format',
                  args: [
                    Arg(
                    name: 'evaluation-frequenc'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-region', '--region'],
                  description: 'The region of the target resource(s) in scopes. This must be provided when scopes is resource group or subscription',
                  args: [
                    Arg(
                    name: 'target-resource-regio'
                  )
                  ]
                ),
                Option(
                  name: '--severity',
                  description: 'Severity of the alert from 0 (critical) to 4 (verbose)',
                  args: [
                    Arg(
                    name: 'severit'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--target-resource-type', '--type'],
                  description: 'The resource type of the target resource(s) in scopes. This must be provided when scopes is resource group or subscription',
                  args: [
                    Arg(
                    name: 'target-resource-typ'
                  )
                  ]
                ),
                Option(
                  name: '--window-size',
                  description: 'Time over which to aggregate metrics in "##h##m##s" format',
                  args: [
                    Arg(
                    name: 'window-siz'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a metrics-based alert rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the alert rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List metric-based alert rules',
              options: [

                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a metrics-based alert rule',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the alert rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a metric-based alert rule',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--add-action',
                  description: 'Add an action group and optional webhook properties to fire when the alert is triggered',
                  args: [
                    Arg(
                    name: 'add-actio'
                  )
                  ]
                ),
                Option(
                  name: '--add-condition',
                  description: 'Add a condition which triggers the rule',
                  args: [
                    Arg(
                    name: 'add-conditio'
                  )
                  ]
                ),
                Option(
                  name: '--auto-mitigate',
                  description: 'Automatically resolve the alert',
                  args: [
                    Arg(
                    name: 'auto-mitigate',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Free-text description of the rule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Whether the metric alert rule is enabled',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--evaluation-frequency',
                  description: 'Frequency with which to evaluate the rule in "##h##m##s" format',
                  args: [
                    Arg(
                    name: 'evaluation-frequenc'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the alert rule',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
                  )
                  ]
                ),
                Option(
                  name: '--remove-actions',
                  description: 'Space-separated list of action group names to remove',
                  args: [
                    Arg(
                    name: 'remove-action'
                  )
                  ]
                ),
                Option(
                  name: '--remove-conditions',
                  description: 'Space-separated list of condition names to remove',
                  args: [
                    Arg(
                    name: 'remove-condition'
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
                  name: '--scopes',
                  description: 'Space-separated list of scopes the rule applies to. The resources specified in this parameter must be of the same type and exist in the same location',
                  args: [
                    Arg(
                    name: 'scope'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--severity',
                  description: 'Severity of the alert from 0 (critical) to 4 (verbose)',
                  args: [
                    Arg(
                    name: 'severit'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--window-size',
                  description: 'Time over which to aggregate metrics in "##h##m##s" format',
                  args: [
                    Arg(
                    name: 'window-siz'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'condition',
              description: 'Manage near-realtime metric alert rule conditions',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Build a metric alert rule condition',
                  options: [

                    Option(
                      name: '--aggregation',
                      description: 'Time aggregation',
                      args: [
                        Arg(
                        name: 'aggregation',
                        suggestions: [

                          FigSuggestion(name: 'Average'),
                          FigSuggestion(name: 'Count'),
                          FigSuggestion(name: 'Maximum'),
                          FigSuggestion(name: 'Minimum'),
                          FigSuggestion(name: 'Total')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--metric',
                      description: 'Name of the metric to base the rule on. value from: az monitor metrics list-definitions',
                      args: [
                        Arg(
                        name: 'metri'
                      )
                      ]
                    ),
                    Option(
                      name: ['--operator', '--op'],
                      description: 'Operator for static threshold can be \'Equals\', \'NotEquals\', \'GreaterThan\', \'GreaterThanOrEqual\', \'LessThan\' or \'LessThanOrEqual\'. Operator for dynamic threshold can be \'GreaterThan\', \'LessThan\', \'GreaterOrLessThan\'',
                      args: [
                        Arg(
                        name: 'operator',
                        suggestions: [

                          FigSuggestion(name: 'Equals'),
                          FigSuggestion(name: 'GreaterOrLessThan'),
                          FigSuggestion(name: 'GreaterThan'),
                          FigSuggestion(name: 'GreaterThanOrEqual'),
                          FigSuggestion(name: 'LessThan'),
                          FigSuggestion(name: 'LessThanOrEqual'),
                          FigSuggestion(name: 'NotEquals')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--type', '-t'],
                      description: 'Type of condition threshold',
                      args: [
                        Arg(
                        name: 'type',
                        suggestions: [

                          FigSuggestion(name: 'dynamic'),
                          FigSuggestion(name: 'static')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--dimension',
                      description: 'Dimension created by \'az monitor metrics alert dimension create\'',
                      args: [
                        Arg(
                        name: 'dimensio'
                      )
                      ]
                    ),
                    Option(
                      name: '--namespace',
                      description: 'Namespace of metric',
                      args: [
                        Arg(
                        name: 'namespac'
                      )
                      ]
                    ),
                    Option(
                      name: '--num-periods',
                      description: 'The number of evaluation periods for dynamic threshold. Range: 1-6',
                      args: [
                        Arg(
                        name: 'num-period'
                      )
                      ]
                    ),
                    Option(
                      name: '--num-violations',
                      description: 'The number of violations to trigger an dynamic alert. Range: 1-6. It should be less than or equal to --num-periods',
                      args: [
                        Arg(
                        name: 'num-violation'
                      )
                      ]
                    ),
                    Option(
                      name: '--sensitivity',
                      description: 'Alert sensitivity for dynamic threshold',
                      args: [
                        Arg(
                        name: 'sensitivity',
                        suggestions: [

                          FigSuggestion(name: 'High'),
                          FigSuggestion(name: 'Low'),
                          FigSuggestion(name: 'Medium')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--since',
                      description: 'The date from which to start learning the metric historical data and calculate the dynamic thresholds. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                      args: [
                        Arg(
                        name: 'sinc'
                      )
                      ]
                    ),
                    Option(
                      name: '--skip-metric-validation',
                      description: 'Cause the metric validation to be skipped. This allows to use a metric that has not been emitted yet',
                      args: [
                        Arg(
                        name: 'skip-metric-validation',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--threshold',
                      description: 'Static threshold value',
                      args: [
                        Arg(
                        name: 'threshol'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'dimension',
              description: 'Manage near-realtime metric alert rule dimensions',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Build a metric alert rule dimension',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the dimension',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--value', '-v'],
                      description: 'The values to apply on the operation',
                      args: [
                        Arg(
                        name: 'valu'
                      )
                      ]
                    ),
                    Option(
                      name: ['--operator', '--op'],
                      description: 'Dimension operator',
                      args: [
                        Arg(
                        name: 'operator',
                        suggestions: [

                          FigSuggestion(name: 'Exclude'),
                          FigSuggestion(name: 'Include')
                        ]
                      )
                      ]
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'private-link-scope',
      description: 'Manage monitor private link scope resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a private link scope resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Monitor Private Link Scope',
              args: [
                Arg(
                name: 'nam'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a monitor private link scope resource',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Monitor Private Link Scope',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List all monitor private link scope resources',
          options: [

            Option(
              name: '--max-items',
              description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
              args: [
                Arg(
                name: 'max-item'
              )
              ]
            ),
            Option(
              name: '--next-token',
              description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
              args: [
                Arg(
                name: 'next-toke'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a monitor private link scope resource',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Monitor Private Link Scope',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a monitor private link scope resource',
          options: [

            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
              args: [
                Arg(
                name: 'force-string',
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
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Monitor Private Link Scope',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
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
              name: ['--name', '-n'],
              description: 'Name of the Azure Monitor Private Link Scope',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
        ),
        Subcommand(
          name: 'private-endpoint-connection',
          description: 'Manage private endpoint connection of a private link scope resource',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve a private endpoint connection of a private link scope resource',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of private link service connection',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--id',
                  description: 'ID of the private endpoint connection associated with the private link scope. Values from az monitor private-link-scope show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection associated with the private link scope',
                  args: [
                    Arg(
                    name: 'nam'
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
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a private endpoint connection of a private link scope resource',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the private endpoint connection associated with the private link scope. Values from az monitor private-link-scope show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection associated with the private link scope',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List all private endpoint connections on a private link scope',
              options: [

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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reject',
              description: 'Reject a private endpoint connection of a private link scope resource',
              options: [

                Option(
                  name: '--add',
                  description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
                  args: [
                    Arg(
                    name: 'ad'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of private link service connection',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
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
                ),
                Option(
                  name: '--id',
                  description: 'ID of the private endpoint connection associated with the private link scope. Values from az monitor private-link-scope show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection associated with the private link scope',
                  args: [
                    Arg(
                    name: 'nam'
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
                ),
                Option(
                  name: '--remove',
                  description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
                  args: [
                    Arg(
                    name: 'remov'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a private endpoint connection of a private link scope resource',
              options: [

                Option(
                  name: '--id',
                  description: 'ID of the private endpoint connection associated with the private link scope. Values from az monitor private-link-scope show',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection associated with the private link scope',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
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
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection associated with the private link scope',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'private-link-resource',
          description: 'Manage private link resource of a private link scope resource',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all private link resources of a private link scope resource',
              options: [

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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a private link resource of a private link scope resource',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private link resource',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scoped-resource',
          description: 'Manage scoped resource of a private link scope resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a scoped resource for a private link scope resource',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the assigned resource',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--linked-resource',
                  description: 'ARM resource ID of the linked resource. It should be one of log analytics workspace or application insights component',
                  args: [
                    Arg(
                    name: 'linked-resourc'
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
              name: 'delete',
              description: 'Delete a scoped resource of a private link scope resource',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the assigned resource',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              description: 'List all scoped resource of a private link scope resource',
              options: [

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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a scoped resource of a private link scope resource',
              options: [

                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the assigned resource',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
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
                  name: ['--name', '-n'],
                  description: 'Name of the assigned resource',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--scope-name',
                  description: 'Name of the Azure Monitor Private Link Scope',
                  args: [
                    Arg(
                    name: 'scope-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
        )
      ]
    ),
    Subcommand(
      name: 'scheduled-query',
      description: 'Commands to manage scheduled queries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a scheduled query',
          options: [

            Option(
              name: '--condition',
              description: 'The condition which triggers the rule',
              args: [
                Arg(
                name: 'conditio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the scheduled query rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--scopes',
              description: 'Space-separated list of scopes the rule applies to. The resources specified in this parameter must be of the same type and exist in the same location',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--action-groups',
              description: 'Action Group resource Ids to invoke when the alert fires',
              args: [
                Arg(
                name: 'action-group'
              )
              ]
            ),
            Option(
              name: '--auto-mitigate',
              description: 'The flag that indicates whether the alert should be automatically resolved or not. The default is true',
              args: [
                Arg(
                name: 'auto-mitigate',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--check-ws-alerts-storage', '--cwas'],
              description: 'The flag which indicates whether this scheduled query rule should be stored in the customer\'s storage'
            ),
            Option(
              name: '--condition-query',
              description: 'Query deteils to replace the placeholders in --condition argument',
              args: [
                Arg(
                name: 'condition-quer'
              )
              ]
            ),
            Option(
              name: '--custom-properties',
              description: 'The properties of an alert payload',
              args: [
                Arg(
                name: 'custom-propertie'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Free-text description of the rule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Disable the scheduled query'
            ),
            Option(
              name: '--evaluation-frequency',
              description: 'Frequency with which to evaluate the rule in "##h##m##s" format',
              args: [
                Arg(
                name: 'evaluation-frequenc'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--mute-actions-duration', '--mad'],
              description: 'Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired',
              args: [
                Arg(
                name: 'mute-actions-duratio'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'Severity of the alert from 0 (critical) to 4 (verbose)',
              args: [
                Arg(
                name: 'severit'
              )
              ]
            ),
            Option(
              name: '--skip-query-validation',
              description: 'The flag which indicates whether the provided query should be validated or not'
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--target-resource-type', '--type'],
              description: 'The resource type of the target resource(s) in scopes. This must be provided when scopes is resource group or subscription',
              args: [
                Arg(
                name: 'target-resource-typ'
              )
              ]
            ),
            Option(
              name: '--window-size',
              description: 'Time over which to aggregate metrics in "##h##m##s" format',
              args: [
                Arg(
                name: 'window-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a scheduled query',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the scheduled query rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          description: 'List all scheduled queries',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show detail of a scheduled query',
          options: [

            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the scheduled query rule',
              args: [
                Arg(
                name: 'nam'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a scheduled query',
          options: [

            Option(
              name: '--action-groups',
              description: 'Action Group resource Ids to invoke when the alert fires',
              args: [
                Arg(
                name: 'action-group'
              )
              ]
            ),
            Option(
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--auto-mitigate',
              description: 'The flag that indicates whether the alert should be automatically resolved or not. The default is true',
              args: [
                Arg(
                name: 'auto-mitigate',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--check-ws-alerts-storage', '--cwas'],
              description: 'The flag which indicates whether this scheduled query rule should be stored in the customer\'s storage',
              args: [
                Arg(
                name: 'check-ws-alerts-storage',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--condition',
              description: 'The condition which triggers the rule',
              args: [
                Arg(
                name: 'conditio'
              )
              ]
            ),
            Option(
              name: '--condition-query',
              description: 'Query deteils to replace the placeholders in --condition argument',
              args: [
                Arg(
                name: 'condition-quer'
              )
              ]
            ),
            Option(
              name: '--custom-properties',
              description: 'The properties of an alert payload',
              args: [
                Arg(
                name: 'custom-propertie'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Free-text description of the rule',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Disable the scheduled query',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--evaluation-frequency',
              description: 'Frequency with which to evaluate the rule in "##h##m##s" format',
              args: [
                Arg(
                name: 'evaluation-frequenc'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--mute-actions-duration', '--mad'],
              description: 'Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired',
              args: [
                Arg(
                name: 'mute-actions-duratio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the scheduled query rule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'Severity of the alert from 0 (critical) to 4 (verbose)',
              args: [
                Arg(
                name: 'severit'
              )
              ]
            ),
            Option(
              name: '--skip-query-validation',
              description: 'The flag which indicates whether the provided query should be validated or not',
              args: [
                Arg(
                name: 'skip-query-validation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--target-resource-type', '--type'],
              description: 'The resource type of the target resource(s) in scopes. This must be provided when scopes is resource group or subscription',
              args: [
                Arg(
                name: 'target-resource-typ'
              )
              ]
            ),
            Option(
              name: '--window-size',
              description: 'Time over which to aggregate metrics in "##h##m##s" format',
              args: [
                Arg(
                name: 'window-siz'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
