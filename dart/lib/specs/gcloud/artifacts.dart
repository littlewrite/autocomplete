// Auto-generated from TypeScript source: artifacts.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `artifacts` CLI
final FigSpec artifactsSpec = FigSpec(
  name: 'artifacts',
  description: 'Manage Artifact Registry resources',
  subcommands: [
    Subcommand(
      name: 'docker',
      description: 'Manage Artifact Registry container images and tags',
      subcommands: [
        Subcommand(
          name: 'images',
          description: 'Manage Artifact Registry container images',
          subcommands: [
            Subcommand(
              name: 'delete',
              description: 'Delete an Artifact Registry container image',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--async',
                  description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--delete-tags',
                  description: 'If specified, all tags associated with the image are deleted'
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'IMAGE',
                description: 'A container image.\n+\nA valid container image has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE\n+\nA valid container image that can be referenced by tag or digest, has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE:tag\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE@sha256:digest'
              )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe an Artifact Registry container image',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--metadata-filter',
                  description: 'Additional filter to fetch metadata for a given qualified image reference',
                  args: [
                    Arg(
                    name: 'METADATA_FILTER',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--show-all-metadata',
                  description: 'Include all metadata in the output'
                ),
                Option(
                  name: '--show-build-details',
                  description: 'Include build metadata in the output'
                ),
                Option(
                  name: '--show-deployment',
                  description: 'Include deployment metadata in the output'
                ),
                Option(
                  name: '--show-image-basis',
                  description: 'Include base image metadata in the output'
                ),
                Option(
                  name: '--show-package-vulnerability',
                  description: 'Include vulnerability metadata in the output'
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'IMAGE',
                description: 'A container image.\n+\nA valid container image has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE\n+\nA valid container image that can be referenced by tag or digest, has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE:tag\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE@sha256:digest'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Artifact Registry container images',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'EXPRESSION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--include-tags',
                  description: 'If specified, all tags associated with each image digest are displayed'
                ),
                Option(
                  name: '--limit',
                  description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'LIMIT',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--occurrence-filter',
                  description: 'A filter for the Occurrences which will be summarized',
                  args: [
                    Arg(
                    name: 'OCCURRENCE_FILTER',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--page-size',
                  description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
                  args: [
                    Arg(
                    name: 'PAGE_SIZE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--show-occurrences',
                  description: 'Show summaries of the various Occurrence types'
                ),
                Option(
                  name: '--show-occurrences-from',
                  description: 'The number of the most recent images for which to summarize Occurrences',
                  args: [
                    Arg(
                    name: 'SHOW_OCCURRENCES_FROM',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--sort-by',
                  description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'FIELD',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'IMAGE_PATH',
                description: 'An Artifact Registry repository or a container image.\nIf not specified, default config values are used.\n+\nA valid docker repository has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID\n+\nA valid image has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE_PATH'
              )
              ]
            )
          ],
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tags',
          description: 'Manage Artifact Registry container image tags',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a tag to a container image in Artifact Registry',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                  name: 'DOCKER_IMAGE',
                  description: 'Docker image - The container image that you want to tag.\n+\nA valid container image can be referenced by tag or digest, has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE:tag\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE@sha256:digest'
                ),
                Arg(
                  name: 'DOCKER_TAG',
                  description: 'Image tag - The container image tag.\n+\nA valid Docker tag has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE:tag'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a tag from a container image in Artifact Registry',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'DOCKER_TAG',
                description: 'Image tag - The container image tag.\n+\nA valid Docker tag has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE:tag'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all tags associated with a container image in Artifact Registry',
              options: [
                Option(
                  name: '--account',
                  description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'ACCOUNT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--billing-project',
                  description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
                  args: [
                    Arg(
                    name: 'BILLING_PROJECT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--configuration',
                  description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
                  args: [
                    Arg(
                    name: 'CONFIGURATION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'EXPRESSION',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flags-file',
                  description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
                  args: [
                    Arg(
                    name: 'YAML_FILE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--flatten',
                  description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'KEY',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
                  args: [
                    Arg(
                    name: 'FORMAT',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--impersonate-service-account',
                  description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--limit',
                  description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'LIMIT',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--log-http',
                  description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
                ),
                Option(
                  name: '--page-size',
                  description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
                  args: [
                    Arg(
                    name: 'PAGE_SIZE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--project',
                  description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
                  args: [
                    Arg(
                    name: 'PROJECT_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--sort-by',
                  description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
                  args: [
                    Arg(
                    name: 'FIELD',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--trace-token',
                  description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
                  args: [
                    Arg(
                    name: 'TRACE_TOKEN',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--user-output-enabled',
                  description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
                ),
                Option(
                  name: '--verbosity',
                  description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
                  args: [
                    Arg(
                    name: 'VERBOSITY',
                    description: 'String',
                    suggestions: [
                      FigSuggestion(name: 'debug'),
                      FigSuggestion(name: 'info'),
                      FigSuggestion(name: 'warning'),
                      FigSuggestion(name: 'error'),
                      FigSuggestion(name: 'critical'),
                      FigSuggestion(name: 'none')
                    ]
                  )
                  ]
                )
              ],
              args: [
                Arg(
                name: 'IMAGE_PATH',
                description: 'An Artifact Registry repository or a container image.\nIf not specified, default config values are used.\n+\nA valid docker repository has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID\n+\nA valid image has the format of\n  LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY-ID/IMAGE_PATH'
              )
              ]
            )
          ],
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'locations',
      description: 'Manage Artifact Registry resource locations',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List all Artifact Registry supported locations',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'operations',
      description: 'Manage Artifact Registry long-running operations',
      subcommands: [
        Subcommand(
          name: 'describe',
          description: 'Describe an Artifact Registry operation',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the operation. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'OPERATION',
            description: 'ID of the operation or fully qualified identifier for the operation'
          )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'packages',
      description: 'Manage Artifact Registry packages',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete an Artifact Registry package',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the package. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the package. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'PACKAGE',
            description: 'ID of the package or fully qualified identifier for the package'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Artifact Registry packages',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'ID of the repository or fully qualified identifier for the repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'print-settings',
      description: 'Print snippets to add to native tools settings files',
      subcommands: [
        Subcommand(
          name: 'gradle',
          description: 'Print a snippet to add a repository to the Gradle build.gradle file',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--json-key',
              description: 'Path to service account JSON key. If not specified, current active service account credentials or a placeholder for gcloud credentials is used',
              args: [
                Arg(
                name: 'JSON_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'ID of the repository or fully qualified identifier for the repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mvn',
          description: 'Print a snippet to add a Maven repository to the pom.xml file',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--json-key',
              description: 'Path to service account JSON key. If not specified, current active service account credentials or a placeholder for gcloud credentials is used',
              args: [
                Arg(
                name: 'JSON_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'ID of the repository or fully qualified identifier for the repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'npm',
          description: 'Print credential settings to add to the .npmrc file',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--json-key',
              description: 'Path to service account JSON key. If not specified, current active service account credentials or a placeholder for gcloud credentials is used',
              args: [
                Arg(
                name: 'JSON_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'ID of the repository or fully qualified identifier for the repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--scope',
              description: 'The scope to associate with the Artifact Registry registry. If not specified, Artifact Registry is set as the default registry',
              args: [
                Arg(
                name: 'SCOPE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'repositories',
      description: 'Manage Artifact Registry repositories',
      subcommands: [
        Subcommand(
          name: 'add-iam-policy-binding',
          description: 'Add an IAM policy binding to the IAM policy of an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--condition',
              description: '+\nThe condition of the binding to be added. When the condition is explicitly\nspecified as `None` (`--condition=None`), a binding without a condition is\nadded. When the condition is specified and is not `None`, `--role`\ncannot be a primitive role. Primitive roles are `roles/editor`, `roles/owner`,\nand `roles/viewer`.\n+\n*expression*::: (Required) Expression of the condition which\nevaluates to True or False. This uses a subset of Common Expression\nLanguage syntax.\n+\n*title*::: (Required) A short string describing the purpose of the expression.\n+\n*description*::: (Optional) Additional description for the expression.\n+\nNOTE: An unsatisfied condition will not allow access via this\nbinding',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--condition-from-file',
              description: 'Path to a local JSON or YAML file that defines the condition.\nTo see available fields, see the help for `--condition`',
              args: [
                Arg(
                name: 'CONDITION_FROM_FILE',
                description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--member',
              description: 'The member to add the binding for. Should be of the form `user|group|serviceAccount:email` or\n`domain:domain`.\n+\nExamples: `user:test-user@gmail.com`, `group:admins@example.com`,\n`serviceAccount:test123@example.domain.com`, or\n`domain:example.domain.com`.\n+\nCan also be one of the following special values:\n* `allUsers` - Special identifier that represents anyone who is on the internet,\n   with or without a Google account.\n* `allAuthenticatedUsers` - Special identifier that represents anyone who is\n   authenticated with a Google account or a service account',
              args: [
                Arg(
                name: 'MEMBER',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--role',
              description: 'Define the role of the member',
              args: [
                Arg(
                name: 'ROLE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description for the repository',
              args: [
                Arg(
                name: 'DESCRIPTION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--kms-key',
              description: 'Name of the encryption key that\'s used for encrypting the contents of the repository',
              args: [
                Arg(
                name: 'KMS_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'List of label KEY=VALUE pairs to add.\n+\nKeys must start with a lowercase character and contain only hyphens (`-`), underscores (```_```), lowercase characters, and numbers. Values must contain only hyphens (`-`), underscores (```_```), lowercase characters, and numbers',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository-format',
              description: 'Format of the repository. _REPOSITORY_FORMAT_ must be one of:\n+\n*apt*::: APT package format.\n*docker*::: Docker image format.\n*maven*::: Maven package format.\n*npm*::: NPM package format.\n:::\n+',
              args: [
                Arg(
                name: 'REPOSITORY_FORMAT',
                description: 'Googlecloudsdk.command_lib.util.apis.arg_utils:EnumNameToChoice',
                suggestions: [
                  FigSuggestion(name: 'apt'),
                  FigSuggestion(name: 'docker'),
                  FigSuggestion(name: 'maven'),
                  FigSuggestion(name: 'npm')
                ]
              )
              ],
              priority: 100
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'get-iam-policy',
          description: 'Get IAM policy for an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List repositories in the specified project',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'ID of the location or fully qualified identifier for the location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove-iam-policy-binding',
          description: 'Remove an IAM policy binding from the IAM policy of an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'Remove all bindings with this role and member, irrespective of any\nconditions'
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--condition',
              description: '+\nThe condition of the binding to be removed. When the condition is explicitly\nspecified as `None` (`--condition=None`), it matches a binding without a\ncondition. Otherwise, only the binding with a condition which exactly matches\nthe specified condition (including the optional description) will be removed.\n+\n*expression*::: (Required) Expression of the condition which\nevaluates to True or False. This uses a subset of Common Expression\nLanguage syntax.\n+\n*title*::: (Required) A short string describing the purpose of the expression.\n+\n*description*::: (Optional) Additional description for the expression.\n+\nNOTE: An unsatisfied condition will not allow access via this\nbinding',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--condition-from-file',
              description: 'Path to a local JSON or YAML file that defines the condition.\nTo see available fields, see the help for `--condition`',
              args: [
                Arg(
                name: 'CONDITION_FROM_FILE',
                description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--member',
              description: 'The member to remove the binding for. Should be of the form `user|group|serviceAccount:email` or\n`domain:domain`.\n+\nExamples: `user:test-user@gmail.com`, `group:admins@example.com`,\n`serviceAccount:test123@example.domain.com`, or\n`domain:example.domain.com`.\n+\nCan also be one of the following special values:\n* `allUsers` - Special identifier that represents anyone who is on the internet,\n   with or without a Google account.\n* `allAuthenticatedUsers` - Special identifier that represents anyone who is\n   authenticated with a Google account or a service account',
              args: [
                Arg(
                name: 'MEMBER',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--role',
              description: 'The role to remove the member from',
              args: [
                Arg(
                name: 'ROLE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        ),
        Subcommand(
          name: 'set-iam-policy',
          description: 'Set the IAM policy for an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
              name: 'REPOSITORY',
              description: 'ID of the repository or fully qualified identifier for the repository'
            ),
            Arg(
              name: 'POLICY_FILE',
              description: 'Path to a local JSON or YAML formatted file containing a valid policy.\n+\nThe output of the `get-iam-policy` command is a valid file, as is any\nJSON or YAML file conforming to the structure of a\n[Policy](https://cloud.google.com/iam/reference/rest/v1/Policy)'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an Artifact Registry repository',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--clear-labels',
              description: 'Remove all labels. If `--update-labels` is also specified then\n`--clear-labels` is applied first.\n+\nFor example, to remove all labels:\n+\n    \$ {command} --clear-labels\n+\nTo set the labels to exactly "foo" and "baz":\n+\n    \$ {command} --clear-labels --update-labels foo=bar,baz=qux'
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description for the repository',
              args: [
                Arg(
                name: 'DESCRIPTION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the repository. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--remove-labels',
              description: 'List of label keys to remove. If a label does not exist it is\nsilently ignored. If `--update-labels` is also specified then\n`--remove-labels` is applied first',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--update-labels',
              description: 'List of label KEY=VALUE pairs to update. If a label exists its value is modified, otherwise a new label is created.\n+\nKeys must start with a lowercase character and contain only hyphens (`-`), underscores (```_```), lowercase characters, and numbers. Values must contain only hyphens (`-`), underscores (```_```), lowercase characters, and numbers',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'REPOSITORY',
            description: 'ID of the repository or fully qualified identifier for the repository'
          )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tags',
      description: 'Manage Artifact Registry tags',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create an Artifact Registry tag',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the tag. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'The package associated with the tag',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the tag. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'TAG',
            description: 'ID of the tag or fully qualified identifier for the tag'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Artifact Registry tag',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the tag. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'The package associated with the tag',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the tag. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'TAG',
            description: 'ID of the tag or fully qualified identifier for the tag'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Artifact Registry tags',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the package. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'ID of the package or fully qualified identifier for the package',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the package. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an Artifact Registry tag',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the tag. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'The package associated with the tag',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the tag. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'TAG',
            description: 'ID of the tag or fully qualified identifier for the tag'
          )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'versions',
      description: 'Manage Artifact Registry package versions',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete an Artifact Registry package version',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--delete-tags',
              description: 'If specified, all tags associated with the version are deleted'
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the version. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'The package associated with the version',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the version. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'VERSION',
            description: 'ID of the version or fully qualified identifier for the version'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Artifact Registry package versions',
          options: [
            Option(
              name: '--account',
              description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
              args: [
                Arg(
                name: 'ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--billing-project',
              description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
              args: [
                Arg(
                name: 'BILLING_PROJECT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--configuration',
              description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
              args: [
                Arg(
                name: 'CONFIGURATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'Apply a Boolean filter _EXPRESSION_ to each resource item to be listed.\nIf the expression evaluates `True`, then that item is listed. For more\ndetails and examples of filter expressions, run \$ gcloud topic filters. This\nflag interacts with other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'EXPRESSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flags-file',
              description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
              args: [
                Arg(
                name: 'YAML_FILE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--flatten',
              description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
              args: [
                Arg(
                name: 'FORMAT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--help',
              description: 'Display detailed help'
            ),
            Option(
              name: '--impersonate-service-account',
              description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT_EMAIL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of resources to list. The default is *unlimited*.\nThis flag interacts with other flags that are applied in this order:\n*--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'LIMIT',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'Location of the package. Overrides the default artifacts/location property value\nfor this command invocation. To configure the default location, use the command:\ngcloud config set artifacts/location',
              args: [
                Arg(
                name: 'LOCATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--package',
              description: 'ID of the package or fully qualified identifier for the package',
              args: [
                Arg(
                name: 'PACKAGE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--page-size',
              description: 'Some services group resource list output into pages. This flag specifies\nthe maximum number of resources per page. The default is determined by the\nservice if it supports paging, otherwise it is *unlimited* (no paging).\nPaging may be applied before or after *--filter* and *--limit* depending\non the service',
              args: [
                Arg(
                name: 'PAGE_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--project',
              description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
              args: [
                Arg(
                name: 'PROJECT_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
            ),
            Option(
              name: '--repository',
              description: 'The repository associated with the package. Overrides the default artifacts/repository property value\nfor this command invocation. To configure the default repository, use the command:\ngcloud config set artifacts/repository',
              args: [
                Arg(
                name: 'REPOSITORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--sort-by',
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*',
              args: [
                Arg(
                name: 'FIELD',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--trace-token',
              description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
              args: [
                Arg(
                name: 'TRACE_TOKEN',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--user-output-enabled',
              description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
            ),
            Option(
              name: '--verbosity',
              description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
              args: [
                Arg(
                name: 'VERBOSITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'none')
                ]
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--account',
          description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
          args: [
            Arg(
            name: 'ACCOUNT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--billing-project',
          description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
          args: [
            Arg(
            name: 'BILLING_PROJECT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--configuration',
          description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
          args: [
            Arg(
            name: 'CONFIGURATION',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flags-file',
          description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
          args: [
            Arg(
            name: 'YAML_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--flatten',
          description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
          args: [
            Arg(
            name: 'KEY',
            description: 'List',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--help',
          description: 'Display detailed help'
        ),
        Option(
          name: '--impersonate-service-account',
          description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
          args: [
            Arg(
            name: 'SERVICE_ACCOUNT_EMAIL',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--log-http',
          description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
        ),
        Option(
          name: '--project',
          description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
          args: [
            Arg(
            name: 'PROJECT_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--trace-token',
          description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
          args: [
            Arg(
            name: 'TRACE_TOKEN',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--user-output-enabled',
          description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
        ),
        Option(
          name: '--verbosity',
          description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
          args: [
            Arg(
            name: 'VERBOSITY',
            description: 'String',
            suggestions: [
              FigSuggestion(name: 'debug'),
              FigSuggestion(name: 'info'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'error'),
              FigSuggestion(name: 'critical'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    )
  ],
  options: [
    Option(
      name: '--account',
      description: 'Google Cloud Platform user account to use for invocation. Overrides the default *core/account* property value for this command invocation',
      args: [
        Arg(
        name: 'ACCOUNT',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--billing-project',
      description: 'The Google Cloud Platform project that will be charged quota for operations performed in gcloud. If you need to operate on one project, but need quota against a different project, you can use this flag to specify the billing project. If both `billing/quota_project` and `--billing-project` are specified, `--billing-project` takes precedence. Run `\$ gcloud config set --help` to see more information about `billing/quota_project`',
      args: [
        Arg(
        name: 'BILLING_PROJECT',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--configuration',
      description: 'The configuration to use for this command invocation. For more\ninformation on how to use configurations, run:\n`gcloud topic configurations`.  You can also use the CLOUDSDK_ACTIVE_CONFIG_NAME environment\nvariable to set the equivalent of this flag for a terminal\nsession',
      args: [
        Arg(
        name: 'CONFIGURATION',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--flags-file',
      description: 'A YAML or JSON file that specifies a *--flag*:*value* dictionary.\nUseful for specifying complex flag values with special characters\nthat work with any command interpreter. Additionally, each\n*--flags-file* arg is replaced by its constituent flags. See\n\$ gcloud topic flags-file for more information',
      args: [
        Arg(
        name: 'YAML_FILE',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--flatten',
      description: 'Flatten _name_[] output resource slices in _KEY_ into separate records\nfor each item in each slice. Multiple keys and slices may be specified.\nThis also flattens keys for *--format* and *--filter*. For example,\n*--flatten=abc.def* flattens *abc.def[].ghi* references to\n*abc.def.ghi*. A resource record containing *abc.def[]* with N elements\nwill expand to N records in the flattened output. This flag interacts\nwith other flags that are applied in this order: *--flatten*,\n*--sort-by*, *--filter*, *--limit*',
      args: [
        Arg(
        name: 'KEY',
        description: 'List',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--format',
      description: 'Set the format for printing command output resources. The default is a\ncommand-specific human-friendly output format. The supported formats\nare: `config`, `csv`, `default`, `diff`, `disable`, `flattened`, `get`, `json`, `list`, `multi`, `none`, `object`, `table`, `text`, `value`, `yaml`. For more details run \$ gcloud topic formats',
      args: [
        Arg(
        name: 'FORMAT',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Display detailed help'
    ),
    Option(
      name: '--impersonate-service-account',
      description: 'For this gcloud invocation, all API requests will be made as the given service account instead of the currently selected account. This is done without needing to create, download, and activate a key for the account. In order to perform operations as the service account, your currently selected account must have an IAM role that includes the iam.serviceAccounts.getAccessToken permission for the service account. The roles/iam.serviceAccountTokenCreator role has this permission or you may create a custom role. Overrides the default *auth/impersonate_service_account* property value for this command invocation',
      args: [
        Arg(
        name: 'SERVICE_ACCOUNT_EMAIL',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--log-http',
      description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
    ),
    Option(
      name: '--project',
      description: 'The Google Cloud Platform project ID to use for this invocation. If\nomitted, then the current project is assumed; the current project can\nbe listed using `gcloud config list --format=\'text(core.project)\'`\nand can be set using `gcloud config set project PROJECTID`.\n+\n`--project` and its fallback `core/project` property play two roles\nin the invocation. It specifies the project of the resource to\noperate on. It also specifies the project for API enablement check,\nquota, and billing. To specify a different project for quota and\nbilling, use `--billing-project` or `billing/quota_project` property',
      args: [
        Arg(
        name: 'PROJECT_ID',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--quiet',
      description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
    ),
    Option(
      name: '--trace-token',
      description: 'Token used to route traces of service requests for investigation of issues. Overrides the default *core/trace_token* property value for this command invocation',
      args: [
        Arg(
        name: 'TRACE_TOKEN',
        description: 'String',
        suggestions: []
      )
      ]
    ),
    Option(
      name: '--user-output-enabled',
      description: 'Print user intended output to the console. Overrides the default *core/user_output_enabled* property value for this command invocation. Use *--no-user-output-enabled* to disable'
    ),
    Option(
      name: '--verbosity',
      description: 'Override the default verbosity for this command. Overrides the default *core/verbosity* property value for this command invocation. _VERBOSITY_ must be one of: *debug*, *info*, *warning*, *error*, *critical*, *none*',
      args: [
        Arg(
        name: 'VERBOSITY',
        description: 'String',
        suggestions: [
          FigSuggestion(name: 'debug'),
          FigSuggestion(name: 'info'),
          FigSuggestion(name: 'warning'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'critical'),
          FigSuggestion(name: 'none')
        ]
      )
      ]
    )
  ]
);
