// Auto-generated from TypeScript source: commercelayer.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `@commercelayer/cli` CLI
final FigSpec commercelayerCliSpec = FigSpec(
  name: '@commercelayer/cli',
  subcommands: [
    Subcommand(
      name: [
        'applications',
        'app:list',
        'applications:list',
        'app:available',
        'applications:available',
        'apps',
      ],
      description: 'Show a list of all (logged in) available cli applications',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        ),
        Option(
          name: ['-X', '--extra'],
          description: 'Show applications extra info'
        ),
        Option(
          name: ['-S', '--sort'],
          description: 'Sort applications by organization and application name'
        )
      ]
    ),
    Subcommand(
      name: ['applications:add', 'app:add'],
      description: '',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--clientId'],
          description: 'Application client_id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--clientSecret'],
          description: 'Application client_secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--scope'],
          description: 'Access token scope (market, stock location)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--email'],
          description: 'Customer email',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--password'],
          description: 'Customer secret password',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias you want to associate to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Show more verbose error messages'
        )
      ]
    ),
    Subcommand(
      name: ['applications:current', 'app:current'],
      description: 'Show the current application',
      options: [
        Option(
          name: '--info'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Show info in json format'
        )
      ]
    ),
    Subcommand(
      name: ['applications:info', 'app:info'],
      description: 'Show application details',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Show info in json format'
        )
      ]
    ),
    Subcommand(
      name: ['applications:login', 'app:login', 'login'],
      description: '',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--clientId'],
          description: 'Application client_id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--clientSecret'],
          description: 'Application client_secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--scope'],
          description: 'Access token scope (market, stock location)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--email'],
          description: 'Customer email',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--password'],
          description: 'Customer secret password',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias you want to associate to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Show more verbose error messages'
        )
      ]
    ),
    Subcommand(
      name: [
        'applications:logout',
        'app:logout',
        'app:remove',
        'applications:remove',
        'logout',
      ],
      description: 'Remove an application from cli local configuration',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        ),
        Option(
          name: ['-r', '--revoke'],
          description: 'Revoke current access token'
        ),
        Option(
          name: ['-F', '--force'],
          description: 'Force application removal without user confirmation'
        )
      ]
    ),
    Subcommand(
      name: [
        'applications:provisioning',
        'app:prov',
        'app:provisioning',
        'prov:apps',
        'prov:applications',
      ],
      description: 'Show all provisioning applications',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        ),
        Option(
          name: ['-X', '--extra'],
          description: 'Show applications extra info'
        ),
        Option(
          name: ['-S', '--sort'],
          description: 'Sort applications by organization and application name'
        )
      ]
    ),
    Subcommand(
      name: ['applications:scope', 'app:scope'],
      description: 'Switch scope of current application',
      options: [
        Option(
          name: ['-a', '--alias'],
          description: 'The alias you want to associate to the application',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'scope',
        description: 'The application scope'
      )
      ]
    ),
    Subcommand(
      name: ['applications:switch', 'app:switch'],
      description: 'Switch applications',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'app:token',
      description: 'Get a new access token from commerce layer api',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'Organization slug',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          description: 'Api domain',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Application kind',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'integration'),
              FigSuggestion(name: 'sales_channel'),
              FigSuggestion(name: 'user')
            ]
          )
          ]
        ),
        Option(
          name: ['-m', '--mode'],
          description: 'Execution mode',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'test'),
              FigSuggestion(name: 'live')
            ]
          )
          ]
        ),
        Option(
          name: '--live',
          description: 'Live execution mode'
        ),
        Option(
          name: '--id',
          description: 'Application id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to the application',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--appkey',
          description: 'Cli application key',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--api'],
          description: 'Specific api application',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'core'),
              FigSuggestion(name: 'provisioning')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--save'],
          description: 'Save access token'
        ),
        Option(
          name: ['-i', '--info'],
          description: 'Show access token info'
        ),
        Option(
          name: ['-S', '--shared'],
          description: 'Organization shared secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-M', '--minutes'],
          description: 'Minutes to token expiration [2, 240]',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['cli:update', 'upgrade', 'latest'],
      description: 'Update commerce layer cli',
      options: [
        Option(
          name: ['-v', '--version'],
          description: 'Update cli to a specific version or tag',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['cli:version', 'version'],
      description: 'Show installed version of commerce layer cli',
      options: [
        Option(
          name: ['-p', '--plugins'],
          description: 'Show version of installed plugins'
        )
      ]
    ),
    Subcommand(
      name: 'plugins:available',
      description: 'Show all available commerce layer cli plugins',
      options: [
        Option(
          name: ['-H', '--hidden'],
          description: 'Show also enabled but hidden plugins'
        )
      ]
    ),
    Subcommand(
      name: 'plugins:latest',
      description: 'Show latest version of available plugins',
      options: [
        Option(
          name: ['-b', '--beta'],
          description: 'Retrieve latest version from beta channel'
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'The name of the plugin',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'checkout',
      description: 'Create checkout urls',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--accessToken'],
          description: 'Custom access token to use instead of the one used for login',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Open checkout url in default browser'
        ),
        Option(
          name: '--staging',
          description: 'Connect to checkout application in staging environment'
        ),
        Option(
          name: ['-O', '--order'],
          description: 'An order id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--sku'],
          description: 'An sku code',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-B', '--bundle'],
          description: 'A bundle code',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-m', '--market'],
          description: 'A market number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--coupon'],
          description: 'A promo code',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--email'],
          description: 'A customer email',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'checkout:order',
      description: 'Create checkout urls starting from an existing order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--accessToken'],
          description: 'Custom access token to use instead of the one used for login',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Open checkout url in default browser'
        ),
        Option(
          name: '--staging',
          description: 'Connect to checkout application in staging environment'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'imports',
      description: 'List all the created imports or show details of a single import',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all imports instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource imported',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_payment_sources'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'line_item_options'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories')
            ]
          )
          ]
        ),
        Option(
          name: ['-g', '--group'],
          description: 'The group id associated to the import in case of multi-chunk imports',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The import job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-e', '--errors'],
          description: 'Show only imports with errors'
        ),
        Option(
          name: ['-w', '--warnings'],
          description: 'Show only import with warnings'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of imports in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the import to be retrieved',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['imports:create', 'imp:create', 'import'],
      description: 'Create a new import',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource being imported',
          args: [
            Arg(
            description: 'Addresses|bundles|coupons|customer_addresses|etc',
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_payment_sources'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'line_item_options'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories')
            ]
          )
          ]
        ),
        Option(
          name: ['-p', '--parent'],
          description: 'The id of the parent resource to be associated with imported data',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--inputs'],
          description: 'The path of the file containing the data to import',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-C', '--csv'],
          description: 'Accept input file in csv format'
        ),
        Option(
          name: ['-D', '--delimiter'],
          description: 'The delimiter character used in the csv input file (one of \',\', \';\', \'|\', tab)',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: ','),
              FigSuggestion(name: ';'),
              FigSuggestion(name: '|'),
              FigSuggestion(name: 'TAB')
            ]
          )
          ]
        ),
        Option(
          name: ['-b', '--blind'],
          description: 'Execute in blind mode without showing the progress monitor'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Execute command without showing warning messages'
        )
      ]
    ),
    Subcommand(
      name: ['imports:delete', 'imp:delete'],
      description: 'Delete an existing import',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the import'
      )
      ]
    ),
    Subcommand(
      name: ['imports:details', 'imp:details'],
      description: 'Show the details of an existing import',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--inputs'],
          description: 'Show input items associated with the import'
        ),
        Option(
          name: ['-l', '--logs'],
          description: 'Show warning and error logs related to the import process'
        ),
        Option(
          name: ['-S', '--save-inputs'],
          description: 'Save import inputs to local file',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the import'
      )
      ]
    ),
    Subcommand(
      name: ['imports:group', 'imp:group'],
      description: 'List all the imports related to an import group',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'group_id',
        description: 'Unique id of the group import'
      )
      ]
    ),
    Subcommand(
      name: ['imports:list', 'imp:list'],
      description: 'List all the created imports',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all imports instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource imported',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_payment_sources'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'line_item_options'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories')
            ]
          )
          ]
        ),
        Option(
          name: ['-g', '--group'],
          description: 'The group id associated to the import in case of multi-chunk imports',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The import job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-e', '--errors'],
          description: 'Show only imports with errors'
        ),
        Option(
          name: ['-w', '--warnings'],
          description: 'Show only import with warnings'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of imports in output',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['imports:types', 'imp:types'],
      description: 'Show online documentation for supported resources',
      options: [
        Option(
          name: ['-O', '--open'],
          description: 'Open online documentation page'
        )
      ]
    ),
    Subcommand(
      name: 'microstore',
      description: 'Create microstore urls',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--accessToken'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--open',
          description: 'Open microstore url in default browser'
        ),
        Option(
          name: ['-S', '--skuListId'],
          description: 'The sku list id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Activate the buy all button'
        ),
        Option(
          name: ['-C', '--cart'],
          description: 'Activate the cart application'
        ),
        Option(
          name: ['-I', '--inline'],
          description: 'Disable redirect to cart application'
        )
      ]
    ),
    Subcommand(
      name: 'seeder:check',
      description: 'Execute a check on seeder data',
      options: [
        Option(
          name: ['-b', '--businessModel'],
          description: 'The kind of business model you want to import',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'single_sku'),
              FigSuggestion(name: 'multi_market'),
              FigSuggestion(name: 'custom')
            ],
            defaultValue: 'single_sku'
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'Seeder data url',
          args: [
            Arg(
            defaultValue: 'https://data.commercelayer.app/seeder'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The name of the business model file to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Show command debug information'
        ),
        Option(
          name: ['-r', '--relationships'],
          description: 'Check resource relationships'
        )
      ]
    ),
    Subcommand(
      name: 'seeder:clean',
      description: 'Clean previously imported seeder data',
      options: [
        Option(
          name: ['-b', '--businessModel'],
          description: 'The kind of business model you want to import',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'single_sku'),
              FigSuggestion(name: 'multi_market'),
              FigSuggestion(name: 'custom')
            ],
            defaultValue: 'single_sku'
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'Seeder data url',
          args: [
            Arg(
            defaultValue: 'https://data.commercelayer.app/seeder'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The name of the business model file to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Show debug information'
        ),
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['seeder:seed', 'seed'],
      description: 'Execute commerce layer seeder',
      options: [
        Option(
          name: ['-b', '--businessModel'],
          description: 'The kind of business model you want to import',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'single_sku'),
              FigSuggestion(name: 'multi_market'),
              FigSuggestion(name: 'custom')
            ],
            defaultValue: 'single_sku'
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'Seeder data url',
          args: [
            Arg(
            defaultValue: 'https://data.commercelayer.app/seeder'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The name of the business model file to use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Show debug information'
        ),
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-k', '--keep'],
          description: 'Keep existing resources without updating them'
        ),
        Option(
          name: ['-D', '--delay'],
          description: 'Add a delay in milliseconds between calls to different resources',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['token:decode', 'token:info'],
      description: 'Decode a commerce layer access token',
      args: [
        Arg(
        name: 'token',
        description: 'The access token to be decoded'
      )
      ]
    ),
    Subcommand(
      name: 'token:generate',
      description: 'Start a wizard to generate a custom access token',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print users answers'
        ),
        Option(
          name: ['-i', '--info'],
          description: 'Print generated token info'
        ),
        Option(
          name: ['-c', '--check'],
          description: 'Check generated access token'
        )
      ]
    ),
    Subcommand(
      name: 'token:get',
      description: 'Get a new access token',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--clientId'],
          description: 'Application client_id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--clientSecret'],
          description: 'Application client_secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--scope'],
          description: 'Access token scope (market, stock location)',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--email'],
          description: 'Customer email',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--password'],
          description: 'Customer secret password',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--info',
          description: 'Show access token info'
        ),
        Option(
          name: ['-P', '--provisioning'],
          description: 'Execute login to provisioning api'
        )
      ]
    ),
    Subcommand(
      name: 'token:revoke',
      description: 'Revoke a commerce layer access token',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--clientId'],
          description: 'Application client_id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--clientSecret'],
          description: 'Application client_secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-S', '--scope'],
          description: 'Access token scope',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-P', '--provisioning'],
          description: 'Execute login to provisioning api'
        )
      ],
      args: [
        Arg(
        name: 'token',
        description: 'Access token to revoke'
      )
      ]
    ),
    Subcommand(
      name: 'resources',
      description: 'List all the available commerce layer api resources',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        )
      ]
    ),
    Subcommand(
      name: ['resources:all', 'all', 'ra', 'res:all'],
      description: 'Fetch all resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-N', '--notify'],
          description: 'Force system notification when export has finished'
        ),
        Option(
          name: '--clientId',
          description: 'Organization client_id',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--clientSecret',
          description: 'Organization client_secret',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-C', '--csv'],
          description: 'Export fields in csv format'
        ),
        Option(
          name: ['-D', '--delimiter'],
          description: '',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: ','),
              FigSuggestion(name: ';'),
              FigSuggestion(name: '|'),
              FigSuggestion(name: 'TAB')
            ]
          )
          ]
        ),
        Option(
          name: ['-H', '--header'],
          description: '',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-b', '--blind'],
          description: 'Execute in blind mode without prompt and progress bar'
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-T', '--timeout'],
          description: 'Set request timeout in milliseconds [1000 - 15000]',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type'
      )
      ]
    ),
    Subcommand(
      name: ['resources:args', 'res:args'],
      description: 'Show all the saved command arguments',
      options: [
        Option(
          name: ['-a', '--alias'],
          description: 'The alias associated to saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--resource'],
          description: 'The resource type',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-o', '--operation'],
          description: 'The resource operation',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'retrieve'),
              FigSuggestion(name: 'create'),
              FigSuggestion(name: 'update')
            ]
          )
          ]
        ),
        Option(
          name: ['-D', '--delete'],
          description: 'Delete saved arguments associated to the alias'
        ),
        Option(
          name: ['-P', '--pretty'],
          description: 'Show saved arguments in table format'
        )
      ]
    ),
    Subcommand(
      name: ['resources:count', 'count', 'res:count', 'rs:count'],
      description: 'Count the number of existent resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type'
      )
      ]
    ),
    Subcommand(
      name: ['resources:create', 'create', 'rc', 'res:create', 'post'],
      description: 'Create a new resource',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-a', '--attribute'],
          description: 'Define a resource attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-O', '--object'],
          description: 'Define a resource object attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--relationship'],
          description: 'Define a relationship with another resource',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-m', '--metadata'],
          description: 'Define a metadata attribute or a set of metadata attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--data'],
          description: 'The data file to use as request body',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--tags'],
          description: 'List of tags associated with the resource',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type',
        suggestions: [
          FigSuggestion(name: 'address'),
          FigSuggestion(name: 'adjustment'),
          FigSuggestion(name: 'adyen_gateway'),
          FigSuggestion(name: 'adyen_payment'),
          FigSuggestion(name: 'attachment'),
          FigSuggestion(name: 'avalara_account'),
          FigSuggestion(name: 'axerve_gateway'),
          FigSuggestion(name: 'axerve_payment'),
          FigSuggestion(name: 'billing_info_validation_rule'),
          FigSuggestion(name: 'bing_geocoder'),
          FigSuggestion(name: 'braintree_gateway'),
          FigSuggestion(name: 'braintree_payment'),
          FigSuggestion(name: 'bundle'),
          FigSuggestion(name: 'buy_x_pay_y_promotion'),
          FigSuggestion(name: 'checkout_com_gateway'),
          FigSuggestion(name: 'checkout_com_payment'),
          FigSuggestion(name: 'cleanup'),
          FigSuggestion(name: 'coupon'),
          FigSuggestion(name: 'coupon_codes_promotion_rule'),
          FigSuggestion(name: 'coupon_recipient'),
          FigSuggestion(name: 'credit_card'),
          FigSuggestion(name: 'custom_promotion_rule'),
          FigSuggestion(name: 'customer'),
          FigSuggestion(name: 'customer_address'),
          FigSuggestion(name: 'customer_group'),
          FigSuggestion(name: 'customer_password_reset'),
          FigSuggestion(name: 'customer_payment_source'),
          FigSuggestion(name: 'customer_subscription'),
          FigSuggestion(name: 'delivery_lead_time'),
          FigSuggestion(name: 'export'),
          FigSuggestion(name: 'external_gateway'),
          FigSuggestion(name: 'external_payment'),
          FigSuggestion(name: 'external_promotion'),
          FigSuggestion(name: 'external_tax_calculator'),
          FigSuggestion(name: 'fixed_amount_promotion'),
          FigSuggestion(name: 'fixed_price_promotion'),
          FigSuggestion(name: 'free_gift_promotion'),
          FigSuggestion(name: 'free_shipping_promotion'),
          FigSuggestion(name: 'gift_card'),
          FigSuggestion(name: 'gift_card_recipient'),
          FigSuggestion(name: 'google_geocoder'),
          FigSuggestion(name: 'import'),
          FigSuggestion(name: 'in_stock_subscription'),
          FigSuggestion(name: 'inventory_model'),
          FigSuggestion(name: 'inventory_return_location'),
          FigSuggestion(name: 'inventory_stock_location'),
          FigSuggestion(name: 'klarna_gateway'),
          FigSuggestion(name: 'klarna_payment'),
          FigSuggestion(name: 'line_item'),
          FigSuggestion(name: 'line_item_option'),
          FigSuggestion(name: 'manual_gateway'),
          FigSuggestion(name: 'manual_tax_calculator'),
          FigSuggestion(name: 'market'),
          FigSuggestion(name: 'merchant'),
          FigSuggestion(name: 'order'),
          FigSuggestion(name: 'order_amount_promotion_rule'),
          FigSuggestion(name: 'order_copy'),
          FigSuggestion(name: 'order_subscription'),
          FigSuggestion(name: 'order_subscription_item'),
          FigSuggestion(name: 'package'),
          FigSuggestion(name: 'parcel'),
          FigSuggestion(name: 'parcel_line_item'),
          FigSuggestion(name: 'payment_method'),
          FigSuggestion(name: 'payment_option'),
          FigSuggestion(name: 'paypal_gateway'),
          FigSuggestion(name: 'paypal_payment'),
          FigSuggestion(name: 'percentage_discount_promotion'),
          FigSuggestion(name: 'price'),
          FigSuggestion(name: 'price_frequency_tier'),
          FigSuggestion(name: 'price_list'),
          FigSuggestion(name: 'price_volume_tier'),
          FigSuggestion(name: 'recurring_order_copy'),
          FigSuggestion(name: 'return'),
          FigSuggestion(name: 'return_line_item'),
          FigSuggestion(name: 'satispay_gateway'),
          FigSuggestion(name: 'satispay_payment'),
          FigSuggestion(name: 'shipment'),
          FigSuggestion(name: 'shipping_category'),
          FigSuggestion(name: 'shipping_method'),
          FigSuggestion(name: 'shipping_weight_tier'),
          FigSuggestion(name: 'shipping_zone'),
          FigSuggestion(name: 'sku'),
          FigSuggestion(name: 'sku_list'),
          FigSuggestion(name: 'sku_list_item'),
          FigSuggestion(name: 'sku_list_promotion_rule'),
          FigSuggestion(name: 'sku_option'),
          FigSuggestion(name: 'spreedly_gateway'),
          FigSuggestion(name: 'stock_item'),
          FigSuggestion(name: 'stock_line_item'),
          FigSuggestion(name: 'stock_location'),
          FigSuggestion(name: 'stock_reservation'),
          FigSuggestion(name: 'stock_transfer'),
          FigSuggestion(name: 'stripe_gateway'),
          FigSuggestion(name: 'stripe_payment'),
          FigSuggestion(name: 'subscription_model'),
          FigSuggestion(name: 'tag'),
          FigSuggestion(name: 'tax_category'),
          FigSuggestion(name: 'tax_rule'),
          FigSuggestion(name: 'taxjar_account'),
          FigSuggestion(name: 'webhook'),
          FigSuggestion(name: 'wire_transfer')
        ]
      )
      ]
    ),
    Subcommand(
      name: ['resources:delete', 'delete', 'rd', 'res:delete'],
      description: 'Delete an existing resource',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'address'),
            FigSuggestion(name: 'adjustment'),
            FigSuggestion(name: 'adyen_gateway'),
            FigSuggestion(name: 'adyen_payment'),
            FigSuggestion(name: 'attachment'),
            FigSuggestion(name: 'avalara_account'),
            FigSuggestion(name: 'axerve_gateway'),
            FigSuggestion(name: 'axerve_payment'),
            FigSuggestion(name: 'billing_info_validation_rule'),
            FigSuggestion(name: 'bing_geocoder'),
            FigSuggestion(name: 'braintree_gateway'),
            FigSuggestion(name: 'braintree_payment'),
            FigSuggestion(name: 'bundle'),
            FigSuggestion(name: 'buy_x_pay_y_promotion'),
            FigSuggestion(name: 'checkout_com_gateway'),
            FigSuggestion(name: 'checkout_com_payment'),
            FigSuggestion(name: 'cleanup'),
            FigSuggestion(name: 'coupon'),
            FigSuggestion(name: 'coupon_codes_promotion_rule'),
            FigSuggestion(name: 'coupon_recipient'),
            FigSuggestion(name: 'credit_card'),
            FigSuggestion(name: 'custom_promotion_rule'),
            FigSuggestion(name: 'customer'),
            FigSuggestion(name: 'customer_address'),
            FigSuggestion(name: 'customer_group'),
            FigSuggestion(name: 'customer_password_reset'),
            FigSuggestion(name: 'customer_payment_source'),
            FigSuggestion(name: 'customer_subscription'),
            FigSuggestion(name: 'delivery_lead_time'),
            FigSuggestion(name: 'export'),
            FigSuggestion(name: 'external_gateway'),
            FigSuggestion(name: 'external_payment'),
            FigSuggestion(name: 'external_promotion'),
            FigSuggestion(name: 'external_tax_calculator'),
            FigSuggestion(name: 'fixed_amount_promotion'),
            FigSuggestion(name: 'fixed_price_promotion'),
            FigSuggestion(name: 'free_gift_promotion'),
            FigSuggestion(name: 'free_shipping_promotion'),
            FigSuggestion(name: 'gift_card'),
            FigSuggestion(name: 'gift_card_recipient'),
            FigSuggestion(name: 'google_geocoder'),
            FigSuggestion(name: 'import'),
            FigSuggestion(name: 'in_stock_subscription'),
            FigSuggestion(name: 'inventory_model'),
            FigSuggestion(name: 'inventory_return_location'),
            FigSuggestion(name: 'inventory_stock_location'),
            FigSuggestion(name: 'klarna_gateway'),
            FigSuggestion(name: 'klarna_payment'),
            FigSuggestion(name: 'line_item'),
            FigSuggestion(name: 'line_item_option'),
            FigSuggestion(name: 'manual_gateway'),
            FigSuggestion(name: 'manual_tax_calculator'),
            FigSuggestion(name: 'market'),
            FigSuggestion(name: 'merchant'),
            FigSuggestion(name: 'order'),
            FigSuggestion(name: 'order_amount_promotion_rule'),
            FigSuggestion(name: 'order_copy'),
            FigSuggestion(name: 'order_subscription'),
            FigSuggestion(name: 'order_subscription_item'),
            FigSuggestion(name: 'package'),
            FigSuggestion(name: 'parcel'),
            FigSuggestion(name: 'parcel_line_item'),
            FigSuggestion(name: 'payment_method'),
            FigSuggestion(name: 'payment_option'),
            FigSuggestion(name: 'paypal_gateway'),
            FigSuggestion(name: 'paypal_payment'),
            FigSuggestion(name: 'percentage_discount_promotion'),
            FigSuggestion(name: 'price'),
            FigSuggestion(name: 'price_frequency_tier'),
            FigSuggestion(name: 'price_list'),
            FigSuggestion(name: 'price_volume_tier'),
            FigSuggestion(name: 'recurring_order_copy'),
            FigSuggestion(name: 'return'),
            FigSuggestion(name: 'return_line_item'),
            FigSuggestion(name: 'satispay_gateway'),
            FigSuggestion(name: 'satispay_payment'),
            FigSuggestion(name: 'shipment'),
            FigSuggestion(name: 'shipping_category'),
            FigSuggestion(name: 'shipping_method'),
            FigSuggestion(name: 'shipping_weight_tier'),
            FigSuggestion(name: 'shipping_zone'),
            FigSuggestion(name: 'sku'),
            FigSuggestion(name: 'sku_list'),
            FigSuggestion(name: 'sku_list_item'),
            FigSuggestion(name: 'sku_list_promotion_rule'),
            FigSuggestion(name: 'sku_option'),
            FigSuggestion(name: 'spreedly_gateway'),
            FigSuggestion(name: 'stock_item'),
            FigSuggestion(name: 'stock_line_item'),
            FigSuggestion(name: 'stock_location'),
            FigSuggestion(name: 'stock_reservation'),
            FigSuggestion(name: 'stock_transfer'),
            FigSuggestion(name: 'stripe_gateway'),
            FigSuggestion(name: 'stripe_payment'),
            FigSuggestion(name: 'subscription_model'),
            FigSuggestion(name: 'tag'),
            FigSuggestion(name: 'tax_category'),
            FigSuggestion(name: 'tax_rule'),
            FigSuggestion(name: 'taxjar_account'),
            FigSuggestion(name: 'webhook'),
            FigSuggestion(name: 'wire_transfer')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to delete',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['resources:doc', 'res:doc', 'doc'],
      description: 'Open the default browser and show the online documentation for the resource',
      options: [
        Option(
          name: ['-p', '--page'],
          description: 'The doc page you want to access',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'object'),
              FigSuggestion(name: 'create'),
              FigSuggestion(name: 'retrieve'),
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'update'),
              FigSuggestion(name: 'delete')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource for which you want to access the online documentation'
      )
      ]
    ),
    Subcommand(
      name: ['resources:fetch', 'fetch', 'res:fetch', 'rf'],
      description: 'Retrieve a resource or list a set of resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'path',
          description: 'Path (or url) of the resource(s) to fetch'
        ),
        Arg(
          name: 'id',
          description: 'Resource id',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['resources:filters', 'res:filters'],
      description: 'Show a list of all available filter predicates'
    ),
    Subcommand(
      name: ['resources:get', 'get', 'res:get', 'rg'],
      description: 'Retrieve a resource or list a set of resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['resources:list', 'list', 'rl', 'res:list'],
      description: 'Fetch a collection of resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type',
        suggestions: [
          FigSuggestion(name: 'addresses'),
          FigSuggestion(name: 'adjustments'),
          FigSuggestion(name: 'adyen_gateways'),
          FigSuggestion(name: 'adyen_payments'),
          FigSuggestion(name: 'attachments'),
          FigSuggestion(name: 'authorizations'),
          FigSuggestion(name: 'avalara_accounts'),
          FigSuggestion(name: 'axerve_gateways'),
          FigSuggestion(name: 'axerve_payments'),
          FigSuggestion(name: 'billing_info_validation_rules'),
          FigSuggestion(name: 'bing_geocoders'),
          FigSuggestion(name: 'braintree_gateways'),
          FigSuggestion(name: 'braintree_payments'),
          FigSuggestion(name: 'bundles'),
          FigSuggestion(name: 'buy_x_pay_y_promotions'),
          FigSuggestion(name: 'captures'),
          FigSuggestion(name: 'carrier_accounts'),
          FigSuggestion(name: 'checkout_com_gateways'),
          FigSuggestion(name: 'checkout_com_payments'),
          FigSuggestion(name: 'cleanups'),
          FigSuggestion(name: 'coupons'),
          FigSuggestion(name: 'coupon_codes_promotion_rules'),
          FigSuggestion(name: 'coupon_recipients'),
          FigSuggestion(name: 'credit_cards'),
          FigSuggestion(name: 'custom_promotion_rules'),
          FigSuggestion(name: 'customers'),
          FigSuggestion(name: 'customer_addresses'),
          FigSuggestion(name: 'customer_groups'),
          FigSuggestion(name: 'customer_password_resets'),
          FigSuggestion(name: 'customer_payment_sources'),
          FigSuggestion(name: 'customer_subscriptions'),
          FigSuggestion(name: 'delivery_lead_times'),
          FigSuggestion(name: 'events'),
          FigSuggestion(name: 'event_callbacks'),
          FigSuggestion(name: 'exports'),
          FigSuggestion(name: 'external_gateways'),
          FigSuggestion(name: 'external_payments'),
          FigSuggestion(name: 'external_promotions'),
          FigSuggestion(name: 'external_tax_calculators'),
          FigSuggestion(name: 'fixed_amount_promotions'),
          FigSuggestion(name: 'fixed_price_promotions'),
          FigSuggestion(name: 'free_gift_promotions'),
          FigSuggestion(name: 'free_shipping_promotions'),
          FigSuggestion(name: 'geocoders'),
          FigSuggestion(name: 'gift_cards'),
          FigSuggestion(name: 'gift_card_recipients'),
          FigSuggestion(name: 'google_geocoders'),
          FigSuggestion(name: 'imports'),
          FigSuggestion(name: 'in_stock_subscriptions'),
          FigSuggestion(name: 'inventory_models'),
          FigSuggestion(name: 'inventory_return_locations'),
          FigSuggestion(name: 'inventory_stock_locations'),
          FigSuggestion(name: 'klarna_gateways'),
          FigSuggestion(name: 'klarna_payments'),
          FigSuggestion(name: 'line_items'),
          FigSuggestion(name: 'line_item_options'),
          FigSuggestion(name: 'manual_gateways'),
          FigSuggestion(name: 'manual_tax_calculators'),
          FigSuggestion(name: 'markets'),
          FigSuggestion(name: 'merchants'),
          FigSuggestion(name: 'orders'),
          FigSuggestion(name: 'order_amount_promotion_rules'),
          FigSuggestion(name: 'order_copies'),
          FigSuggestion(name: 'order_factories'),
          FigSuggestion(name: 'order_subscriptions'),
          FigSuggestion(name: 'order_subscription_items'),
          FigSuggestion(name: 'order_validation_rules'),
          FigSuggestion(name: 'packages'),
          FigSuggestion(name: 'parcels'),
          FigSuggestion(name: 'parcel_line_items'),
          FigSuggestion(name: 'payment_gateways'),
          FigSuggestion(name: 'payment_methods'),
          FigSuggestion(name: 'payment_options'),
          FigSuggestion(name: 'paypal_gateways'),
          FigSuggestion(name: 'paypal_payments'),
          FigSuggestion(name: 'percentage_discount_promotions'),
          FigSuggestion(name: 'prices'),
          FigSuggestion(name: 'price_frequency_tiers'),
          FigSuggestion(name: 'price_lists'),
          FigSuggestion(name: 'price_tiers'),
          FigSuggestion(name: 'price_volume_tiers'),
          FigSuggestion(name: 'promotions'),
          FigSuggestion(name: 'promotion_rules'),
          FigSuggestion(name: 'recurring_order_copies'),
          FigSuggestion(name: 'refunds'),
          FigSuggestion(name: 'reserved_stocks'),
          FigSuggestion(name: 'resource_errors'),
          FigSuggestion(name: 'returns'),
          FigSuggestion(name: 'return_line_items'),
          FigSuggestion(name: 'satispay_gateways'),
          FigSuggestion(name: 'satispay_payments'),
          FigSuggestion(name: 'shipments'),
          FigSuggestion(name: 'shipment_line_items'),
          FigSuggestion(name: 'shipping_categories'),
          FigSuggestion(name: 'shipping_methods'),
          FigSuggestion(name: 'shipping_method_tiers'),
          FigSuggestion(name: 'shipping_weight_tiers'),
          FigSuggestion(name: 'shipping_zones'),
          FigSuggestion(name: 'skus'),
          FigSuggestion(name: 'sku_lists'),
          FigSuggestion(name: 'sku_list_items'),
          FigSuggestion(name: 'sku_list_promotion_rules'),
          FigSuggestion(name: 'sku_options'),
          FigSuggestion(name: 'spreedly_gateways'),
          FigSuggestion(name: 'stock_items'),
          FigSuggestion(name: 'stock_line_items'),
          FigSuggestion(name: 'stock_locations'),
          FigSuggestion(name: 'stock_reservations'),
          FigSuggestion(name: 'stock_transfers'),
          FigSuggestion(name: 'stripe_gateways'),
          FigSuggestion(name: 'stripe_payments'),
          FigSuggestion(name: 'subscription_models'),
          FigSuggestion(name: 'tags'),
          FigSuggestion(name: 'tax_calculators'),
          FigSuggestion(name: 'tax_categories'),
          FigSuggestion(name: 'tax_rules'),
          FigSuggestion(name: 'taxjar_accounts'),
          FigSuggestion(name: 'transactions'),
          FigSuggestion(name: 'versions'),
          FigSuggestion(name: 'voids'),
          FigSuggestion(name: 'webhooks'),
          FigSuggestion(name: 'wire_transfers')
        ]
      )
      ]
    ),
    Subcommand(
      name: ['relationship', 'resources:rel', 'res:rel', 'res:relationship'],
      description: 'Fetch a resource relationship',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve'
        ),
        Arg(
          name: 'relationship',
          description: 'Name of the relationship field'
        )
      ]
    ),
    Subcommand(
      name: ['resources:retrieve', 'retrieve', 'rr', 'res:retrieve'],
      description: 'Fetch a single resource',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'address'),
            FigSuggestion(name: 'adjustment'),
            FigSuggestion(name: 'adyen_gateway'),
            FigSuggestion(name: 'adyen_payment'),
            FigSuggestion(name: 'application'),
            FigSuggestion(name: 'attachment'),
            FigSuggestion(name: 'authorization'),
            FigSuggestion(name: 'avalara_account'),
            FigSuggestion(name: 'axerve_gateway'),
            FigSuggestion(name: 'axerve_payment'),
            FigSuggestion(name: 'billing_info_validation_rule'),
            FigSuggestion(name: 'bing_geocoder'),
            FigSuggestion(name: 'braintree_gateway'),
            FigSuggestion(name: 'braintree_payment'),
            FigSuggestion(name: 'bundle'),
            FigSuggestion(name: 'buy_x_pay_y_promotion'),
            FigSuggestion(name: 'capture'),
            FigSuggestion(name: 'carrier_account'),
            FigSuggestion(name: 'checkout_com_gateway'),
            FigSuggestion(name: 'checkout_com_payment'),
            FigSuggestion(name: 'cleanup'),
            FigSuggestion(name: 'coupon'),
            FigSuggestion(name: 'coupon_codes_promotion_rule'),
            FigSuggestion(name: 'coupon_recipient'),
            FigSuggestion(name: 'credit_card'),
            FigSuggestion(name: 'custom_promotion_rule'),
            FigSuggestion(name: 'customer'),
            FigSuggestion(name: 'customer_address'),
            FigSuggestion(name: 'customer_group'),
            FigSuggestion(name: 'customer_password_reset'),
            FigSuggestion(name: 'customer_payment_source'),
            FigSuggestion(name: 'customer_subscription'),
            FigSuggestion(name: 'delivery_lead_time'),
            FigSuggestion(name: 'event'),
            FigSuggestion(name: 'event_callback'),
            FigSuggestion(name: 'export'),
            FigSuggestion(name: 'external_gateway'),
            FigSuggestion(name: 'external_payment'),
            FigSuggestion(name: 'external_promotion'),
            FigSuggestion(name: 'external_tax_calculator'),
            FigSuggestion(name: 'fixed_amount_promotion'),
            FigSuggestion(name: 'fixed_price_promotion'),
            FigSuggestion(name: 'free_gift_promotion'),
            FigSuggestion(name: 'free_shipping_promotion'),
            FigSuggestion(name: 'geocoder'),
            FigSuggestion(name: 'gift_card'),
            FigSuggestion(name: 'gift_card_recipient'),
            FigSuggestion(name: 'google_geocoder'),
            FigSuggestion(name: 'import'),
            FigSuggestion(name: 'in_stock_subscription'),
            FigSuggestion(name: 'inventory_model'),
            FigSuggestion(name: 'inventory_return_location'),
            FigSuggestion(name: 'inventory_stock_location'),
            FigSuggestion(name: 'klarna_gateway'),
            FigSuggestion(name: 'klarna_payment'),
            FigSuggestion(name: 'line_item'),
            FigSuggestion(name: 'line_item_option'),
            FigSuggestion(name: 'manual_gateway'),
            FigSuggestion(name: 'manual_tax_calculator'),
            FigSuggestion(name: 'market'),
            FigSuggestion(name: 'merchant'),
            FigSuggestion(name: 'order'),
            FigSuggestion(name: 'order_amount_promotion_rule'),
            FigSuggestion(name: 'order_copy'),
            FigSuggestion(name: 'order_factory'),
            FigSuggestion(name: 'order_subscription'),
            FigSuggestion(name: 'order_subscription_item'),
            FigSuggestion(name: 'order_validation_rule'),
            FigSuggestion(name: 'organization'),
            FigSuggestion(name: 'package'),
            FigSuggestion(name: 'parcel'),
            FigSuggestion(name: 'parcel_line_item'),
            FigSuggestion(name: 'payment_gateway'),
            FigSuggestion(name: 'payment_method'),
            FigSuggestion(name: 'payment_option'),
            FigSuggestion(name: 'paypal_gateway'),
            FigSuggestion(name: 'paypal_payment'),
            FigSuggestion(name: 'percentage_discount_promotion'),
            FigSuggestion(name: 'price'),
            FigSuggestion(name: 'price_frequency_tier'),
            FigSuggestion(name: 'price_list'),
            FigSuggestion(name: 'price_tier'),
            FigSuggestion(name: 'price_volume_tier'),
            FigSuggestion(name: 'promotion'),
            FigSuggestion(name: 'promotion_rule'),
            FigSuggestion(name: 'recurring_order_copy'),
            FigSuggestion(name: 'refund'),
            FigSuggestion(name: 'reserved_stock'),
            FigSuggestion(name: 'resource_error'),
            FigSuggestion(name: 'return'),
            FigSuggestion(name: 'return_line_item'),
            FigSuggestion(name: 'satispay_gateway'),
            FigSuggestion(name: 'satispay_payment'),
            FigSuggestion(name: 'shipment'),
            FigSuggestion(name: 'shipment_line_item'),
            FigSuggestion(name: 'shipping_category'),
            FigSuggestion(name: 'shipping_method'),
            FigSuggestion(name: 'shipping_method_tier'),
            FigSuggestion(name: 'shipping_weight_tier'),
            FigSuggestion(name: 'shipping_zone'),
            FigSuggestion(name: 'sku'),
            FigSuggestion(name: 'sku_list'),
            FigSuggestion(name: 'sku_list_item'),
            FigSuggestion(name: 'sku_list_promotion_rule'),
            FigSuggestion(name: 'sku_option'),
            FigSuggestion(name: 'spreedly_gateway'),
            FigSuggestion(name: 'stock_item'),
            FigSuggestion(name: 'stock_line_item'),
            FigSuggestion(name: 'stock_location'),
            FigSuggestion(name: 'stock_reservation'),
            FigSuggestion(name: 'stock_transfer'),
            FigSuggestion(name: 'stripe_gateway'),
            FigSuggestion(name: 'stripe_payment'),
            FigSuggestion(name: 'subscription_model'),
            FigSuggestion(name: 'tag'),
            FigSuggestion(name: 'tax_calculator'),
            FigSuggestion(name: 'tax_category'),
            FigSuggestion(name: 'tax_rule'),
            FigSuggestion(name: 'taxjar_account'),
            FigSuggestion(name: 'transaction'),
            FigSuggestion(name: 'version'),
            FigSuggestion(name: 'void'),
            FigSuggestion(name: 'webhook'),
            FigSuggestion(name: 'wire_transfer')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['resources:schema', 'schema', 'res:schema', 'rs'],
      description: 'Show the current commercelayer openapi schema version used by the plugin'
    ),
    Subcommand(
      name: ['resources:update', 'update', 'ru', 'res:update', 'patch'],
      description: 'Update an existing resource',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: '--save-args',
          description: 'Save command data to file for future use',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--load-args',
          description: 'Load previously saved command arguments',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-a', '--attribute'],
          description: 'Define a resource attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-O', '--object'],
          description: 'Define a resource object attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--relationship'],
          description: 'Define a relationship with another resource',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-m', '--metadata'],
          description: '',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-M', '--metadata-replace'],
          description: '',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--data'],
          description: 'The data file to use as request body',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--tags'],
          description: 'List of tags associated with the resource',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'address'),
            FigSuggestion(name: 'adjustment'),
            FigSuggestion(name: 'adyen_gateway'),
            FigSuggestion(name: 'adyen_payment'),
            FigSuggestion(name: 'attachment'),
            FigSuggestion(name: 'authorization'),
            FigSuggestion(name: 'avalara_account'),
            FigSuggestion(name: 'axerve_gateway'),
            FigSuggestion(name: 'axerve_payment'),
            FigSuggestion(name: 'billing_info_validation_rule'),
            FigSuggestion(name: 'bing_geocoder'),
            FigSuggestion(name: 'braintree_gateway'),
            FigSuggestion(name: 'braintree_payment'),
            FigSuggestion(name: 'bundle'),
            FigSuggestion(name: 'buy_x_pay_y_promotion'),
            FigSuggestion(name: 'capture'),
            FigSuggestion(name: 'checkout_com_gateway'),
            FigSuggestion(name: 'checkout_com_payment'),
            FigSuggestion(name: 'coupon'),
            FigSuggestion(name: 'coupon_codes_promotion_rule'),
            FigSuggestion(name: 'coupon_recipient'),
            FigSuggestion(name: 'credit_card'),
            FigSuggestion(name: 'custom_promotion_rule'),
            FigSuggestion(name: 'customer'),
            FigSuggestion(name: 'customer_address'),
            FigSuggestion(name: 'customer_group'),
            FigSuggestion(name: 'customer_password_reset'),
            FigSuggestion(name: 'customer_payment_source'),
            FigSuggestion(name: 'customer_subscription'),
            FigSuggestion(name: 'delivery_lead_time'),
            FigSuggestion(name: 'external_gateway'),
            FigSuggestion(name: 'external_payment'),
            FigSuggestion(name: 'external_promotion'),
            FigSuggestion(name: 'external_tax_calculator'),
            FigSuggestion(name: 'fixed_amount_promotion'),
            FigSuggestion(name: 'fixed_price_promotion'),
            FigSuggestion(name: 'free_gift_promotion'),
            FigSuggestion(name: 'free_shipping_promotion'),
            FigSuggestion(name: 'gift_card'),
            FigSuggestion(name: 'gift_card_recipient'),
            FigSuggestion(name: 'google_geocoder'),
            FigSuggestion(name: 'in_stock_subscription'),
            FigSuggestion(name: 'inventory_model'),
            FigSuggestion(name: 'inventory_return_location'),
            FigSuggestion(name: 'inventory_stock_location'),
            FigSuggestion(name: 'klarna_gateway'),
            FigSuggestion(name: 'klarna_payment'),
            FigSuggestion(name: 'line_item'),
            FigSuggestion(name: 'line_item_option'),
            FigSuggestion(name: 'manual_gateway'),
            FigSuggestion(name: 'manual_tax_calculator'),
            FigSuggestion(name: 'market'),
            FigSuggestion(name: 'merchant'),
            FigSuggestion(name: 'order'),
            FigSuggestion(name: 'order_amount_promotion_rule'),
            FigSuggestion(name: 'order_copy'),
            FigSuggestion(name: 'order_subscription'),
            FigSuggestion(name: 'order_subscription_item'),
            FigSuggestion(name: 'package'),
            FigSuggestion(name: 'parcel'),
            FigSuggestion(name: 'parcel_line_item'),
            FigSuggestion(name: 'payment_method'),
            FigSuggestion(name: 'payment_option'),
            FigSuggestion(name: 'paypal_gateway'),
            FigSuggestion(name: 'paypal_payment'),
            FigSuggestion(name: 'percentage_discount_promotion'),
            FigSuggestion(name: 'price'),
            FigSuggestion(name: 'price_frequency_tier'),
            FigSuggestion(name: 'price_list'),
            FigSuggestion(name: 'price_volume_tier'),
            FigSuggestion(name: 'recurring_order_copy'),
            FigSuggestion(name: 'return'),
            FigSuggestion(name: 'return_line_item'),
            FigSuggestion(name: 'satispay_gateway'),
            FigSuggestion(name: 'satispay_payment'),
            FigSuggestion(name: 'shipment'),
            FigSuggestion(name: 'shipping_category'),
            FigSuggestion(name: 'shipping_method'),
            FigSuggestion(name: 'shipping_weight_tier'),
            FigSuggestion(name: 'shipping_zone'),
            FigSuggestion(name: 'sku'),
            FigSuggestion(name: 'sku_list'),
            FigSuggestion(name: 'sku_list_item'),
            FigSuggestion(name: 'sku_list_promotion_rule'),
            FigSuggestion(name: 'sku_option'),
            FigSuggestion(name: 'spreedly_gateway'),
            FigSuggestion(name: 'stock_item'),
            FigSuggestion(name: 'stock_line_item'),
            FigSuggestion(name: 'stock_location'),
            FigSuggestion(name: 'stock_reservation'),
            FigSuggestion(name: 'stock_transfer'),
            FigSuggestion(name: 'stripe_gateway'),
            FigSuggestion(name: 'stripe_payment'),
            FigSuggestion(name: 'subscription_model'),
            FigSuggestion(name: 'tag'),
            FigSuggestion(name: 'tax_category'),
            FigSuggestion(name: 'tax_rule'),
            FigSuggestion(name: 'taxjar_account'),
            FigSuggestion(name: 'webhook'),
            FigSuggestion(name: 'wire_transfer')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to update',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'orders',
      description: 'Execute an action on an order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:approve',
      description: 'Send this attribute if you want to approve a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:approve_and_capture',
      description: 'Send this attribute if you want to approve and capture a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:archive',
      description: 'Send this attribute if you want to archive the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:authorization_amount_cents',
      description: 'The authorization amount, in cents',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:authorize',
      description: 'Send this attribute if you want to authorize the order\'s payment source',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:billing_address_clone_id',
      description: 'The id of the address that you want to clone to create the order\'s billing addre',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:billing_address_same_as_shipping',
      description: 'Send this attribute if you want the billing address to be cloned from the order\'',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:cancel',
      description: 'Send this attribute if you want to cancel a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:capture',
      description: 'Send this attribute if you want to capture an authorized order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:commit_invoice',
      description: 'Send this attribute if you want commit the sales tax invoice to the associated t',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:create_subscriptions',
      description: 'Send this attribute upon/after placing the order if you want to create order sub',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:customer_payment_source_id',
      description: 'The id of the customer payment source (i',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:nullify_payment_source',
      description: 'Send this attribute if you want to nullify the payment source for this order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:pending',
      description: 'Send this attribute if you want to move a draft or placing order to pending',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:place',
      description: 'Send this attribute if you want to place the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:refresh',
      description: 'Send this attribute if you want to manually refresh the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:refund',
      description: 'Send this attribute if you want to refund a captured order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:refund_invoice',
      description: 'Send this attribute if you want refund the sales tax invoice to the associated t',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:save_billing_address_to_customer_address_book',
      description: 'Send this attribute if you want the order\'s billing address to be saved in the c',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:save_payment_source_to_customer_wallet',
      description: 'Send this attribute if you want the order\'s payment source to be saved in the cu',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:save_shipping_address_to_customer_address_book',
      description: 'Send this attribute if you want the order\'s shipping address to be saved in the',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:shipping_address_clone_id',
      description: 'The id of the address that you want to clone to create the order\'s shipping addr',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:shipping_address_same_as_billing',
      description: 'Send this attribute if you want the shipping address to be cloned from the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:start_editing',
      description: 'Send this attribute if you want to edit the order after it is placed',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:stop_editing',
      description: 'Send this attribute to stop the editing for the order and return back to placed',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:unarchive',
      description: 'Send this attribute if you want to unarchive the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:update_taxes',
      description: 'Send this attribute if you want to force tax calculation for this order (a tax c',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'orders:validate',
      description: 'Send this attribute if you want to trigger the external validation for the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified order'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the order'
      )
      ]
    ),
    Subcommand(
      name: 'webhooks',
      description: 'List all the registered webhooks or the details of a single webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--circuit'],
          description: 'Show only webhooks with circuit in the declared state',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'open'),
              FigSuggestion(name: 'closed')
            ]
          )
          ]
        ),
        Option(
          name: ['-t', '--topic'],
          description: 'The event that triggered the webhook',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--hide-empty'],
          description: 'Hide empty attributes'
        ),
        Option(
          name: ['-e', '--events'],
          description: 'Show the last event callbacks associated to the webhook'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook to get a single webhook',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:create', 'wh:create'],
      description: 'Create a new webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--topic'],
          description: 'The identifier of the event that will trigger the webhook',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'The callback url used to post data',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'A comma separated list of related resources to be included',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The webhook short name',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['webhooks:destroy', 'webhooks:delete', 'wh:delete', 'wh:destroy'],
      description: 'Destroy an existing webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:details', 'wh:details'],
      description: 'Show the details of an existing webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-H', '--hide-empty'],
          description: 'Hide empty attributes'
        ),
        Option(
          name: ['-e', '--events'],
          description: 'Show the last event callbacks associated to the webhook'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:event', 'wh:event'],
      description: 'Show the details of a firedf webhook event',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--payload'],
          description: 'Show the event payload sent to the callback endpoint'
        ),
        Option(
          name: ['-f', '--format'],
          description: 'Format the payload output'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:events', 'wh:events'],
      description: 'List all the events associated to the webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all events instead of first 25 only'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of events in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:list', 'wh:list'],
      description: 'List all the registered webhooks',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-c', '--circuit'],
          description: 'Show only webhooks with circuit in the declared state',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'open'),
              FigSuggestion(name: 'closed')
            ]
          )
          ]
        ),
        Option(
          name: ['-t', '--topic'],
          description: 'The event that triggered the webhook',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['webhooks:listen', 'wh:listen'],
      description: 'Listen a webhook for outgoing callbacks',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--time'],
          description: 'Waiting time for the first event',
          args: [
            Arg(
            defaultValue: '120'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:payload', 'wh:payload'],
      description: 'Show the payload associated to an event callback',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--format'],
          description: 'Format the payload output'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:reset', 'wh:reset'],
      description: 'Reset the circuit breaker associated to the webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: ['webhooks:topics', 'wh:topics'],
      description: 'Show online documentation for supported events'
    ),
    Subcommand(
      name: ['webhooks:update', 'wh:update'],
      description: 'Update an existing webhook',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--topic'],
          description: 'The identifier of the event that will trigger the webhook',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-u', '--url'],
          description: 'The callback url used to post data',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'A comma separated list of related resources to be included',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The webhook short name',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the webhook'
      )
      ]
    ),
    Subcommand(
      name: 'adyen_payment',
      description: 'Execute an action on a resource of type adyen_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'adyen_payment:details',
      description: 'Send this attribute if you want to send additional details the payment request',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'authorization',
      description: 'Execute an action on a resource of type authorizations',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'authorization:capture',
      description: 'Send this attribute if you want to create a capture for this authorization',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'authorization:capture_amount_cents',
      description: 'The associated capture amount, in cents',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'authorization:void',
      description: 'Send this attribute if you want to create a void for this authorization',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'axerve_payment',
      description: 'Execute an action on a resource of type axerve_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'axerve_payment:update',
      description: 'Send this attribute if you want to update the payment with fresh order data',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'bundle',
      description: 'Execute an action on a resource of type bundles',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'bundle:compute_compare_at_amount',
      description: 'Send this attribute if you want to compute the compare_at_amount_cents as the su',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'bundle:compute_price_amount',
      description: 'Send this attribute if you want to compute the price_amount_cents as the sum of',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'buy_x_pay_y_promotion',
      description: 'Execute an action on a resource of type buy_x_pay_y_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'buy_x_pay_y_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'buy_x_pay_y_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'capture',
      description: 'Execute an action on a resource of type captures',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'capture:refund',
      description: 'Send this attribute if you want to create a refund for this capture',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'capture:refund_amount_cents',
      description: 'The associated refund amount, in cents',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'checkout_com_payment',
      description: 'Execute an action on a resource of type checkout_com_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'checkout_com_payment:details',
      description: 'Send this attribute if you want to send additional details the payment request (',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'checkout_com_payment:refresh',
      description: 'Send this attribute if you want to refresh all the pending transactions, can be',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'customer_password_reset',
      description: 'Execute an action on a resource of type customer_password_resets',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'customer_password_reset:reset_password_token',
      description: 'Send the \'reset_password_token\' that you got on create when updating the custome',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_gateway',
      description: 'Execute an action on a resource of type external_gateways',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_gateway:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_promotion',
      description: 'Execute an action on a resource of type external_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_promotion:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_tax_calculator',
      description: 'Execute an action on a resource of type external_tax_calculators',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'external_tax_calculator:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_amount_promotion',
      description: 'Execute an action on a resource of type fixed_amount_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_amount_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_amount_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_price_promotion',
      description: 'Execute an action on a resource of type fixed_price_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_price_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'fixed_price_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_gift_promotion',
      description: 'Execute an action on a resource of type free_gift_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_gift_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_gift_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_shipping_promotion',
      description: 'Execute an action on a resource of type free_shipping_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_shipping_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'free_shipping_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'gift_card',
      description: 'Execute an action on a resource of type gift_cards',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'gift_card:activate',
      description: 'Send this attribute if you want to activate a gift card',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'gift_card:balance_change_cents',
      description: 'The balance change, in cents',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'gift_card:deactivate',
      description: 'Send this attribute if you want to deactivate a gift card',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'gift_card:purchase',
      description: 'Send this attribute if you want to confirm a draft gift card',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'in_stock_subscription',
      description: 'Execute an action on a resource of type in_stock_subscriptions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'in_stock_subscription:activate',
      description: 'Send this attribute if you want to activate an inactive subscription',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'in_stock_subscription:deactivate',
      description: 'Send this attribute if you want to dactivate an active subscription',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'klarna_payment',
      description: 'Execute an action on a resource of type klarna_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'klarna_payment:update',
      description: 'Send this attribute if you want to update the payment session with fresh order d',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'line_item',
      description: 'Execute an action on a resource of type line_items',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'line_item:external_price',
      description: 'When creating or updating a new line item, set this attribute to \'1\' if you want',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'line_item:reserve_stock',
      description: 'Send this attribute if you want to reserve the stock for the line item\'s skus qu',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'line_item:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'market',
      description: 'Execute an action on a resource of type markets',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'market:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'market:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order',
      description: 'Execute an action on a resource of type orders',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order_subscription',
      description: 'Execute an action on a resource of type order_subscriptions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order_subscription:activate',
      description: 'Send this attribute if you want to mark this subscription as active',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order_subscription:cancel',
      description: 'Send this attribute if you want to mark this subscription as cancelled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order_subscription:deactivate',
      description: 'Send this attribute if you want to mark this subscription as inactive',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:approve',
      description: 'Send this attribute if you want to approve a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:approve_and_capture',
      description: 'Send this attribute if you want to approve and capture a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:archive',
      description: 'Send this attribute if you want to archive the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:authorization_amount_cents',
      description: 'The authorization amount, in cents',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:authorize',
      description: 'Send this attribute if you want to authorize the order\'s payment source',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:billing_address_clone_id',
      description: 'The id of the address that you want to clone to create the order\'s billing addre',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:billing_address_same_as_shipping',
      description: 'Send this attribute if you want the billing address to be cloned from the order\'',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:cancel',
      description: 'Send this attribute if you want to cancel a placed order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:capture',
      description: 'Send this attribute if you want to capture an authorized order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:commit_invoice',
      description: 'Send this attribute if you want commit the sales tax invoice to the associated t',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:create_subscriptions',
      description: 'Send this attribute upon/after placing the order if you want to create order sub',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:customer_payment_source_id',
      description: 'The id of the customer payment source (i',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:nullify_payment_source',
      description: 'Send this attribute if you want to nullify the payment source for this order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:pending',
      description: 'Send this attribute if you want to move a draft or placing order to pending',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:place',
      description: 'Send this attribute if you want to place the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:refresh',
      description: 'Send this attribute if you want to manually refresh the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:refund',
      description: 'Send this attribute if you want to refund a captured order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:refund_invoice',
      description: 'Send this attribute if you want refund the sales tax invoice to the associated t',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:save_billing_address_to_customer_address_book',
      description: 'Send this attribute if you want the order\'s billing address to be saved in the c',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:save_payment_source_to_customer_wallet',
      description: 'Send this attribute if you want the order\'s payment source to be saved in the cu',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:save_shipping_address_to_customer_address_book',
      description: 'Send this attribute if you want the order\'s shipping address to be saved in the',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:shipping_address_clone_id',
      description: 'The id of the address that you want to clone to create the order\'s shipping addr',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        ),
        Option(
          name: ['-v', '--value'],
          description: 'The trigger attribute value',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:shipping_address_same_as_billing',
      description: 'Send this attribute if you want the shipping address to be cloned from the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:start_editing',
      description: 'Send this attribute if you want to edit the order after it is placed',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:stop_editing',
      description: 'Send this attribute to stop the editing for the order and return back to placed',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:unarchive',
      description: 'Send this attribute if you want to unarchive the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:update_taxes',
      description: 'Send this attribute if you want to force tax calculation for this order (a tax c',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'order:validate',
      description: 'Send this attribute if you want to trigger the external validation for the order',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'payment_method',
      description: 'Execute an action on a resource of type payment_methods',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'payment_method:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'payment_method:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'percentage_discount_promotion',
      description: 'Execute an action on a resource of type percentage_discount_promotions',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'percentage_discount_promotion:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'percentage_discount_promotion:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return',
      description: 'Execute an action on a resource of type returns',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return_line_item',
      description: 'Execute an action on a resource of type return_line_items',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return_line_item:restock',
      description: 'Send this attribute if you want to restock the line item',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:approve',
      description: 'Send this attribute if you want to mark this return as approved',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:archive',
      description: 'Send this attribute if you want to archive the return',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:cancel',
      description: 'Send this attribute if you want to mark this return as cancelled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:receive',
      description: 'Send this attribute if you want to mark this return as received',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:reject',
      description: 'Send this attribute if you want to mark this return as rejected',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:request',
      description: 'Send this attribute if you want to activate this return',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:restock',
      description: 'Send this attribute if you want to restock all of the return line items',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:ship',
      description: 'Send this attribute if you want to mark this return as shipped',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'return:unarchive',
      description: 'Send this attribute if you want to unarchive the return',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'satispay_payment',
      description: 'Execute an action on a resource of type satispay_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'satispay_payment:refresh',
      description: 'Send this attribute if you want to refresh all the pending transactions, can be',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment',
      description: 'Execute an action on a resource of type shipments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:decrement_stock',
      description: 'Send this attribute if you want to automatically decrement and release the stock',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:get_rates',
      description: 'Send this attribute if you want get the shipping rates from the associated carri',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:on_hold',
      description: 'Send this attribute if you want to put this shipment on hold',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:packing',
      description: 'Send this attribute if you want to start packing this shipment',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:picking',
      description: 'Send this attribute if you want to start picking this shipment',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:purchase',
      description: 'Send this attribute if you want to purchase this shipment with the selected rate',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:ready_to_ship',
      description: 'Send this attribute if you want to mark this shipment as ready to ship',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:release_stock',
      description: 'Send this attribute if you want to automatically destroy the stock reservations',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:reserve_stock',
      description: 'Send this attribute if you want to automatically reserve the stock for each of t',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:ship',
      description: 'Send this attribute if you want to mark this shipment as shipped',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipment:upcoming',
      description: 'Send this attribute if you want to mark this shipment as upcoming',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipping_method',
      description: 'Execute an action on a resource of type shipping_methods',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipping_method:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipping_method:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'shipping_method:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_item',
      description: 'Execute an action on a resource of type stock_items',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_item:validate',
      description: 'Send this attribute if you want to validate the stock item quantity against the',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_line_item',
      description: 'Execute an action on a resource of type stock_line_items',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_line_item:decrement_stock',
      description: 'Send this attribute if you want to automatically decrement and release the stock',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_line_item:release_stock',
      description: 'Send this attribute if you want to automatically destroy the stock reservation f',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_line_item:reserve_stock',
      description: 'Send this attribute if you want to automatically reserve the stock for this stoc',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_reservation',
      description: 'Execute an action on a resource of type stock_reservations',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_reservation:pending',
      description: 'Send this attribute if you want to mark this stock reservation as pending',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer',
      description: 'Execute an action on a resource of type stock_transfers',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:cancel',
      description: 'Send this attribute if you want to cancel this stock transfer',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:complete',
      description: 'Send this attribute if you want to complete this stock transfer',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:in_transit',
      description: 'Send this attribute if you want to mark this stock transfer as in transit',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:on_hold',
      description: 'Send this attribute if you want to put this stock transfer on hold',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:picking',
      description: 'Send this attribute if you want to start picking this stock transfer',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stock_transfer:upcoming',
      description: 'Send this attribute if you want to mark this stock transfer as upcoming',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stripe_payment',
      description: 'Execute an action on a resource of type stripe_payments',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stripe_payment:refresh',
      description: 'Send this attribute if you want to refresh the payment status, can be used as we',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'stripe_payment:update',
      description: 'Send this attribute if you want to update the created payment intent with fresh',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'webhook',
      description: 'Execute an action on a resource of type webhooks',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'webhook:disable',
      description: 'Send this attribute if you want to mark this resource as disabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'webhook:enable',
      description: 'Send this attribute if you want to mark this resource as enabled',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'webhook:reset_circuit',
      description: 'Send this attribute if you want to reset the circuit breaker associated to this',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--print'],
          description: 'Print out the modified resource'
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Print result in json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print json output without indentation'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'The unique id of the resource'
      )
      ]
    ),
    Subcommand(
      name: 'exports',
      description: 'List all the created exports or show details of a single export',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all exports instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource exported',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'authorizations'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'captures'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'payment_methods'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'refunds'),
              FigSuggestion(name: 'shipments'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'shipping_methods'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories'),
              FigSuggestion(name: 'transactions'),
              FigSuggestion(name: 'voids')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The export job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of exports in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the export to be retrieved',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['exports:all', 'exp:all', 'export'],
      description: 'Export all the records',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource being exported',
          args: [
            Arg(
            description: 'Addresses|authorizations|bundles|captures|etc',
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'authorizations'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'captures'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'payment_methods'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'refunds'),
              FigSuggestion(name: 'shipments'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'shipping_methods'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories'),
              FigSuggestion(name: 'transactions'),
              FigSuggestion(name: 'voids')
            ]
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--dry-data'],
          description: 'Skip redundant attributes'
        ),
        Option(
          name: ['-F', '--format'],
          description: 'Export file format',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'json')
            ],
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: ['-C', '--csv'],
          description: 'Export data in csv format'
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-N', '--notify'],
          description: 'Force system notification when export has finished'
        ),
        Option(
          name: ['-b', '--blind'],
          description: 'Execute in blind mode without showing the progress monitor'
        ),
        Option(
          name: ['-P', '--prettify'],
          description: 'Prettify json output format'
        ),
        Option(
          name: ['-O', '--open'],
          description: 'Open automatically the file after a successful export'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Execute command without showing warning messages'
        ),
        Option(
          name: ['-k', '--keep'],
          description: 'Keep original export files in temp dir'
        )
      ]
    ),
    Subcommand(
      name: ['exports:create', 'exp:create'],
      description: 'Create a new export',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource being exported',
          args: [
            Arg(
            description: 'Addresses|authorizations|bundles|captures|etc',
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'authorizations'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'captures'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'payment_methods'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'refunds'),
              FigSuggestion(name: 'shipments'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'shipping_methods'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories'),
              FigSuggestion(name: 'transactions'),
              FigSuggestion(name: 'voids')
            ]
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--dry-data'],
          description: 'Skip redundant attributes'
        ),
        Option(
          name: ['-F', '--format'],
          description: 'Export file format',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'json')
            ],
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: ['-C', '--csv'],
          description: 'Export data in csv format'
        ),
        Option(
          name: ['-x', '--save'],
          description: 'Save command output to file',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-X', '--save-path'],
          description: 'Save command output to file and create missing path directories',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-N', '--notify'],
          description: 'Force system notification when export has finished'
        ),
        Option(
          name: ['-b', '--blind'],
          description: 'Execute in blind mode without showing the progress monitor'
        ),
        Option(
          name: ['-P', '--prettify'],
          description: 'Prettify json output format'
        ),
        Option(
          name: ['-O', '--open'],
          description: 'Open automatically the file after a successful export'
        )
      ]
    ),
    Subcommand(
      name: ['exports:details', 'exp:details'],
      description: 'Show the details of an existing export',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the export'
      )
      ]
    ),
    Subcommand(
      name: ['exports:group', 'exp:group'],
      description: 'List all the exports related to an export group',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'group_id',
        description: 'Unique id of the group export'
      )
      ]
    ),
    Subcommand(
      name: ['exports:list', 'exp:list'],
      description: 'List all the created exports',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all exports instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource exported',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'addresses'),
              FigSuggestion(name: 'authorizations'),
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'captures'),
              FigSuggestion(name: 'coupons'),
              FigSuggestion(name: 'customer_addresses'),
              FigSuggestion(name: 'customer_subscriptions'),
              FigSuggestion(name: 'customers'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'line_items'),
              FigSuggestion(name: 'orders'),
              FigSuggestion(name: 'payment_methods'),
              FigSuggestion(name: 'price_tiers'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'refunds'),
              FigSuggestion(name: 'shipments'),
              FigSuggestion(name: 'shipping_categories'),
              FigSuggestion(name: 'shipping_methods'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_list_items'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items'),
              FigSuggestion(name: 'tags'),
              FigSuggestion(name: 'tax_categories'),
              FigSuggestion(name: 'transactions'),
              FigSuggestion(name: 'voids')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The export job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of exports in output',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['exports:types', 'exp:types'],
      description: 'Show online documentation for supported resources',
      options: [
        Option(
          name: ['-O', '--open'],
          description: 'Open online documentation page'
        )
      ]
    ),
    Subcommand(
      name: 'cleanups',
      description: 'List all the created cleanups or show details of a single cleanup',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all cleanups instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource cleaned',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'promotions'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The cleanup job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of cleanups in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the cleanup to be retrieved',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['cleanups:create', 'clp:create', 'cleanup'],
      description: 'Create a new cleanup',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource to clean up',
          args: [
            Arg(
            description: 'Bundles|gift_cards|prices|promotions|etc',
            suggestions: [
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'promotions'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items')
            ]
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-N', '--notify'],
          description: 'Force system notification when cleanup has finished'
        ),
        Option(
          name: ['-b', '--blind'],
          description: 'Execute in blind mode without showing the progress monitor'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Execute command without showing warning messages'
        )
      ]
    ),
    Subcommand(
      name: ['cleanups:details', 'clp:details'],
      description: 'Show the details of an existing cleanup',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-l', '--logs'],
          description: 'Show error logs related to the cleanup process'
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the cleanup'
      )
      ]
    ),
    Subcommand(
      name: ['cleanups:group', 'clp:group'],
      description: 'List all the cleanups related to a cleanup group',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'group_id',
        description: 'Unique id of the group cleanup'
      )
      ]
    ),
    Subcommand(
      name: ['cleanups:list', 'clp:list'],
      description: 'List all the created cleanups',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all cleanups instead of first 25 only'
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of resource cleaned',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'bundles'),
              FigSuggestion(name: 'gift_cards'),
              FigSuggestion(name: 'prices'),
              FigSuggestion(name: 'promotions'),
              FigSuggestion(name: 'sku_lists'),
              FigSuggestion(name: 'sku_options'),
              FigSuggestion(name: 'skus'),
              FigSuggestion(name: 'stock_items')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'The cleanup job status',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'in_progress'),
              FigSuggestion(name: 'pending'),
              FigSuggestion(name: 'completed'),
              FigSuggestion(name: 'interrupted')
            ]
          )
          ]
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of cleanups in output',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['cleanups:types', 'clp:types'],
      description: 'Show online documentation for supported resources',
      options: [
        Option(
          name: ['-O', '--open'],
          description: 'Open online documentation page'
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:create', 'prov:create', 'pc', 'pcreate'],
      description: 'Create a new resource',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-a', '--attribute'],
          description: 'Define a resource attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-O', '--object'],
          description: 'Define a resource object attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--relationship'],
          description: 'Define a relationship with another resource',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-m', '--metadata'],
          description: 'Define a metadata attribute or a set of metadata attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--data'],
          description: 'The data file to use as request body',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type',
        suggestions: [
          FigSuggestion(name: 'api_credential'),
          FigSuggestion(name: 'application_membership'),
          FigSuggestion(name: 'membership'),
          FigSuggestion(name: 'organization'),
          FigSuggestion(name: 'permission'),
          FigSuggestion(name: 'role'),
          FigSuggestion(name: 'subscription')
        ]
      )
      ]
    ),
    Subcommand(
      name: ['provisioning:delete', 'prov:delete', 'pd', 'pdelete', 'pdel'],
      description: 'Delete an existing resource',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'api_credential'),
            FigSuggestion(name: 'application_membership'),
            FigSuggestion(name: 'membership')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to delete',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:exec', 'prov:exec', 'pe', 'pexec'],
      description: 'Execute an action on a resource',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-a', '--attribute'],
          description: 'Define a resource attribute',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource on which to execute the action',
          isOptional: true
        ),
        Arg(
          name: 'action',
          description: 'Action to execute on resource',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:fetch', 'prov:fetch', 'pf'],
      description: 'Retrieve a resource or list a set of resources',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'path',
          description: 'Path (or url) of the resource(s) to fetch'
        ),
        Arg(
          name: 'id',
          description: 'Resource id',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:get', 'prov:get', 'pg', 'pget'],
      description: 'Retrieve a resource or list a set of resources',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:list', 'pl', 'prov:list', 'plist', 'pls'],
      description: 'Fetch a collection of resources',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
        name: 'resource',
        description: 'The resource type',
        suggestions: [
          FigSuggestion(name: 'api_credentials'),
          FigSuggestion(name: 'application_memberships'),
          FigSuggestion(name: 'memberships'),
          FigSuggestion(name: 'organizations'),
          FigSuggestion(name: 'permissions'),
          FigSuggestion(name: 'plans'),
          FigSuggestion(name: 'roles'),
          FigSuggestion(name: 'subscriptions'),
          FigSuggestion(name: 'versions')
        ]
      )
      ]
    ),
    Subcommand(
      name: ['provisioning:rel', 'prov:rel', 'prov:relationship'],
      description: 'Fetch a resource relationship',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-w', '--where'],
          description: 'Comma separated list of query filters',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-p', '--page'],
          description: 'Page number',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--pageSize'],
          description: 'Number of elements per page',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-s', '--sort'],
          description: 'Defines results ordering',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-I', '--force-include'],
          description: 'Force resources inclusion beyond the 3rd level'
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type'
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve'
        ),
        Arg(
          name: 'relationship',
          description: 'Name of the relationship field'
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:resources', 'prov:resources', 'pres'],
      description: 'List all the available provisioning api resources',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:retrieve', 'prov:retrieve', 'pr', 'pretrieve'],
      description: 'Fetch a single resource',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-e', '--extract'],
          description: 'Extract subfields from object attributes',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'api_credential'),
            FigSuggestion(name: 'application_membership'),
            FigSuggestion(name: 'billing_profile'),
            FigSuggestion(name: 'membership'),
            FigSuggestion(name: 'organization'),
            FigSuggestion(name: 'permission'),
            FigSuggestion(name: 'plan'),
            FigSuggestion(name: 'role'),
            FigSuggestion(name: 'subscription'),
            FigSuggestion(name: 'user'),
            FigSuggestion(name: 'version')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to retrieve',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: ['provisioning:update', 'prov:update', 'pu', 'pupdate', 'pupd'],
      description: 'Update an existing resource',
      options: [
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--include'],
          description: 'Comma separated resources to include',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-f', '--fields'],
          description: 'Comma separeted list of fields in the format [resourcetype/]field1,field2,field3',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-j', '--json'],
          description: 'Convert output in standard json format'
        ),
        Option(
          name: ['-u', '--unformatted'],
          description: 'Print unformatted json output'
        ),
        Option(
          name: ['-R', '--raw'],
          description: 'Print out the raw api response'
        ),
        Option(
          name: '--doc',
          description: 'Show the cli command in a specific language'
        ),
        Option(
          name: ['-l', '--lang'],
          description: 'Show the cli command in the specified language syntax',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'curl'),
              FigSuggestion(name: 'node')
            ]
          )
          ]
        ),
        Option(
          name: '--curl',
          description: 'Show the equivalent curl command of the cli command'
        ),
        Option(
          name: '--node',
          description: 'Show the equivalent node sdk source code of the cli command'
        ),
        Option(
          name: ['-H', '--headers'],
          description: 'Show response headers'
        ),
        Option(
          name: ['-Y', '--headers-only'],
          description: 'Show only response headers'
        ),
        Option(
          name: ['-a', '--attribute'],
          description: 'Define a resource attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-O', '--object'],
          description: 'Define a resource object attribute',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-r', '--relationship'],
          description: 'Define a relationship with another resource',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-m', '--metadata'],
          description: '',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-M', '--metadata-replace'],
          description: '',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-D', '--data'],
          description: 'The data file to use as request body',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
          name: 'resource',
          description: 'The resource type',
          suggestions: [
            FigSuggestion(name: 'api_credential'),
            FigSuggestion(name: 'application_membership'),
            FigSuggestion(name: 'membership'),
            FigSuggestion(name: 'organization'),
            FigSuggestion(name: 'permission'),
            FigSuggestion(name: 'role'),
            FigSuggestion(name: 'user')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Id of the resource to update',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'tags',
      description: 'List all the created tags or show details of a single tag',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all tags instead of first 25 only'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of tags in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id',
        description: 'Unique id of the tag to be retrieved',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['tags:add', 'tag'],
      description: 'Add one or more tags to a set of resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The tag name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of the resource to tag',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--id'],
          description: 'The ids of the resources to tag',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-C', '--create'],
          description: 'Create tags if don\'t exist',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Show details of the tag process'
        )
      ]
    ),
    Subcommand(
      name: 'tags:count',
      description: 'Count resources tagged with a specific tag',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of the tagged resources',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-z', '--zero'],
          description: 'Show also resources without tags'
        )
      ],
      args: [
        Arg(
        name: 'id_name',
        description: 'Unique id or name of the tag'
      )
      ]
    ),
    Subcommand(
      name: 'tags:create',
      description: 'Create one or more new tags',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The tag name',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tags:delete',
      description: 'Delete one or more existing tags',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The tag name',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tags:details',
      description: 'Show the details of an existing tag',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id_name',
        description: 'Unique id or name of the tag'
      )
      ]
    ),
    Subcommand(
      name: 'tags:list',
      description: 'List all the created tags',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all tags instead of first 25 only'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of tags in output',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tags:remove',
      description: 'Remove one or more tags to a set of resources',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The tag name',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of the resource to tag',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-i', '--id'],
          description: 'The ids of th eresources to tag',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Show details of the tag process'
        )
      ]
    ),
    Subcommand(
      name: 'tags:types',
      description: 'Show online documentation for supported resources',
      options: [
        Option(
          name: ['-O', '--open'],
          description: 'Open online documentation page'
        )
      ]
    ),
    Subcommand(
      name: 'tags:update',
      description: 'Update an existing tag',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The new tag name',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id_name',
        description: 'Unique id or name of the tag'
      )
      ]
    ),
    Subcommand(
      name: 'tags:which',
      description: 'Show all the resources with this tag',
      options: [
        Option(
          name: ['-o', '--organization'],
          description: 'The slug of your organization',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-d', '--domain'],
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: '--accessToken',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          description: 'The type of the tagged resources',
          args: [
            Arg(
          )
          ]
        ),
        Option(
          name: ['-A', '--all'],
          description: 'Show all resources instead of first 25 only'
        ),
        Option(
          name: ['-l', '--limit'],
          description: 'Limit number of resources in output',
          args: [
            Arg(
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'id_name',
        description: 'Unique id or name of the tag'
      )
      ]
    ),
    Subcommand(
      name: 'autocomplete',
      description: 'Display autocomplete installation instructions',
      options: [
        Option(
          name: ['-r', '--refresh-cache'],
          description: 'Refresh cache (ignores displaying instructions)'
        )
      ],
      args: [
        Arg(
        name: 'shell',
        description: 'Shell type',
        suggestions: [
          FigSuggestion(name: 'zsh'),
          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'powershell')
        ],
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for <%= config.bin %>',
      options: [
        Option(
          name: ['-n', '--nested-commands'],
          description: 'Include all nested commands in the output'
        )
      ],
      args: [
        Arg(
        name: 'command',
        description: 'Command to show help for',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'plugins',
      description: 'List installed plugins',
      options: [
        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: '--core',
          description: 'Show core plugins'
        )
      ]
    ),
    Subcommand(
      name: 'plugins:inspect',
      description: 'Displays installation properties of a plugin',
      options: [
        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to inspect',
        defaultValue: '.'
      )
      ]
    ),
    Subcommand(
      name: ['plugins:install', 'plugins:add'],
      description: 'Uses bundled npm executable to install plugins into <%= config',
      options: [
        Option(
          name: '--json',
          description: 'Format output as json'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Force npm to fetch remote resources even if a local copy exists on disk'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        ),
        Option(
          name: '--jit'
        ),
        Option(
          name: ['-s', '--silent'],
          description: 'Silences npm output'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Show verbose npm output'
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to install'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:link',
      description: 'Links a plugin into the cli for development',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        ),
        Option(
          name: '--install',
          description: 'Install dependencies after linking the plugin',
          exclusiveOn: ['--no-install']
        ),
        Option(
          name: '--no-install'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'path',
        description: 'Path to plugin',
        defaultValue: '.'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:reset',
      options: [
        Option(
          name: '--hard'
        ),
        Option(
          name: '--reinstall'
        )
      ]
    ),
    Subcommand(
      name: ['plugins:uninstall', 'plugins:unlink', 'plugins:remove'],
      description: 'Removes a plugin from the cli',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ],
      args: [
        Arg(
        name: 'plugin',
        description: 'Plugin to uninstall'
      )
      ]
    ),
    Subcommand(
      name: 'plugins:update',
      description: 'Update installed plugins',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Show cli help'
        ),
        Option(
          name: ['-v', '--verbose']
        )
      ]
    )
  ]
);
