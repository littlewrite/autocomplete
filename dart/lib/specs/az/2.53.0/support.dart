// Auto-generated from TypeScript source: support.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `support` CLI
final FigSpec supportSpec = FigSpec(
  name: 'support',
  description: 'Manage Azure support resource',
  subcommands: [

    Subcommand(
      name: 'services',
      description: 'Azure services and related problem categories',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all the Azure services available for support ticket creation. Always use the service and it\'s corresponding problem classification(s) obtained programmatically for support ticket creation. This practice ensures that you always have the most recent set of service and problem classification Ids'
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a specific Azure service for support ticket creation',
          options: [

            Option(
              name: '--service-name',
              description: 'Name of Azure service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'problem-classifications',
          description: 'Problem classifications for an Azure service',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all the problem classifications (categories) available for an Azure service. Always use the service and it\'s corresponding problem classification(s) obtained programmatically for support ticket creation. This practice ensures that you always have the most recent set of service and problem classification Ids',
              options: [

                Option(
                  name: '--service-name',
                  description: 'Name of Azure service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the problem classification details for an Azure service',
              options: [

                Option(
                  name: '--problem-classification-name',
                  description: 'Name of problem classification',
                  args: [
                    Arg(
                    name: 'problem-classification-nam'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'Name of Azure service',
                  args: [
                    Arg(
                    name: 'service-nam'
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
      name: 'tickets',
      description: 'Create and manage Azure support ticket',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new support ticket for Quota increase, Technical, Billing, and Subscription Management issues for the specified subscription',
          options: [

            Option(
              name: '--contact-country',
              description: 'Country of the user. This is the ISO Alpha-3 code',
              args: [
                Arg(
                name: 'contact-countr'
              )
              ]
            ),
            Option(
              name: '--contact-email',
              description: 'Primary email address',
              args: [
                Arg(
                name: 'contact-emai'
              )
              ]
            ),
            Option(
              name: '--contact-first-name',
              description: 'First Name',
              args: [
                Arg(
                name: 'contact-first-nam'
              )
              ]
            ),
            Option(
              name: '--contact-language',
              description: 'Preferred language of support from Azure. Support languages vary based on the severity you choose for your support ticket. This is the standard country-language code',
              args: [
                Arg(
                name: 'contact-languag'
              )
              ]
            ),
            Option(
              name: '--contact-last-name',
              description: 'Last Name',
              args: [
                Arg(
                name: 'contact-last-nam'
              )
              ]
            ),
            Option(
              name: '--contact-method',
              description: 'Preferred contact method',
              args: [
                Arg(
                name: 'contact-method',
                suggestions: [

                  FigSuggestion(name: 'email'),
                  FigSuggestion(name: 'phone')
                ]
              )
              ]
            ),
            Option(
              name: '--contact-timezone',
              description: 'Time zone of the user. This is the name of the time zone from Microsoft Time Zone Index Values',
              args: [
                Arg(
                name: 'contact-timezon'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Detailed description of the question or issue',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--problem-classification',
              description: 'Each Azure service has its own set of issue category called problem classification that corresponds to the type of problem you are experiencing. This parameter is the resource id of ProblemClassification resource',
              args: [
                Arg(
                name: 'problem-classificatio'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'A value that indicates the urgency of the case, which in turn determines the response time according to the service level agreement of the technical support plan you have with Azure',
              args: [
                Arg(
                name: 'severity',
                suggestions: [

                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'highestcriticalimpact'),
                  FigSuggestion(name: 'minimal'),
                  FigSuggestion(name: 'moderate')
                ]
              )
              ]
            ),
            Option(
              name: '--ticket-name',
              description: 'Support ticket name',
              args: [
                Arg(
                name: 'ticket-nam'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title of the support ticket',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--contact-additional-emails',
              description: 'Space-separated list of additional email addresses. Additional email addresses will be copied on any correspondence about the support ticket',
              args: [
                Arg(
                name: 'contact-additional-email'
              )
              ]
            ),
            Option(
              name: '--contact-phone-number',
              description: 'Phone number. This is required if preferred contact method is phone',
              args: [
                Arg(
                name: 'contact-phone-numbe'
              )
              ]
            ),
            Option(
              name: '--partner-tenant-id',
              description: 'Partner tenant id for Admin On Behalf of (AOBO) scenario. In addition to logging in to the customer tenant, logging in to the partner tenant (PT) using "az login -t PT --allow-no-subscriptions" is required',
              args: [
                Arg(
                name: 'partner-tenant-i'
              )
              ]
            ),
            Option(
              name: '--quota-change-payload',
              description: 'Space -separated list of serialized payload of the quota increase request corresponding to regions. Visit https://aka.ms/supportrpquotarequestpayload for details',
              args: [
                Arg(
                name: 'quota-change-payloa'
              )
              ]
            ),
            Option(
              name: '--quota-change-regions',
              description: 'Space-separated list of region for which the quota increase request is being made',
              args: [
                Arg(
                name: 'quota-change-region'
              )
              ]
            ),
            Option(
              name: '--quota-change-subtype',
              description: 'Required for certain quota types when there is a sub type that you are requesting quota increase for. Example: Batch',
              args: [
                Arg(
                name: 'quota-change-subtyp'
              )
              ]
            ),
            Option(
              name: '--quota-change-version',
              description: 'Quota change request version',
              args: [
                Arg(
                name: 'quota-change-versio'
              )
              ]
            ),
            Option(
              name: '--require-24-by-7-response',
              description: 'Indicates if this requires a 24x7 response from Azure. Default is false',
              args: [
                Arg(
                name: 'require-24-by-7-response',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'Time in UTC datetime (Y-m-d\'T\'H:M:S\'Z\') when the problem started. Default is today',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--technical-resource',
              description: 'This is the resource id of the Azure service resource for which the support ticket is created',
              args: [
                Arg(
                name: 'technical-resourc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all the support tickets for an Azure subscription',
          options: [

            Option(
              name: '--filters',
              description: 'The filter to apply on the operation. We support OData v4.0 semtantics. Filter can be specified on "Status" property using eq operator or on "CreatedDate" using gt/ge. To combine both filters, use the logical and operator. Default is CreatedDate >= one week',
              args: [
                Arg(
                name: 'filter'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets support ticket details for an Azure subscription',
          options: [

            Option(
              name: '--ticket-name',
              description: 'Support ticket name',
              args: [
                Arg(
                name: 'ticket-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates severity level, status and customer contact information for a support ticket',
          options: [

            Option(
              name: '--ticket-name',
              description: 'Support ticket name',
              args: [
                Arg(
                name: 'ticket-nam'
              )
              ]
            ),
            Option(
              name: '--contact-additional-emails',
              description: 'Space-separated list of additional email addresses. Additional email addresses will be copied on any correspondence about the support ticket',
              args: [
                Arg(
                name: 'contact-additional-email'
              )
              ]
            ),
            Option(
              name: '--contact-country',
              description: 'Country of the user. This is the ISO Alpha-3 code',
              args: [
                Arg(
                name: 'contact-countr'
              )
              ]
            ),
            Option(
              name: '--contact-email',
              description: 'Primary email address',
              args: [
                Arg(
                name: 'contact-emai'
              )
              ]
            ),
            Option(
              name: '--contact-first-name',
              description: 'First Name',
              args: [
                Arg(
                name: 'contact-first-nam'
              )
              ]
            ),
            Option(
              name: '--contact-language',
              description: 'Preferred language of support from Azure. Support languages vary based on the severity you choose for your support ticket. This is the standard country-language code',
              args: [
                Arg(
                name: 'contact-languag'
              )
              ]
            ),
            Option(
              name: '--contact-last-name',
              description: 'Last Name',
              args: [
                Arg(
                name: 'contact-last-nam'
              )
              ]
            ),
            Option(
              name: '--contact-method',
              description: 'Preferred contact method',
              args: [
                Arg(
                name: 'contact-method',
                suggestions: [

                  FigSuggestion(name: 'email'),
                  FigSuggestion(name: 'phone')
                ]
              )
              ]
            ),
            Option(
              name: '--contact-phone-number',
              description: 'Phone number. This is required if preferred contact method is phone',
              args: [
                Arg(
                name: 'contact-phone-numbe'
              )
              ]
            ),
            Option(
              name: '--contact-timezone',
              description: 'Time zone of the user. This is the name of the time zone from Microsoft Time Zone Index Values',
              args: [
                Arg(
                name: 'contact-timezon'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'A value that indicates the urgency of the case, which in turn determines the response time according to the service level agreement of the technical support plan you have with Azure',
              args: [
                Arg(
                name: 'severity',
                suggestions: [

                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'highestcriticalimpact'),
                  FigSuggestion(name: 'minimal'),
                  FigSuggestion(name: 'moderate')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status to be updated on the ticket',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'closed'),
                  FigSuggestion(name: 'open')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'communications',
          description: 'Manage support ticket communications',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Adds a new customer communication to an Azure support ticket',
              options: [

                Option(
                  name: '--communication-body',
                  description: 'Text of the communication',
                  args: [
                    Arg(
                    name: 'communication-bod'
                  )
                  ]
                ),
                Option(
                  name: '--communication-name',
                  description: 'Communication name',
                  args: [
                    Arg(
                    name: 'communication-nam'
                  )
                  ]
                ),
                Option(
                  name: '--communication-subject',
                  description: 'Subject of the communication',
                  args: [
                    Arg(
                    name: 'communication-subjec'
                  )
                  ]
                ),
                Option(
                  name: '--ticket-name',
                  description: 'Support ticket name',
                  args: [
                    Arg(
                    name: 'ticket-nam'
                  )
                  ]
                ),
                Option(
                  name: '--communication-sender',
                  description: 'Email address of the sender',
                  args: [
                    Arg(
                    name: 'communication-sende'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all communications (attachments not included) for a support ticket',
              options: [

                Option(
                  name: '--ticket-name',
                  description: 'Support ticket name',
                  args: [
                    Arg(
                    name: 'ticket-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filters',
                  description: 'The filter to apply on the operation. We support OData v4.0 semtantics. Filter can be specified on "CommunicationType" using eq operator or on "CreatedDate" using gt/ge. To combine both filters, use the logical and operator',
                  args: [
                    Arg(
                    name: 'filter'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets communication details for a support ticket',
              options: [

                Option(
                  name: '--communication-name',
                  description: 'Communication name',
                  args: [
                    Arg(
                    name: 'communication-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ticket-name',
                  description: 'Support ticket name',
                  args: [
                    Arg(
                    name: 'ticket-nam'
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
);
