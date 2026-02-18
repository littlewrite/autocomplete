// Auto-generated from TypeScript source: grafana.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `grafana` CLI
final FigSpec grafanaSpec = FigSpec(
  name: 'grafana',
  description: 'Commands to manage Azure Grafana instanced.\n\n\t\tFor optimized experience, not all data plane Apis, documented at https://grafana.com/docs/grafana/latest/http_api/, are exposed. On coverage gap, please reach out to ad4g@microsoft.com',
  subcommands: [

    Subcommand(
      name: 'api-key',
      description: 'Commands to manage api keys',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new api key',
          options: [

            Option(
              name: '--key',
              description: 'Api key name',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
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
              name: ['--role', '-r'],
              description: 'Grafana role name',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'Admin'),
                  FigSuggestion(name: 'Editor'),
                  FigSuggestion(name: 'Viewer')
                ]
              )
              ]
            ),
            Option(
              name: '--time-to-live',
              description: 'The API key life duration. For example, 1d if your key is going to last fr one day. Supported units are: s,m,h,d,w,M,y',
              args: [
                Arg(
                name: 'time-to-liv'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an api key',
          options: [

            Option(
              name: '--key',
              description: 'Id or name that identify an api-key to delete',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
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
          description: 'List existing api keys',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
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
      name: 'backup',
      description: 'Backup an Azure Managed Grafana instance\'s content to an achive',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--components', '-c'],
          description: 'Grafana artifact types to backup',
          args: [
            Arg(
            name: 'components',
            suggestions: [

              FigSuggestion(name: 'annotations'),
              FigSuggestion(name: 'dashboards'),
              FigSuggestion(name: 'datasources'),
              FigSuggestion(name: 'folders'),
              FigSuggestion(name: 'snapshots')
            ]
          )
          ]
        ),
        Option(
          name: ['--directory', '-d'],
          description: 'Directory to backup Grafana artifacts',
          args: [
            Arg(
            name: 'director'
          )
          ]
        ),
        Option(
          name: ['--folders-to-exclude', '-e'],
          description: 'Folders to exclude in backup or sync',
          args: [
            Arg(
            name: 'folders-to-exclud'
          )
          ]
        ),
        Option(
          name: ['--folders-to-include', '-i'],
          description: 'Folders to include in backup or sync',
          args: [
            Arg(
            name: 'folders-to-includ'
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
      name: 'create',
      description: 'Create a Azure Managed Grafana instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--principal-ids',
          description: 'Space-separated Azure AD object ids for users, groups, etc to be made as Grafana Admins. Once provided, CLI won\'t make the current logon user as Grafana Admin',
          args: [
            Arg(
            name: 'principal-id'
          )
          ]
        ),
        Option(
          name: '--principal-types',
          description: 'Space-separated Azure AD principal types to pair with --principal-ids',
          args: [
            Arg(
            name: 'principal-types',
            suggestions: [

              FigSuggestion(name: 'Group'),
              FigSuggestion(name: 'ServicePrincipal'),
              FigSuggestion(name: 'User')
            ]
          )
          ]
        ),
        Option(
          name: '--skip-role-assignments',
          description: 'Do not create role assignments for managed identity and the current login user'
        ),
        Option(
          name: ['--skip-system-assigned-identity', '-s'],
          description: 'Do not enable system assigned identity'
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
          name: '--zone-redundancy',
          description: 'Indicates whether or not zone redundancy should be enabled. Default: Disabled',
          args: [
            Arg(
            name: 'zone-redundancy',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Azure Managed Grafana instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List Azure Managed Grafana instances',
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
      name: 'restore',
      description: 'Restore an Azure Managed Grafana instance from an achive',
      options: [

        Option(
          name: ['--archive-file', '-a'],
          description: 'Archive to restore Grafana artifacts from',
          args: [
            Arg(
            name: 'archive-fil'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--components', '-c'],
          description: 'Grafana artifact types to backup',
          args: [
            Arg(
            name: 'components',
            suggestions: [

              FigSuggestion(name: 'annotations'),
              FigSuggestion(name: 'dashboards'),
              FigSuggestion(name: 'datasources'),
              FigSuggestion(name: 'folders'),
              FigSuggestion(name: 'snapshots')
            ]
          )
          ]
        ),
        Option(
          name: ['--remap-data-sources', '-r'],
          description: 'During restoration, update dashboards to reference data sources defined at the destination workspace through name matching',
          args: [
            Arg(
            name: 'remap-data-sources',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
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
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show details of a Azure Managed Grafana instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
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
      description: 'Update a Azure Managed Grafana instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Azure Managed Grafana',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--service-account', '--api-key'],
          description: 'If enabled, you will be able to configur Grafana api keys and service accounts',
          args: [
            Arg(
            name: 'service-account',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: ['--deterministic-outbound-ip', '-i'],
          description: 'If enabled, the Grafana workspace will have fixed egress IPs you can use them in the firewall of datasources',
          args: [
            Arg(
            name: 'deterministic-outbound-ip',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--from-address',
          description: 'Address used when sending out emails',
          args: [
            Arg(
            name: 'from-addres'
          )
          ]
        ),
        Option(
          name: '--from-name',
          description: 'Name to be used when sending out emails',
          args: [
            Arg(
            name: 'from-nam'
          )
          ]
        ),
        Option(
          name: '--host',
          description: 'Smtp server url(port included)',
          args: [
            Arg(
            name: 'hos'
          )
          ]
        ),
        Option(
          name: '--password',
          description: 'Smtp server user password',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: ['--public-network-access', '-p'],
          description: 'Allow public network access',
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
          name: '--skip-verify',
          description: 'Skip verifying SSL for SMTP server',
          args: [
            Arg(
            name: 'skip-verify',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--smtp',
          description: 'Allow Grafana to send email',
          args: [
            Arg(
            name: 'smtp',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--start-tls-policy',
          description: 'TLS policy',
          args: [
            Arg(
            name: 'start-tls-policy',
            suggestions: [

              FigSuggestion(name: 'MandatoryStartTLS'),
              FigSuggestion(name: 'NoStartTLS'),
              FigSuggestion(name: 'OpportunisticStartTLS')
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
        ),
        Option(
          name: '--user',
          description: 'Smtp server user name',
          args: [
            Arg(
            name: 'use'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dashboard',
      description: 'Commands to manage dashboards of an instance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new dashboard',
          options: [

            Option(
              name: '--definition',
              description: 'The complete dashboard model in json string, a path or url to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite a dashboard with same uid',
              args: [
                Arg(
                name: 'overwrite',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
              name: '--title',
              description: 'Title of a dashboard',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a dashboard',
          options: [

            Option(
              name: '--dashboard',
              description: 'Dashboard uid',
              args: [
                Arg(
                name: 'dashboar'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'import',
          description: 'Import a dashboard',
          options: [

            Option(
              name: '--definition',
              description: 'The complete dashboard model in json string, Grafana gallery id, a path or url to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite a dashboard with same uid',
              args: [
                Arg(
                name: 'overwrite',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all dashboards of an instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Show the detail of a dashboard',
          options: [

            Option(
              name: '--dashboard',
              description: 'Dashboard uid',
              args: [
                Arg(
                name: 'dashboar'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'sync',
          description: 'Sync Azure Managed Grafana dashboards from one instance to another instance. Note, dashboards with "provisioned" state will be skipped due to being read-only',
          options: [

            Option(
              name: ['--destination', '-d'],
              description: 'Resource id of the destination workspace',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: ['--source', '-s'],
              description: 'Resource id of the source workspace',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--dashboards-to-exclude',
              description: 'Space separated titles of dashboards to exclude in sync. Pair with --folders-to-exclude for folders specific',
              args: [
                Arg(
                name: 'dashboards-to-exclud'
              )
              ]
            ),
            Option(
              name: '--dashboards-to-include',
              description: 'Space separated titles of dashboards to include in sync. Pair with --folders-to-include for folders specific',
              args: [
                Arg(
                name: 'dashboards-to-includ'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Preview changes w/o committing',
              args: [
                Arg(
                name: 'dry-run',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--folders-to-exclude', '-e'],
              description: 'Folders to exclude in backup or sync',
              args: [
                Arg(
                name: 'folders-to-exclud'
              )
              ]
            ),
            Option(
              name: ['--folders-to-include', '-i'],
              description: 'Folders to include in backup or sync',
              args: [
                Arg(
                name: 'folders-to-includ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a dashboard',
          options: [

            Option(
              name: '--definition',
              description: 'The complete dashboard model in json string, a path or url to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite a dashboard with same uid',
              args: [
                Arg(
                name: 'overwrite',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'data-source',
      description: 'Commands to manage data sources of an instance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a data source',
          options: [

            Option(
              name: '--definition',
              description: 'Json string with data source definition, or a path to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'delete',
          description: 'Delete a data source',
          options: [

            Option(
              name: '--data-source',
              description: 'Name, id, uid which can identify a data source. CLI will search in the order of name, id, and uid, till finds a match',
              args: [
                Arg(
                name: 'data-sourc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'List all data sources of an instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'query',
          description: 'Query a data source having backend implementation',
          options: [

            Option(
              name: '--data-source',
              description: 'Name, id, uid which can identify a data source. CLI will search in the order of name, id, and uid, till finds a match',
              args: [
                Arg(
                name: 'data-sourc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
              )
              ]
            ),
            Option(
              name: '--conditions',
              description: 'Space-separated condition in a format of <name>=<value>',
              args: [
                Arg(
                name: 'condition'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'Start time in iso 8601, e.g. \'2022-01-02T16:15:00\'. Default: 1 hour early',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: '--internal-ms',
              description: 'The time interval in milliseconds of time series. Default: 1000',
              args: [
                Arg(
                name: 'internal-m'
              )
              ]
            ),
            Option(
              name: '--max-data-points',
              description: 'Maximum amount of data points that dashboard panel can render. Default: 1000',
              args: [
                Arg(
                name: 'max-data-point'
              )
              ]
            ),
            Option(
              name: '--query-format',
              description: 'Format of the resule, e.g. table, time_series',
              args: [
                Arg(
                name: 'query-forma'
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
              name: '--to',
              description: 'End time in iso 8601, e.g. \'2022-01-02T17:15:00\'. Default: current time',
              args: [
                Arg(
                name: 't'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of a data source',
          options: [

            Option(
              name: '--data-source',
              description: 'Name, id, uid which can identify a data source. CLI will search in the order of name, id, and uid, till finds a match',
              args: [
                Arg(
                name: 'data-sourc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Update a data source',
          options: [

            Option(
              name: '--data-source',
              description: 'Name, id, uid which can identify a data source. CLI will search in the order of name, id, and uid, till finds a match',
              args: [
                Arg(
                name: 'data-sourc'
              )
              ]
            ),
            Option(
              name: '--definition',
              description: 'Json string with data source definition, or a path to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
      name: 'folder',
      description: 'Commands to manage folders of an instance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new folder',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title of the folder',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'delete',
          description: 'Delete a folder',
          options: [

            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'List all folders of an instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Show the details of a folder',
          options: [

            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Update a folder',
          options: [

            Option(
              name: '--folder',
              description: 'Id, uid, title which can identify a folder. CLI will search in the order of id, uid, and title, till finds a match',
              args: [
                Arg(
                name: 'folde'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title of the folder',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
      name: 'notification-channel',
      description: 'Commands to manage notification channels of an instance.\n\n\t\tAs part of legacy alerting, this command group will be deprecated in a future release',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a notification channel',
          options: [

            Option(
              name: '--definition',
              description: 'Json string with notification channel definition, or a path to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'delete',
          description: 'Delete a notification channel',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--notification-channel',
              description: 'Id, uid which can identify a data source. CLI will search in the order of id, and uid, till finds a match',
              args: [
                Arg(
                name: 'notification-channe'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'List all notification channels of an instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
              name: '--short',
              description: 'List notification channels in short format'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of a notification channel',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--notification-channel',
              description: 'Id, uid which can identify a data source. CLI will search in the order of id, and uid, till finds a match',
              args: [
                Arg(
                name: 'notification-channe'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          name: 'test',
          description: 'Tests a notification channels',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--notification-channel',
              description: 'Id, uid which can identify a data source. CLI will search in the order of id, and uid, till finds a match',
              args: [
                Arg(
                name: 'notification-channe'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Update a notification channel',
          options: [

            Option(
              name: '--definition',
              description: 'Json string with notification channel definition, or a path to a file with such content',
              args: [
                Arg(
                name: 'definitio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--notification-channel',
              description: 'Id, uid which can identify a data source. CLI will search in the order of id, and uid, till finds a match',
              args: [
                Arg(
                name: 'notification-channe'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
      name: 'service-account',
      description: 'Commands to manage service accounts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new service account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'Service account name',
              args: [
                Arg(
                name: 'service-accoun'
              )
              ]
            ),
            Option(
              name: '--is-disabled',
              description: 'Disable the service account. default: false',
              args: [
                Arg(
                name: 'is-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
              name: ['--role', '-r'],
              description: 'Grafana role name',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'Admin'),
                  FigSuggestion(name: 'Editor'),
                  FigSuggestion(name: 'Viewer')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a service account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'Id or name which can identify a service account',
              args: [
                Arg(
                name: 'service-accoun'
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
          description: 'List existing service accounts',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
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
          name: 'show',
          description: 'Show details of a service account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'Id or name which can identify a service account',
              args: [
                Arg(
                name: 'service-accoun'
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
          description: 'Update a service account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'Id or name which can identify a service account',
              args: [
                Arg(
                name: 'service-accoun'
              )
              ]
            ),
            Option(
              name: '--is-disabled',
              description: 'Disable the service account. default: false',
              args: [
                Arg(
                name: 'is-disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'New name of the service account',
              args: [
                Arg(
                name: 'new-nam'
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
              name: ['--role', '-r'],
              description: 'Grafana role name',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'Admin'),
                  FigSuggestion(name: 'Editor'),
                  FigSuggestion(name: 'Viewer')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'token',
          description: 'Commands to manage service account tokens',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new service account token',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure Managed Grafana',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--service-account',
                  description: 'Id or name which can identify a service account',
                  args: [
                    Arg(
                    name: 'service-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Name of the new service account token',
                  args: [
                    Arg(
                    name: 'toke'
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
                  name: '--time-to-live',
                  description: 'The life duration. For example, 1d if your key is going to last fr one day. Supported units are: s,m,h,d,w,M,y',
                  args: [
                    Arg(
                    name: 'time-to-liv'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a service account token',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure Managed Grafana',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--service-account',
                  description: 'Id or name which can identify a service account',
                  args: [
                    Arg(
                    name: 'service-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--token',
                  description: 'Id or name which can identify a service account token',
                  args: [
                    Arg(
                    name: 'toke'
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
              description: 'List existing service account tokens',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure Managed Grafana',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--service-account',
                  description: 'Id or name which can identify a service account',
                  args: [
                    Arg(
                    name: 'service-accoun'
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
        )
      ]
    ),
    Subcommand(
      name: 'user',
      description: 'Commands to manage users of an instance',
      subcommands: [

        Subcommand(
          name: 'actual-user',
          description: 'Show details of current user',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'List users',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
          description: 'Show detail of a user',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Managed Grafana',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--user',
              description: 'User login name or email',
              args: [
                Arg(
                name: 'use'
              )
              ]
            ),
            Option(
              name: ['--api-key', '--token', '-t'],
              description: 'Api key or service account token, a randomly generated string used to interact with Grafana endpoint; if missing, CLI will use logon user\'s credentials',
              args: [
                Arg(
                name: 'api-ke'
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
    )
  ]
);
