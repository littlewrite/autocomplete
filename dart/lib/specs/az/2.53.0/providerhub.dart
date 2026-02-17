// Auto-generated from TypeScript source: providerhub.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `providerhub` CLI
final FigSpec providerhubSpec = FigSpec(
  name: 'providerhub',
  description: 'Manage resources with ProviderHub',
  subcommands: [

    Subcommand(
      name: 'custom-rollout',
      description: 'Manage custom rollout with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the rollout details',
          options: [

            Option(
              name: '--canary',
              description: 'The canary regions to apply the manifest',
              args: [
                Arg(
                name: 'canar'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets the list of the custom rollouts for the given provider',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the custom rollout details',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
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
      name: 'default-rollout',
      description: 'Manage default rollout with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the rollout details',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
              )
              ]
            ),
            Option(
              name: '--canary',
              description: 'The canary regions to skip',
              args: [
                Arg(
                name: 'canar'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--rest-of-the-world-group-two', '--row2'],
              description: 'DefaultRollout rest of the world group two',
              args: [
                Arg(
                name: 'rest-of-the-world-group-tw'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the rollout resource. Rollout must be in terminal state',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
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
          description: 'Gets the list of the rollouts for the given provider',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the default rollout details',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
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
          name: 'stop',
          description: 'Stops or cancels the rollout, if in progress',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--rollout-name',
              description: 'The rollout name',
              args: [
                Arg(
                name: 'rollout-nam'
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
      name: 'manifest',
      description: 'Manage with providerhub manifest operations',
      subcommands: [

        Subcommand(
          name: 'checkin',
          description: 'Checkin the manifest',
          options: [

            Option(
              name: [
                '--baseline-arm-manifest-location',
                '--arm-manifest-location',
                '--location',
              ],
              description: 'The baseline ARM manifest location supplied to the checkin manifest operation',
              args: [
                Arg(
                name: 'baseline-arm-manifest-locatio'
              )
              ]
            ),
            Option(
              name: '--environment',
              description: 'The environment supplied to the checkin manifest operation',
              args: [
                Arg(
                name: 'environmen'
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
          name: 'generate',
          description: 'Generates the manifest for the given provider',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
      name: 'notification-registration',
      description: 'Manage notification registration with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a notification registration',
          options: [

            Option(
              name: ['--notification-registration-name', '--name', '-n'],
              description: 'The notification registration',
              args: [
                Arg(
                name: 'notification-registration-nam'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--included-events',
              description: 'These are the events that the RP should be messaged on. The message format is in the form {RP Namespace}/{Resource Type}/{action}. The availabe actions are: write, delete and move/action',
              args: [
                Arg(
                name: 'included-event'
              )
              ]
            ),
            Option(
              name: '--message-scope',
              description: 'Limits the messages that are sent to the RP. The default value is RegisteredSubscriptions. The available values are Global (all messages in Azure) and RegisteredSubscriptions (only messages in subscriptions registered by RP)',
              args: [
                Arg(
                name: 'message-scope',
                suggestions: [

                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'RegisteredSubscriptions')
                ]
              )
              ]
            ),
            Option(
              name: '--notification-endpoints',
              description: 'These are the locations for the notification messages. Notifications will be sent to the region of the event resource\'s location (e.g. VM in East Us will send message to the specified endpoint in East US)',
              args: [
                Arg(
                name: 'notification-endpoint'
              )
              ]
            ),
            Option(
              name: '--notification-mode',
              description: 'Determines how the notifications are sent to the RP. The two available modes are EventHub and Webhook',
              args: [
                Arg(
                name: 'notification-mode',
                suggestions: [

                  FigSuggestion(name: 'EventHub'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'WebHook')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a notification registration',
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
              name: ['--notification-registration-name', '--name', '-n'],
              description: 'The notification registration',
              args: [
                Arg(
                name: 'notification-registration-nam'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
          description: 'Gets the list of the notification registrations for the given provider',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the notification registration details',
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
              name: ['--notification-registration-name', '--name', '-n'],
              description: 'The notification registration',
              args: [
                Arg(
                name: 'notification-registration-nam'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
      name: 'operation',
      description: 'Manage operation with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the operation supported by the given provider',
          options: [

            Option(
              name: '--contents',
              description: 'Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'content'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an operation',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
          description: 'Gets the operations supported by the given provider',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'provider-registration',
      description: 'Manage provider registration with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the provider registration',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--capabilities',
              description: 'The resource provider capabilities',
              args: [
                Arg(
                name: 'capabilitie'
              )
              ]
            ),
            Option(
              name: '--incident-contact-email',
              description: 'The email address of contacts for incidents related to the RP',
              args: [
                Arg(
                name: 'incident-contact-emai'
              )
              ]
            ),
            Option(
              name: ['--incident-routing-service', '--incident-service'],
              description: 'The service in IcM when creating or transferring incidents to the RP',
              args: [
                Arg(
                name: 'incident-routing-servic'
              )
              ]
            ),
            Option(
              name: ['--incident-routing-team', '--incident-team'],
              description: 'The team in IcM when creating or transferring incidents to the RP',
              args: [
                Arg(
                name: 'incident-routing-tea'
              )
              ]
            ),
            Option(
              name: ['--lighthouse-authorizations', '--lighthouse-auth'],
              description: 'The lighthouse authorizations',
              args: [
                Arg(
                name: 'lighthouse-authorization'
              )
              ]
            ),
            Option(
              name: '--managed-by-tenant-id',
              description: 'The managed by tenant ID',
              args: [
                Arg(
                name: 'managed-by-tenant-i'
              )
              ]
            ),
            Option(
              name: '--manifest-owners',
              description: 'Specifies an array of required ACIS claims to modify the resource provider\'s manifest content via ACIS',
              args: [
                Arg(
                name: 'manifest-owner'
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'The metadata',
              args: [
                Arg(
                name: 'metadat'
              )
              ]
            ),
            Option(
              name: [
                '--providerhub-metadata-authentication',
                '--metadata-authn',
              ],
              description: 'The ProviderHub metadata authentication',
              args: [
                Arg(
                name: 'providerhub-metadata-authenticatio'
              )
              ]
            ),
            Option(
              name: [
                '--providerhub-metadata-authorizations',
                '--metadata-authz',
              ],
              description: 'The ProviderHub metadata authorizations',
              args: [
                Arg(
                name: 'providerhub-metadata-authorization'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--opt-in-headers',
              description: 'The opt-in headers',
              args: [
                Arg(
                name: 'opt-in-headers',
                suggestions: [

                  FigSuggestion(name: 'ClientGroupMembership'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'SignedAuxiliaryTokens'),
                  FigSuggestion(name: 'SignedUserToken'),
                  FigSuggestion(name: 'UnboundedClientGroupMembership')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--subscription-state-override-actions',
                '--override-actions',
              ],
              description: 'The subscription state override actions',
              args: [
                Arg(
                name: 'subscription-state-override-action'
              )
              ]
            ),
            Option(
              name: ['--provider-authentication', '--provider-authn'],
              description: 'Used to set alternative audiences or resources that ARM should accept from the token while authenticating requests for the provider',
              args: [
                Arg(
                name: 'provider-authenticatio'
              )
              ]
            ),
            Option(
              name: ['--provider-authorizations', '--provider-authz'],
              description: 'The resource provider authorizations',
              args: [
                Arg(
                name: 'provider-authorization'
              )
              ]
            ),
            Option(
              name: '--provider-type',
              description: 'The provider type',
              args: [
                Arg(
                name: 'provider-typ'
              )
              ]
            ),
            Option(
              name: '--provider-version',
              description: 'The provider version',
              args: [
                Arg(
                name: 'provider-versio'
              )
              ]
            ),
            Option(
              name: ['--required-features-policy', '--req-features-policy'],
              description: 'The accepted values are "Any" or "All". If the value is "All", then only the subscriptions registered to all the corresponding feature flag will be allowed.​',
              args: [
                Arg(
                name: 'required-features-policy',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
                ]
              )
              ]
            ),
            Option(
              name: '--required-features',
              description: 'The required features',
              args: [
                Arg(
                name: 'required-feature'
              )
              ]
            ),
            Option(
              name: '--resource-access-policy',
              description: 'The resource access policy',
              args: [
                Arg(
                name: 'resource-access-policy',
                suggestions: [

                  FigSuggestion(name: 'AcisActionAllowed'),
                  FigSuggestion(name: 'AcisReadAllowed'),
                  FigSuggestion(name: 'NotSpecified')
                ]
              )
              ]
            ),
            Option(
              name: '--resource-access-roles',
              description: 'The resource access roles. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'resource-access-role'
              )
              ]
            ),
            Option(
              name: '--schema-owners',
              description: 'Specifies an array of needed ACIS claims to modify the resource provider schema via ACIS',
              args: [
                Arg(
                name: 'schema-owner'
              )
              ]
            ),
            Option(
              name: '--service-tree-infos',
              description: 'The ServiceTree information for the resource provider',
              args: [
                Arg(
                name: 'service-tree-info'
              )
              ]
            ),
            Option(
              name: '--soft-delete-ttl',
              description: 'The soft delete time to live',
              args: [
                Arg(
                name: 'soft-delete-tt'
              )
              ]
            ),
            Option(
              name: ['--template-deployment-options', '--tmplt-deploy-opt'],
              description: 'The template deployment options',
              args: [
                Arg(
                name: 'template-deployment-option'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a provider registration',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
          name: 'generate-operation',
          description: 'Generates the operations api for the given provider',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
          description: 'Gets the list of the provider registrations in the subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the provider registration details',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
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
      name: 'resource-type-registration',
      description: 'Manage resource type registration with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource type',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: ['--allowed-unauthorized-actions', '--aua'],
              description: 'The allowed unauthorized actions',
              args: [
                Arg(
                name: 'allowed-unauthorized-action'
              )
              ]
            ),
            Option(
              name: ['--authorization-action-mappings', '--auth-mappings'],
              description: 'Allows RP to override action verb for RBAC purposes at ARM',
              args: [
                Arg(
                name: 'authorization-action-mapping'
              )
              ]
            ),
            Option(
              name: [
                '--check-name-availability-specifications',
                '--checkname-specs',
              ],
              description: 'Name availability checks feature at the platform level',
              args: [
                Arg(
                name: 'check-name-availability-specification'
              )
              ]
            ),
            Option(
              name: ['--resource-creation-begin', '--creation-begin'],
              description: 'Extension options for handling the resource creation begin extension request',
              args: [
                Arg(
                name: 'resource-creation-begi'
              )
              ]
            ),
            Option(
              name: ['--disallowed-action-verbs', '--dav'],
              description: 'The disallowed action verbs',
              args: [
                Arg(
                name: 'disallowed-action-verb'
              )
              ]
            ),
            Option(
              name: '--default-api-version',
              description: 'The default API version for the endpoint',
              args: [
                Arg(
                name: 'default-api-versio'
              )
              ]
            ),
            Option(
              name: ['--resource-deletion-policy', '--deletion-policy'],
              description: 'The resource deletion policy',
              args: [
                Arg(
                name: 'resource-deletion-policy',
                suggestions: [

                  FigSuggestion(name: 'CascadeDeleteAll'),
                  FigSuggestion(name: 'CascadeDeleteProxyOnlyChildren'),
                  FigSuggestion(name: 'NotSpecified')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-async-operation',
              description: 'Indicates whether the async operation is enabled for this resource type',
              args: [
                Arg(
                name: 'enable-async-operation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-third-party-s2s',
              description: 'Indicates whether third party s2s is enabled for this resource type',
              args: [
                Arg(
                name: 'enable-third-party-s2s',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoints',
              description: 'The resource type endpoints',
              args: [
                Arg(
                name: 'endpoint'
              )
              ]
            ),
            Option(
              name: '--extended-locations',
              description: 'The extended location options',
              args: [
                Arg(
                name: 'extended-location'
              )
              ]
            ),
            Option(
              name: '--identity-management',
              description: 'MSI related settings',
              args: [
                Arg(
                name: 'identity-managemen'
              )
              ]
            ),
            Option(
              name: '--is-pure-proxy',
              description: 'Indicates whether this is a PureProxy resource type',
              args: [
                Arg(
                name: 'is-pure-proxy',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--linked-access-checks',
              description: 'Enables additional Role Based Access Control (RBAC) checks on related resources',
              args: [
                Arg(
                name: 'linked-access-check'
              )
              ]
            ),
            Option(
              name: '--logging-rules',
              description: 'The logging rules',
              args: [
                Arg(
                name: 'logging-rule'
              )
              ]
            ),
            Option(
              name: '--marketplace-type',
              description: 'The type of marketplace behavior for the resource type',
              args: [
                Arg(
                name: 'marketplace-type',
                suggestions: [

                  FigSuggestion(name: 'AddOn'),
                  FigSuggestion(name: 'Bypass'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Store')
                ]
              )
              ]
            ),
            Option(
              name: '--opt-in-headers',
              description: 'The opt-in headers',
              args: [
                Arg(
                name: 'opt-in-headers',
                suggestions: [

                  FigSuggestion(name: 'ClientGroupMembership'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'SignedAuxiliaryTokens'),
                  FigSuggestion(name: 'SignedUserToken'),
                  FigSuggestion(name: 'UnboundedClientGroupMembership')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--subscription-state-override-actions',
                '--override-actions',
              ],
              description: 'The subscription state override actions',
              args: [
                Arg(
                name: 'subscription-state-override-action'
              )
              ]
            ),
            Option(
              name: ['--resource-patch-begin', '--patch-begin'],
              description: 'Extension options for handling the resource patch begin extension request',
              args: [
                Arg(
                name: 'resource-patch-begi'
              )
              ]
            ),
            Option(
              name: '--regionality',
              description: 'The regionality of the resource type',
              args: [
                Arg(
                name: 'regionality',
                suggestions: [

                  FigSuggestion(name: 'Global'),
                  FigSuggestion(name: 'NotSpecified'),
                  FigSuggestion(name: 'Regional')
                ]
              )
              ]
            ),
            Option(
              name: ['--required-features-policy', '--req-features-policy'],
              description: 'The accepted values are "Any" or "All". If the value is "All", then only the subscriptions registered to all the corresponding feature flag will be allowed.​',
              args: [
                Arg(
                name: 'required-features-policy',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
                ]
              )
              ]
            ),
            Option(
              name: '--required-features',
              description: 'The required features',
              args: [
                Arg(
                name: 'required-feature'
              )
              ]
            ),
            Option(
              name: '--resource-move-policy',
              description: 'The resource move policy',
              args: [
                Arg(
                name: 'resource-move-polic'
              )
              ]
            ),
            Option(
              name: '--routing-type',
              description: 'The resource routing type.​',
              args: [
                Arg(
                name: 'routing-typ'
              )
              ]
            ),
            Option(
              name: '--service-tree-infos',
              description: 'The ServiceTree information for the resource provider',
              args: [
                Arg(
                name: 'service-tree-info'
              )
              ]
            ),
            Option(
              name: '--soft-delete-ttl',
              description: 'The soft delete time to live',
              args: [
                Arg(
                name: 'soft-delete-tt'
              )
              ]
            ),
            Option(
              name: ['--subscription-state-rules', '--sub-state-rules'],
              description: 'The subscription state rules',
              args: [
                Arg(
                name: 'subscription-state-rule'
              )
              ]
            ),
            Option(
              name: '--swagger-specifications',
              description: 'The Swagger spec of the resource type',
              args: [
                Arg(
                name: 'swagger-specification'
              )
              ]
            ),
            Option(
              name: ['--template-deployment-options', '--tmplt-deploy-opt'],
              description: 'The template deployment options',
              args: [
                Arg(
                name: 'template-deployment-option'
              )
              ]
            ),
            Option(
              name: '--throttling-rules',
              description: 'Enables setting individual limits for different actions in terms of number of requests or number of resources (for collection read requests only)',
              args: [
                Arg(
                name: 'throttling-rule'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a resource type',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
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
          description: 'Gets the list of the resource types for the given provider',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a resource type details in the given subscription and provider',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
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
      name: 'sku',
      description: 'Manage sku with providerhub',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates the resource type skus in the given resource type. And Creates or updates the resource type skus in the given resource type. And Creates or updates the resource type skus in the given resource type. And Create the resource type skus in the given resource type',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--sku-settings',
              description: 'Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'sku-setting'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-second', '--nested-second'],
              description: 'The second child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-secon'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-third', '--nested-third'],
              description: 'The third child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-thir'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a resource type sku. And Deletes a resource type sku. And Deletes a resource type sku. And Deletes a resource type sku',
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
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-second', '--nested-second'],
              description: 'The second child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-secon'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-third', '--nested-third'],
              description: 'The third child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-thir'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
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
          description: 'Gets the list of skus for the given resource type. And Gets the list of skus for the given resource type. And Gets the list of skus for the given resource type. And Gets the list of skus for the given resource type',
          options: [

            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-second', '--nested-second'],
              description: 'The second child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-secon'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-third', '--nested-third'],
              description: 'The third child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-thir'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the sku details for the given resource type and sku name',
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
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
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
          name: 'show-nested-resource-type-first',
          description: 'Gets the sku details for the given resource type and sku name',
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
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
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
          name: 'show-nested-resource-type-second',
          description: 'Gets the sku details for the given resource type and sku name',
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
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-second', '--nested-second'],
              description: 'The second child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-secon'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
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
          name: 'show-nested-resource-type-third',
          description: 'Gets the sku details for the given resource type and sku name',
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
              name: ['--nested-resource-type-first', '--nested-first'],
              description: 'The first child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-firs'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-second', '--nested-second'],
              description: 'The second child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-secon'
              )
              ]
            ),
            Option(
              name: ['--nested-resource-type-third', '--nested-third'],
              description: 'The third child resource type',
              args: [
                Arg(
                name: 'nested-resource-type-thir'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The name of the resource provider hosted within ProviderHub',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU',
              args: [
                Arg(
                name: 'sk'
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
);
