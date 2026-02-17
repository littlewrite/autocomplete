// Auto-generated from TypeScript source: doctl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `doctl` CLI
final FigSpec doctlSpec = FigSpec(
  name: 'doctl',
  description: 'The official DigitalOcean command line interface (CLI)',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Configure your terminal\'s shell so that doctl commands autocomplete when you press the TAB key',
      args: [
        Arg(
        name: 'shell',
        suggestions: [

          FigSuggestion(name: 'bash'),
          FigSuggestion(name: 'zsh'),
          FigSuggestion(name: 'fish')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help about commands',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Subcommand(
      name: '1-click',
      description: 'The commands under `doctl 1-click` are for interacting with DigitalOcean 1-Click applications',
      subcommands: [

        Subcommand(
          name: 'list'
        )
      ]
    ),
    Subcommand(
      name: 'account',
      description: 'The subcommands of `doctl account` retrieve information about DigitalOcean accounts',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Retrieve account profile details'
        ),
        Subcommand(
          name: 'ratelimit',
          description: 'Retrieve your API usage and the remaining quota'
        )
      ]
    ),
    Subcommand(
      name: 'apps',
      description: 'Display commands for working with apps',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an app'
        ),
        Subcommand(
          name: 'create-deployment',
          description: 'Create a deployment'
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an app'
        ),
        Subcommand(
          name: 'get',
          description: 'Get an app'
        ),
        Subcommand(
          name: 'get-deployment',
          description: 'Get a deployment'
        ),
        Subcommand(
          name: 'list',
          description: 'List all apps'
        ),
        Subcommand(
          name: 'list-alerts',
          description: 'List alerts on an app'
        ),
        Subcommand(
          name: 'list-deployments',
          description: 'List all deployments'
        ),
        Subcommand(
          name: 'list-regions',
          description: 'List App Platform regions'
        ),
        Subcommand(
          name: 'logs',
          description: 'Get logs'
        ),
        Subcommand(
          name: 'propose',
          description: 'Propose an app spec'
        ),
        Subcommand(
          name: 'spec',
          description: 'Display commands for working with app specs'
        ),
        Subcommand(
          name: 'tier',
          description: 'Display commands for working with app tiers'
        ),
        Subcommand(
          name: 'update',
          description: 'Update an app'
        ),
        Subcommand(
          name: 'update-alert-destinations',
          description: 'Update alert destinations'
        )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Display commands for authenticating doctl with an account',
      subcommands: [

        Subcommand(
          name: 'init',
          description: 'Initialize doctl to use a specific account'
        ),
        Subcommand(
          name: 'list',
          description: 'List available authentication contexts'
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove authentication contexts'
        ),
        Subcommand(
          name: 'switch',
          description: 'Switches between authentication contexts'
        )
      ]
    ),
    Subcommand(
      name: 'balance',
      description: 'Display commands for retrieving your account balance',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Retrieve your account balance'
        )
      ]
    ),
    Subcommand(
      name: 'billing-history',
      description: 'Display commands for retrieving your billing history',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Retrieve a paginated billing history for a user'
        )
      ]
    ),
    Subcommand(
      name: 'compute',
      description: 'Display commands that manage infrastructure',
      subcommands: [

        Subcommand(
          name: 'action',
          description: 'Display commands for retrieving resource action history'
        ),
        Subcommand(
          name: 'cdn',
          description: 'Display commands that manage CDNs'
        ),
        Subcommand(
          name: 'certificate',
          description: 'Display commands that manage SSL certificates and private keys'
        ),
        Subcommand(
          name: 'domain',
          description: 'Display commands that manage domains'
        ),
        Subcommand(
          name: 'droplet',
          description: 'Manage virtual machines (Droplets)'
        ),
        Subcommand(
          name: 'droplet-action',
          description: 'Display Droplet action commands'
        ),
        Subcommand(
          name: 'firewall',
          description: 'Display commands to manage cloud firewalls'
        ),
        Subcommand(
          name: 'floating-ip',
          description: 'Display commands to manage floating IP addresses'
        ),
        Subcommand(
          name: 'floating-ip-action',
          description: 'Display commands to associate floating IP addresses with Droplets'
        ),
        Subcommand(
          name: 'image',
          description: 'Display commands to manage images'
        ),
        Subcommand(
          name: 'image-action',
          description: 'Display commands to perform actions on images'
        ),
        Subcommand(
          name: 'load-balancer',
          description: 'Display commands to manage load balancers'
        ),
        Subcommand(
          name: 'region',
          description: 'Display commands to list datacenter regions'
        ),
        Subcommand(
          name: 'size',
          description: 'List available Droplet sizes'
        ),
        Subcommand(
          name: 'snapshot',
          description: 'Access and manage snapshots'
        ),
        Subcommand(
          name: 'ssh',
          description: 'Access a Droplet using SSH'
        ),
        Subcommand(
          name: 'ssh-key',
          description: 'Display commands to manage SSH keys on your account'
        ),
        Subcommand(
          name: 'tag',
          description: 'Display commands to manage tags'
        ),
        Subcommand(
          name: 'volume',
          description: 'Display commands to manage block storage volumes'
        ),
        Subcommand(
          name: 'volume-action',
          description: 'Display commands to perform actions on a volume'
        )
      ]
    ),
    Subcommand(
      name: 'databases',
      description: 'Display commands that manage databases',
      subcommands: [

        Subcommand(
          name: 'backups',
          description: 'List database cluster backups'
        ),
        Subcommand(
          name: 'connection',
          description: 'Retrieve connection details for a database cluster'
        ),
        Subcommand(
          name: 'create',
          description: 'Create a database cluster'
        ),
        Subcommand(
          name: 'db',
          description: 'Display commands for managing individual databases within a cluster'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a database cluster'
        ),
        Subcommand(
          name: 'firewalls',
          description: 'Display commands to manage firewall rules (called `trusted sources` in the control panel) for database clusters'
        ),
        Subcommand(
          name: 'get',
          description: 'Get details for a database cluster'
        ),
        Subcommand(
          name: 'list',
          description: 'List your database clusters'
        ),
        Subcommand(
          name: 'maintenance-window',
          description: 'Display commands for scheduling automatic maintenance on your database cluster'
        ),
        Subcommand(
          name: 'migrate',
          description: 'Migrate a database cluster to a new region'
        ),
        Subcommand(
          name: 'pool',
          description: 'Display commands for managing connection pools'
        ),
        Subcommand(
          name: 'replica',
          description: 'Display commands to manage read-only database replicas'
        ),
        Subcommand(
          name: 'resize',
          description: 'Resize a database cluster'
        ),
        Subcommand(
          name: 'sql-mode',
          description: 'Display commands to configure a MySQL database cluster\'s SQL modes'
        ),
        Subcommand(
          name: 'user',
          description: 'Display commands for managing database users'
        )
      ]
    ),
    Subcommand(
      name: 'invoice',
      description: 'Display commands for retrieving invoices for your account',
      subcommands: [

        Subcommand(
          name: 'csv',
          description: 'Download a CSV file of an invoice'
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve a list of all the items on an invoice'
        ),
        Subcommand(
          name: 'list',
          description: 'List all of the invoices for your account'
        ),
        Subcommand(
          name: 'pdf',
          description: 'Download a PDF file of an invoice'
        ),
        Subcommand(
          name: 'summary',
          description: 'Get a summary of an invoice'
        )
      ]
    ),
    Subcommand(
      name: 'kubernetes',
      description: 'Displays commands to manage Kubernetes clusters and configurations',
      subcommands: [

        Subcommand(
          name: '1-click',
          description: 'Display commands that pertain to kubernetes 1-click applications'
        ),
        Subcommand(
          name: 'cluster',
          description: 'Display commands for managing Kubernetes clusters'
        ),
        Subcommand(
          name: 'options',
          description: 'List possible option values for use inside Kubernetes commands'
        )
      ]
    ),
    Subcommand(
      name: 'monitoring',
      description: '[Beta] Display commands to manage monitoring',
      subcommands: [

        Subcommand(
          name: 'alert',
          description: 'Display commands for managing alert policies'
        )
      ]
    ),
    Subcommand(
      name: 'projects',
      description: 'Manage projects and assign resources to them',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new project'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified project'
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve details for a specific project'
        ),
        Subcommand(
          name: 'list',
          description: 'List existing projects'
        ),
        Subcommand(
          name: 'resources',
          description: 'Manage resources assigned to a project'
        ),
        Subcommand(
          name: 'update',
          description: 'Update an existing project'
        )
      ]
    ),
    Subcommand(
      name: 'registry',
      description: 'Display commands for working with container registries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a private container registry'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a container registry'
        ),
        Subcommand(
          name: 'docker-config',
          description: 'Generate a docker auth configuration for a registry'
        ),
        Subcommand(
          name: 'garbage-collection',
          description: 'Display commands for garbage collection for a container registry'
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve details about a container registry'
        ),
        Subcommand(
          name: 'kubernetes-manifest',
          description: 'Generate a Kubernetes secret manifest for a registry'
        ),
        Subcommand(
          name: 'login',
          description: 'Log in Docker to a container registry'
        ),
        Subcommand(
          name: 'logout',
          description: 'Log out Docker from a container registry'
        ),
        Subcommand(
          name: 'options',
          description: 'List available container registry options'
        ),
        Subcommand(
          name: 'repository',
          description: 'Display commands for working with repositories in a container registry'
        )
      ]
    ),
    Subcommand(
      name: 'vpcs',
      description: 'Display commands that manage VPCs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new VPC'
        ),
        Subcommand(
          name: 'delete',
          description: 'Permanently delete a VPC'
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieve a VPC'
        ),
        Subcommand(
          name: 'list',
          description: 'List VPCs'
        ),
        Subcommand(
          name: 'update',
          description: 'Update a VPC\'s configuration'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Help for doctl'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Enable verbose output'
    ),
    Option(
      name: ['-o', '--output'],
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(name: 'text'),
          FigSuggestion(name: 'json')
        ],
        defaultValue: 'text'
      )
      ],
      description: 'Desired output format'
    ),
    Option(
      name: '--trace',
      description: 'Show a log of network activity while performing a command'
    ),
    Option(
      name: ['-c', '--config'],
      description: 'Specify a custom config file (default "\$HOME/config.yaml")'
    ),
    Option(
      name: ['-u', '--api-url'],
      description: 'Override default API endpoint'
    ),
    Option(
      name: ['-t', '--access-token'],
      description: 'API V2 access token'
    ),
    Option(
      name: 'version',
      description: 'Show the current version'
    )
  ]
);
