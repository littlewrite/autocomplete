// Auto-generated from TypeScript source: peering.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `peering` CLI
final FigSpec peeringSpec = FigSpec(
  name: 'peering',
  description: 'Manage peering',
  subcommands: [

    Subcommand(
      name: 'asn',
      description: 'Peering asn',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new peer ASN or updates an existing peer ASN with the specified name under the given subscription',
          options: [

            Option(
              name: '--peer-asn-name',
              description: 'The peer ASN name',
              args: [
                Arg(
                name: 'peer-asn-nam'
              )
              ]
            ),
            Option(
              name: '--peer-asn',
              description: 'The Autonomous System Number (ASN) of the peer',
              args: [
                Arg(
                name: 'peer-as'
              )
              ]
            ),
            Option(
              name: '--peer-contact-detail',
              description: 'The contact details of the peer. Expect value: KEY1=VALUE1 KEY2=VALUE2 ... , available KEYs are: role, email, phone',
              args: [
                Arg(
                name: 'peer-contact-detai'
              )
              ]
            ),
            Option(
              name: '--peer-name',
              description: 'The name of the peer',
              args: [
                Arg(
                name: 'peer-nam'
              )
              ]
            ),
            Option(
              name: '--validation-state',
              description: 'The validation state of the ASN associated with the peer',
              args: [
                Arg(
                name: 'validation-state',
                suggestions: [

                  FigSuggestion(name: 'Approved'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Pending')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing peer ASN with the specified name under the given subscription',
          options: [

            Option(
              name: '--peer-asn-name',
              description: 'The peer ASN name',
              args: [
                Arg(
                name: 'peer-asn-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all of the peer ASNs under the given subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the peer ASN with the specified name under the given subscription',
          options: [

            Option(
              name: '--peer-asn-name',
              description: 'The peer ASN name',
              args: [
                Arg(
                name: 'peer-asn-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'legacy',
      description: 'Peering legacy',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all of the legacy peerings under the given subscription matching the specified kind and location',
          options: [

            Option(
              name: '--kind',
              description: 'The kind of the peering',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Direct'),
                  FigSuggestion(name: 'Exchange')
                ]
              )
              ]
            ),
            Option(
              name: '--peering-location',
              description: 'The location of the peering',
              args: [
                Arg(
                name: 'peering-locatio'
              )
              ]
            ),
            Option(
              name: '--asn',
              description: 'The ASN number associated with a legacy peering',
              args: [
                Arg(
                name: 'as'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'location',
      description: 'Peering location',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all of the available peering locations for the specified kind of peering',
          options: [

            Option(
              name: '--kind',
              description: 'The kind of the peering',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Direct'),
                  FigSuggestion(name: 'Exchange')
                ]
              )
              ]
            ),
            Option(
              name: '--direct-peering-type',
              description: 'The type of direct peering',
              args: [
                Arg(
                name: 'direct-peering-type',
                suggestions: [

                  FigSuggestion(name: 'Cdn'),
                  FigSuggestion(name: 'Edge'),
                  FigSuggestion(name: 'Internal'),
                  FigSuggestion(name: 'Ix'),
                  FigSuggestion(name: 'IxRs'),
                  FigSuggestion(name: 'Transit')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'peering',
      description: 'Peering peering',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new peering or updates an existing peering with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--kind',
              description: 'The kind of the peering',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'Direct'),
                  FigSuggestion(name: 'Exchange')
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
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
              name: '--sku',
              description: 'The SKU that defines the tier and kind of the peering. Expect value: KEY1=VALUE1 KEY2=VALUE2 ... , available KEYs are: name, tier, family, size',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--direct',
              description: 'The properties that define a direct peering. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'direc'
              )
              ]
            ),
            Option(
              name: '--exchange',
              description: 'The properties that define an exchange peering. Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'exchang'
              )
              ]
            ),
            Option(
              name: '--peering-location',
              description: 'The location of the peering',
              args: [
                Arg(
                name: 'peering-locatio'
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
          description: 'Deletes an existing peering with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
          description: 'Lists all of the peerings under the given subscription',
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
          description: 'Gets an existing peering with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
          description: 'Updates tags for a peering with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
      name: 'received-route',
      description: 'Peering received-route',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists the prefixes received over the specified peering under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
              name: '--as-path',
              description: 'The optional AS path that can be used to filter the routes',
              args: [
                Arg(
                name: 'as-pat'
              )
              ]
            ),
            Option(
              name: '--origin-as-validation-state',
              description: 'The optional origin AS validation state that can be used to filter the routes',
              args: [
                Arg(
                name: 'origin-as-validation-stat'
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'The optional prefix that can be used to filter the routes',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            ),
            Option(
              name: '--rpki-validation-state',
              description: 'The optional RPKI validation state that can be used to filter the routes',
              args: [
                Arg(
                name: 'rpki-validation-stat'
              )
              ]
            ),
            Option(
              name: '--skip-token',
              description: 'The optional page continuation token that is used in the event of paginated result',
              args: [
                Arg(
                name: 'skip-toke'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'registered-asn',
      description: 'Peering registered-asn',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new registered ASN with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-asn-name',
              description: 'The name of the ASN',
              args: [
                Arg(
                name: 'registered-asn-nam'
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
              name: '--asn',
              description: 'The customer\'s ASN from which traffic originates',
              args: [
                Arg(
                name: 'as'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing registered ASN with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-asn-name',
              description: 'The name of the registered ASN',
              args: [
                Arg(
                name: 'registered-asn-nam'
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
          description: 'Lists all registered ASNs under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
          description: 'Gets an existing registered ASN with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-asn-name',
              description: 'The name of the registered ASN',
              args: [
                Arg(
                name: 'registered-asn-nam'
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
          description: 'Creates a new registered ASN with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-asn-name',
              description: 'The name of the ASN',
              args: [
                Arg(
                name: 'registered-asn-nam'
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
              name: '--asn',
              description: 'The customer\'s ASN from which traffic originates',
              args: [
                Arg(
                name: 'as'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'registered-prefix',
      description: 'Peering registered-prefix',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new registered prefix with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-prefix-name',
              description: 'The name of the registered prefix',
              args: [
                Arg(
                name: 'registered-prefix-nam'
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
              name: '--prefix',
              description: 'The customer\'s prefix from which traffic originates',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing registered prefix with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-prefix-name',
              description: 'The name of the registered prefix',
              args: [
                Arg(
                name: 'registered-prefix-nam'
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
          description: 'Lists all registered prefixes under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
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
          description: 'Gets an existing registered prefix with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-prefix-name',
              description: 'The name of the registered prefix',
              args: [
                Arg(
                name: 'registered-prefix-nam'
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
          description: 'Creates a new registered prefix with the specified name under the given subscription, resource group and peering',
          options: [

            Option(
              name: '--peering-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-nam'
              )
              ]
            ),
            Option(
              name: '--registered-prefix-name',
              description: 'The name of the registered prefix',
              args: [
                Arg(
                name: 'registered-prefix-nam'
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
              name: '--prefix',
              description: 'The customer\'s prefix from which traffic originates',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Peering service',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a new peering service or updates an existing peering with the specified name under the given subscription and resource group',
          options: [

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
              name: '--peering-service-name',
              description: 'The name of the peering service',
              args: [
                Arg(
                name: 'peering-service-nam'
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
              name: '--peering-service-location',
              description: 'The PeeringServiceLocation of the Customer',
              args: [
                Arg(
                name: 'peering-service-locatio'
              )
              ]
            ),
            Option(
              name: '--peering-service-provider',
              description: 'The MAPS Provider Name',
              args: [
                Arg(
                name: 'peering-service-provide'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The SKU that defines the type of the peering service. Expect value: name=xx',
              args: [
                Arg(
                name: 'sk'
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
          description: 'Deletes an existing peering service with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-service-name',
              description: 'The name of the peering service',
              args: [
                Arg(
                name: 'peering-service-nam'
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
          description: 'Lists all of the peerings under the given subscription',
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
          description: 'Gets an existing peering service with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-service-name',
              description: 'The name of the peering',
              args: [
                Arg(
                name: 'peering-service-nam'
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
          description: 'Updates tags for a peering service with the specified name under the given subscription and resource group',
          options: [

            Option(
              name: '--peering-service-name',
              description: 'The name of the peering service',
              args: [
                Arg(
                name: 'peering-service-nam'
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
          name: 'country',
          description: 'Peering service country',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all of the available countries for peering service'
            )
          ]
        ),
        Subcommand(
          name: 'location',
          description: 'Peering service location',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all of the available locations for peering service',
              options: [

                Option(
                  name: '--country',
                  description: 'The country of interest, in which the locations are to be present',
                  args: [
                    Arg(
                    name: 'countr'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'prefix',
          description: 'Peering service prefix',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new prefix with the specified name under the given subscription, resource group and peering service',
              options: [

                Option(
                  name: '--peering-service-name',
                  description: 'The name of the peering service',
                  args: [
                    Arg(
                    name: 'peering-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--prefix-name',
                  description: 'The name of the prefix',
                  args: [
                    Arg(
                    name: 'prefix-nam'
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
                  name: '--peering-service-prefix-key',
                  description: 'The peering service prefix key',
                  args: [
                    Arg(
                    name: 'peering-service-prefix-ke'
                  )
                  ]
                ),
                Option(
                  name: '--prefix',
                  description: 'The prefix from which your traffic originates',
                  args: [
                    Arg(
                    name: 'prefi'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an existing prefix with the specified name under the given subscription, resource group and peering service',
              options: [

                Option(
                  name: '--peering-service-name',
                  description: 'The name of the peering service',
                  args: [
                    Arg(
                    name: 'peering-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--prefix-name',
                  description: 'The name of the prefix',
                  args: [
                    Arg(
                    name: 'prefix-nam'
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
              description: 'Lists all prefixes under the given subscription, resource group and peering service',
              options: [

                Option(
                  name: '--peering-service-name',
                  description: 'The name of the peering service',
                  args: [
                    Arg(
                    name: 'peering-service-nam'
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
                  name: '--expand',
                  description: 'The properties to be expanded',
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
              description: 'Gets an existing prefix with the specified name under the given subscription, resource group and peering service',
              options: [

                Option(
                  name: '--peering-service-name',
                  description: 'The name of the peering service',
                  args: [
                    Arg(
                    name: 'peering-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--prefix-name',
                  description: 'The name of the prefix',
                  args: [
                    Arg(
                    name: 'prefix-nam'
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
                  name: '--expand',
                  description: 'The properties to be expanded',
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
              description: 'Creates a new prefix with the specified name under the given subscription, resource group and peering service',
              options: [

                Option(
                  name: '--peering-service-name',
                  description: 'The name of the peering service',
                  args: [
                    Arg(
                    name: 'peering-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--prefix-name',
                  description: 'The name of the prefix',
                  args: [
                    Arg(
                    name: 'prefix-nam'
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
                  name: '--peering-service-prefix-key',
                  description: 'The peering service prefix key',
                  args: [
                    Arg(
                    name: 'peering-service-prefix-ke'
                  )
                  ]
                ),
                Option(
                  name: '--prefix',
                  description: 'The prefix from which your traffic originates',
                  args: [
                    Arg(
                    name: 'prefi'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'provider',
          description: 'Peering service provider',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Lists all of the available peering service locations for the specified kind of peering'
            )
          ]
        )
      ]
    )
  ]
);
