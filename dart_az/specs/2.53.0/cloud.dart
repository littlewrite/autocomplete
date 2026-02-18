// Auto-generated from TypeScript source: cloud.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cloud` CLI
final FigSpec cloudSpec = FigSpec(
  name: 'cloud',
  description: 'Manage registered Azure clouds',
  subcommands: [

    Subcommand(
      name: 'list',
      description: 'List registered clouds'
    ),
    Subcommand(
      name: 'list-profiles',
      description: 'List the supported profiles for a cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--show-all',
          description: 'Show all available profiles supported in the CLI'
        )
      ]
    ),
    Subcommand(
      name: 'register',
      description: 'Register a cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--cloud-config',
          description: 'JSON encoded cloud configuration. Use @{file} to load from a file',
          args: [
            Arg(
            name: 'cloud-confi'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory',
          description: 'The Active Directory login endpoint',
          args: [
            Arg(
            name: 'endpoint-active-director'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-data-lake-resource-id',
          description: 'The Active Directory resource ID for data lake services',
          args: [
            Arg(
            name: 'endpoint-active-directory-data-lake-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-graph-resource-id',
          description: 'The Active Directory resource ID',
          args: [
            Arg(
            name: 'endpoint-active-directory-graph-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-resource-id',
          description: 'The resource ID to obtain AD tokens for',
          args: [
            Arg(
            name: 'endpoint-active-directory-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-gallery',
          description: 'The template gallery endpoint',
          args: [
            Arg(
            name: 'endpoint-galler'
          )
          ]
        ),
        Option(
          name: '--endpoint-management',
          description: 'The management service endpoint',
          args: [
            Arg(
            name: 'endpoint-managemen'
          )
          ]
        ),
        Option(
          name: '--endpoint-resource-manager',
          description: 'The resource management endpoint',
          args: [
            Arg(
            name: 'endpoint-resource-manage'
          )
          ]
        ),
        Option(
          name: '--endpoint-sql-management',
          description: 'The sql server management endpoint',
          args: [
            Arg(
            name: 'endpoint-sql-managemen'
          )
          ]
        ),
        Option(
          name: '--endpoint-vm-image-alias-doc',
          description: 'The uri of the document which caches commonly used virtual machine images',
          args: [
            Arg(
            name: 'endpoint-vm-image-alias-do'
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Profile to use for this cloud',
          args: [
            Arg(
            name: 'profile',
            suggestions: [

              FigSuggestion(name: '2017-03-09-profile'),
              FigSuggestion(name: '2018-03-01-hybrid'),
              FigSuggestion(name: '2019-03-01-hybrid'),
              FigSuggestion(name: '2020-09-01-hybrid'),
              FigSuggestion(name: 'latest')
            ]
          )
          ]
        ),
        Option(
          name: '--suffix-acr-login-server-endpoint',
          description: 'The Azure Container Registry login server suffix',
          args: [
            Arg(
            name: 'suffix-acr-login-server-endpoin'
          )
          ]
        ),
        Option(
          name: '--suffix-azure-datalake-analytics-catalog-and-job-endpoint',
          description: 'The Data Lake analytics job and catalog service dns suffix',
          args: [
            Arg(
            name: 'suffix-azure-datalake-analytics-catalog-and-job-endpoint'
          )
          ]
        ),
        Option(
          name: '--suffix-azure-datalake-store-file-system-endpoint',
          description: 'The Data Lake store filesystem service dns suffix',
          args: [
            Arg(
            name: 'suffix-azure-datalake-store-file-system-endpoin'
          )
          ]
        ),
        Option(
          name: '--suffix-keyvault-dns',
          description: 'The Key Vault service dns suffix',
          args: [
            Arg(
            name: 'suffix-keyvault-dn'
          )
          ]
        ),
        Option(
          name: '--suffix-sql-server-hostname',
          description: 'The dns suffix for sql servers',
          args: [
            Arg(
            name: 'suffix-sql-server-hostnam'
          )
          ]
        ),
        Option(
          name: '--suffix-storage-endpoint',
          description: 'The endpoint suffix for storage accounts',
          args: [
            Arg(
            name: 'suffix-storage-endpoin'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'set',
      description: 'Set the active cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Profile to use for this cloud',
          args: [
            Arg(
            name: 'profile',
            suggestions: [

              FigSuggestion(name: '2017-03-09-profile'),
              FigSuggestion(name: '2018-03-01-hybrid'),
              FigSuggestion(name: '2019-03-01-hybrid'),
              FigSuggestion(name: '2020-09-01-hybrid'),
              FigSuggestion(name: 'latest')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a registered cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'unregister',
      description: 'Unregister a cloud',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the configuration of a cloud',
      options: [

        Option(
          name: '--cloud-config',
          description: 'JSON encoded cloud configuration. Use @{file} to load from a file',
          args: [
            Arg(
            name: 'cloud-confi'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory',
          description: 'The Active Directory login endpoint',
          args: [
            Arg(
            name: 'endpoint-active-director'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-data-lake-resource-id',
          description: 'The Active Directory resource ID for data lake services',
          args: [
            Arg(
            name: 'endpoint-active-directory-data-lake-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-graph-resource-id',
          description: 'The Active Directory resource ID',
          args: [
            Arg(
            name: 'endpoint-active-directory-graph-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-active-directory-resource-id',
          description: 'The resource ID to obtain AD tokens for',
          args: [
            Arg(
            name: 'endpoint-active-directory-resource-i'
          )
          ]
        ),
        Option(
          name: '--endpoint-gallery',
          description: 'The template gallery endpoint',
          args: [
            Arg(
            name: 'endpoint-galler'
          )
          ]
        ),
        Option(
          name: '--endpoint-management',
          description: 'The management service endpoint',
          args: [
            Arg(
            name: 'endpoint-managemen'
          )
          ]
        ),
        Option(
          name: '--endpoint-resource-manager',
          description: 'The resource management endpoint',
          args: [
            Arg(
            name: 'endpoint-resource-manage'
          )
          ]
        ),
        Option(
          name: '--endpoint-sql-management',
          description: 'The sql server management endpoint',
          args: [
            Arg(
            name: 'endpoint-sql-managemen'
          )
          ]
        ),
        Option(
          name: '--endpoint-vm-image-alias-doc',
          description: 'The uri of the document which caches commonly used virtual machine images',
          args: [
            Arg(
            name: 'endpoint-vm-image-alias-do'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of a registered cloud',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--profile',
          description: 'Profile to use for this cloud',
          args: [
            Arg(
            name: 'profile',
            suggestions: [

              FigSuggestion(name: '2017-03-09-profile'),
              FigSuggestion(name: '2018-03-01-hybrid'),
              FigSuggestion(name: '2019-03-01-hybrid'),
              FigSuggestion(name: '2020-09-01-hybrid'),
              FigSuggestion(name: 'latest')
            ]
          )
          ]
        ),
        Option(
          name: '--suffix-acr-login-server-endpoint',
          description: 'The Azure Container Registry login server suffix',
          args: [
            Arg(
            name: 'suffix-acr-login-server-endpoin'
          )
          ]
        ),
        Option(
          name: '--suffix-azure-datalake-analytics-catalog-and-job-endpoint',
          description: 'The Data Lake analytics job and catalog service dns suffix',
          args: [
            Arg(
            name: 'suffix-azure-datalake-analytics-catalog-and-job-endpoint'
          )
          ]
        ),
        Option(
          name: '--suffix-azure-datalake-store-file-system-endpoint',
          description: 'The Data Lake store filesystem service dns suffix',
          args: [
            Arg(
            name: 'suffix-azure-datalake-store-file-system-endpoin'
          )
          ]
        ),
        Option(
          name: '--suffix-keyvault-dns',
          description: 'The Key Vault service dns suffix',
          args: [
            Arg(
            name: 'suffix-keyvault-dn'
          )
          ]
        ),
        Option(
          name: '--suffix-sql-server-hostname',
          description: 'The dns suffix for sql servers',
          args: [
            Arg(
            name: 'suffix-sql-server-hostnam'
          )
          ]
        ),
        Option(
          name: '--suffix-storage-endpoint',
          description: 'The endpoint suffix for storage accounts',
          args: [
            Arg(
            name: 'suffix-storage-endpoin'
          )
          ]
        )
      ]
    )
  ]
);
