// Auto-generated from TypeScript source: stripe.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> globalOptions = [

  Option(
    name: '--api-key',
    description: 'Sets your API key to use for the command',
    args: [
      Arg(
      name: 'stripe api key'
    )
    ]
  ),
  Option(
    name: '--color',
    description: 'Enables or disables color output',
    args: [
      Arg(
      name: 'setting',
      suggestions: [

        FigSuggestion(name: 'on'),
        FigSuggestion(name: 'off'),
        FigSuggestion(name: 'auto')
      ]
    )
    ]
  ),
  Option(
    name: '--config',
    description: 'Sets your config file',
    args: [
      Arg(
      name: 'config filepath',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--device-name',
    description: 'Runs command on behlaf of another device',
    args: [
      Arg(
      name: 'name'
    )
    ]
  ),
  Option(
    name: ['-h', '--help'],
    description: 'Provides the help documentation for commands, flags, and arguments'
  ),
  Option(
    name: '--log-level',
    description: 'Set the level of detail for log messages',
    args: [
      Arg(
      name: 'level',
      suggestions: [

        FigSuggestion(name: 'info'),
        FigSuggestion(name: 'debug'),
        FigSuggestion(name: 'warn'),
        FigSuggestion(name: 'error')
      ]
    )
    ]
  ),
  Option(
    name: ['-v', '--version'],
    description: 'Prints the version of the Stripe CLI'
  )
];

final List<Option> sharedOptions = [

  Option(
    name: ['-s', '--show-headers'],
    description: 'Shows response HTTP headers'
  ),
  Option(
    name: ['-c', '--confirm'],
    description: 'Skips the warning prompt and automatically confirms the command being entered',
    isDangerous: true
  ),
  Option(
    name: '--dark-style',
    description: 'Uses a darker color scheme'
  ),
  Option(
    name: ['-d', '--data'],
    description: 'Additional data to send with an API request',
    args: [
      Arg(
      name: 'value'
    )
    ]
  ),
  Option(
    name: ['-e', '--expand'],
    description: 'Response attributes to expand inline',
    args: [
      Arg(
      name: 'value'
    )
    ]
  ),
  Option(
    name: ['-i', '--idempotency'],
    description: 'Sets an idempotency key for the request, preventing the same request from replaying within 24 hours',
    args: [
      Arg(
      name: 'key'
    )
    ]
  ),
  Option(
    name: '--live',
    description: 'Makes a live request'
  ),
  Option(
    name: '--stripe-account',
    description: 'Specify the Stripe account to use for this request',
    args: [
      Arg(
      name: 'account id'
    )
    ]
  ),
  Option(
    name: ['-v', '--stripe-version'],
    description: 'Specify the Stripe API version to use for this request',
    args: [
      Arg(
      name: 'version'
    )
    ]
  )
];

final List<FigSuggestion> webhookSuggestions = [

  FigSuggestion(
    name: 'balance.available',
    description: 'Occurs whenever your Stripe balance has been updated (e.g., when a charge is available to be paid out). By default, Stripe automatically transfers funds in your balance to your bank account on a daily basis'
  ),
  FigSuggestion(
    name: 'charge.captured',
    description: 'Occurs whenever a previously uncaptured charge is captured'
  ),
  FigSuggestion(
    name: 'charge.dispute.created',
    description: 'Occurs whenever a customer disputes a charge with their bank'
  ),
  FigSuggestion(
    name: 'charge.failed',
    description: 'Occurs whenever a failed charge attempt occurs'
  ),
  FigSuggestion(
    name: 'charge.refunded',
    description: 'Occurs whenever a charge is refunded, including partial refunds'
  ),
  FigSuggestion(
    name: 'charge.succeeded',
    description: 'Occurs whenever a new charge is created and is successful'
  ),
  FigSuggestion(
    name: 'checkout.session.completed',
    description: 'Occurs when a Checkout Session has been successfully completed'
  ),
  FigSuggestion(
    name: 'customer.created',
    description: 'Occurs whenever a new customer is created'
  ),
  FigSuggestion(
    name: 'customer.deleted',
    description: 'Occurs whenever a customer is deleted'
  ),
  FigSuggestion(
    name: 'customer.source.created',
    description: 'Occurs whenever a new source is created for a customer'
  ),
  FigSuggestion(
    name: 'customer.source.updated',
    description: 'Occurs whenever a source\'s details are changed'
  ),
  FigSuggestion(
    name: 'customer.subscription.created',
    description: 'Occurs whenever a customer is signed up for a new plan'
  ),
  FigSuggestion(
    name: 'customer.subscription.deleted',
    description: 'Occurs whenever a customer\'s subscription ends'
  ),
  FigSuggestion(
    name: 'customer.subscription.updated',
    description: 'Occurs whenever a subscription changes (e.g., switching from one plan to another, or changing the status from trial to active)'
  ),
  FigSuggestion(
    name: 'customer.updated',
    description: 'Occurs whenever any property of a customer changes'
  ),
  FigSuggestion(
    name: 'invoice.created',
    description: 'Occurs whenever a new invoice is created'
  ),
  FigSuggestion(
    name: 'invoice.finalized',
    description: 'Occurs whenever a draft invoice is finalized and updated to be an open invoice'
  ),
  FigSuggestion(
    name: 'invoice.payment_failed',
    description: 'Occurs whenever an invoice payment attempt fails, due either to a declined payment or to the lack of a stored payment method'
  ),
  FigSuggestion(
    name: 'invoice.payment_succeeded',
    description: 'Occurs whenever an invoice payment attempt succeeds'
  ),
  FigSuggestion(
    name: 'invoice.updated',
    description: 'Occurs whenever an invoice changes (e.g., the invoice amount)'
  ),
  FigSuggestion(
    name: 'issuing_authorization.request',
    description: 'Represents a synchronous request for authorization'
  ),
  FigSuggestion(
    name: 'issuing_card.created',
    description: 'Occurs whenever a card is created'
  ),
  FigSuggestion(
    name: 'issuing_cardholder.created',
    description: 'Occurs whenever a cardholder is created'
  ),
  FigSuggestion(
    name: 'payment_intent.amount_capturable_updated',
    description: 'Occurs when a PaymentIntent has funds to be captured'
  ),
  FigSuggestion(
    name: 'payment_intent.canceled',
    description: 'Occurs when a PaymentIntent is canceled'
  ),
  FigSuggestion(
    name: 'payment_intent.created',
    description: 'Occurs when a new PaymentIntent is created'
  ),
  FigSuggestion(
    name: 'payment_intent.payment_failed',
    description: 'Occurs when a PaymentIntent has failed the attempt to create a payment method or a payment'
  ),
  FigSuggestion(
    name: 'payment_intent.succeeded',
    description: 'Occurs when a PaymentIntent has successfully completed payment'
  ),
  FigSuggestion(
    name: 'payment_method.attached',
    description: 'Occurs whenever a new payment method is attached to a customer'
  ),
  FigSuggestion(
    name: 'setup_intent.canceled',
    description: 'Occurs when a SetupIntent is canceled'
  ),
  FigSuggestion(
    name: 'setup_intent.created',
    description: 'Occurs when a new SetupIntent is created'
  ),
  FigSuggestion(
    name: 'setup_intent.setup_failed',
    description: 'Occurs when a SetupIntent has failed the attempt to setup a payment method'
  ),
  FigSuggestion(
    name: 'setup_intent.succeeded',
    description: 'Occurs when an SetupIntent has successfully setup a payment method'
  )
];

/// Completion spec for `stripe` CLI
final FigSpec stripeSpec = FigSpec(
  name: 'stripe',
  description: 'CLI interface for Stripe.com',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'Connects to your Stripe account',
      args: [
        Arg(
        isVariadic: true,
        name: 'tool | tool@version'
      )
      ],
      options: [

        Option(
          name: ['-i', '--interactive'],
          description: 'Manually provide an API key if you can\'t access a browser'
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Installs a tool in your toolchain',
      options: [

        Option(
          name: ['-e', '--edit'],
          description: 'Opens the configuration file in your default editor'
        ),
        Option(
          name: '--list',
          description: 'List all configured options'
        ),
        Option(
          name: '--set',
          description: 'Set a value for the specified configuration option',
          args: [

            Arg(
              name: 'option',
              description: 'Config option'
            ),
            Arg(
              name: 'value',
              description: 'Value for config option'
            )
          ]
        ),
        Option(
          name: '--unset',
          description: 'Remove a key-value pair from the config file',
          args: [
            Arg(
            name: 'option',
            description: 'Config option'
          )
          ]
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generates shell autocompletions',
      options: [

        Option(
          name: '--shell',
          description: 'Opens the configuration file in your default editor',
          args: [
            Arg(
            name: 'platform',
            description: 'The shell to generate completion commands for',
            suggestions: [

              FigSuggestion(name: 'zsh'),
              FigSuggestion(name: 'bash')
            ]
          )
          ]
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'logs tail',
      description: 'Logs from your Stripe requests',
      options: [

        Option(
          name: '--filter-account',
          description: 'Filters request logs by the source and destination account',
          args: [
            Arg(
            name: 'values',
            isVariadic: true,
            suggestions: [

              FigSuggestion(
                name: 'connect_in',
                description: 'Incoming Connect requests'
              ),
              FigSuggestion(
                name: 'connect_out',
                description: 'Outgoing Connect requests'
              ),
              FigSuggestion(
                name: 'self',
                description: 'Non-Connect requests'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--filter-http-method',
          description: 'Filters request logs by HTTP method',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            suggestions: [

              FigSuggestion(
                name: 'GET',
                description: 'HTTP GET requests'
              ),
              FigSuggestion(
                name: 'POST',
                description: 'HTTP POST requests'
              ),
              FigSuggestion(
                name: 'DELETE',
                description: 'HTTP DELETE requests'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--filter-ip-address',
          description: 'Filters request logs by IP address',
          args: [
            Arg(
            isVariadic: true,
            name: 'values'
          )
          ]
        ),
        Option(
          name: '--filter-request-path',
          description: 'Filters request logs that directly match any Stripe path',
          args: [
            Arg(
            isVariadic: true,
            name: 'values'
          )
          ]
        ),
        Option(
          name: '--filter-request-status',
          description: 'Filters request logs by the response status',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            suggestions: [

              FigSuggestion(
                name: 'SUCCEEDED',
                description: 'Requests that succeeded'
              ),
              FigSuggestion(
                name: 'FAILED',
                description: 'Requests that failed'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--filter-source',
          description: 'Filters request logs by the source of each request',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            suggestions: [

              FigSuggestion(
                name: 'API',
                description: 'Requests created with the Stripe API'
              ),
              FigSuggestion(
                name: 'DASHBOARD',
                description: 'Requests created from the Dashboard'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--filter-status-code',
          description: 'Filters request logs by HTTP status code',
          args: [
            Arg(
            isVariadic: true,
            name: 'values'
          )
          ]
        ),
        Option(
          name: '--filter-status-code-type',
          description: 'Filters request logs by the type of HTTP status code',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            suggestions: [

              FigSuggestion(
                name: '2XX',
                description: 'HTTP 2xx status codes'
              ),
              FigSuggestion(
                name: '4XX',
                description: 'HTTP 4xx status codes'
              ),
              FigSuggestion(
                name: '5XX',
                description: 'HTTP 5xx status codes'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Specify the output format for request logs',
          args: [
            Arg(
            name: 'value',
            suggestions: [

              FigSuggestion(
                name: 'JSON',
                description: 'Output logs in JSON format'
              )
            ]
          )
          ]
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Displays Stripe\'s system status and service availability',
      options: [

        Option(
          name: '--format',
          description: 'Formats used to display status',
          args: [
            Arg(
            name: 'value',
            suggestions: [

              FigSuggestion(
                name: 'default',
                description: 'Render the status using standard output'
              ),
              FigSuggestion(
                name: 'JSON',
                description: 'Render status as JSON'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--hide-spinner',
          description: 'Hides the loading spinner when polling'
        ),
        Option(
          name: '--poll',
          description: 'Keeps polling for status updates'
        ),
        Option(
          name: '--poll-rate',
          description: 'The number of seconds (min 5) to wait between status updates',
          args: [
            Arg(
            name: 'seconds',
            description: 'Min: 5, default: 60'
          )
          ]
        ),
        Option(
          name: '--verbose',
          description: 'Shows the status of all Stripe systems'
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Displays Stripe\'s system status and service availability',
      args: [
        Arg(
        name: 'shortcut',
        suggestions: [

          FigSuggestion(name: 'api'),
          FigSuggestion(name: 'apiref'),
          FigSuggestion(name: 'cliref'),
          FigSuggestion(name: 'dashboard'),
          FigSuggestion(name: 'dashboard/apikeys'),
          FigSuggestion(name: 'dashboard/atlas'),
          FigSuggestion(name: 'dashboard/balance'),
          FigSuggestion(name: 'dashboard/billing'),
          FigSuggestion(name: 'dashboard/connect'),
          FigSuggestion(name: 'dashboard/connect/accounts'),
          FigSuggestion(name: 'dashboard/connect/collected'),
          FigSuggestion(name: 'dashboard/connect/transfers'),
          FigSuggestion(name: 'dashboard/coupons'),
          FigSuggestion(name: 'dashboard/customers'),
          FigSuggestion(name: 'dashboard/developers'),
          FigSuggestion(name: 'dashboard/disputes'),
          FigSuggestion(name: 'dashboard/events'),
          FigSuggestion(name: 'dashboard/invoices'),
          FigSuggestion(name: 'dashboard/logs'),
          FigSuggestion(name: 'dashboard/orders'),
          FigSuggestion(name: 'dashboard/orders/products'),
          FigSuggestion(name: 'dashboard/payments'),
          FigSuggestion(name: 'dashboard/radar'),
          FigSuggestion(name: 'dashboard/radar/list'),
          FigSuggestion(name: 'dashboard/radar/reviews'),
          FigSuggestion(name: 'dashboard/radar/rules'),
          FigSuggestion(name: 'dashboard/settings'),
          FigSuggestion(name: 'dashboard/subscriptions'),
          FigSuggestion(name: 'dashboard/products'),
          FigSuggestion(name: 'dashboard/tax'),
          FigSuggestion(name: 'dashboard/terminal'),
          FigSuggestion(name: 'dashbaord/terminal/hardware/orders'),
          FigSuggestion(name: 'dashboard/terminal/locations'),
          FigSuggestion(name: 'dashboard/topups'),
          FigSuggestion(name: 'dashboard/transactions'),
          FigSuggestion(name: 'dashboard/webhooks'),
          FigSuggestion(name: 'docs')
        ]
      )
      ],
      options: [

        Option(
          name: '--list',
          description: 'Lists all supported shortcuts'
        ),
        Option(
          name: '--live',
          description: 'Opens the Dashboard for your live integrations'
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'listen',
      description: 'Receives webhook events from Stripe locally',
      options: [

        Option(
          name: '--connect-headers',
          description: 'A comma-separated list of custom HTTP headers to any connected accounts',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            description: 'Key1:Value1, Key2:Value2'
          )
          ]
        ),
        Option(
          name: ['-e', '--events'],
          description: 'A comma-separated list of which events to listen for',
          args: [
            Arg(
            isVariadic: true,
            name: 'events types',
            suggestions: [

              FigSuggestion(
                name: 'account.updated',
                description: 'Occurs whenever an account status or property has changed'
              ),
              FigSuggestion(
                name: 'account.application.authorized',
                description: 'Occurs whenever a user authorizes an application. Sent to the related application only'
              ),
              FigSuggestion(
                name: 'account.application.deauthorized',
                description: 'Occurs whenever a user deauthorizes an application. Sent to the related application only'
              ),
              FigSuggestion(
                name: 'account.external_account.created',
                description: 'Occurs whenever an external account is created'
              ),
              FigSuggestion(
                name: 'account.external_account.deleted',
                description: 'Occurs whenever an external account is deleted'
              ),
              FigSuggestion(
                name: 'account.external_account.updated',
                description: 'Occurs whenever an external account is updated'
              ),
              FigSuggestion(
                name: 'application_fee.created',
                description: 'Occurs whenever an application fee is created on a charge'
              ),
              FigSuggestion(
                name: 'application_fee.refunded',
                description: 'Occurs whenever an application fee is refunded, whether from refunding a charge or from refunding the application fee directly. This includes partial refunds'
              ),
              FigSuggestion(
                name: 'application_fee.refund.updated',
                description: 'Occurs whenever an application fee refund is updated'
              ),
              FigSuggestion(
                name: 'billing_portal.configuration.created',
                description: 'Occurs whenever a portal configuration is created'
              ),
              FigSuggestion(
                name: 'billing_portal.configuration.updated',
                description: 'Occurs whenever a portal configuration is updated'
              ),
              FigSuggestion(
                name: 'capability.updated',
                description: 'Occurs whenever a capability has new requirements or a new status'
              ),
              FigSuggestion(
                name: 'charge.expired',
                description: 'Occurs whenever an uncaptured charge expires'
              ),
              FigSuggestion(
                name: 'charge.pending',
                description: 'Occurs whenever a pending charge is created'
              ),
              FigSuggestion(
                name: 'charge.updated',
                description: 'Occurs whenever a charge description or metadata is updated'
              ),
              FigSuggestion(
                name: 'charge.dispute.closed',
                description: 'Occurs when a dispute is closed and the dispute status changes to lost, warning_closed, or won'
              ),
              FigSuggestion(
                name: 'charge.dispute.funds_reinstated',
                description: 'Occurs when funds are reinstated to your account after a dispute is closed. This includes partially refunded payments'
              ),
              FigSuggestion(
                name: 'charge.dispute.funds_withdrawn',
                description: 'Occurs when funds are removed from your account due to a dispute'
              ),
              FigSuggestion(
                name: 'charge.dispute.updated',
                description: 'Occurs when the dispute is updated (usually with evidence)'
              ),
              FigSuggestion(
                name: 'charge.refund.updated',
                description: 'Occurs whenever a refund is updated, on selected payment methods'
              ),
              FigSuggestion(
                name: 'checkout.session.async_payment_failed',
                description: 'Occurs when a payment intent using a delayed payment method fails'
              ),
              FigSuggestion(
                name: 'checkout.session.async_payment_succeeded',
                description: 'Occurs when a payment intent using a delayed payment method finally succeeds'
              ),
              FigSuggestion(
                name: 'coupon.created',
                description: 'Occurs whenever a coupon is created'
              ),
              FigSuggestion(
                name: 'coupon.deleted',
                description: 'Occurs whenever a coupon is deleted'
              ),
              FigSuggestion(
                name: 'coupon.updated',
                description: 'Occurs whenever a coupon is updated'
              ),
              FigSuggestion(
                name: 'credit_note.created',
                description: 'Occurs whenever a credit note is created'
              ),
              FigSuggestion(
                name: 'credit_note.updated',
                description: 'Occurs whenever a credit note is updated'
              ),
              FigSuggestion(
                name: 'credit_note.voided',
                description: 'Occurs whenever a credit note is voided'
              ),
              FigSuggestion(
                name: 'customer.discount.created',
                description: 'Occurs whenever a coupon is attached to a customer'
              ),
              FigSuggestion(
                name: 'customer.discount.deleted',
                description: 'Occurs whenever a coupon is removed from a customer'
              ),
              FigSuggestion(
                name: 'customer.discount.updated',
                description: 'Occurs whenever a customer is switched from one coupon to another'
              ),
              FigSuggestion(
                name: 'customer.source.deleted',
                description: 'Occurs whenever a source is removed from a customer'
              ),
              FigSuggestion(
                name: 'customer.source.expiring',
                description: 'Occurs whenever a card or source will expire at the end of the month'
              ),
              FigSuggestion(
                name: 'customer.subscription.pending_update_applied',
                description: 'Occurs whenever a customer\'s subscription\'s pending update is applied, and the subscription is updated'
              ),
              FigSuggestion(
                name: 'customer.subscription.pending_update_expired',
                description: 'Occurs whenever a customer\'s subscription\'s pending update expires before the related invoice is paid'
              ),
              FigSuggestion(
                name: 'customer.subscription.trial_will_end',
                description: 'Occurs three days before a subscription\'s trial period is scheduled to end, or when a trial is ended immediately (using trial_end=now)'
              ),
              FigSuggestion(
                name: 'customer.tax_id.created',
                description: 'Occurs whenever a tax ID is created for a customer'
              ),
              FigSuggestion(
                name: 'customer.tax_id.deleted',
                description: 'Occurs whenever a tax ID is deleted from a customer'
              ),
              FigSuggestion(
                name: 'customer.tax_id.updated',
                description: 'Occurs whenever a customer\'s tax ID is updated'
              ),
              FigSuggestion(
                name: 'file.created',
                description: 'Occurs whenever a new Stripe-generated file is available for your account'
              ),
              FigSuggestion(
                name: 'identity.verification_session.canceled',
                description: 'Occurs whenever a VerificationSession is canceled'
              ),
              FigSuggestion(
                name: 'identity.verification_session.created',
                description: 'Occurs whenever a VerificationSession is created'
              ),
              FigSuggestion(
                name: 'identity.verification_session.processing',
                description: 'Occurs whenever a VerificationSession transitions to processing'
              ),
              FigSuggestion(
                name: 'identity.verification_session.redacted',
                description: 'Occurs whenever a VerificationSession is redacted. You must create a webhook endpoint which explicitly subscribes to this event type to access it. Webhook endpoints which subscribe to all events will not include this event type'
              ),
              FigSuggestion(
                name: 'identity.verification_session.requires_input',
                description: 'Occurs whenever a VerificationSession transitions to require user input'
              ),
              FigSuggestion(
                name: 'identity.verification_session.verified',
                description: 'Occurs whenever a VerificationSession transitions to verified'
              ),
              FigSuggestion(
                name: 'invoice.deleted',
                description: 'Occurs whenever a draft invoice is deleted'
              ),
              FigSuggestion(
                name: 'invoice.finalization_failed',
                description: 'Occurs whenever a draft invoice cannot be finalized. See the invoice’s last finalization error for details'
              ),
              FigSuggestion(
                name: 'invoice.marked_uncollectible',
                description: 'Occurs whenever an invoice is marked uncollectible'
              ),
              FigSuggestion(
                name: 'invoice.paid',
                description: 'Occurs whenever an invoice payment attempt succeeds or an invoice is marked as paid out-of-band'
              ),
              FigSuggestion(
                name: 'invoice.payment_action_required',
                description: 'Occurs whenever an invoice payment attempt requires further user action to complete'
              ),
              FigSuggestion(
                name: 'invoice.sent',
                description: 'Occurs whenever an invoice email is sent out'
              ),
              FigSuggestion(
                name: 'invoice.upcoming',
                description: 'Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged—where X is determined by your subscriptions settings. Note: The received Invoice object will not have an invoice ID'
              ),
              FigSuggestion(
                name: 'invoice.voided',
                description: 'Occurs whenever an invoice is voided'
              ),
              FigSuggestion(
                name: 'invoiceitem.created',
                description: 'Occurs whenever an invoice item is created'
              ),
              FigSuggestion(
                name: 'invoiceitem.deleted',
                description: 'Occurs whenever an invoice item is deleted'
              ),
              FigSuggestion(
                name: 'invoiceitem.updated',
                description: 'Occurs whenever an invoice item is updated'
              ),
              FigSuggestion(
                name: 'issuing_authorization.created',
                description: 'Occurs whenever an authorization is created'
              ),
              FigSuggestion(
                name: 'issuing_authorization.updated',
                description: 'Occurs whenever an authorization is updated'
              ),
              FigSuggestion(
                name: 'issuing_card.updated',
                description: 'Occurs whenever a card is updated'
              ),
              FigSuggestion(
                name: 'issuing_cardholder.updated',
                description: 'Occurs whenever a cardholder is updated'
              ),
              FigSuggestion(
                name: 'issuing_dispute.closed',
                description: 'Occurs whenever a dispute is won, lost or expired'
              ),
              FigSuggestion(
                name: 'issuing_dispute.created',
                description: 'Occurs whenever a dispute is created'
              ),
              FigSuggestion(
                name: 'issuing_dispute.funds_reinstated',
                description: 'Occurs whenever funds are reinstated to your account for an Issuing dispute'
              ),
              FigSuggestion(
                name: 'issuing_dispute.submitted',
                description: 'Occurs whenever a dispute is submitted'
              ),
              FigSuggestion(
                name: 'issuing_dispute.updated',
                description: 'Occurs whenever a dispute is updated'
              ),
              FigSuggestion(
                name: 'issuing_transaction.created',
                description: 'Occurs whenever an issuing transaction is created'
              ),
              FigSuggestion(
                name: 'issuing_transaction.updated',
                description: 'Occurs whenever an issuing transaction is updated'
              ),
              FigSuggestion(
                name: 'mandate.updated',
                description: 'Occurs whenever a Mandate is updated'
              ),
              FigSuggestion(
                name: 'order.created',
                description: 'Occurs whenever an order is created'
              ),
              FigSuggestion(
                name: 'order.payment_failed',
                description: 'Occurs whenever an order payment attempt fails'
              ),
              FigSuggestion(
                name: 'order.payment_succeeded',
                description: 'Occurs whenever an order payment attempt succeeds'
              ),
              FigSuggestion(
                name: 'order.updated',
                description: 'Occurs whenever an order is updated'
              ),
              FigSuggestion(
                name: 'order_return.created',
                description: 'Occurs whenever an order return is created'
              ),
              FigSuggestion(
                name: 'payment_intent.processing',
                description: 'Occurs when a PaymentIntent has started processing'
              ),
              FigSuggestion(
                name: 'payment_intent.requires_action',
                description: 'Occurs when a PaymentIntent transitions to requires_action state'
              ),
              FigSuggestion(
                name: 'payment_method.automatically_updated',
                description: 'Occurs whenever a payment method\'s details are automatically updated by the network'
              ),
              FigSuggestion(
                name: 'payment_method.detached',
                description: 'Occurs whenever a payment method is detached from a customer'
              ),
              FigSuggestion(
                name: 'payment_method.updated',
                description: 'Occurs whenever a payment method is updated via the PaymentMethod update API'
              ),
              FigSuggestion(
                name: 'payout.canceled',
                description: 'Occurs whenever a payout is canceled'
              ),
              FigSuggestion(
                name: 'payout.created',
                description: 'Occurs whenever a payout is created'
              ),
              FigSuggestion(
                name: 'payout.failed',
                description: 'Occurs whenever a payout attempt fails'
              ),
              FigSuggestion(
                name: 'payout.paid',
                description: 'Occurs whenever a payout is expected to be available in the destination account. If the payout fails, a payout.failed notification is also sent, at a later time'
              ),
              FigSuggestion(
                name: 'payout.updated',
                description: 'Occurs whenever a payout is updated'
              ),
              FigSuggestion(
                name: 'person.created',
                description: 'Occurs whenever a person associated with an account is created'
              ),
              FigSuggestion(
                name: 'person.deleted',
                description: 'Occurs whenever a person associated with an account is deleted'
              ),
              FigSuggestion(
                name: 'person.updated',
                description: 'Occurs whenever a person associated with an account is updated'
              ),
              FigSuggestion(
                name: 'plan.created',
                description: 'Occurs whenever a plan is created'
              ),
              FigSuggestion(
                name: 'plan.deleted',
                description: 'Occurs whenever a plan is deleted'
              ),
              FigSuggestion(
                name: 'plan.updated',
                description: 'Occurs whenever a plan is updated'
              ),
              FigSuggestion(
                name: 'price.created',
                description: 'Occurs whenever a price is created'
              ),
              FigSuggestion(
                name: 'price.deleted',
                description: 'Occurs whenever a price is deleted'
              ),
              FigSuggestion(
                name: 'price.updated',
                description: 'Occurs whenever a price is updated'
              ),
              FigSuggestion(
                name: 'product.created',
                description: 'Occurs whenever a product is created'
              ),
              FigSuggestion(
                name: 'product.deleted',
                description: 'Occurs whenever a product is deleted'
              ),
              FigSuggestion(
                name: 'product.updated',
                description: 'Occurs whenever a product is updated'
              ),
              FigSuggestion(
                name: 'promotion_code.created',
                description: 'Occurs whenever a promotion code is created'
              ),
              FigSuggestion(
                name: 'promotion_code.updated',
                description: 'Occurs whenever a promotion code is updated'
              ),
              FigSuggestion(
                name: 'radar.early_fraud_warning.created',
                description: 'Occurs whenever an early fraud warning is created'
              ),
              FigSuggestion(
                name: 'radar.early_fraud_warning.updated',
                description: 'Occurs whenever an early fraud warning is updated'
              ),
              FigSuggestion(
                name: 'recipient.created',
                description: 'Occurs whenever a recipient is created'
              ),
              FigSuggestion(
                name: 'recipient.deleted',
                description: 'Occurs whenever a recipient is deleted'
              ),
              FigSuggestion(
                name: 'recipient.updated',
                description: 'Occurs whenever a recipient is updated'
              ),
              FigSuggestion(
                name: 'reporting.report_run.failed',
                description: 'Occurs whenever a requested ReportRun failed to complete'
              ),
              FigSuggestion(
                name: 'reporting.report_run.succeeded',
                description: 'Occurs whenever a requested ReportRun completed successfully'
              ),
              FigSuggestion(
                name: 'reporting.report_type.updated',
                description: 'Occurs whenever a ReportType is updated (typically to indicate that a new day\'s data has come available). You must create a webhook endpoint which explicitly subscribes to this event type to access it. Webhook endpoints which subscribe to all events will not include this event type'
              ),
              FigSuggestion(
                name: 'review.closed',
                description: 'Occurs whenever a review is closed. The review\'s reason field indicates why: approved, disputed, refunded, or refunded_as_fraud'
              ),
              FigSuggestion(
                name: 'review.opened',
                description: 'Occurs whenever a review is opened'
              ),
              FigSuggestion(
                name: 'setup_intent.requires_action',
                description: 'Occurs when a SetupIntent is in requires_action state'
              ),
              FigSuggestion(
                name: 'sigma.scheduled_query_run.created',
                description: 'Occurs whenever a Sigma scheduled query run finishes'
              ),
              FigSuggestion(
                name: 'sku.created',
                description: 'Occurs whenever a SKU is created'
              ),
              FigSuggestion(
                name: 'sku.deleted',
                description: 'Occurs whenever a SKU is deleted'
              ),
              FigSuggestion(
                name: 'sku.updated',
                description: 'Occurs whenever a SKU is updated'
              ),
              FigSuggestion(
                name: 'source.canceled',
                description: 'Occurs whenever a source is canceled'
              ),
              FigSuggestion(
                name: 'source.chargeable',
                description: 'Occurs whenever a source transitions to chargeable'
              ),
              FigSuggestion(
                name: 'source.failed',
                description: 'Occurs whenever a source fails'
              ),
              FigSuggestion(
                name: 'source.mandate_notification',
                description: 'Occurs whenever a source mandate notification method is set to manual'
              ),
              FigSuggestion(
                name: 'source.refund_attributes_required',
                description: 'Occurs whenever the refund attributes are required on a receiver source to process a refund or a mispayment'
              ),
              FigSuggestion(
                name: 'source.transaction.created',
                description: 'Occurs whenever a source transaction is created'
              ),
              FigSuggestion(
                name: 'source.transaction.updated',
                description: 'Occurs whenever a source transaction is updated'
              ),
              FigSuggestion(
                name: 'subscription_schedule.aborted',
                description: 'Occurs whenever a subscription schedule is canceled due to the underlying subscription being canceled because of delinquency'
              ),
              FigSuggestion(
                name: 'subscription_schedule.canceled',
                description: 'Occurs whenever a subscription schedule is canceled'
              ),
              FigSuggestion(
                name: 'subscription_schedule.completed',
                description: 'Occurs whenever a new subscription schedule is completed'
              ),
              FigSuggestion(
                name: 'subscription_schedule.created',
                description: 'Occurs whenever a new subscription schedule is created'
              ),
              FigSuggestion(
                name: 'subscription_schedule.expiring',
                description: 'Occurs 7 days before a subscription schedule will expire'
              ),
              FigSuggestion(
                name: 'subscription_schedule.released',
                description: 'Occurs whenever a new subscription schedule is released'
              ),
              FigSuggestion(
                name: 'subscription_schedule.updated',
                description: 'Occurs whenever a subscription schedule is updated'
              ),
              FigSuggestion(
                name: 'tax_rate.created',
                description: 'Occurs whenever a new tax rate is created'
              ),
              FigSuggestion(
                name: 'tax_rate.updated',
                description: 'Occurs whenever a tax rate is updated'
              ),
              FigSuggestion(
                name: 'topup.canceled',
                description: 'Occurs whenever a top-up is canceled'
              ),
              FigSuggestion(
                name: 'topup.created',
                description: 'Occurs whenever a top-up is created'
              ),
              FigSuggestion(
                name: 'topup.failed',
                description: 'Occurs whenever a top-up fails'
              ),
              FigSuggestion(
                name: 'topup.reversed',
                description: 'Occurs whenever a top-up is reversed'
              ),
              FigSuggestion(
                name: 'topup.succeeded',
                description: 'Occurs whenever a top-up succeeds'
              ),
              FigSuggestion(
                name: 'transfer.created',
                description: 'Occurs whenever a transfer is created'
              ),
              FigSuggestion(
                name: 'transfer.failed',
                description: 'Occurs whenever a transfer failed'
              ),
              FigSuggestion(
                name: 'transfer.paid',
                description: 'Occurs after a transfer is paid. For Instant Payouts, the event will typically be sent within 30 minutes'
              ),
              FigSuggestion(
                name: 'transfer.reversed',
                description: 'Occurs whenever a transfer is reversed, including partial reversals'
              ),
              FigSuggestion(
                name: 'transfer.updated',
                description: 'Occurs whenever a transfer\'s description or metadata is updated'
              ),
              ...webhookSuggestions
            ]
          )
          ]
        ),
        Option(
          name: ['-c', '--forward-connect-to'],
          description: 'The URL that Connect webhook events will be forwarded to',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: ['-f', '--forward-to'],
          description: 'The URL that webhook events will be forwarded to',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'A comma-separated list of custom HTTP headers to forward',
          args: [
            Arg(
            isVariadic: true,
            name: 'values',
            description: 'Key1:Value1, Key2:Value2'
          )
          ]
        ),
        Option(
          name: ['-l', '--latest'],
          description: 'Receive events used in the latest API version'
        ),
        Option(
          name: '--live',
          description: 'Make a live request'
        ),
        Option(
          name: ['-a', '--load-from-webhooks-api'],
          description: 'Listen for all webhook events based on existing webhook endpoints'
        ),
        Option(
          name: ['-j', '--print-json'],
          description: 'Print JSON objects to stdout'
        ),
        Option(
          name: '--skip-verify',
          description: 'Skip certificate verification when forwarding to HTTPS endpoints',
          isDangerous: true
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'trigger',
      description: 'Triggers webhook events to conduct local testing',
      args: [
        Arg(
        name: 'event',
        description: 'Webhook events',
        suggestions: [

          ...webhookSuggestions
        ]
      )
      ],
      options: [

        Option(
          name: '--stripe-account',
          description: 'Sets a header identifying the connected account'
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'events resend',
      description: 'Resend an event to test a webhook endpoint',
      args: [
        Arg(
        name: 'event id',
        description: 'The ID of the event to resend'
      )
      ],
      options: [

        Option(
          name: '--account',
          description: 'Resend the event to the given Stripe account',
          args: [
            Arg(
            name: 'account id'
          )
          ]
        ),
        Option(
          name: '--param',
          description: 'Key-value data to send along with the API request',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: '-webhook-endpoint',
          description: 'Resends the event to the given webhook endpoint ID',
          args: [
            Arg(
            name: 'endpoint id'
          )
          ]
        ),
        ...sharedOptions,
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Makes GET HTTP requests to retrieve an individual API object',
      args: [
        Arg(
        name: 'id or path',
        description: 'ID or URL path of the API object to retrieve'
      )
      ],
      options: [

        Option(
          name: ['-b', '--ending-before'],
          description: 'Retrieves the previous page in the list',
          args: [
            Arg(
            name: 'object id'
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Number of objects to return',
          args: [
            Arg(
            name: 'number',
            description: 'Number between 1 - 100 (default)'
          )
          ]
        ),
        Option(
          name: ['-a', '--starting-after'],
          description: 'Retrieves the next page in the list',
          args: [
            Arg(
            name: 'object id'
          )
          ]
        ),
        ...sharedOptions,
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'post',
      description: 'Makes POST HTTP requests to the Stripe API',
      args: [
        Arg(
        name: 'path',
        description: 'URL path of the API object to create or update'
      )
      ],
      options: [

        ...sharedOptions,
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Makes DELETE HTTP requests to the Stripe API',
      args: [
        Arg(
        name: 'path',
        description: 'URL path of the API object to delete'
      )
      ],
      options: [

        ...sharedOptions,
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'samples',
      description: 'Creates a local copy of a sample',
      subcommands: [

        Subcommand(
          name: 'create',
          args: [

            Arg(
              name: 'sample',
              description: 'Name of the sample used to create a local copy'
            ),
            Arg(
              name: 'path',
              description: 'Destination path for the created sample',
              isOptional: true
            )
          ],
          options: [

            Option(
              name: '--force-refresh',
              description: 'Force a refresh of the chaced list of Stripe Samples'
            ),
            ...globalOptions
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists available Stripe Samples',
          options: [

            Option(
              name: '--force-refresh',
              description: 'Force a refresh of the chaced list of Stripe Samples'
            ),
            ...globalOptions
          ]
        )
      ],
      options: [

        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Starts an HTTP server to serve static files',
      args: [
        Arg(
        name: 'base path',
        description: 'Path of the directory to serve files from'
      )
      ],
      options: [

        Option(
          name: '--port',
          description: 'Port the HTTP server should use',
          args: [
            Arg(
            name: 'port number'
          )
          ]
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'terminal quickstart',
      description: 'Starts up Stripe Terminal',
      options: [

        Option(
          name: '--api-key',
          args: [
            Arg(
            name: 'api key'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Removes all credentials',
      options: [

        Option(
          name: ['-a', '--all'],
          description: 'Removes credentials for all projects listed in your config'
        ),
        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'feedback',
      description: 'Prints info about how to provide feedback',
      options: [

        ...globalOptions
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Gets help for any command',
      args: [
        Arg(
        name: 'command',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Gets the version and checks or updates',
      args: [
        Arg(
        name: 'command',
        isOptional: true
      )
      ]
    )
  ],
  options: [

    ...globalOptions
  ]
);
