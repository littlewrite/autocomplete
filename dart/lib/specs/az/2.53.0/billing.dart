// Auto-generated from TypeScript source: billing.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `billing` CLI
final FigSpec billingSpec = FigSpec(
  name: 'billing',
  description: 'Manage Azure Billing',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Billing account',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the billing accounts that a user has access to',
          options: [

            Option(
              name: '--expand',
              description: 'May be used to expand the soldTo, invoice sections and billing profiles',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a billing account by its ID',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the soldTo, invoice sections and billing profiles',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the properties of a billing account. Currently, displayName and address can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--billing-profiles-value',
              description: 'The billing profiles associated with the billing account. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'billing-profiles-valu'
              )
              ]
            ),
            Option(
              name: '--departments',
              description: 'The departments associated to the enrollment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'department'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The billing account name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--enrollment-accounts',
              description: 'The accounts associated to the enrollment. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'enrollment-account'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sold-to',
              description: 'The address of the individual or organization that is responsible for the billing account',
              args: [
                Arg(
                name: 'sold-t'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the billing account is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'nam'
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
              name: '--expand',
              description: 'May be used to expand the soldTo, invoice sections and billing profiles',
              args: [
                Arg(
                name: 'expan'
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
      name: 'agreement',
      description: 'Display billing agreement',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the agreements for a billing account',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the participants',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an agreement by ID',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies an agreement',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the participants',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'balance',
      description: 'Billing balance',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'The available credit balance for a billing profile. This is the balance that can be used for pay now to settle due or past due invoices. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'customer',
      description: 'Billing customer',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the customers that are billed to a billing account. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'May be used to filter the list of customers',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Used for searching customers by their name. Any customer with name containing the search text will be included in the response',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a customer by its ID. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--customer-name', '--name', '-n'],
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand enabledAzurePlans and resellers',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'enrollment-account',
      description: 'Get enrollment accounts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists the enrollment accounts the caller has access to'
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a enrollment account by name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the enrollment account',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'instruction',
      description: 'Manage billing instruction',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an instruction. These are custom billing instructions and are only applicable for certain customers',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Instruction Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--amount',
              description: 'The amount budgeted for this billing instruction',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: '--creation-date',
              description: 'The date this billing instruction was created',
              args: [
                Arg(
                name: 'creation-dat'
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'The date this billing instruction is no longer in effect',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The date this billing instruction goes into effect',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the instructions by billing profile id',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the instruction by name. These are custom billing instructions and are only applicable for certain customers',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Instruction Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an instruction. These are custom billing instructions and are only applicable for certain customers',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Instruction Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--amount',
              description: 'The amount budgeted for this billing instruction',
              args: [
                Arg(
                name: 'amoun'
              )
              ]
            ),
            Option(
              name: '--creation-date',
              description: 'The date this billing instruction was created',
              args: [
                Arg(
                name: 'creation-dat'
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'The date this billing instruction is no longer in effect',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The date this billing instruction goes into effect',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'invoice',
      description: 'Get billing invoices for a subscription',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Get URL to download invoice',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--download-token',
              description: 'The download token with document source and document ID',
              args: [
                Arg(
                name: 'download-toke'
              )
              ]
            ),
            Option(
              name: '--download-urls',
              description: 'Space-separated list of download urls for individual',
              args: [
                Arg(
                name: 'download-url'
              )
              ]
            ),
            Option(
              name: '--invoice-name',
              description: 'The ID that uniquely identifies an invoice',
              args: [
                Arg(
                name: 'invoice-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the invoices for a subscription',
          options: [

            Option(
              name: '--period-end-date',
              description: 'The end date to fetch the invoices. The date should be specified in MM-DD-YYYY format',
              args: [
                Arg(
                name: 'period-end-dat'
              )
              ]
            ),
            Option(
              name: '--period-start-date',
              description: 'The start date to fetch the invoices. The date should be specified in MM-DD-YYYY format',
              args: [
                Arg(
                name: 'period-start-dat'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get an invoice. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies an invoice',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--by-subscription',
              description: 'When provided, it must work with --invoice-name to get an invoice by subscription ID and invoice ID',
              args: [
                Arg(
                name: 'by-subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'section',
          description: 'Billing invoice section',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates or updates an invoice section. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
              options: [

                Option(
                  name: '--account-name',
                  description: 'The ID that uniquely identifies a billing account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--invoice-section-name', '--name', '-n'],
                  description: 'The ID that uniquely identifies an invoice section',
                  args: [
                    Arg(
                    name: 'invoice-section-nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'The ID that uniquely identifies a billing profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'The name of the invoice section',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'Dictionary of metadata associated with the invoice section. Expect value: KEY1=VALUE1 KEY2=VALUE2',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the invoice sections that a user has access to. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
              options: [

                Option(
                  name: '--account-name',
                  description: 'The ID that uniquely identifies a billing account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'The ID that uniquely identifies a billing profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an invoice section by its ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
              options: [

                Option(
                  name: '--account-name',
                  description: 'The ID that uniquely identifies a billing account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--invoice-section-name', '--name', '-n'],
                  description: 'The ID that uniquely identifies an invoice section',
                  args: [
                    Arg(
                    name: 'invoice-section-nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'The ID that uniquely identifies a billing profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Creates or updates an invoice section. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
              options: [

                Option(
                  name: '--account-name',
                  description: 'The ID that uniquely identifies a billing account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--invoice-section-name', '--name', '-n'],
                  description: 'The ID that uniquely identifies an invoice section',
                  args: [
                    Arg(
                    name: 'invoice-section-nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'The ID that uniquely identifies a billing profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'The name of the invoice section',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'Dictionary of metadata associated with the invoice section. Expect value: KEY1=VALUE1 KEY2=VALUE2',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the billing invoice section is met',
              options: [

                Option(
                  name: '--account-name',
                  description: 'The ID that uniquely identifies a billing account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--invoice-section-name', '--name', '-n'],
                  description: 'The ID that uniquely identifies an invoice section',
                  args: [
                    Arg(
                    name: 'invoice-section-nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'The ID that uniquely identifies a billing profile',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'period',
      description: 'Get billing periods for a subscription',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists the available billing periods for a subscription in reverse chronological order',
          options: [

            Option(
              name: '--filter',
              description: 'May be used to filter billing periods by billingPeriodEndDate. The filter supports \'eq\', \'lt\', \'gt\', \'le\', \'ge\', and \'and\'. It does not currently support \'ne\', \'or\', or \'not\'',
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
            ),
            Option(
              name: '--top',
              description: 'May be used to limit the number of results to the most recent N billing periods',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a named billing period',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the billing period. Run the az billing period list command to list the name of billing period',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'permission',
      description: 'List billing permissions',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the billing permissions the caller has on a billing account',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--customer-name',
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      description: 'Billing policy',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Show the policies for a customer or for a billing profile. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement."',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--customer-name',
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the policies for a billing profile. This operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--customer-name',
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--marketplace-purchases',
              description: 'The policy that controls whether Azure marketplace purchases are allowed for a billing profile',
              args: [
                Arg(
                name: 'marketplace-purchases',
                suggestions: [

                  FigSuggestion(name: 'AllAllowed'),
                  FigSuggestion(name: 'NotAllowed'),
                  FigSuggestion(name: 'OnlyFreeAllowed')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--reservation-purchases',
              description: 'The policy that controls whether Azure reservation purchases are allowed for a billing profile',
              args: [
                Arg(
                name: 'reservation-purchases',
                suggestions: [

                  FigSuggestion(name: 'Allowed'),
                  FigSuggestion(name: 'NotAllowed')
                ]
              )
              ]
            ),
            Option(
              name: '--view-charges',
              description: 'The policy that controls whether users with Azure RBAC access to a subscription can view its charges',
              args: [
                Arg(
                name: 'view-charges',
                suggestions: [

                  FigSuggestion(name: 'Allowed'),
                  FigSuggestion(name: 'NotAllowed')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'product',
      description: 'Billing product',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the products for a billing account. These don\'t include products billed based on usage. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--customer-name',
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'May be used to filter by product type. The filter supports \'eq\', \'lt\', \'gt\', \'le\', \'ge\', and \'and\'. It does not currently support \'ne\', \'or\', or \'not\'. Tag filter is a key value pair string where key and value are separated by a colon (:)',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'move',
          description: 'Moves a product\'s charges to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--product-name', '--name', '-n'],
              description: 'The ID that uniquely identifies a product',
              args: [
                Arg(
                name: 'product-nam'
              )
              ]
            ),
            Option(
              name: '--destination-invoice-section-id',
              description: 'The destination invoice section id',
              args: [
                Arg(
                name: 'destination-invoice-section-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a product by ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--product-name', '--name', '-n'],
              description: 'The ID that uniquely identifies a product',
              args: [
                Arg(
                name: 'product-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the properties of a Product. Currently, auto renew can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--product-name', '--name', '-n'],
              description: 'The ID that uniquely identifies a product',
              args: [
                Arg(
                name: 'product-nam'
              )
              ]
            ),
            Option(
              name: '--auto-renew',
              description: 'Indicates whether auto renewal is turned on or off for a product',
              args: [
                Arg(
                name: 'auto-renew',
                suggestions: [

                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: '--billing-frequency',
              description: 'The frequency at which the product will be billed',
              args: [
                Arg(
                name: 'billing-frequency',
                suggestions: [

                  FigSuggestion(name: 'Monthly'),
                  FigSuggestion(name: 'OneTime'),
                  FigSuggestion(name: 'UsageBased')
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The current status of the product',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'AutoRenew'),
                  FigSuggestion(name: 'Cancelled'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Expired'),
                  FigSuggestion(name: 'Expiring'),
                  FigSuggestion(name: 'Inactive'),
                  FigSuggestion(name: 'PastDue')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate-move',
          description: 'Validate if a product\'s charges can be moved to a new invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--product-name', '--name', '-n'],
              description: 'The ID that uniquely identifies a product',
              args: [
                Arg(
                name: 'product-nam'
              )
              ]
            ),
            Option(
              name: '--destination-invoice-section-id',
              description: 'The destination invoice section id',
              args: [
                Arg(
                name: 'destination-invoice-section-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'profile',
      description: 'Manage billing profile of billing account',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a billing profile. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--bill-to',
              description: 'Billing address',
              args: [
                Arg(
                name: 'bill-t'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The name of the billing profile',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--enabled-azure-plans',
              description: 'Information about the enabled azure plans',
              args: [
                Arg(
                name: 'enabled-azure-plan'
              )
              ]
            ),
            Option(
              name: '--invoice-email-opt-in',
              description: 'Flag controlling whether the invoices for the billing profile are sent through email',
              args: [
                Arg(
                name: 'invoice-email-opt-in',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--invoice-sections-value',
              description: 'The invoice sections associated to the billing profile. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'invoice-sections-valu'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--po-number',
              description: 'The purchase order name that will appear on the invoices generated for the billing profile',
              args: [
                Arg(
                name: 'po-numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the billing profiles that a user has access to. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the invoice sections',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a billing profile by its ID. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--expand',
              description: 'May be used to expand the invoice sections',
              args: [
                Arg(
                name: 'expan'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Creates or updates a billing profile. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--bill-to',
              description: 'Billing address',
              args: [
                Arg(
                name: 'bill-t'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'The name of the billing profile',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--enabled-azure-plans',
              description: 'Information about the enabled azure plans',
              args: [
                Arg(
                name: 'enabled-azure-plan'
              )
              ]
            ),
            Option(
              name: '--invoice-email-opt-in',
              description: 'Flag controlling whether the invoices for the billing profile are sent through email',
              args: [
                Arg(
                name: 'invoice-email-opt-in',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--invoice-sections-value',
              description: 'The invoice sections associated to the billing profile. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'invoice-sections-valu'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--po-number',
              description: 'The purchase order name that will appear on the invoices generated for the billing profile',
              args: [
                Arg(
                name: 'po-numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the billing profile is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'nam'
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
              name: '--expand',
              description: 'May be used to expand the invoice sections',
              args: [
                Arg(
                name: 'expan'
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
      name: 'property',
      description: 'Billing property',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get the billing properties for a subscription. This operation is not supported for billing accounts with agreement type Enterprise Agreement'
        ),
        Subcommand(
          name: 'update',
          description: 'Update the billing property of a subscription. Currently, cost center can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--cost-center',
              description: 'The cost center applied to the subscription',
              args: [
                Arg(
                name: 'cost-cente'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role-assignment',
      description: 'Billing role-assignment',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a role assignment for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a role assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'List the role assignments for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the role assignment detail for the caller within different scopes. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The ID that uniquely identifies a role assignment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role-definition',
      description: 'Display billing role-definition',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the role definitions for a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the role definition details',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name that uniquely identifies a role definition',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'subscription',
      description: 'Billing subscription',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the subscriptions for a billing account. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--customer-name',
              description: 'The ID that uniquely identifies a customer',
              args: [
                Arg(
                name: 'customer-nam'
              )
              ]
            ),
            Option(
              name: '--invoice-section-name',
              description: 'The ID that uniquely identifies an invoice section',
              args: [
                Arg(
                name: 'invoice-section-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The ID that uniquely identifies a billing profile',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'move',
          description: 'Moves a subscription\'s charges to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--destination-invoice-section-id',
              description: 'The destination invoice section id',
              args: [
                Arg(
                name: 'destination-invoice-section-i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a subscription by its ID. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement and Microsoft Partner Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the properties of a billing subscription. Currently, cost center can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--cost-center',
              description: 'The cost center applied to the subscription',
              args: [
                Arg(
                name: 'cost-cente'
              )
              ]
            ),
            Option(
              name: '--sku-id',
              description: 'The sku ID of the Azure plan for the subscription',
              args: [
                Arg(
                name: 'sku-i'
              )
              ]
            ),
            Option(
              name: '--subscription-billing-status',
              description: 'The current billing status of the subscription',
              args: [
                Arg(
                name: 'subscription-billing-status',
                suggestions: [

                  FigSuggestion(name: 'Abandoned'),
                  FigSuggestion(name: 'Active'),
                  FigSuggestion(name: 'Deleted'),
                  FigSuggestion(name: 'Inactive'),
                  FigSuggestion(name: 'Warning')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate-move',
          description: 'Validate if a subscription\'s charges can be moved to a new invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--destination-invoice-section-id',
              description: 'The destination invoice section id',
              args: [
                Arg(
                name: 'destination-invoice-section-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the billing subscription is met',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
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
      name: 'transaction',
      description: 'Billing transaction',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the transactions for an invoice. Transactions include purchases, refunds and Azure usage charges',
          options: [

            Option(
              name: '--account-name',
              description: 'The ID that uniquely identifies a billing account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--invoice-name',
              description: 'The ID that uniquely identifies an invoice',
              args: [
                Arg(
                name: 'invoice-nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
