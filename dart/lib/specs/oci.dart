// Auto-generated from TypeScript source: oci.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `oci` CLI
final FigSpec ociSpec = FigSpec(
  name: 'oci',
  description: 'Oracle Cloud Infrastructure CLI',
  subcommands: [

    Subcommand(
      name: 'compute',
      description: 'Manage Compute resources like instances and images',
      subcommands: [

        Subcommand(
          name: 'instance',
          description: 'Manage Compute instances',
          subcommands: [

            Subcommand(
              name: 'launch',
              description: 'Launch a new compute instance',
              options: [

                Option(
                  name: '--availability-domain',
                  description: 'The availability domain of the instance'
                ),
                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                ),
                Option(
                  name: '--shape',
                  description: 'The shape of the instance'
                )
              ]
            ),
            Subcommand(
              name: 'terminate',
              description: 'Terminate a compute instance',
              options: [

                Option(
                  name: '--instance-id',
                  description: 'The OCID of the instance'
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Start a stopped instance',
              options: [

                Option(
                  name: '--instance-id',
                  description: 'The OCID of the instance'
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stop a running instance',
              options: [

                Option(
                  name: '--instance-id',
                  description: 'The OCID of the instance'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'image',
          description: 'Manage Custom Images',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List available compute images',
              options: [

                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'network',
      description: 'Manage Virtual Cloud Network resources',
      subcommands: [

        Subcommand(
          name: 'vcn',
          description: 'Manage Virtual Cloud Networks',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new VCN',
              options: [

                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                ),
                Option(
                  name: '--cidr-block',
                  description: 'The CIDR block of the VCN'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Manage Database resources',
      subcommands: [

        Subcommand(
          name: 'autonomous-database',
          description: 'Manage Autonomous Databases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Autonomous Database',
              options: [

                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                ),
                Option(
                  name: '--db-name',
                  description: 'The database name'
                ),
                Option(
                  name: '--cpu-core-count',
                  description: 'Number of CPU cores'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'os',
      description: 'Object Storage commands',
      subcommands: [

        Subcommand(
          name: 'bucket',
          description: 'Manage buckets',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new bucket',
              options: [

                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the bucket'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'iam',
      description: 'Manage Identity and Access Management resources',
      subcommands: [

        Subcommand(
          name: 'user',
          description: 'Manage users',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new user',
              options: [

                Option(
                  name: '--name',
                  description: 'Name of the user'
                ),
                Option(
                  name: '--description',
                  description: 'Description for the user'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'policy',
          description: 'Manage IAM policies',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new policy',
              options: [

                Option(
                  name: '--name',
                  description: 'Name of the policy'
                ),
                Option(
                  name: '--statements',
                  description: 'Policy statements'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'group',
          description: 'Manage IAM groups',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new group',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the group'
                ),
                Option(
                  name: '--description',
                  description: 'Description for the group'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'compartment',
          description: 'Manage compartments',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new compartment',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the compartment'
                ),
                Option(
                  name: '--description',
                  description: 'Description for the compartment'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kms',
      description: 'Manage Key Management resources',
      subcommands: [

        Subcommand(
          name: 'key',
          description: 'Manage encryption keys',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new key',
              options: [

                Option(
                  name: '--compartment-id',
                  description: 'The OCID of the compartment'
                ),
                Option(
                  name: '--display-name',
                  description: 'Display name of the key'
                ),
                Option(
                  name: '--key-shape',
                  description: 'Shape of the key',
                  args: [
                    Arg(
                    suggestions: [

                      FigSuggestion(name: 'AES'),
                      FigSuggestion(name: 'RSA'),
                      FigSuggestion(name: 'ECDSA')
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
      name: 'monitoring',
      description: 'Manage Monitoring and Alerts',
      subcommands: [

        Subcommand(
          name: 'alarm',
          description: 'Manage monitoring alarms',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new alarm',
              options: [

                Option(
                  name: '--display-name',
                  description: 'Display name of the alarm'
                ),
                Option(
                  name: '--metric-compartment-id',
                  description: 'Compartment OCID containing the metric'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'budget',
      description: 'Manage Budgets and Cost Controls',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new budget',
          options: [

            Option(
              name: '--compartment-id',
              description: 'The OCID of the compartment'
            ),
            Option(
              name: '--amount',
              description: 'The amount for the budget'
            ),
            Option(
              name: '--reset-period',
              description: 'The reset period for the budget',
              args: [
                Arg(
                suggestions: [

                  FigSuggestion(name: 'MONTHLY'),
                  FigSuggestion(name: 'YEARLY')
                ]
              )
              ]
            )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for oci'
    ),
    Option(
      name: ['--profile', '-p'],
      description: 'The profile to load from the config file',
      args: [
        Arg(
        name: 'profile',
        defaultValue: 'DEFAULT'
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'The path to the config file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--region',
      description: 'The region to make calls against',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'us-ashburn-1'),
          FigSuggestion(name: 'us-phoenix-1'),
          FigSuggestion(name: 'us-chicago-1'),
          FigSuggestion(name: 'ca-montreal-1'),
          FigSuggestion(name: 'ca-toronto-1'),
          FigSuggestion(name: 'sa-saopaulo-1'),
          FigSuggestion(name: 'sa-vinhedo-1'),
          FigSuggestion(name: 'sa-santiago-1'),
          FigSuggestion(name: 'eu-frankfurt-1'),
          FigSuggestion(name: 'eu-amsterdam-1'),
          FigSuggestion(name: 'eu-zurich-1'),
          FigSuggestion(name: 'eu-madrid-1'),
          FigSuggestion(name: 'uk-london-1'),
          FigSuggestion(name: 'uk-cardiff-1'),
          FigSuggestion(name: 'ap-tokyo-1'),
          FigSuggestion(name: 'ap-osaka-1'),
          FigSuggestion(name: 'ap-seoul-1'),
          FigSuggestion(name: 'ap-sydney-1'),
          FigSuggestion(name: 'ap-melbourne-1'),
          FigSuggestion(name: 'ap-hyderabad-1'),
          FigSuggestion(name: 'ap-mumbai-1'),
          FigSuggestion(name: 'me-dubai-1')
        ]
      )
      ]
    ),
    Option(
      name: '--output',
      description: 'The output format',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'table'),
          FigSuggestion(name: 'text')
        ]
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Turn on debug logging'
    ),
    Option(
      name: '--auth',
      description: 'The type of auth to use',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'api_key'),
          FigSuggestion(name: 'instance_principal'),
          FigSuggestion(name: 'resource_principal'),
          FigSuggestion(name: 'security_token'),
          FigSuggestion(name: 'raw_token')
        ]
      )
      ]
    ),
    Option(
      name: '--key-file',
      description: 'The path to the private key file',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--wait-for-state',
      description: 'Wait until resource reaches a given state',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'ACCEPTED'),
          FigSuggestion(name: 'AVAILABLE'),
          FigSuggestion(name: 'RUNNING'),
          FigSuggestion(name: 'PROVISIONING'),
          FigSuggestion(name: 'STOPPED'),
          FigSuggestion(name: 'TERMINATED'),
          FigSuggestion(name: 'FAILED')
        ]
      )
      ]
    ),
    Option(
      name: '--wait-interval-seconds',
      description: 'Check interval seconds for --wait-for-state',
      args: [
        Arg(
        name: 'seconds',
        defaultValue: '30'
      )
      ]
    ),
    Option(
      name: '--max-wait-seconds',
      description: 'Maximum time to wait',
      args: [
        Arg(
        name: 'seconds',
        defaultValue: '1200'
      )
      ]
    ),
    Option(
      name: '--raw-output',
      description: 'Output raw response from OCI API'
    ),
    Option(
      name: '--output-format',
      description: 'The output format for commands',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'table'),
          FigSuggestion(name: 'text')
        ]
      )
      ]
    ),
    Option(
      name: '--query',
      description: 'JMESPath query to filter the output'
    )
  ]
);
