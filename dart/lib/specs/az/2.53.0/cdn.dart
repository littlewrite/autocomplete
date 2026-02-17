// Auto-generated from TypeScript source: cdn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cdn` CLI
final FigSpec cdnSpec = FigSpec(
  name: 'cdn',
  description: 'Manage Azure Content Delivery Networks (CDNs)',
  subcommands: [

    Subcommand(
      name: 'custom-domain',
      description: 'Manage Azure CDN Custom Domains to provide custom host names for endpoints',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new custom domain to provide a hostname for a CDN endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--hostname',
              description: 'The host name of the custom domain. Must be a domain name',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Resource name of the custom domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Delete the custom domain of a CDN',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Resource name of the custom domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'disable-https',
          description: 'Disable https delivery of the custom domain',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Resource name of the custom domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'enable-https',
          description: 'Enable HTTPS for a custom domain. The resource name of the custom domain could be obtained using "az cdn custom-domain list"',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the parent endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Resource name of the custom domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the parent profile',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--min-tls-version',
              description: 'The minimum TLS version required for the custom domain',
              args: [
                Arg(
                name: 'min-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.2'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            ),
            Option(
              name: '--user-cert-group-name',
              description: 'The resource group of the KeyVault certificate',
              args: [
                Arg(
                name: 'user-cert-group-nam'
              )
              ]
            ),
            Option(
              name: '--user-cert-protocol-type',
              description: 'The protocol type of the certificate',
              args: [
                Arg(
                name: 'user-cert-protocol-type',
                suggestions: [

                  FigSuggestion(name: 'ip'),
                  FigSuggestion(name: 'sni')
                ]
              )
              ]
            ),
            Option(
              name: '--user-cert-secret-name',
              description: 'The secret name of the KeyVault certificate',
              args: [
                Arg(
                name: 'user-cert-secret-nam'
              )
              ]
            ),
            Option(
              name: '--user-cert-secret-version',
              description: 'The secret version of the KeyVault certificate, If not specified, the "Latest" version will always been used and the deployed certificate will be automatically rotated to the latest version when a newer version of the certificate is available',
              args: [
                Arg(
                name: 'user-cert-secret-versio'
              )
              ]
            ),
            Option(
              name: '--user-cert-subscription-id',
              description: 'The subscription id of the KeyVault certificate',
              args: [
                Arg(
                name: 'user-cert-subscription-i'
              )
              ]
            ),
            Option(
              name: '--user-cert-vault-name',
              description: 'The vault name of the KeyVault certificate',
              args: [
                Arg(
                name: 'user-cert-vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all of the existing custom domains within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Show details for the custom domain of a CDN',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the endpoint under the profile which is unique globally',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Resource name of the custom domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'edge-node',
      description: 'View all available CDN edge nodes',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Edgenodes are the global Point of Presence (POP) locations used to deliver CDN content to end users'
        )
      ]
    ),
    Subcommand(
      name: 'endpoint',
      description: 'Manage CDN endpoints',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a named endpoint to connect to a CDN',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--origin',
              description: 'Endpoint origin specified by the following space-delimited 6 tuple: www.example.com http_port https_port private_link_resource_id private_link_location private_link_approval_message. The HTTP and HTTPS ports and the private link resource ID and location are optional. The HTTP and HTTPS ports default to 80 and 443, respectively. Private link fields are only valid for the sku Standard_Microsoft, and private_link_location is required if private_link_resource_id is set',
              args: [
                Arg(
                name: 'origi'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--content-types-to-compress',
              description: 'List of content types on which compression applies. The value should be a valid MIME type',
              args: [
                Arg(
                name: 'content-types-to-compres'
              )
              ]
            ),
            Option(
              name: '--enable-compression',
              description: 'If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB',
              args: [
                Arg(
                name: 'enable-compression',
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
              name: '--no-http',
              description: 'Indicates whether HTTP traffic is not allowed on the endpoint. Default is to allow HTTP traffic',
              args: [
                Arg(
                name: 'no-http',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-https',
              description: 'Indicates whether HTTPS traffic is not allowed on the endpoint. Default is to allow HTTPS traffic',
              args: [
                Arg(
                name: 'no-https',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--origin-path',
              description: 'A directory path on the origin that Azure CDN can use to retrieve content from',
              args: [
                Arg(
                name: 'origin-pat'
              )
              ]
            ),
            Option(
              name: '--query-string-caching',
              description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
              args: [
                Arg(
                name: 'query-string-caching',
                suggestions: [

                  FigSuggestion(name: 'BypassCaching'),
                  FigSuggestion(name: 'IgnoreQueryString'),
                  FigSuggestion(name: 'NotSet'),
                  FigSuggestion(name: 'UseQueryString')
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
          description: 'Delete a CDN endpoint',
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'List available endpoints for a CDN',
          options: [

            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'load',
          description: 'Pre-load content for a CDN endpoint',
          options: [

            Option(
              name: '--content-paths',
              description: 'Space-separated values. The path to the content to be loaded. Path should be a relative file URL of the origin',
              args: [
                Arg(
                name: 'content-path'
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'purge',
          description: 'Purge pre-loaded content for a CDN endpoint',
          options: [

            Option(
              name: '--content-paths',
              description: 'Space-separated values. The path to the content to be purged. Can describe a file path or a wildcard directory',
              args: [
                Arg(
                name: 'content-path'
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile',
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'start',
          description: 'Start a CDN endpoint',
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'stop',
          description: 'Stop a CDN endpoint',
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update a CDN endpoint to manage how content is delivered',
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
              name: '--content-types-to-compress',
              description: 'List of content types on which compression applies. The value should be a valid MIME type',
              args: [
                Arg(
                name: 'content-types-to-compres'
              )
              ]
            ),
            Option(
              name: '--default-origin-group',
              description: 'The origin group to use for origins not explicitly included in an origin group. Can be specified as a resource ID or the name of an origin group of this endpoint',
              args: [
                Arg(
                name: 'default-origin-grou'
              )
              ]
            ),
            Option(
              name: '--enable-compression',
              description: 'If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won\'t be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB',
              args: [
                Arg(
                name: 'enable-compression',
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-http',
              description: 'Indicates whether HTTP traffic is not allowed on the endpoint. Default is to allow HTTP traffic',
              args: [
                Arg(
                name: 'no-http',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-https',
              description: 'Indicates whether HTTPS traffic is not allowed on the endpoint. Default is to allow HTTPS traffic',
              args: [
                Arg(
                name: 'no-https',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--origin-path',
              description: 'A directory path on the origin that Azure CDN can use to retrieve content from',
              args: [
                Arg(
                name: 'origin-pat'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--query-string-caching',
              description: 'Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL',
              args: [
                Arg(
                name: 'query-string-caching',
                suggestions: [

                  FigSuggestion(name: 'BypassCaching'),
                  FigSuggestion(name: 'IgnoreQueryString'),
                  FigSuggestion(name: 'NotSet'),
                  FigSuggestion(name: 'UseQueryString')
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
          name: 'validate-custom-domain',
          description: 'Validates the custom domain mapping to ensure it maps to the correct CDN endpoint in DNS',
          options: [

            Option(
              name: '--host-name',
              description: 'The host name of the custom domain. Must be a domain name',
              args: [
                Arg(
                name: 'host-nam'
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
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          name: 'rule',
          description: 'Manage delivery rules for an endpoint',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a delivery rule to a CDN endpoint',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of the action for the delivery rule: https://docs.microsoft.com/en-us/azure/cdn/cdn-standard-rules-engine-actions',
                  args: [
                    Arg(
                    name: 'action-name',
                    suggestions: [

                      FigSuggestion(name: 'CacheExpiration'),
                      FigSuggestion(name: 'CacheKeyQueryString'),
                      FigSuggestion(name: 'ModifyRequestHeader'),
                      FigSuggestion(name: 'ModifyResponseHeader'),
                      FigSuggestion(name: 'OriginGroupOverride'),
                      FigSuggestion(name: 'UrlRedirect'),
                      FigSuggestion(name: 'UrlRewrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lower order will be applied before one with a higher order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied',
                  args: [
                    Arg(
                    name: 'orde'
                  )
                  ]
                ),
                Option(
                  name: '--cache-behavior',
                  description: 'Caching behavior for the requests',
                  args: [
                    Arg(
                    name: 'cache-behavior',
                    suggestions: [

                      FigSuggestion(name: 'BypassCache'),
                      FigSuggestion(name: 'Override'),
                      FigSuggestion(name: 'SetIfMissing')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cache-duration',
                  description: 'The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss',
                  args: [
                    Arg(
                    name: 'cache-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--custom-fragment',
                  description: 'Fragment to add to the redirect URL',
                  args: [
                    Arg(
                    name: 'custom-fragmen'
                  )
                  ]
                ),
                Option(
                  name: '--custom-hostname',
                  description: 'Host to redirect. Leave empty to use the incoming host as the destination host',
                  args: [
                    Arg(
                    name: 'custom-hostnam'
                  )
                  ]
                ),
                Option(
                  name: '--custom-path',
                  description: 'The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path',
                  args: [
                    Arg(
                    name: 'custom-pat'
                  )
                  ]
                ),
                Option(
                  name: '--custom-querystring',
                  description: 'The set of query strings to be placed in the redirect URL. leave empty to preserve the incoming query string',
                  args: [
                    Arg(
                    name: 'custom-querystrin'
                  )
                  ]
                ),
                Option(
                  name: '--destination',
                  description: 'The destination path to be used in the rewrite',
                  args: [
                    Arg(
                    name: 'destinatio'
                  )
                  ]
                ),
                Option(
                  name: '--header-action',
                  description: 'Header action for the requests',
                  args: [
                    Arg(
                    name: 'header-action',
                    suggestions: [

                      FigSuggestion(name: 'Append'),
                      FigSuggestion(name: 'Delete'),
                      FigSuggestion(name: 'Overwrite')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--header-name',
                  description: 'Name of the header to modify',
                  args: [
                    Arg(
                    name: 'header-nam'
                  )
                  ]
                ),
                Option(
                  name: '--header-value',
                  description: 'Value of the header',
                  args: [
                    Arg(
                    name: 'header-valu'
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
                  name: '--match-values',
                  description: 'Match values of the match condition. e.g, space separated values "GET" "HTTP"',
                  args: [
                    Arg(
                    name: 'match-value'
                  )
                  ]
                ),
                Option(
                  name: '--match-variable',
                  description: 'Name of the match condition: https://docs.microsoft.com/en-us/azure/cdn/cdn-standard-rules-engine-match-conditions',
                  args: [
                    Arg(
                    name: 'match-variable',
                    suggestions: [

                      FigSuggestion(name: 'ClientPort'),
                      FigSuggestion(name: 'Cookies'),
                      FigSuggestion(name: 'HostName'),
                      FigSuggestion(name: 'HttpVersion'),
                      FigSuggestion(name: 'IsDevice'),
                      FigSuggestion(name: 'PostArgs'),
                      FigSuggestion(name: 'QueryString'),
                      FigSuggestion(name: 'RemoteAddress'),
                      FigSuggestion(name: 'RequestBody'),
                      FigSuggestion(name: 'RequestHeader'),
                      FigSuggestion(name: 'RequestMethod'),
                      FigSuggestion(name: 'RequestScheme'),
                      FigSuggestion(name: 'RequestUri'),
                      FigSuggestion(name: 'ServerPort'),
                      FigSuggestion(name: 'SocketAddr'),
                      FigSuggestion(name: 'SslProtocol'),
                      FigSuggestion(name: 'UrlFileExtension'),
                      FigSuggestion(name: 'UrlFileName'),
                      FigSuggestion(name: 'UrlPath')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the CDN endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--negate-condition',
                  description: 'If true, negates the condition',
                  args: [
                    Arg(
                    name: 'negate-condition',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--operator',
                  description: 'Operator of the match condition',
                  args: [
                    Arg(
                    name: 'operato'
                  )
                  ]
                ),
                Option(
                  name: '--origin-group',
                  description: 'Name or ID of the OriginGroup that would override the default OriginGroup',
                  args: [
                    Arg(
                    name: 'origin-grou'
                  )
                  ]
                ),
                Option(
                  name: '--preserve-unmatched-path',
                  description: 'If True, the remaining path after the source pattern will be appended to the new destination path',
                  args: [
                    Arg(
                    name: 'preserve-unmatched-path',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
                  )
                  ]
                ),
                Option(
                  name: '--query-parameters',
                  description: 'Query parameters to include or exclude (comma separated)',
                  args: [
                    Arg(
                    name: 'query-parameter'
                  )
                  ]
                ),
                Option(
                  name: '--query-string-behavior',
                  description: 'Query string behavior for the requests',
                  args: [
                    Arg(
                    name: 'query-string-behavior',
                    suggestions: [

                      FigSuggestion(name: 'Exclude'),
                      FigSuggestion(name: 'ExcludeAll'),
                      FigSuggestion(name: 'Include'),
                      FigSuggestion(name: 'IncludeAll')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--redirect-protocol',
                  description: 'Protocol to use for the redirect',
                  args: [
                    Arg(
                    name: 'redirect-protocol',
                    suggestions: [

                      FigSuggestion(name: 'Http'),
                      FigSuggestion(name: 'Https'),
                      FigSuggestion(name: 'MatchRequest')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--redirect-type',
                  description: 'The redirect type the rule will use when redirecting traffic',
                  args: [
                    Arg(
                    name: 'redirect-type',
                    suggestions: [

                      FigSuggestion(name: 'Found'),
                      FigSuggestion(name: 'Moved'),
                      FigSuggestion(name: 'PermanentRedirect'),
                      FigSuggestion(name: 'TemporaryRedirect')
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
                  description: 'Name of the rule, only required for Microsoft SKU',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--selector',
                  description: 'Selector of the match condition',
                  args: [
                    Arg(
                    name: 'selecto'
                  )
                  ]
                ),
                Option(
                  name: '--source-pattern',
                  description: 'A request URI pattern that identifies the type of requests that may be rewritten',
                  args: [
                    Arg(
                    name: 'source-patter'
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
                  name: '--transform',
                  description: 'Transform to apply before matching',
                  args: [
                    Arg(
                    name: 'transform',
                    suggestions: [

                      FigSuggestion(name: 'Lowercase'),
                      FigSuggestion(name: 'Uppercase')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a delivery rule from an endpoint',
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
                  description: 'Name of the CDN endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lower order will be applied before one with a higher order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied',
                  args: [
                    Arg(
                    name: 'orde'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
                  description: 'Name of the rule',
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
              name: 'show',
              description: 'Show delivery rules associate with the endpoint',
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
                  description: 'Name of the CDN endpoint',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--profile-name',
                  description: 'Name of the CDN profile which is unique within the resource group',
                  args: [
                    Arg(
                    name: 'profile-nam'
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
              name: 'action',
              description: 'Manage delivery rule actions for an endpoint',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add an action to a delivery rule',
                  options: [

                    Option(
                      name: '--action-name',
                      description: 'The name of the action for the delivery rule: https://docs.microsoft.com/en-us/azure/cdn/cdn-standard-rules-engine-actions',
                      args: [
                        Arg(
                        name: 'action-name',
                        suggestions: [

                          FigSuggestion(name: 'CacheExpiration'),
                          FigSuggestion(name: 'CacheKeyQueryString'),
                          FigSuggestion(name: 'ModifyRequestHeader'),
                          FigSuggestion(name: 'ModifyResponseHeader'),
                          FigSuggestion(name: 'OriginGroupOverride'),
                          FigSuggestion(name: 'UrlRedirect'),
                          FigSuggestion(name: 'UrlRewrite')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-name',
                      description: 'Name of the rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--cache-behavior',
                      description: 'Caching behavior for the requests',
                      args: [
                        Arg(
                        name: 'cache-behavior',
                        suggestions: [

                          FigSuggestion(name: 'BypassCache'),
                          FigSuggestion(name: 'Override'),
                          FigSuggestion(name: 'SetIfMissing')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--cache-duration',
                      description: 'The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss',
                      args: [
                        Arg(
                        name: 'cache-duratio'
                      )
                      ]
                    ),
                    Option(
                      name: '--custom-fragment',
                      description: 'Fragment to add to the redirect URL',
                      args: [
                        Arg(
                        name: 'custom-fragmen'
                      )
                      ]
                    ),
                    Option(
                      name: '--custom-hostname',
                      description: 'Host to redirect. Leave empty to use the incoming host as the destination host',
                      args: [
                        Arg(
                        name: 'custom-hostnam'
                      )
                      ]
                    ),
                    Option(
                      name: '--custom-path',
                      description: 'The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path',
                      args: [
                        Arg(
                        name: 'custom-pat'
                      )
                      ]
                    ),
                    Option(
                      name: '--custom-querystring',
                      description: 'The set of query strings to be placed in the redirect URL. leave empty to preserve the incoming query string',
                      args: [
                        Arg(
                        name: 'custom-querystrin'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination',
                      description: 'The destination path to be used in the rewrite',
                      args: [
                        Arg(
                        name: 'destinatio'
                      )
                      ]
                    ),
                    Option(
                      name: '--header-action',
                      description: 'Header action for the requests',
                      args: [
                        Arg(
                        name: 'header-action',
                        suggestions: [

                          FigSuggestion(name: 'Append'),
                          FigSuggestion(name: 'Delete'),
                          FigSuggestion(name: 'Overwrite')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--header-name',
                      description: 'Name of the header to modify',
                      args: [
                        Arg(
                        name: 'header-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--header-value',
                      description: 'Value of the header',
                      args: [
                        Arg(
                        name: 'header-valu'
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
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--origin-group',
                      description: 'Name or ID of the OriginGroup that would override the default OriginGroup',
                      args: [
                        Arg(
                        name: 'origin-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--preserve-unmatched-path',
                      description: 'If True, the remaining path after the source pattern will be appended to the new destination path',
                      args: [
                        Arg(
                        name: 'preserve-unmatched-path',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-parameters',
                      description: 'Query parameters to include or exclude (comma separated)',
                      args: [
                        Arg(
                        name: 'query-parameter'
                      )
                      ]
                    ),
                    Option(
                      name: '--query-string-behavior',
                      description: 'Query string behavior for the requests',
                      args: [
                        Arg(
                        name: 'query-string-behavior',
                        suggestions: [

                          FigSuggestion(name: 'Exclude'),
                          FigSuggestion(name: 'ExcludeAll'),
                          FigSuggestion(name: 'Include'),
                          FigSuggestion(name: 'IncludeAll')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--redirect-protocol',
                      description: 'Protocol to use for the redirect',
                      args: [
                        Arg(
                        name: 'redirect-protocol',
                        suggestions: [

                          FigSuggestion(name: 'Http'),
                          FigSuggestion(name: 'Https'),
                          FigSuggestion(name: 'MatchRequest')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--redirect-type',
                      description: 'The redirect type the rule will use when redirecting traffic',
                      args: [
                        Arg(
                        name: 'redirect-type',
                        suggestions: [

                          FigSuggestion(name: 'Found'),
                          FigSuggestion(name: 'Moved'),
                          FigSuggestion(name: 'PermanentRedirect'),
                          FigSuggestion(name: 'TemporaryRedirect')
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
                      name: '--source-pattern',
                      description: 'A request URI pattern that identifies the type of requests that may be rewritten',
                      args: [
                        Arg(
                        name: 'source-patter'
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
                  description: 'Remove an action from a delivery rule',
                  options: [

                    Option(
                      name: '--index',
                      description: 'The index of the condition/action',
                      args: [
                        Arg(
                        name: 'inde'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-name',
                      description: 'Name of the rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
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
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
                  description: 'Show delivery rules asscociate with the endpoint',
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
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
              name: 'condition',
              description: 'Manage delivery rule conditions for an endpoint',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a condition to a delivery rule',
                  options: [

                    Option(
                      name: '--match-variable',
                      description: 'Name of the match condition: https://docs.microsoft.com/en-us/azure/cdn/cdn-standard-rules-engine-match-conditions',
                      args: [
                        Arg(
                        name: 'match-variable',
                        suggestions: [

                          FigSuggestion(name: 'ClientPort'),
                          FigSuggestion(name: 'Cookies'),
                          FigSuggestion(name: 'HostName'),
                          FigSuggestion(name: 'HttpVersion'),
                          FigSuggestion(name: 'IsDevice'),
                          FigSuggestion(name: 'PostArgs'),
                          FigSuggestion(name: 'QueryString'),
                          FigSuggestion(name: 'RemoteAddress'),
                          FigSuggestion(name: 'RequestBody'),
                          FigSuggestion(name: 'RequestHeader'),
                          FigSuggestion(name: 'RequestMethod'),
                          FigSuggestion(name: 'RequestScheme'),
                          FigSuggestion(name: 'RequestUri'),
                          FigSuggestion(name: 'ServerPort'),
                          FigSuggestion(name: 'SocketAddr'),
                          FigSuggestion(name: 'SslProtocol'),
                          FigSuggestion(name: 'UrlFileExtension'),
                          FigSuggestion(name: 'UrlFileName'),
                          FigSuggestion(name: 'UrlPath')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--operator',
                      description: 'Operator of the match condition',
                      args: [
                        Arg(
                        name: 'operato'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-name',
                      description: 'Name of the rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
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
                      name: '--match-values',
                      description: 'Match values of the match condition. e.g, space separated values "GET" "HTTP"',
                      args: [
                        Arg(
                        name: 'match-value'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--negate-condition',
                      description: 'If true, negates the condition',
                      args: [
                        Arg(
                        name: 'negate-condition',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
                      name: '--selector',
                      description: 'Selector of the match condition',
                      args: [
                        Arg(
                        name: 'selecto'
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
                      name: '--transform',
                      description: 'Transform to apply before matching',
                      args: [
                        Arg(
                        name: 'transform',
                        suggestions: [

                          FigSuggestion(name: 'Lowercase'),
                          FigSuggestion(name: 'Uppercase')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove a condition from a delivery rule',
                  options: [

                    Option(
                      name: '--index',
                      description: 'The index of the condition/action',
                      args: [
                        Arg(
                        name: 'inde'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-name',
                      description: 'Name of the rule',
                      args: [
                        Arg(
                        name: 'rule-nam'
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
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
                  description: 'Show delivery rules associate with the endpoint',
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
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
          name: 'waf',
          description: 'Manage WAF properties of a CDN endpoint',
          subcommands: [

            Subcommand(
              name: 'policy',
              description: 'Apply a CDN WAF policy to a CDN endpoint',
              subcommands: [

                Subcommand(
                  name: 'remove',
                  description: 'Remove a CDN WAF policy from a CDN endpoint',
                  options: [

                    Option(
                      name: '--endpoint-name',
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-nam'
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
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
                  name: 'set',
                  description: 'Set the CDN WAF policy applied to a CDN endpoint',
                  options: [

                    Option(
                      name: '--endpoint-name',
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-nam'
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
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
                      name: '--waf-policy-id',
                      description: 'The Resource ID of the CDN WAF policy to apply to this endpoint',
                      args: [
                        Arg(
                        name: 'waf-policy-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--waf-policy-name',
                      description: 'The name of the CDN WAF policy to apply to this endpoint. Ignored if --waf-policy-id is set',
                      args: [
                        Arg(
                        name: 'waf-policy-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--waf-policy-resource-group-name',
                      description: 'The resource group of the CDN WAF policy to apply to this endpoint. Ignored if --waf-policy-id is set',
                      args: [
                        Arg(
                        name: 'waf-policy-resource-group-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--waf-policy-subscription-id',
                      description: 'The Resource ID of the CDN WAF policy to apply to this endpoint. ignored if --waf-policy-id is set',
                      args: [
                        Arg(
                        name: 'waf-policy-subscription-i'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Show which CDN WAF policy is applied to a CDN endpoint',
                  options: [

                    Option(
                      name: '--endpoint-name',
                      description: 'Name of the CDN endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-nam'
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
                      name: '--profile-name',
                      description: 'Name of the CDN profile which is unique within the resource group',
                      args: [
                        Arg(
                        name: 'profile-nam'
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
      name: 'name-exists',
      description: 'Check the availability of a resource name. This is needed for resources where name is globally unique, such as a CDN endpoint',
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
          description: 'The resource name to validate',
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
      name: 'usage',
      description: 'Check the quota and actual usage of the CDN profiles under the given subscription'
    ),
    Subcommand(
      name: 'origin',
      description: 'List or show existing origins related to CDN endpoints',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an origin',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The host name where requests to the origin will be sent',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--disabled',
              description: 'Don\'t use the origin for load balancing'
            ),
            Option(
              name: '--http-port',
              description: 'The port used for http requests to the origin',
              args: [
                Arg(
                name: 'http-por'
              )
              ]
            ),
            Option(
              name: '--https-port',
              description: 'The port used for https requests to the origin',
              args: [
                Arg(
                name: 'https-por'
              )
              ]
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The load balancing priority. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between 1 and 5',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: ['--private-link-approval-message', '-m'],
              description: 'The message that is shown to the approver of the private link request',
              args: [
                Arg(
                name: 'private-link-approval-messag'
              )
              ]
            ),
            Option(
              name: ['--private-link-location', '-l'],
              description: 'The location of the private link that the origin will be connected to',
              args: [
                Arg(
                name: 'private-link-locatio'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-id', '-p'],
              description: 'The resource id of the private link that the origin will be connected to',
              args: [
                Arg(
                name: 'private-link-resource-i'
              )
              ]
            ),
            Option(
              name: '--weight',
              description: 'The weight of the origin in given origin group for load balancing. Must be between 1 and 1000',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing origin within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Lists all of the existing origins within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing origin within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update an origin',
          options: [

            Option(
              name: '--disabled',
              description: 'Don\'t use the origin for load balancing',
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
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The host name where requests to the origin will be sent',
              args: [
                Arg(
                name: 'host-nam'
              )
              ]
            ),
            Option(
              name: '--http-port',
              description: 'The port used for http requests to the origin',
              args: [
                Arg(
                name: 'http-por'
              )
              ]
            ),
            Option(
              name: '--https-port',
              description: 'The port used for https requests to the origin',
              args: [
                Arg(
                name: 'https-por'
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
              description: 'Name of the origin',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--origin-host-header',
              description: 'The Host header to send for requests to this origin',
              args: [
                Arg(
                name: 'origin-host-heade'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The load balancing priority. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between 1 and 5',
              args: [
                Arg(
                name: 'priorit'
              )
              ]
            ),
            Option(
              name: ['--private-link-approval-message', '-m'],
              description: 'The message that is shown to the approver of the private link request',
              args: [
                Arg(
                name: 'private-link-approval-messag'
              )
              ]
            ),
            Option(
              name: ['--private-link-location', '-l'],
              description: 'The location of the private link that the origin will be connected to',
              args: [
                Arg(
                name: 'private-link-locatio'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-id', '-p'],
              description: 'The resource id of the private link that the origin will be connected to',
              args: [
                Arg(
                name: 'private-link-resource-i'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--weight',
              description: 'The weight of the origin in given origin group for load balancing. Must be between 1 and 1000',
              args: [
                Arg(
                name: 'weigh'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'origin-group',
      description: 'Manage origin groups of an endpoint',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an origin group',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
              name: '--origins',
              description: 'The origins load balanced by this origin group, as a comma-separated list of origin names or origin resource IDs',
              args: [
                Arg(
                name: 'origin'
              )
              ]
            ),
            Option(
              name: '--probe-interval',
              description: 'The frequency to perform health probes in seconds',
              args: [
                Arg(
                name: 'probe-interva'
              )
              ]
            ),
            Option(
              name: '--probe-method',
              description: 'The request method to use for health probes',
              args: [
                Arg(
                name: 'probe-method',
                suggestions: [

                  FigSuggestion(name: 'GET'),
                  FigSuggestion(name: 'HEAD')
                ]
              )
              ]
            ),
            Option(
              name: '--probe-path',
              description: 'The path relative to the origin that is used to determine the health of the origin',
              args: [
                Arg(
                name: 'probe-pat'
              )
              ]
            ),
            Option(
              name: '--probe-protocol',
              description: 'The protocol to use for health probes',
              args: [
                Arg(
                name: 'probe-protocol',
                suggestions: [

                  FigSuggestion(name: 'HTTP'),
                  FigSuggestion(name: 'HTTPS')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing origin group within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Lists all of the existing origin groups within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Gets an existing origin group within an endpoint',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
          description: 'Update an origin group',
          options: [

            Option(
              name: '--endpoint-name',
              description: 'Name of the CDN endpoint',
              args: [
                Arg(
                name: 'endpoint-nam'
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
              description: 'Name of the origin group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--origins',
              description: 'The origins load balanced by this origin group, as a comma-separated list of origin names from the parent endpoint origin IDs',
              args: [
                Arg(
                name: 'origin'
              )
              ]
            ),
            Option(
              name: '--probe-interval',
              description: 'The frequency to perform health probes in seconds',
              args: [
                Arg(
                name: 'probe-interva'
              )
              ]
            ),
            Option(
              name: '--probe-method',
              description: 'The request method to use for health probes',
              args: [
                Arg(
                name: 'probe-method',
                suggestions: [

                  FigSuggestion(name: 'GET'),
                  FigSuggestion(name: 'HEAD')
                ]
              )
              ]
            ),
            Option(
              name: '--probe-path',
              description: 'The path relative to the origin that is used to determine the health of the origin',
              args: [
                Arg(
                name: 'probe-pat'
              )
              ]
            ),
            Option(
              name: '--probe-protocol',
              description: 'The protocol to use for health probes',
              args: [
                Arg(
                name: 'probe-protocol',
                suggestions: [

                  FigSuggestion(name: 'HTTP'),
                  FigSuggestion(name: 'HTTPS')
                ]
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'Name of the CDN profile which is unique within the resource group',
              args: [
                Arg(
                name: 'profile-nam'
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
      name: 'profile',
      description: 'Manage CDN profiles to define an edge network',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new CDN profile',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the CDN profile which is unique within the resource group',
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
              name: '--sku',
              description: 'The pricing tier (defines a CDN provider, feature list and rate) of the CDN profile. Defaults to Standard_Akamai',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Custom_Verizon'),
                  FigSuggestion(name: 'Premium_Verizon'),
                  FigSuggestion(name: 'StandardPlus_955BandWidth_ChinaCdn'),
                  FigSuggestion(name: 'StandardPlus_AvgBandWidth_ChinaCdn'),
                  FigSuggestion(name: 'StandardPlus_ChinaCdn'),
                  FigSuggestion(name: 'Standard_955BandWidth_ChinaCdn'),
                  FigSuggestion(name: 'Standard_Akamai'),
                  FigSuggestion(name: 'Standard_AvgBandWidth_ChinaCdn'),
                  FigSuggestion(name: 'Standard_ChinaCdn'),
                  FigSuggestion(name: 'Standard_Microsoft'),
                  FigSuggestion(name: 'Standard_Verizon')
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
          description: 'Delete a CDN profile',
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
              description: 'Name of the CDN profile which is unique within the resource group',
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
          description: 'List CDN profiles',
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
          description: 'Show CDN profile details',
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
              description: 'Name of the CDN profile which is unique within the resource group',
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
          description: 'Update a CDN profile',
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
              description: 'Name of the CDN profile which is unique within the resource group',
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
          name: 'usage',
          description: 'Checks the quota and actual usage of endpoints under the given Azure Front Door Standard or Azure Front Door Premium or CDN profile',
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
              description: 'Name of the CDN profile which is unique within the resource group',
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
      name: 'waf',
      description: 'Manage CDN WAF.\n\n\t\tWAF on Azure CDN from Microsoft is currently in public preview and is provided with a preview service level agreement. Certain features may not be supported or may have constrained capabilities. See the Supplemental Terms of Use for Microsoft Azure Previews (https://azure.microsoft.com/en-us/support/legal/preview-supplemental-terms/) for details',
      subcommands: [

        Subcommand(
          name: 'policy',
          description: 'Manage CDN WAF policies',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a CDN WAF policy',
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
                  description: 'The name of the CDN WAF policy',
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
              description: 'List CDN WAF policies',
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
              name: 'set',
              description: 'Create a new CDN WAF policy',
              options: [

                Option(
                  name: '--block-response-body',
                  description: 'The response body to send when a request is blocked, provided as a Base64 encoded string',
                  args: [
                    Arg(
                    name: 'block-response-bod'
                  )
                  ]
                ),
                Option(
                  name: '--block-response-status-code',
                  description: 'The response status code to send when a request is blocked',
                  args: [
                    Arg(
                    name: 'block-response-status-cod'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Disable the policy',
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--mode',
                  description: 'The operation mode of the policy. Valid options are \'Detection\' and \'Prevention\'',
                  args: [
                    Arg(
                    name: 'mod'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the CDN WAF policy',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--redirect-url',
                  description: 'The URL to use when redirecting a request',
                  args: [
                    Arg(
                    name: 'redirect-ur'
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
                  description: 'The pricing tier (defines a CDN provider, feature list and rate) of the CDN WAF policy',
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
              name: 'show',
              description: 'Show details of a CDN WAF policy',
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
                  description: 'The name of the CDN WAF policy',
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
              name: 'custom-rule',
              description: 'Manage custom rules of a CDN WAF policy',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Remove a custom rule from a CDN WAF policy',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the custom rule',
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'List custom rules of a CDN WAF policy',
                  options: [

                    Option(
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  name: 'set',
                  description: 'Add a custom rule to a CDN WAF policy',
                  options: [

                    Option(
                      name: '--action',
                      description: 'The action to take when the rule is matched',
                      args: [
                        Arg(
                        name: 'action',
                        suggestions: [

                          FigSuggestion(name: 'Allow'),
                          FigSuggestion(name: 'Block'),
                          FigSuggestion(name: 'Log'),
                          FigSuggestion(name: 'Redirect')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--match-condition', '-m'],
                      description: 'Conditions used to determine if the rule is matched for a request',
                      args: [
                        Arg(
                        name: 'match-conditio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the custom rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'The priority of the custom rule as a non-negative integer',
                      args: [
                        Arg(
                        name: 'priorit'
                      )
                      ]
                    ),
                    Option(
                      name: '--disabled',
                      description: 'Disable the custom rule',
                      args: [
                        Arg(
                        name: 'disable'
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'Show a custom rule of a CDN WAF policy',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the custom rule',
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
              name: 'managed-rule-set',
              description: 'Manage managed rule sets of a CDN WAF policy',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add a managed rule set to a CDN WAF policy',
                  options: [

                    Option(
                      name: '--rule-set-type',
                      description: 'The type of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-set-version',
                      description: 'The version of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-versio'
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'List managed rule sets added to a CDN WAF policy',
                  options: [

                    Option(
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  name: 'list-available',
                  description: 'List available CDN WAF managed rule sets'
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove a managed rule set from a CDN WAF policy',
                  options: [

                    Option(
                      name: '--rule-set-type',
                      description: 'The type of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-set-version',
                      description: 'The version of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-versio'
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'Show a managed rule of a CDN WAF policy',
                  options: [

                    Option(
                      name: '--rule-set-type',
                      description: 'The type of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-set-version',
                      description: 'The version of the managed rule set',
                      args: [
                        Arg(
                        name: 'rule-set-versio'
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  name: 'rule-group-override',
                  description: 'Manage rule group overrides of a managed rule on a CDN WAF policy',
                  subcommands: [

                    Subcommand(
                      name: 'delete',
                      description: 'Remove a rule group override from a managed rule set on a CDN WAF policy',
                      options: [

                        Option(
                          name: ['--name', '-n'],
                          description: 'The name of the rule group',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-type',
                          description: 'The type of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-version',
                          description: 'The version of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-versio'
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
                          name: '--policy-name',
                          description: 'Name of the CDN WAF policy',
                          args: [
                            Arg(
                            name: 'policy-nam'
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
                      description: 'List rule group overrides of a managed rule on a CDN WAF policy',
                      options: [

                        Option(
                          name: '--policy-name',
                          description: 'Name of the CDN WAF policy',
                          args: [
                            Arg(
                            name: 'policy-nam'
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
                          name: '--rule-set-type',
                          description: 'The type of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-version',
                          description: 'The version of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-versio'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'list-available',
                      description: 'List available CDN WAF managed rule groups of a managed rule set',
                      options: [

                        Option(
                          name: '--rule-set-type',
                          description: 'The type of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-version',
                          description: 'The version of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-versio'
                          )
                          ]
                        )
                      ]
                    ),
                    Subcommand(
                      name: 'set',
                      description: 'Add or update a rule group override to a managed rule set on a CDN WAF policy',
                      options: [

                        Option(
                          name: ['--name', '-n'],
                          description: 'The name of the rule group',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: ['--rule-override', '-r'],
                          description: 'Override a rule in the rule group',
                          args: [
                            Arg(
                            name: 'rule-overrid'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-type',
                          description: 'The type of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-version',
                          description: 'The version of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-versio'
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
                          name: '--policy-name',
                          description: 'Name of the CDN WAF policy',
                          args: [
                            Arg(
                            name: 'policy-nam'
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
                      description: 'Show a rule group override of a managed rule on a CDN WAF policy',
                      options: [

                        Option(
                          name: ['--name', '-n'],
                          description: 'The name of the rule group',
                          args: [
                            Arg(
                            name: 'nam'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-type',
                          description: 'The type of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-typ'
                          )
                          ]
                        ),
                        Option(
                          name: '--rule-set-version',
                          description: 'The version of the managed rule set',
                          args: [
                            Arg(
                            name: 'rule-set-versio'
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
                          name: '--policy-name',
                          description: 'Name of the CDN WAF policy',
                          args: [
                            Arg(
                            name: 'policy-nam'
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
              name: 'rate-limit-rule',
              description: 'Manage rate limit rules of a CDN WAF policy',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Remove a rate limit rule from a CDN WAF policy',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the rate limit rule',
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'List rate limit rules of a CDN WAF policy',
                  options: [

                    Option(
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  name: 'set',
                  description: 'Add a rate limit rule to a CDN WAF policy',
                  options: [

                    Option(
                      name: '--action',
                      description: 'The action to take when the rule is matched',
                      args: [
                        Arg(
                        name: 'action',
                        suggestions: [

                          FigSuggestion(name: 'Allow'),
                          FigSuggestion(name: 'Block'),
                          FigSuggestion(name: 'Log'),
                          FigSuggestion(name: 'Redirect')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--duration',
                      description: 'The duration of the rate limit in minutes. Valid values are 1 and 5',
                      args: [
                        Arg(
                        name: 'duratio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--match-condition', '-m'],
                      description: 'Conditions used to determine if the rule is matched for a request',
                      args: [
                        Arg(
                        name: 'match-conditio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the rate limit rule',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--priority',
                      description: 'The priority of the rate limit rule as a non-negative integer',
                      args: [
                        Arg(
                        name: 'priorit'
                      )
                      ]
                    ),
                    Option(
                      name: '--request-threshold',
                      description: 'The request threshold to trigger rate limiting',
                      args: [
                        Arg(
                        name: 'request-threshol'
                      )
                      ]
                    ),
                    Option(
                      name: '--disabled',
                      description: 'Disable the rate limit rule',
                      args: [
                        Arg(
                        name: 'disable'
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
                  description: 'Show a rate limit rule of a CDN WAF policy',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'The name of the rate limit rule',
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
                      name: '--policy-name',
                      description: 'Name of the CDN WAF policy',
                      args: [
                        Arg(
                        name: 'policy-nam'
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
    )
  ]
);
