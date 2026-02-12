// Auto-generated from TypeScript source: container.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `container` CLI
final FigSpec containerSpec = FigSpec(
  name: 'container',
  description: 'Deploy and manage clusters of machines for running containers',
  subcommands: [
    Subcommand(
      name: 'binauthz',
      description: 'Manage attestations for Binary Authorization on Google Cloud Platform',
      subcommands: [
        Subcommand(
          name: 'attestations',
          description: 'Create and manage Google Binary Authorization attestations',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Create a Binary Authorization attestation',
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
                  name: '--artifact-url',
                  description: 'Container URL. May be in the `gcr.io/repository/image` format, or may optionally contain the `http` or `https` scheme',
                  args: [
                    Arg(
                    name: 'ARTIFACT_URL',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--attestor',
                  description: 'ID of the attestor or fully qualified identifier for the attestor',
                  args: [
                    Arg(
                    name: 'ATTESTOR',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--attestor-project',
                  description: 'Project ID of the Google Cloud Platform project for the attestor',
                  args: [
                    Arg(
                    name: 'ATTESTOR_PROJECT',
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
                  name: '--payload-file',
                  description: 'Path to file containing the payload over which the signature was\ncalculated.\n+\nThis defaults to the output of the standard payload command:\n+\n    \$ {grandparent_command} create-signature-payload\n+\nNOTE: If you sign a payload with e.g. different whitespace or\nformatting, you must explicitly provide the payload content via this\nflag',
                  args: [
                    Arg(
                    name: 'PAYLOAD_FILE',
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
                  name: '--public-key-id',
                  description: 'The ID of the public key that will be used to verify the signature\nof the created Attestation. This ID must match the one found on the\nAttestor resource(s) which will verify this Attestation.\n+\nFor PGP keys, this must be the version 4, full 160-bit fingerprint,\nexpressed as a 40 character hexadecimal string. See\nhttps://tools.ietf.org/html/rfc4880#section-12.2 for details',
                  args: [
                    Arg(
                    name: 'PUBLIC_KEY_ID',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--quiet',
                  description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
                ),
                Option(
                  name: '--signature-file',
                  description: 'Path to file containing the signature to store, or `-` to read\nsignature from stdin',
                  args: [
                    Arg(
                    name: 'SIGNATURE_FILE',
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
                  name: '--validate',
                  description: 'Whether to validate that the Attestation can be verified by the\nprovided Attestor'
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
              name: 'list',
              description: 'List Binary Authorization attestations',
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
                  name: '--artifact-url',
                  description: 'Container URL. May be in the `gcr.io/repository/image` format, or may optionally contain the `http` or `https` scheme',
                  args: [
                    Arg(
                    name: 'ARTIFACT_URL',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--attestor',
                  description: 'ID of the attestor or fully qualified identifier for the attestor',
                  args: [
                    Arg(
                    name: 'ATTESTOR',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--attestor-project',
                  description: 'Project ID of the Google Cloud Platform project for the attestor',
                  args: [
                    Arg(
                    name: 'ATTESTOR_PROJECT',
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
                  name: '--uri',
                  description: 'Print a list of resource URIs instead of the default output'
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
          name: 'attestors',
          description: 'Create and manage Google Binary Authorization Attestors',
          subcommands: [
            Subcommand(
              name: 'add-iam-policy-binding',
              description: 'Add IAM policy binding to a Binary Authorization attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create an Attestor',
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
                  name: '--attestation-authority-note',
                  description: 'ID of the note or fully qualified identifier for the note',
                  args: [
                    Arg(
                    name: 'ATTESTATION_AUTHORITY_NOTE',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--attestation-authority-note-project',
                  description: 'The Container Analysis project for the note',
                  args: [
                    Arg(
                    name: 'ATTESTATION_AUTHORITY_NOTE_PROJECT',
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
                  name: '--description',
                  description: 'A description for the attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe an Attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'get-iam-policy',
              description: 'Get the IAM policy for an attestor',
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
                  name: '--uri',
                  description: 'Print a list of resource URIs instead of the default output'
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Attestors associated with the current project',
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
                  name: '--uri',
                  description: 'Print a list of resource URIs instead of the default output'
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
              name: 'public-keys',
              description: 'Create and manage public keys associated with Attestation Authorities',
              subcommands: [
                Subcommand(
                  name: 'add',
                  description: 'Add a public key to an Attestor',
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
                      name: '--attestor',
                      description: 'ID of the attestor or fully qualified identifier for the attestor',
                      args: [
                        Arg(
                        name: 'ATTESTOR',
                        description: 'String',
                        suggestions: []
                      )
                      ],
                      priority: 100
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
                      name: '--comment',
                      description: 'The comment describing the public key',
                      args: [
                        Arg(
                        name: 'COMMENT',
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
                      name: '--keyversion',
                      description: 'ID of the CryptoKeyVersion or fully qualified identifier for the CryptoKeyVersion',
                      args: [
                        Arg(
                        name: 'KEYVERSION',
                        description: 'String',
                        suggestions: []
                      )
                      ],
                      priority: 100
                    ),
                    Option(
                      name: '--keyversion-key',
                      description: 'The key of the CryptoKeyVersion',
                      args: [
                        Arg(
                        name: 'KEYVERSION_KEY',
                        description: 'String',
                        suggestions: []
                      )
                      ]
                    ),
                    Option(
                      name: '--keyversion-keyring',
                      description: 'The keyring of the CryptoKeyVersion',
                      args: [
                        Arg(
                        name: 'KEYVERSION_KEYRING',
                        description: 'String',
                        suggestions: []
                      )
                      ]
                    ),
                    Option(
                      name: '--keyversion-location',
                      description: 'The location of the CryptoKeyVersion',
                      args: [
                        Arg(
                        name: 'KEYVERSION_LOCATION',
                        description: 'String',
                        suggestions: []
                      )
                      ]
                    ),
                    Option(
                      name: '--keyversion-project',
                      description: 'Project ID of the Google Cloud Platform project for the CryptoKeyVersion',
                      args: [
                        Arg(
                        name: 'KEYVERSION_PROJECT',
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
                      name: '--pgp-public-key-file',
                      description: 'The path to the file containing the ASCII-armored PGP public key to add',
                      args: [
                        Arg(
                        name: 'PGP_PUBLIC_KEY_FILE',
                        description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                        suggestions: []
                      )
                      ]
                    ),
                    Option(
                      name: '--pkix-public-key-algorithm',
                      description: 'The signing algorithm of the associated key. This will be used to\nverify the signatures associated with this key. _PKIX_PUBLIC_KEY_ALGORITHM_ must be one of: *ec-sign-p256-sha256*, *ec-sign-p384-sha384*, *ec-sign-p521-sha512*, *ecdsa-p256-sha256*, *ecdsa-p384-sha384*, *ecdsa-p521-sha512*, *rsa-pss-2048-sha256*, *rsa-pss-3072-sha256*, *rsa-pss-4096-sha256*, *rsa-pss-4096-sha512*, *rsa-sign-pkcs1-2048-sha256*, *rsa-sign-pkcs1-3072-sha256*, *rsa-sign-pkcs1-4096-sha256*, *rsa-sign-pkcs1-4096-sha512*',
                      args: [
                        Arg(
                        name: 'PKIX_PUBLIC_KEY_ALGORITHM',
                        description: 'String',
                        suggestions: [
                          FigSuggestion(name: 'ec-sign-p256-sha256'),
                          FigSuggestion(name: 'ec-sign-p384-sha384'),
                          FigSuggestion(name: 'ec-sign-p521-sha512'),
                          FigSuggestion(name: 'ecdsa-p256-sha256'),
                          FigSuggestion(name: 'ecdsa-p384-sha384'),
                          FigSuggestion(name: 'ecdsa-p521-sha512'),
                          FigSuggestion(name: 'rsa-pss-2048-sha256'),
                          FigSuggestion(name: 'rsa-pss-3072-sha256'),
                          FigSuggestion(name: 'rsa-pss-4096-sha256'),
                          FigSuggestion(name: 'rsa-pss-4096-sha512'),
                          FigSuggestion(name: 'rsa-sign-pkcs1-2048-sha256'),
                          FigSuggestion(name: 'rsa-sign-pkcs1-3072-sha256'),
                          FigSuggestion(name: 'rsa-sign-pkcs1-4096-sha256'),
                          FigSuggestion(name: 'rsa-sign-pkcs1-4096-sha512')
                        ]
                      )
                      ],
                      priority: 100
                    ),
                    Option(
                      name: '--pkix-public-key-file',
                      description: 'The path to the file containing the PKIX public key to add',
                      args: [
                        Arg(
                        name: 'PKIX_PUBLIC_KEY_FILE',
                        description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
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
                      name: '--public-key-id-override',
                      description: 'If provided, the ID to replace the default API-generated one. All IDs\nmust be valid URIs as defined by RFC 3986\n(https://tools.ietf.org/html/rfc3986).\n+\nWhen creating Attestations to be verified by this key, one must always\nprovide this custom ID as the public key ID',
                      args: [
                        Arg(
                        name: 'PUBLIC_KEY_ID_OVERRIDE',
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
                  name: 'remove',
                  description: 'Remove a public key from an Attestor',
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
                      name: '--attestor',
                      description: 'ID of the attestor or fully qualified identifier for the attestor',
                      args: [
                        Arg(
                        name: 'ATTESTOR',
                        description: 'String',
                        suggestions: []
                      )
                      ],
                      priority: 100
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
                    name: 'PUBLIC_KEY_ID',
                    description: 'The ID of the public key to remove'
                  )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a public key on an Attestor',
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
                      name: '--attestor',
                      description: 'ID of the attestor or fully qualified identifier for the attestor',
                      args: [
                        Arg(
                        name: 'ATTESTOR',
                        description: 'String',
                        suggestions: []
                      )
                      ],
                      priority: 100
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
                      name: '--comment',
                      description: 'The comment describing the public key',
                      args: [
                        Arg(
                        name: 'COMMENT',
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
                      name: '--pgp-public-key-file',
                      description: 'The path to a file containing the updated ASCII-armored PGP public key',
                      args: [
                        Arg(
                        name: 'PGP_PUBLIC_KEY_FILE',
                        description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
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
                    name: 'PUBLIC_KEY_ID',
                    description: 'The ID of the public key to update'
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
              name: 'remove-iam-policy-binding',
              description: 'Remove IAM policy binding of a Binary Authorization attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
              )
              ]
            ),
            Subcommand(
              name: 'set-iam-policy',
              description: 'Set the IAM policy for an attestor',
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
                  name: 'ATTESTOR_NAME',
                  description: 'The name of the attestor whose IAM policy will be updated'
                ),
                Arg(
                  name: 'POLICY_FILE',
                  description: 'The JSON or YAML file containing the IAM policy'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an existing Attestor',
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
                  name: '--description',
                  description: 'The new description for the attestor',
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
                name: 'ATTESTOR',
                description: 'ID of the attestor or fully qualified identifier for the attestor'
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
          name: 'create-signature-payload',
          description: 'Create a JSON container image signature object',
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
              name: '--artifact-url',
              description: 'Container URL. May be in the `gcr.io/repository/image` format, or may optionally contain the `http` or `https` scheme',
              args: [
                Arg(
                name: 'ARTIFACT_URL',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
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
          name: 'policy',
          description: 'Create and manage Google Binary Authorization policy',
          subcommands: [
            Subcommand(
              name: 'add-iam-policy-binding',
              description: 'Add IAM policy binding to a Binary Authorization policy',
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
              ]
            ),
            Subcommand(
              name: 'export',
              description: 'Export the Binary Authorization policy for the current project',
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
              name: 'get-iam-policy',
              description: 'Get the IAM policy for a Binary Authorization policy',
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
                  name: '--uri',
                  description: 'Print a list of resource URIs instead of the default output'
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
              name: 'import',
              description: 'Import a Binary Authorization policy to the current project',
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
                  name: '--strict-validation',
                  description: 'Whether to perform additional checks on the validity of policy contents'
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
                name: 'POLICY_FILE',
                description: 'The file containing the YAML-formatted policy description'
              )
              ]
            ),
            Subcommand(
              name: 'remove-iam-policy-binding',
              description: 'Remove IAM policy binding of a Binary Authorization policy',
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
              ]
            ),
            Subcommand(
              name: 'set-iam-policy',
              description: 'Set the IAM policy for a Binary Authorization policy',
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
                name: 'POLICY_FILE',
                description: 'The JSON or YAML file containing the IAM policy'
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
      name: 'clusters',
      description: 'Deploy and teardown Google Kubernetes Engine clusters',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a cluster for running containers',
          options: [
            Option(
              name: '--accelerator',
              description: 'Attaches accelerators (e.g. GPUs) to all nodes.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator to attach to the instances. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Optional) The number of accelerators to attach to the\ninstances. The default value is 1',
              args: [
                Arg(
                name: 'type=TYPE,[count=COUNT]',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
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
              name: '--additional-zones',
              description: '(DEPRECATED) The set of additional zones in which the specified node footprint should be\nreplicated. All zones must be in the same region as the cluster\'s primary zone.\nIf additional-zones is not specified, all nodes will be in the cluster\'s primary\nzone.\n+\nNote that `NUM_NODES` nodes will be created in each zone, such that if you\nspecify `--num-nodes=4` and choose one additional zone, 8 nodes will be created.\n+\nMultiple locations can be specified, separated by commas. For example:\n+\n  \$ {command} example-cluster --zone us-central1-a --additional-zones us-central1-b,us-central1-c\n+\nThis flag is deprecated. Use --node-locations=PRIMARY_ZONE,[ZONE,...] instead',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--addons',
              description: 'Addons\n(https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.AddonsConfig)\nare additional Kubernetes cluster components. Addons specified by this flag will\nbe enabled. The others will be disabled. Default addons: HttpLoadBalancing, HorizontalPodAutoscaling. _ADDON_ must be one of: *HttpLoadBalancing*, *HorizontalPodAutoscaling*, *KubernetesDashboard*, *NetworkPolicy*, *CloudRun*, *NodeLocalDNS*, *ConfigConnector*',
              args: [
                Arg(
                name: 'ADDON',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--autoprovisioning-config-file',
              description: 'Path of the JSON/YAML file which contains information about the\ncluster\'s node autoprovisioning configuration. Currently it contains\na list of resource limits, identity defaults for autoprovisioning, node upgrade\nsettings, node management settings, minimum cpu platform, node locations for\nautoprovisioning, disk type and size configuration, shielded instance settings,\nand customer-managed encryption keys settings.\n+\nResource limits are specified in the field \'resourceLimits\'.\nEach resource limits definition contains three fields:\nresourceType, maximum and minimum.\nResource type can be "cpu", "memory" or an accelerator (e.g.\n"nvidia-tesla-k80" for nVidia Tesla K80). Use gcloud compute accelerator-types\nlist to learn about available accelerator types.\nMaximum is the maximum allowed amount with the unit of the resource.\nMinimum is the minimum allowed amount with the unit of the resource.\n+\nIdentity default contains at most one of the below fields:\nserviceAccount: The Google Cloud Platform Service Account to be used by node VMs in\nautoprovisioned node pools. If not specified, the project\'s default service account\nis used.\nscopes: A list of scopes to be used by node instances in autoprovisioned node pools.\nMultiple scopes can be specified, separated by commas. For information on defaults,\nlook at:\nhttps://cloud.google.com/sdk/gcloud/reference/container/clusters/create#--scopes\n+\nNode Upgrade settings are specified under the field\n\'upgradeSettings\', which has the following fields:\nmaxSurgeUpgrade: Number of extra (surge) nodes to be created on\neach upgrade of an autoprovisioned node pool.\nmaxUnavailableUpgrade: Number of nodes that can be unavailable at the\nsame time on each upgrade of an autoprovisioned node pool.\n+\nNode Management settings are specified under the field\n\'nodeManagement\', which has the following fields:\nenableAutoUpgrade: A boolean field that indicates if node\nautoupgrade is enabled for autoprovisioned node pools.\nenableAutoRepair: A boolean field that indicates if node\nautorepair is enabled for autoprovisioned node pools.\n+\nminCpuPlatform: If specified, new autoprovisioned nodes will be\nscheduled on host with specified CPU architecture or a newer one.\nNote: Min CPU platform can only be specified in Beta and Alpha.\n+\nAutoprovisioning locations is a set of zones where new node pools\ncan be created by Autoprovisioning. Autoprovisioning locations are\nspecified in the field \'autoprovisioningLocations\'. All zones must\nbe in the same region as the cluster\'s master(s).\n+\nDisk type and size are specified under the \'diskType\' and \'diskSizeGb\' fields,\nrespectively. If specified, new autoprovisioned nodes will be created with\ncustom boot disks configured by these settings.\n+\nShielded instance settings are specified under the \'shieldedInstanceConfig\'\nfield, which has the following fields:\nenableSecureBoot: A boolean field that indicates if secure boot is enabled for\nautoprovisioned nodes.\nenableIntegrityMonitoring: A boolean field that indicates if integrity\nmonitoring is enabled for autoprovisioned nodes.\n+\nCustomer Managed Encryption Keys (CMEK) used by new auto-provisioned node pools\ncan be specified in the \'bootDiskKmsKey\' field',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_CONFIG_FILE',
                description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-locations',
              description: 'Set of zones where new node pools can be created by autoprovisioning.\nAll zones must be in the same region as the cluster\'s master(s).\nMultiple locations can be specified, separated by commas',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-max-surge-upgrade',
              description: 'Number of extra (surge) nodes to be created on each upgrade of an\nautoprovisioned node pool',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_MAX_SURGE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--autoprovisioning-max-unavailable-upgrade',
              description: 'Number of nodes that can be unavailable at the same time on each\nupgrade of an autoprovisioned node pool',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_MAX_UNAVAILABLE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--autoprovisioning-min-cpu-platform',
              description: 'If specified, new autoprovisioned nodes will be scheduled on host with\nspecified CPU architecture or a newer one',
              args: [
                Arg(
                name: 'PLATFORM',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-scopes',
              description: 'The scopes be used by node instances in autoprovisioned node pools.\nMultiple scopes can be specified, separated by commas. For information\non defaults, look at:\nhttps://cloud.google.com/sdk/gcloud/reference/container/clusters/create#--scopes',
              args: [
                Arg(
                name: 'SCOPE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-service-account',
              description: 'The Google Cloud Platform Service Account to be used by node VMs in\nautoprovisioned node pools. If not specified, the project default\nservice account is used',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_SERVICE_ACCOUNT',
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
              name: '--boot-disk-kms-key',
              description: 'The Customer Managed Encryption Key used to encrypt the boot disk attached\nto each node in the node pool. This should be of the form\nprojects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME].\nFor more information about protecting resources with Cloud KMS Keys please\nsee:\nhttps://cloud.google.com/compute/docs/disks/customer-managed-encryption',
              args: [
                Arg(
                name: 'BOOT_DISK_KMS_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--cloud-run-config',
              description: 'Configurations for Cloud Run addon, requires `--addons=CloudRun` for create\nand `--update-addons=CloudRun=ENABLED` for update.\n+\n*load-balancer-type*:::Optional Type of load-balancer-type EXTERNAL or INTERNAL\nExample:\n+\n  \$ {command} example-cluster --cloud-run-config=load-balancer-type=INTERNAL',
              args: [
                Arg(
                name: 'load-balancer-type=EXTERNAL',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--cluster-ipv4-cidr',
              description: 'The IP address range for the pods in this cluster in CIDR notation (e.g.\n10.0.0.0/14). Prior to Kubernetes version 1.7.0 this must be a subset of\n10.0.0.0/8; however, starting with version 1.7.0 can be any RFC 1918 IP range.\n+\nIf you omit this option, a range is chosen automatically.  The automatically\nchosen range is randomly selected from 1.0.0.0/8 and will not include IP\naddress ranges allocated to VMs, existing routes, or ranges allocated to other\nclusters. The automatically chosen range might conflict with reserved IP\naddresses, dynamic routes, or routes within VPCs that peer with this cluster.\nYou should specify `--cluster-ipv4-cidr` to prevent conflicts',
              args: [
                Arg(
                name: 'CLUSTER_IPV4_CIDR',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--cluster-secondary-range-name',
              description: 'Set the secondary range to be used as the source for pod IPs. Alias\nranges will be allocated from this secondary range.  NAME must be the\nname of an existing secondary range in the cluster subnetwork.\n+\nMust be used in conjunction with \'--enable-ip-alias\'. Cannot be used\nwith --create-subnetwork',
              args: [
                Arg(
                name: 'NAME',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--cluster-version',
              description: 'The Kubernetes version to use for the master and nodes. Defaults to\nserver-specified.\n+\nThe default Kubernetes version is available using the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'CLUSTER_VERSION',
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
              name: '--create-subnetwork',
              description: 'Create a new subnetwork for the cluster. The name and range of the\nsubnetwork can be customized via optional \'name\' and \'range\' key-value\npairs.\n+\n\'name\' specifies the name of the subnetwork to be created.\n+\n\'range\' specifies the IP range for the new subnetwork. This can either\nbe a netmask size (e.g. \'/20\') or a CIDR range (e.g. \'10.0.0.0/20\').\nIf a netmask size is specified, the IP is automatically taken from the\nfree space in the cluster\'s network.\n+\nExamples:\n+\nCreate a new subnetwork with a default name and size.\n+\n      \$ {command} --create-subnetwork ""\n+\nCreate a new subnetwork named "my-subnet" with netmask of size 21.\n+\n      \$ {command} --create-subnetwork name=my-subnet,range=/21\n+\nCreate a new subnetwork with a default name with the primary range of\n10.100.0.0/16.\n+\n      \$ {command} --create-subnetwork range=10.100.0.0/16\n+\nCreate a new subnetwork with the name "my-subnet" with a default range.\n+\n      \$ {command} --create-subnetwork name=my-subnet\n+\nCan not be specified unless \'--enable-ip-alias\' is also specified. Can\nnot be used in conjunction with the \'--subnetwork\' option',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--database-encryption-key',
              description: 'Enable Database Encryption.\n+\nEnable database encryption that will be used to encrypt Kubernetes Secrets at\nthe application layer. The key provided should be the resource ID in the format of\n`projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]`.\nFor more information, see\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/encrypting-secrets',
              args: [
                Arg(
                name: 'DATABASE_ENCRYPTION_KEY',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--default-max-pods-per-node',
              description: 'The default max number of pods per node for node pools in the cluster.\n+\nThis flag sets the default max-pods-per-node for node pools in the cluster. If\n--max-pods-per-node is not specified explicitly for a node pool, this flag\nvalue will be used.\n+\nMust be used in conjunction with \'--enable-ip-alias\'',
              args: [
                Arg(
                name: 'DEFAULT_MAX_PODS_PER_NODE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--disable-default-snat',
              description: 'Disable default source NAT rules applied in cluster nodes.\n+\nBy default, cluster nodes perform source network address translation (SNAT)\nfor packets sent from Pod IP address sources to destination IP addresses\nthat are not in the non-masquerade CIDRs list.\nFor more details about SNAT and IP masquerading, see:\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works\nSNAT changes the packet\'s source IP address to the node\'s internal IP address.\n+\nWhen this flag is set, GKE does not perform SNAT for packets sent to any destination.\nYou must set this flag if the cluster uses privately reused public IPs.\n+\nThe --disable-default-snat flag is only applicable to private GKE clusters, which are\ninherently VPC-native. Thus, --disable-default-snat requires that you also set\n--enable-ip-alias and --enable-private-nodes'
            ),
            Option(
              name: '--disk-size',
              description: 'Size for node VM boot disks. Defaults to 100GB',
              args: [
                Arg(
                name: 'DISK_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:ParseWithBoundsChecking',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--disk-type',
              description: 'Type of the node VM boot disk. Defaults to pd-standard. _DISK_TYPE_ must be one of: *pd-standard*, *pd-ssd*, *pd-balanced*',
              args: [
                Arg(
                name: 'DISK_TYPE',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'pd-standard'),
                  FigSuggestion(name: 'pd-ssd'),
                  FigSuggestion(name: 'pd-balanced')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-autoprovisioning',
              description: 'Enables  node autoprovisioning for a cluster.\n+\nCluster Autoscaler will be able to create new node pools. Requires maximum CPU\nand memory limits to be specified',
              priority: 100
            ),
            Option(
              name: '--enable-autoprovisioning-autorepair',
              description: 'Enable node autorepair for autoprovisioned node pools.\nUse --no-enable-autoprovisioning-autorepair to disable',
              priority: 100
            ),
            Option(
              name: '--enable-autoprovisioning-autoupgrade',
              description: 'Enable node autoupgrade for autoprovisioned node pools.\nUse --no-enable-autoprovisioning-autoupgrade to disable',
              priority: 100
            ),
            Option(
              name: '--enable-autorepair',
              description: 'Enable node autorepair feature for a cluster\'s default node pool(s).\n+\n  \$ {command} example-cluster --enable-autorepair\n+\nNode autorepair is enabled by default for clusters using COS, COS_CONTAINERD, UBUNTU or UBUNTU_CONTAINERD\nas a base image, use --no-enable-autorepair to disable.\n+\nSee https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-repair for more info'
            ),
            Option(
              name: '--enable-autoscaling',
              description: 'Enables autoscaling for a node pool.\n+\nEnables autoscaling in the node pool specified by --node-pool or\nthe default node pool if --node-pool is not provided'
            ),
            Option(
              name: '--enable-autoupgrade',
              description: 'Sets autoupgrade feature for a cluster\'s default node pool(s).\n+\n  \$ {command} example-cluster --enable-autoupgrade\n+\nSee https://cloud.google.com/kubernetes-engine/docs/node-auto-upgrades for more info.\n+\nEnabled by default, use *--no-enable-autoupgrade* to disable'
            ),
            Option(
              name: '--enable-basic-auth',
              description: 'Enable basic (username/password) auth for the cluster.  `--enable-basic-auth` is\nan alias for `--username=admin`; `--no-enable-basic-auth` is an alias for\n`--username=""`. Use `--password` to specify a password; if not, the server will\nrandomly generate one. For cluster versions before 1.12, if neither\n`--enable-basic-auth` nor `--username` is specified, `--enable-basic-auth` will\ndefault to `true`. After 1.12, `--enable-basic-auth` will default to `false`'
            ),
            Option(
              name: '--enable-binauthz',
              description: 'Enable Binary Authorization for this cluster'
            ),
            Option(
              name: '--enable-cloud-logging',
              description: '(DEPRECATED) Automatically send logs from the cluster to the Google Cloud Logging API. This flag is deprecated, use `--enable-stackdriver-kubernetes` instead.\n+\nFrom 1.14, legacy Stackdriver GKE logging is deprecated. Thus, flag `--enable-cloud-logging` is also deprecated. Please use `--enable-stackdriver-kubernetes` instead, to migrate to new Stackdriver Kubernetes Engine monitoring and logging. For more details, please read: https://cloud.google.com/monitoring/kubernetes-engine/migration'
            ),
            Option(
              name: '--enable-cloud-monitoring',
              description: '(DEPRECATED) Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting. This flag is deprecated, use `--enable-stackdriver-kubernetes` instead.\n+\nFrom 1.14, legacy Stackdriver GKE monitoring is deprecated. Thus, flag `--enable-cloud-monitoring` is also deprecated. Please use `--enable-stackdriver-kubernetes` instead, to migrate to new Stackdriver Kubernetes Engine monitoring and logging. For more details, please read: https://cloud.google.com/monitoring/kubernetes-engine/migration'
            ),
            Option(
              name: '--enable-cloud-run-alpha',
              description: 'Enable Cloud Run alpha features on this cluster. Selecting this\noption will result in the cluster having all Cloud Run alpha API groups and\nfeatures turned on.\n+\nCloud Run alpha clusters are not covered by the Cloud Run SLA and should not be\nused for production workloads'
            ),
            Option(
              name: '--enable-intra-node-visibility',
              description: 'Enable Intra-node visibility for this cluster.\n+\nEnabling intra-node visibility makes your intra-node pod-to-pod traffic\nvisible to the networking fabric. With this feature, you can use VPC flow\nlogging or other VPC features for intra-node traffic.\n+\nEnabling it on an existing cluster causes the cluster\nmaster and the cluster nodes to restart, which might cause a disruption'
            ),
            Option(
              name: '--enable-ip-alias',
              description: 'Enable use of alias IPs (https://cloud.google.com/compute/docs/alias-ip/)\nfor Pod IPs. This will require at least two secondary ranges in the\nsubnetwork, one for the pod IPs and another to reserve space for the\nservices range'
            ),
            Option(
              name: '--enable-kubernetes-alpha',
              description: 'Enable Kubernetes alpha features on this cluster. Selecting this\noption will result in the cluster having all Kubernetes alpha API groups and\nfeatures turned on. Cluster upgrades (both manual and automatic) will be\ndisabled and the cluster will be automatically deleted after 30 days.\n+\nAlpha clusters are not covered by the Kubernetes Engine SLA and should not be\nused for production workloads'
            ),
            Option(
              name: '--enable-legacy-authorization',
              description: 'Enables the legacy ABAC authentication for the cluster.\nUser rights are granted through the use of policies which combine attributes\ntogether. For a detailed look at these properties and related formats, see\nhttps://kubernetes.io/docs/admin/authorization/abac/. To use RBAC permissions\ninstead, create or update your cluster with the option\n`--no-enable-legacy-authorization`'
            ),
            Option(
              name: '--enable-master-authorized-networks',
              description: 'Allow only specified set of CIDR blocks (specified by the\n`--master-authorized-networks` flag) to connect to Kubernetes master through\nHTTPS. Besides these blocks, the following have access as well:\n+\n  1) The private network the cluster connects to if\n  `--enable-private-nodes` is specified.\n  2) Google Compute Engine Public IPs if `--enable-private-nodes` is not\n  specified.\n+\nUse `--no-enable-master-authorized-networks` to disable. When disabled, public\ninternet (0.0.0.0/0) is allowed to connect to Kubernetes master through HTTPS'
            ),
            Option(
              name: '--enable-master-global-access',
              description: 'Use with private clusters to allow access to the master\'s private endpoint from any Google Cloud region or on-premises environment regardless of the\nprivate cluster\'s region.\n+\nMust be used in conjunction with \'--enable-ip-alias\' and \'--enable-private-nodes\''
            ),
            Option(
              name: '--enable-network-egress-metering',
              description: 'Enable network egress metering on this cluster.\n+\nWhen enabled, a DaemonSet is deployed into the cluster. Each DaemonSet pod\nmeters network egress traffic by collecting data from the conntrack table, and\nexports the metered metrics to the specified destination.\n+\nNetwork egress metering is disabled if this flag is omitted, or when\n`--no-enable-network-egress-metering` is set'
            ),
            Option(
              name: '--enable-network-policy',
              description: 'Enable network policy enforcement for this cluster. If you are enabling network policy on an existing cluster the network policy addon must first be enabled on the master by using --update-addons=NetworkPolicy=ENABLED flag'
            ),
            Option(
              name: '--enable-private-endpoint',
              description: 'Cluster is managed using the private IP address of the master API endpoint'
            ),
            Option(
              name: '--enable-private-nodes',
              description: 'Cluster is created with no public IP addresses on the cluster nodes'
            ),
            Option(
              name: '--enable-resource-consumption-metering',
              description: 'Enable resource consumption metering on this cluster.\n+\nWhen enabled, a table will be created in the specified BigQuery dataset to store\nresource consumption data. The resulting table can be joined with the resource\nusage table or with BigQuery billing export.\n+\nResource consumption metering is enabled unless `--no-enable-resource-\nconsumption-metering` is set'
            ),
            Option(
              name: '--enable-shielded-nodes',
              description: 'Enable Shielded Nodes for this cluster. Enabling Shielded Nodes will enable a\nmore secure Node credential bootstrapping implementation. Starting with version\n1.18, clusters will have shielded GKE nodes by default'
            ),
            Option(
              name: '--enable-stackdriver-kubernetes',
              description: 'Enable Stackdriver Kubernetes monitoring and logging'
            ),
            Option(
              name: '--enable-tpu',
              description: 'Enable Cloud TPUs for this cluster.\n+\nCan not be specified unless `--enable-ip-alias` is also specified'
            ),
            Option(
              name: '--enable-vertical-pod-autoscaling',
              description: 'Enable vertical pod autoscaling for a cluster'
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
              name: '--image-type',
              description: 'The image type to use for the cluster. Defaults to server-specified.\n+\nImage Type specifies the base OS that the nodes in the cluster will run on.\nIf an image type is specified, that will be assigned to the cluster and all\nfuture upgrades will use the specified image type. If it is not specified the\nserver will pick the default image type.\n+\nThe default image type and the list of valid image types are available\nusing the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'IMAGE_TYPE',
                description: 'String',
                suggestions: []
              )
              ]
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
              name: '--issue-client-certificate',
              description: 'Issue a TLS client certificate with admin permissions.\n+\nWhen enabled, the certificate and private key pair will be present in\nMasterAuth field of the Cluster object. For cluster versions before 1.12, a\nclient certificate will be issued by default. As of 1.12, client certificates\nare disabled by default'
            ),
            Option(
              name: '--labels',
              description: 'Labels to apply to the Google Cloud resources in use by the Kubernetes Engine\ncluster. These are unrelated to Kubernetes labels.\nExample:\n+\n  \$ {command} example-cluster --labels=label_a=value1,label_b=,label_c=value3',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--local-ssd-count',
              description: 'The number of local SSD disks to provision on each node, formatted and mounted\nin the filesystem.\n+\nLocal SSDs have a fixed 375 GB capacity per device. The number of disks that\ncan be attached to an instance is limited by the maximum number of disks\navailable on a machine, which differs by compute zone. See\nhttps://cloud.google.com/compute/docs/disks/local-ssd for more information',
              args: [
                Arg(
                name: 'LOCAL_SSD_COUNT',
                description: 'Int',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--machine-type',
              description: 'The type of machine to use for nodes. Defaults to e2-medium.\nThe list of predefined machine types is available using the following command:\n+\n  \$ gcloud compute machine-types list\n+\nYou can also specify custom machine types with the string "custom-CPUS-RAM"\nwhere ```CPUS``` is the number of virtual CPUs and ```RAM``` is the amount of\nRAM in MiB.\n+\nFor example, to create a node pool using custom machines with 2 vCPUs and 12 GB\nof RAM:\n+\n  \$ {command} high-mem-pool --machine-type=custom-2-12288',
              args: [
                Arg(
                name: 'MACHINE_TYPE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--maintenance-window',
              description: 'Set a time of day when you prefer maintenance to start on this cluster. For example:\n+\n  \$ {command} example-cluster --maintenance-window=12:43\n+\nThe time corresponds to the UTC time zone, and must be in HH:MM format.\n+\nNon-emergency maintenance will occur in the 4 hour block starting at the\nspecified time.\n+\nThis is mutually exclusive with the recurring maintenance windows\nand will overwrite any existing window. Compatible with maintenance\nexclusions',
              args: [
                Arg(
                name: 'START_TIME',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--maintenance-window-end',
              description: 'End time of the first window (can occur in the past). Must take place after the\nstart time. The difference in start and end time specifies the length of each\nrecurrence. See \$ gcloud topic datetimes for information on time formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--maintenance-window-recurrence',
              description: 'An RFC 5545 RRULE, specifying how the window will recur. Note that minimum\nrequirements for maintenance periods will be enforced. Note that FREQ=SECONDLY,\nMINUTELY, and HOURLY are not supported',
              args: [
                Arg(
                name: 'RRULE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--maintenance-window-start',
              description: 'Start time of the first window (can occur in the past). The start time\ninfluences when the window will start for recurrences. See \$ gcloud topic\ndatetimes for information on time formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--master-authorized-networks',
              description: 'The list of CIDR blocks (up to 100 for private cluster, 50 for public cluster) that are allowed to connect to Kubernetes master through HTTPS. Specified in CIDR notation (e.g. 1.2.3.4/30). Cannot be specified unless `--enable-master-authorized-networks` is also specified',
              args: [
                Arg(
                name: 'NETWORK',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--master-ipv4-cidr',
              description: 'IPv4 CIDR range to use for the master network.  This should have a netmask of size /28 and should be used in conjunction with the --enable-private-nodes flag',
              args: [
                Arg(
                name: 'MASTER_IPV4_CIDR',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-accelerator',
              description: 'Sets maximum limit for a single type of accelerators (e.g. GPUs) in cluster.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator for which the limit is set. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Required) The maximum number of accelerators\nto which the cluster can be scaled',
              args: [
                Arg(
                name: 'type=TYPE,count=COUNT',
                description: 'Dict',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--max-cpu',
              description: 'Maximum number of cores in the cluster.\n+\nMaximum number of cores to which the cluster can scale',
              args: [
                Arg(
                name: 'MAX_CPU',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--max-memory',
              description: 'Maximum memory in the cluster.\n+\nMaximum number of gigabytes of memory to which the cluster can scale',
              args: [
                Arg(
                name: 'MAX_MEMORY',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--max-nodes',
              description: 'Maximum number of nodes in the node pool.\n+\nMaximum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MAX_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-nodes-per-pool',
              description: 'The maximum number of nodes to allocate per default initial node pool. Kubernetes Engine will automatically create enough nodes pools such that each node pool contains less than `--max-nodes-per-pool` nodes. Defaults to 1000 nodes, but can be set as low as 100 nodes per pool on initial create',
              args: [
                Arg(
                name: 'MAX_NODES_PER_POOL',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-pods-per-node',
              description: 'The max number of pods per node for this node pool.\n+\nThis flag sets the maximum number of pods that can be run at the same time on a\nnode. This will override the value given with --default-max-pods-per-node flag\nset at the cluster level.\n+\nMust be used in conjunction with \'--enable-ip-alias\'',
              args: [
                Arg(
                name: 'MAX_PODS_PER_NODE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-surge-upgrade',
              description: 'Number of extra (surge) nodes to be created on each upgrade of a node pool.\n+\nSpecifies the number of extra (surge) nodes to be created during this node\npool\'s upgrades. For example, running the following command will result in\ncreating an extra node each time the node pool is upgraded:\n+\n  \$ {command} example-cluster --max-surge-upgrade=1 --max-unavailable-upgrade=0\n+\nMust be used in conjunction with \'--max-unavailable-upgrade\'',
              args: [
                Arg(
                name: 'MAX_SURGE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-unavailable-upgrade',
              description: 'Number of nodes that can be unavailable at the same time on each upgrade of a\nnode pool.\n+\nSpecifies the number of nodes that can be unavailable at the same time while\nthis node pool is being upgraded. For example, running the following command\nwill result in having 3 nodes being upgraded in parallel (1 + 2), but keeping\nalways at least 3 (5 - 2) available each time the node pool is upgraded:\n+\n   \$ {command} example-cluster --num-nodes=5 --max-surge-upgrade=1      --max-unavailable-upgrade=2\n+\nMust be used in conjunction with \'--max-surge-upgrade\'',
              args: [
                Arg(
                name: 'MAX_UNAVAILABLE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Compute Engine metadata to be made available to the guest operating system\nrunning on nodes within the node pool.\n+\nEach metadata entry is a key/value pair separated by an equals sign.\nMetadata keys must be unique and less than 128 bytes in length. Values\nmust be less than or equal to 32,768 bytes in length. The total size of\nall keys and values must be less than 512 KB. Multiple arguments can be\npassed to this flag. For example:\n+\n``--metadata key-1=value-1,key-2=value-2,key-3=value-3\'\'\n+\nAdditionally, the following keys are reserved for use by Kubernetes\nEngine:\n+\n* ``cluster-location\'\'\n* ``cluster-name\'\'\n* ``cluster-uid\'\'\n* ``configure-sh\'\'\n* ``enable-os-login\'\'\n* ``gci-update-strategy\'\'\n* ``gci-ensure-gke-docker\'\'\n* ``instance-template\'\'\n* ``kube-env\'\'\n* ``startup-script\'\'\n* ``user-data\'\'\n+\nGoogle Kubernetes Engine sets the following keys by default:\n+\n* ``serial-port-logging-enable\'\'\n+\nSee also Compute Engine\'s\nlink:https://cloud.google.com/compute/docs/storing-retrieving-metadata[documentation]\non storing and retrieving instance metadata',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--metadata-from-file',
              description: 'Same as ``--metadata\'\' except that the value for the entry will\nbe read from a local file',
              args: [
                Arg(
                name: 'KEY=LOCAL_FILE_PATH',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-accelerator',
              description: 'Sets minimum limit for a single type of accelerators (e.g. GPUs) in cluster. Defaults\nto 0 for all accelerator types if it isn\'t set.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator for which the limit is set. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Required) The minimum number of accelerators\nto which the cluster can be scaled',
              args: [
                Arg(
                name: 'type=TYPE,count=COUNT',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-cpu',
              description: 'Minimum number of cores in the cluster.\n+\nMinimum number of cores to which the cluster can scale',
              args: [
                Arg(
                name: 'MIN_CPU',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-cpu-platform',
              description: 'When specified, the nodes for the new cluster\'s default node pool will be\nscheduled on host with specified CPU architecture or a newer one.\n+\nExamples:\n+\n  \$ {command} example-cluster --min-cpu-platform=PLATFORM\n+\nTo list available CPU platforms in given zone, run:\n+\n  \$ gcloud beta compute zones describe ZONE --format="value(availableCpuPlatforms)"\n+\nCPU platform selection is available only in selected zones',
              args: [
                Arg(
                name: 'PLATFORM',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-memory',
              description: 'Minimum memory in the cluster.\n+\nMinimum number of gigabytes of memory to which the cluster can scale',
              args: [
                Arg(
                name: 'MIN_MEMORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-nodes',
              description: 'Minimum number of nodes in the node pool.\n+\nMinimum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MIN_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'The Compute Engine Network that the cluster will connect to. Google Kubernetes Engine will use this network when creating routes and firewalls for the clusters. Defaults to the \'default\' network',
              args: [
                Arg(
                name: 'NETWORK',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-labels',
              description: 'Applies the given kubernetes labels on all nodes in the new node pool. Example:\n+\n  \$ {command} example-cluster --node-labels=label-a=value1,label-2=value2\n+\nNew nodes, including ones created by resize or recreate, will have these labels\non the kubernetes API node object and can be used in nodeSelectors.\nSee [](http://kubernetes.io/docs/user-guide/node-selection/) for examples.\n+\nNote that kubernetes labels, intended to associate cluster components\nand resources with one another and manage resource lifecycles, are different\nfrom Kubernetes Engine labels that are used for the purpose of tracking billing\nand usage information',
              args: [
                Arg(
                name: 'NODE_LABEL',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-locations',
              description: 'The set of zones in which the specified node footprint should be replicated.\nAll zones must be in the same region as the cluster\'s master(s), specified by\nthe `--zone` or `--region` flag. Additionally, for zonal clusters,\n`--node-locations` must contain the cluster\'s primary zone. If not specified,\nall nodes will be in the cluster\'s primary zone (for zonal clusters) or spread\nacross three randomly chosen zones within the cluster\'s region (for regional\nclusters).\n+\nNote that `NUM_NODES` nodes will be created in each zone, such that if you\nspecify `--num-nodes=4` and choose two locations, 8 nodes will be created.\n+\nMultiple locations can be specified, separated by commas. For example:\n+\n  \$ {command} example-cluster --zone us-central1-a --node-locations us-central1-a,us-central1-b',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-taints',
              description: 'Applies the given kubernetes taints on all nodes in default node pool(s) in new cluster, which can be used with tolerations for pod scheduling. Example:\n+\n  \$ {command} example-cluster --node-taints=key1=val1:NoSchedule,key2=val2:PreferNoSchedule\n+\nNote, this feature uses `gcloud beta` commands. To use gcloud beta commands,\nyou must configure `gcloud` to use the v1beta1 API as described here: https://cloud.google.com/kubernetes-engine/docs/reference/api-organization#beta.\nTo read more about node-taints, see https://cloud.google.com/kubernetes-engine/docs/node-taints',
              args: [
                Arg(
                name: 'NODE_TAINT',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-version',
              description: 'The Kubernetes version to use for nodes. Defaults to server-specified.\n+\nThe default Kubernetes version is available using the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'NODE_VERSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--num-nodes',
              description: 'The number of nodes to be created in each of the cluster\'s zones',
              args: [
                Arg(
                name: 'NUM_NODES',
                description: 'Int',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password to use for cluster auth. Defaults to a server-specified randomly-generated string',
              args: [
                Arg(
                name: 'PASSWORD',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--preemptible',
              description: 'Create nodes using preemptible VM instances in the new cluster.\n+\n  \$ {command} example-cluster --preemptible\n+\nNew nodes, including ones created by resize or recreate, will use preemptible\nVM instances. See https://cloud.google.com/kubernetes-engine/docs/preemptible-vm\nfor more information on how to use Preemptible VMs with Kubernetes Engine'
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--release-channel',
              description: 'Release channel a cluster is subscribed to.\n+\nWhen a cluster is subscribed to a release channel, Google maintains\nboth the master version and the node version. Node auto-upgrade\ndefaults to true and cannot be disabled.\n+\n_CHANNEL_ must be one of:\n+\n*None*::: Use \'None\' to opt-out of any release channel.\n+\n*rapid*::: \'rapid\' channel is offered on an early access basis for customers who want\nto test new releases.\n+\nWARNING: Versions available in the \'rapid\' channel may be subject to\nunresolved issues with no known workaround and are not subject to any\nSLAs.\n+\n*regular*::: Clusters subscribed to \'regular\' receive versions that are considered GA\nquality. \'regular\' is intended for production users who want to take\nadvantage of new features.\n+\n*stable*::: Clusters subscribed to \'stable\' receive versions that are known to be\nstable and reliable in production.\n+\n:::\n+',
              args: [
                Arg(
                name: 'CHANNEL',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'rapid'),
                  FigSuggestion(name: 'regular'),
                  FigSuggestion(name: 'stable')
                ]
              )
              ]
            ),
            Option(
              name: '--reservation',
              description: 'The name of the reservation, required when `--reservation-affinity=specific`',
              args: [
                Arg(
                name: 'RESERVATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--reservation-affinity',
              description: 'The type of the reservation for the default initial node pool. _RESERVATION_AFFINITY_ must be one of: *any*, *none*, *specific*',
              args: [
                Arg(
                name: 'RESERVATION_AFFINITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'any'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'specific')
                ]
              )
              ]
            ),
            Option(
              name: '--resource-usage-bigquery-dataset',
              description: 'The name of the BigQuery dataset to which the cluster\'s usage of cloud\nresources is exported. A table will be created in the specified dataset to\nstore cluster resource usage. The resulting table can be joined with BigQuery\nBilling Export to produce a fine-grained cost breakdown.\n+\nExample:\n+\n  \$ {command} example-cluster --resource-usage-bigquery-dataset=example_bigquery_dataset_name',
              args: [
                Arg(
                name: 'RESOURCE_USAGE_BIGQUERY_DATASET',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Specifies scopes for the node instances. Examples:\n+\n  \$ {command} example-cluster --scopes=https://www.googleapis.com/auth/devstorage.read_only\n+\n  \$ {command} example-cluster --scopes=bigquery,storage-rw,compute-ro\n+\nMultiple SCOPEs can be specified, separated by commas. `logging-write`\nand/or `monitoring` are added unless Cloud Logging and/or Cloud Monitoring\nare disabled (see `--enable-cloud-logging` and `--enable-cloud-monitoring`\nfor more information).\nSCOPE can be either the full URI of the scope or an alias. *default* scopes are\nassigned to all instances. Available aliases are:\n+\nAlias | URI\n--- | ---\nbigquery | https://www.googleapis.com/auth/bigquery\ncloud-platform | https://www.googleapis.com/auth/cloud-platform\ncloud-source-repos | https://www.googleapis.com/auth/source.full_control\ncloud-source-repos-ro | https://www.googleapis.com/auth/source.read_only\ncompute-ro | https://www.googleapis.com/auth/compute.readonly\ncompute-rw | https://www.googleapis.com/auth/compute\ndatastore | https://www.googleapis.com/auth/datastore\ndefault | https://www.googleapis.com/auth/devstorage.read_only\n| https://www.googleapis.com/auth/logging.write\n| https://www.googleapis.com/auth/monitoring.write\n| https://www.googleapis.com/auth/pubsub\n| https://www.googleapis.com/auth/service.management.readonly\n| https://www.googleapis.com/auth/servicecontrol\n| https://www.googleapis.com/auth/trace.append\ngke-default | https://www.googleapis.com/auth/devstorage.read_only\n| https://www.googleapis.com/auth/logging.write\n| https://www.googleapis.com/auth/monitoring\n| https://www.googleapis.com/auth/service.management.readonly\n| https://www.googleapis.com/auth/servicecontrol\n| https://www.googleapis.com/auth/trace.append\nlogging-write | https://www.googleapis.com/auth/logging.write\nmonitoring | https://www.googleapis.com/auth/monitoring\nmonitoring-read | https://www.googleapis.com/auth/monitoring.read\nmonitoring-write | https://www.googleapis.com/auth/monitoring.write\npubsub | https://www.googleapis.com/auth/pubsub\nservice-control | https://www.googleapis.com/auth/servicecontrol\nservice-management | https://www.googleapis.com/auth/service.management.readonly\nsql (deprecated) | https://www.googleapis.com/auth/sqlservice\nsql-admin | https://www.googleapis.com/auth/sqlservice.admin\nstorage-full | https://www.googleapis.com/auth/devstorage.full_control\nstorage-ro | https://www.googleapis.com/auth/devstorage.read_only\nstorage-rw | https://www.googleapis.com/auth/devstorage.read_write\ntaskqueue | https://www.googleapis.com/auth/taskqueue\ntrace | https://www.googleapis.com/auth/trace.append\nuserinfo-email | https://www.googleapis.com/auth/userinfo.email\n+\nDEPRECATION WARNING: https://www.googleapis.com/auth/sqlservice account scope\nand `sql` alias do not provide SQL instance management capabilities and have\nbeen deprecated. Please, use https://www.googleapis.com/auth/sqlservice.admin\nor `sql-admin` to manage your Google SQL Service instances.\n+',
              args: [
                Arg(
                name: 'SCOPE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'The Google Cloud Platform Service Account to be used by the node VMs. If a service account is specified, the cloud-platform and userinfo.email scopes are used. If no Service Account is specified, the project default service account is used',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--services-ipv4-cidr',
              description: 'Set the IP range for the services IPs.\n+\nCan be specified as a netmask size (e.g. \'/20\') or as in CIDR notion\n(e.g. \'10.100.0.0/20\'). If given as a netmask size, the IP range will\nbe chosen automatically from the available space in the network.\n+\nIf unspecified, the services CIDR range will be chosen with a default\nmask size.\n+\nCan not be specified unless \'--enable-ip-alias\' is also specified',
              args: [
                Arg(
                name: 'CIDR',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--services-secondary-range-name',
              description: 'Set the secondary range to be used for services (e.g. ClusterIPs).\nNAME must be the name of an existing secondary range in the cluster\nsubnetwork.\n+\nMust be used in conjunction with \'--enable-ip-alias\'. Cannot be used\nwith --create-subnetwork',
              args: [
                Arg(
                name: 'NAME',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--shielded-integrity-monitoring',
              description: 'Enables monitoring and attestation of the boot integrity of the\ninstance. The attestation is performed against the integrity policy\nbaseline. This baseline is initially derived from the implicitly\ntrusted boot image when the instance is created'
            ),
            Option(
              name: '--shielded-secure-boot',
              description: 'The instance will boot with secure boot enabled'
            ),
            Option(
              name: '--subnetwork',
              description: 'The Google Compute Engine subnetwork\n(https://cloud.google.com/compute/docs/subnetworks) to which the cluster is\nconnected. The subnetwork must belong to the network specified by --network.\n+\nCannot be used with the "--create-subnetwork" option',
              args: [
                Arg(
                name: 'SUBNETWORK',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Applies the given Compute Engine tags (comma separated) on all nodes in the new\nnode-pool. Example:\n+\n  \$ {command} example-cluster --tags=tag1,tag2\n+\nNew nodes, including ones created by resize or recreate, will have these tags\non the Compute Engine API instance object and can be used in firewall rules.\nSee https://cloud.google.com/sdk/gcloud/reference/compute/firewall-rules/create\nfor examples',
              args: [
                Arg(
                name: 'TAG',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--tpu-ipv4-cidr',
              description: 'Set the IP range for the Cloud TPUs.\n+\nCan be specified as a netmask size (e.g. \'/20\') or as in CIDR notion\n(e.g. \'10.100.0.0/20\'). If given as a netmask size, the IP range will be chosen\nautomatically from the available space in the network.\n+\nIf unspecified, the TPU CIDR range will use automatic default \'/20\'.\n+\nCan not be specified unless \'--enable-tpu\' and \'--enable-ip-alias\' are also\nspecified',
              args: [
                Arg(
                name: 'CIDR',
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
              name: '--username',
              description: 'The user name to use for basic auth for the cluster. Use `--password` to specify\na password; if not, the server will randomly generate one',
              args: [
                Arg(
                name: 'USERNAME',
                description: 'String',
                suggestions: []
              )
              ]
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
            ),
            Option(
              name: '--workload-metadata',
              description: 'Type of metadata server available to pods running in the node pool. _WORKLOAD_METADATA_ must be one of:\n+\n*GCE_METADATA*::: Pods running in this node pool have access to the node\'s underlying Compute Engine Metadata Server.\n*GKE_METADATA*::: Run the Kubernetes Engine Metadata Server on this node. The Kubernetes Engine Metadata Server exposes a metadata API to workloads that is compatible with the V1 Compute Metadata APIs exposed by the Compute Engine and App Engine Metadata Servers. This feature can only be enabled if Workload Identity is enabled at the cluster level.\n:::\n+',
              args: [
                Arg(
                name: 'WORKLOAD_METADATA',
                description: 'Googlecloudsdk.command_lib.container.flags:<lambda>',
                suggestions: [
                  FigSuggestion(name: 'GCE_METADATA'),
                  FigSuggestion(name: 'GKE_METADATA')
                ]
              )
              ]
            ),
            Option(
              name: '--workload-pool',
              description: 'Enable Workload Identity on the cluster.\n+\nWhen enabled, Kubernetes service accounts will be able to act as Cloud IAM\nService Accounts, through the provided workload pool.\n+\nCurrently, the only accepted workload pool is the workload pool of\nthe Cloud project containing the cluster, `PROJECT_ID.svc.id.goog`.\n+\nFor more information on Workload Identity, see\n+\n            https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity',
              args: [
                Arg(
                name: 'WORKLOAD_POOL',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the cluster to create.\n+\nThe name may contain only lowercase alphanumerics and \'-\', must start with a\nletter and end with an alphanumeric, and must be no longer than 40\ncharacters'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing cluster for running containers',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The names of the clusters to delete',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe an existing cluster for running containers',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of this cluster'
          )
          ]
        ),
        Subcommand(
          name: 'get-credentials',
          description: 'Fetch credentials for a running cluster',
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
              name: '--internal-ip',
              description: 'Whether to use the internal IP address of the cluster endpoint'
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'Name of the cluster to get credentials for. Overrides the default *container/cluster* property value for this command invocation'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List existing clusters for running containers',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
              name: '--uri',
              description: 'Print a list of resource URIs instead of the default output'
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resize',
          description: 'Resizes an existing cluster for running containers',
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
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--node-pool',
              description: 'The node pool to resize',
              args: [
                Arg(
                name: 'NODE_POOL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--num-nodes',
              description: 'Target number of nodes in the cluster',
              args: [
                Arg(
                name: 'NUM_NODES',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--size',
              description: '(DEPRECATED) Target number of nodes in the cluster.\n+\nThe --size flag is now deprecated. Please use `--num-nodes` instead',
              args: [
                Arg(
                name: 'SIZE',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of this cluster'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update cluster settings for an existing container cluster',
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
              name: '--add-maintenance-exclusion-end',
              description: 'End time of the exclusion window. Must take place after the start time. See\n\$ gcloud topic datetimes for information on time formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--add-maintenance-exclusion-name',
              description: 'A descriptor for the exclusion that can be used to remove it. If not specified,\nit will be autogenerated',
              args: [
                Arg(
                name: 'NAME',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--add-maintenance-exclusion-start',
              description: 'Start time of the exclusion window (can occur in the past). If not specified,\nthe current time will be used. See \$ gcloud topic datetimes for information on\ntime formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Return immediately, without waiting for the operation in progress to\ncomplete'
            ),
            Option(
              name: '--autoprovisioning-config-file',
              description: 'Path of the JSON/YAML file which contains information about the\ncluster\'s node autoprovisioning configuration. Currently it contains\na list of resource limits, identity defaults for autoprovisioning, node upgrade\nsettings, node management settings, minimum cpu platform, node locations for\nautoprovisioning, disk type and size configuration, shielded instance settings,\nand customer-managed encryption keys settings.\n+\nResource limits are specified in the field \'resourceLimits\'.\nEach resource limits definition contains three fields:\nresourceType, maximum and minimum.\nResource type can be "cpu", "memory" or an accelerator (e.g.\n"nvidia-tesla-k80" for nVidia Tesla K80). Use gcloud compute accelerator-types\nlist to learn about available accelerator types.\nMaximum is the maximum allowed amount with the unit of the resource.\nMinimum is the minimum allowed amount with the unit of the resource.\n+\nIdentity default contains at most one of the below fields:\nserviceAccount: The Google Cloud Platform Service Account to be used by node VMs in\nautoprovisioned node pools. If not specified, the project\'s default service account\nis used.\nscopes: A list of scopes to be used by node instances in autoprovisioned node pools.\nMultiple scopes can be specified, separated by commas. For information on defaults,\nlook at:\nhttps://cloud.google.com/sdk/gcloud/reference/container/clusters/create#--scopes\n+\nNode Upgrade settings are specified under the field\n\'upgradeSettings\', which has the following fields:\nmaxSurgeUpgrade: Number of extra (surge) nodes to be created on\neach upgrade of an autoprovisioned node pool.\nmaxUnavailableUpgrade: Number of nodes that can be unavailable at the\nsame time on each upgrade of an autoprovisioned node pool.\n+\nNode Management settings are specified under the field\n\'nodeManagement\', which has the following fields:\nenableAutoUpgrade: A boolean field that indicates if node\nautoupgrade is enabled for autoprovisioned node pools.\nenableAutoRepair: A boolean field that indicates if node\nautorepair is enabled for autoprovisioned node pools.\n+\nminCpuPlatform: If specified, new autoprovisioned nodes will be\nscheduled on host with specified CPU architecture or a newer one.\nNote: Min CPU platform can only be specified in Beta and Alpha.\n+\nAutoprovisioning locations is a set of zones where new node pools\ncan be created by Autoprovisioning. Autoprovisioning locations are\nspecified in the field \'autoprovisioningLocations\'. All zones must\nbe in the same region as the cluster\'s master(s).\n+\nDisk type and size are specified under the \'diskType\' and \'diskSizeGb\' fields,\nrespectively. If specified, new autoprovisioned nodes will be created with\ncustom boot disks configured by these settings.\n+\nShielded instance settings are specified under the \'shieldedInstanceConfig\'\nfield, which has the following fields:\nenableSecureBoot: A boolean field that indicates if secure boot is enabled for\nautoprovisioned nodes.\nenableIntegrityMonitoring: A boolean field that indicates if integrity\nmonitoring is enabled for autoprovisioned nodes.\n+\nCustomer Managed Encryption Keys (CMEK) used by new auto-provisioned node pools\ncan be specified in the \'bootDiskKmsKey\' field',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_CONFIG_FILE',
                description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-locations',
              description: 'Set of zones where new node pools can be created by autoprovisioning.\nAll zones must be in the same region as the cluster\'s master(s).\nMultiple locations can be specified, separated by commas',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-max-surge-upgrade',
              description: 'Number of extra (surge) nodes to be created on each upgrade of an\nautoprovisioned node pool',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_MAX_SURGE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--autoprovisioning-max-unavailable-upgrade',
              description: 'Number of nodes that can be unavailable at the same time on each\nupgrade of an autoprovisioned node pool',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_MAX_UNAVAILABLE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--autoprovisioning-min-cpu-platform',
              description: 'If specified, new autoprovisioned nodes will be scheduled on host with\nspecified CPU architecture or a newer one',
              args: [
                Arg(
                name: 'PLATFORM',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-scopes',
              description: 'The scopes be used by node instances in autoprovisioned node pools.\nMultiple scopes can be specified, separated by commas. For information\non defaults, look at:\nhttps://cloud.google.com/sdk/gcloud/reference/container/clusters/create#--scopes',
              args: [
                Arg(
                name: 'SCOPE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--autoprovisioning-service-account',
              description: 'The Google Cloud Platform Service Account to be used by node VMs in\nautoprovisioned node pools. If not specified, the project default\nservice account is used',
              args: [
                Arg(
                name: 'AUTOPROVISIONING_SERVICE_ACCOUNT',
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
              name: '--clear-maintenance-window',
              description: 'If set, remove the maintenance window that was set with --maintenance-window\nfamily of flags'
            ),
            Option(
              name: '--clear-resource-usage-bigquery-dataset',
              description: 'Disables exporting cluster resource usage to BigQuery'
            ),
            Option(
              name: '--cloud-run-config',
              description: 'Configurations for Cloud Run addon, requires `--addons=CloudRun` for create\nand `--update-addons=CloudRun=ENABLED` for update.\n+\n*load-balancer-type*:::Optional Type of load-balancer-type EXTERNAL or INTERNAL\nExample:\n+\n  \$ {command} example-cluster --cloud-run-config=load-balancer-type=INTERNAL',
              args: [
                Arg(
                name: 'load-balancer-type=EXTERNAL',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--complete-credential-rotation',
              description: 'Complete the IP and credential rotation for this cluster. For example:\n+\n  \$ {command} example-cluster --complete-credential-rotation\n+\nThis causes the cluster to stop serving its old IP, return to a single IP, and invalidate old credentials'
            ),
            Option(
              name: '--complete-ip-rotation',
              description: 'Complete the IP rotation for this cluster. For example:\n+\n  \$ {command} example-cluster --complete-ip-rotation\n+\nThis causes the cluster to stop serving its old IP, and return to a single IP state'
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
              name: '--database-encryption-key',
              description: 'Enable Database Encryption.\n+\nEnable database encryption that will be used to encrypt Kubernetes Secrets at\nthe application layer. The key provided should be the resource ID in the format of\n`projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]`.\nFor more information, see\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/encrypting-secrets',
              args: [
                Arg(
                name: 'DATABASE_ENCRYPTION_KEY',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--disable-database-encryption',
              description: 'Disable database encryption.\n+\nDisable Database Encryption which encrypt Kubernetes Secrets at\nthe application layer. For more information, see\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/encrypting-secrets'
            ),
            Option(
              name: '--disable-default-snat',
              description: 'Disable default source NAT rules applied in cluster nodes.\n+\nBy default, cluster nodes perform source network address translation (SNAT)\nfor packets sent from Pod IP address sources to destination IP addresses\nthat are not in the non-masquerade CIDRs list.\nFor more details about SNAT and IP masquerading, see:\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works\nSNAT changes the packet\'s source IP address to the node\'s internal IP address.\n+\nWhen this flag is set, GKE does not perform SNAT for packets sent to any destination.\nYou must set this flag if the cluster uses privately reused public IPs.\n+\nThe --disable-default-snat flag is only applicable to private GKE clusters, which are\ninherently VPC-native. Thus, --disable-default-snat requires that the cluster was created\nwith both --enable-ip-alias and --enable-private-nodes'
            ),
            Option(
              name: '--disable-workload-identity',
              description: 'Disable Workload Identity on the cluster.\n+\nFor more information on Workload Identity, see\n+\n            https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity'
            ),
            Option(
              name: '--enable-autoprovisioning',
              description: 'Enables  node autoprovisioning for a cluster.\n+\nCluster Autoscaler will be able to create new node pools. Requires maximum CPU\nand memory limits to be specified',
              priority: 100
            ),
            Option(
              name: '--enable-autoprovisioning-autorepair',
              description: 'Enable node autorepair for autoprovisioned node pools.\nUse --no-enable-autoprovisioning-autorepair to disable',
              priority: 100
            ),
            Option(
              name: '--enable-autoprovisioning-autoupgrade',
              description: 'Enable node autoupgrade for autoprovisioned node pools.\nUse --no-enable-autoprovisioning-autoupgrade to disable',
              priority: 100
            ),
            Option(
              name: '--enable-autoscaling',
              description: 'Enables autoscaling for a node pool.\n+\nEnables autoscaling in the node pool specified by --node-pool or\nthe default node pool if --node-pool is not provided'
            ),
            Option(
              name: '--enable-basic-auth',
              description: 'Enable basic (username/password) auth for the cluster.  `--enable-basic-auth` is\nan alias for `--username=admin`; `--no-enable-basic-auth` is an alias for\n`--username=""`. Use `--password` to specify a password; if not, the server will\nrandomly generate one. For cluster versions before 1.12, if neither\n`--enable-basic-auth` nor `--username` is specified, `--enable-basic-auth` will\ndefault to `true`. After 1.12, `--enable-basic-auth` will default to `false`'
            ),
            Option(
              name: '--enable-binauthz',
              description: 'Enable Binary Authorization for this cluster'
            ),
            Option(
              name: '--enable-intra-node-visibility',
              description: 'Enable Intra-node visibility for this cluster.\n+\nEnabling intra-node visibility makes your intra-node pod-to-pod traffic\nvisible to the networking fabric. With this feature, you can use VPC flow\nlogging or other VPC features for intra-node traffic.\n+\nEnabling it on an existing cluster causes the cluster\nmaster and the cluster nodes to restart, which might cause a disruption'
            ),
            Option(
              name: '--enable-legacy-authorization',
              description: 'Enables the legacy ABAC authentication for the cluster.\nUser rights are granted through the use of policies which combine attributes\ntogether. For a detailed look at these properties and related formats, see\nhttps://kubernetes.io/docs/admin/authorization/abac/. To use RBAC permissions\ninstead, create or update your cluster with the option\n`--no-enable-legacy-authorization`'
            ),
            Option(
              name: '--enable-master-authorized-networks',
              description: 'Allow only specified set of CIDR blocks (specified by the\n`--master-authorized-networks` flag) to connect to Kubernetes master through\nHTTPS. Besides these blocks, the following have access as well:\n+\n  1) The private network the cluster connects to if\n  `--enable-private-nodes` is specified.\n  2) Google Compute Engine Public IPs if `--enable-private-nodes` is not\n  specified.\n+\nUse `--no-enable-master-authorized-networks` to disable. When disabled, public\ninternet (0.0.0.0/0) is allowed to connect to Kubernetes master through HTTPS'
            ),
            Option(
              name: '--enable-master-global-access',
              description: 'Use with private clusters to allow access to the master\'s private endpoint from any Google Cloud region or on-premises environment regardless of the\nprivate cluster\'s region'
            ),
            Option(
              name: '--enable-network-egress-metering',
              description: 'Enable network egress metering on this cluster.\n+\nWhen enabled, a DaemonSet is deployed into the cluster. Each DaemonSet pod\nmeters network egress traffic by collecting data from the conntrack table, and\nexports the metered metrics to the specified destination.\n+\nNetwork egress metering is disabled if this flag is omitted, or when\n`--no-enable-network-egress-metering` is set'
            ),
            Option(
              name: '--enable-network-policy',
              description: 'Enable network policy enforcement for this cluster. If you are enabling network policy on an existing cluster the network policy addon must first be enabled on the master by using --update-addons=NetworkPolicy=ENABLED flag'
            ),
            Option(
              name: '--enable-resource-consumption-metering',
              description: 'Enable resource consumption metering on this cluster.\n+\nWhen enabled, a table will be created in the specified BigQuery dataset to store\nresource consumption data. The resulting table can be joined with the resource\nusage table or with BigQuery billing export.\n+\nTo disable resource consumption metering, set `--no-enable-resource-consumption-\nmetering`. If this flag is omitted, then resource consumption metering will\nremain enabled or disabled depending on what is already configured for this\ncluster'
            ),
            Option(
              name: '--enable-shielded-nodes',
              description: 'Enable Shielded Nodes for this cluster. Enabling Shielded Nodes will enable a\nmore secure Node credential bootstrapping implementation. Starting with version\n1.18, clusters will have shielded GKE nodes by default'
            ),
            Option(
              name: '--enable-stackdriver-kubernetes',
              description: 'Enable Stackdriver Kubernetes monitoring and logging'
            ),
            Option(
              name: '--enable-vertical-pod-autoscaling',
              description: 'Enable vertical pod autoscaling for a cluster'
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
              name: '--generate-password',
              description: 'Ask the server to generate a secure password and use that as the basic auth password, keeping the existing username'
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
              name: '--logging-service',
              description: 'Logging service to use for the cluster. Options are:\n"logging.googleapis.com/kubernetes" (the Google Cloud Logging\nservice with Kubernetes-native resource model enabled),\n"logging.googleapis.com" (the Google Cloud Logging service),\n"none" (logs will not be exported from the cluster)',
              args: [
                Arg(
                name: 'LOGGING_SERVICE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--maintenance-window',
              description: 'Set a time of day when you prefer maintenance to start on this cluster. For example:\n+\n  \$ {command} example-cluster --maintenance-window=12:43\n+\nThe time corresponds to the UTC time zone, and must be in HH:MM format.\n+\nNon-emergency maintenance will occur in the 4 hour block starting at the\nspecified time.\n+\nThis is mutually exclusive with the recurring maintenance windows\nand will overwrite any existing window. Compatible with maintenance\nexclusions.\n+\nTo remove an existing maintenance window from the cluster, use\n\'--clear-maintenance-window\'',
              args: [
                Arg(
                name: 'START_TIME',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--maintenance-window-end',
              description: 'End time of the first window (can occur in the past). Must take place after the\nstart time. The difference in start and end time specifies the length of each\nrecurrence. See \$ gcloud topic datetimes for information on time formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--maintenance-window-recurrence',
              description: 'An RFC 5545 RRULE, specifying how the window will recur. Note that minimum\nrequirements for maintenance periods will be enforced. Note that FREQ=SECONDLY,\nMINUTELY, and HOURLY are not supported',
              args: [
                Arg(
                name: 'RRULE',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--maintenance-window-start',
              description: 'Start time of the first window (can occur in the past). The start time\ninfluences when the window will start for recurrences. See \$ gcloud topic\ndatetimes for information on time formats',
              args: [
                Arg(
                name: 'TIME_STAMP',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--master-authorized-networks',
              description: 'The list of CIDR blocks (up to 100 for private cluster, 50 for public cluster) that are allowed to connect to Kubernetes master through HTTPS. Specified in CIDR notation (e.g. 1.2.3.4/30). Cannot be specified unless `--enable-master-authorized-networks` is also specified',
              args: [
                Arg(
                name: 'NETWORK',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-accelerator',
              description: 'Sets maximum limit for a single type of accelerators (e.g. GPUs) in cluster.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator for which the limit is set. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Required) The maximum number of accelerators\nto which the cluster can be scaled',
              args: [
                Arg(
                name: 'type=TYPE,count=COUNT',
                description: 'Dict',
                suggestions: []
              )
              ],
              priority: 100
            ),
            Option(
              name: '--max-cpu',
              description: 'Maximum number of cores in the cluster.\n+\nMaximum number of cores to which the cluster can scale',
              args: [
                Arg(
                name: 'MAX_CPU',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-memory',
              description: 'Maximum memory in the cluster.\n+\nMaximum number of gigabytes of memory to which the cluster can scale',
              args: [
                Arg(
                name: 'MAX_MEMORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-nodes',
              description: 'Maximum number of nodes in the node pool.\n+\nMaximum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MAX_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-accelerator',
              description: 'Sets minimum limit for a single type of accelerators (e.g. GPUs) in cluster. Defaults\nto 0 for all accelerator types if it isn\'t set.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator for which the limit is set. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Required) The minimum number of accelerators\nto which the cluster can be scaled',
              args: [
                Arg(
                name: 'type=TYPE,count=COUNT',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-cpu',
              description: 'Minimum number of cores in the cluster.\n+\nMinimum number of cores to which the cluster can scale',
              args: [
                Arg(
                name: 'MIN_CPU',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-memory',
              description: 'Minimum memory in the cluster.\n+\nMinimum number of gigabytes of memory to which the cluster can scale',
              args: [
                Arg(
                name: 'MIN_MEMORY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-nodes',
              description: 'Minimum number of nodes in the node pool.\n+\nMinimum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MIN_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--monitoring-service',
              description: 'Monitoring service to use for the cluster. Options are:\n"monitoring.googleapis.com/kubernetes" (the Google Cloud\nMonitoring service with Kubernetes-native resource model enabled),\n"monitoring.googleapis.com" (the Google Cloud Monitoring service),\n"none" (no metrics will be exported from the cluster)',
              args: [
                Arg(
                name: 'MONITORING_SERVICE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-locations',
              description: 'The set of zones in which the specified node footprint should be replicated.\nAll zones must be in the same region as the cluster\'s master(s), specified by\nthe `--zone` or `--region` flag. Additionally, for zonal clusters,\n`--node-locations` must contain the cluster\'s primary zone. If not specified,\nall nodes will be in the cluster\'s primary zone (for zonal clusters) or spread\nacross three randomly chosen zones within the cluster\'s region (for regional\nclusters).\n+\nNote that `NUM_NODES` nodes will be created in each zone, such that if you\nspecify `--num-nodes=4` and choose two locations, 8 nodes will be created.\n+\nMultiple locations can be specified, separated by commas. For example:\n+\n  \$ {command} example-cluster --zone us-central1-a --node-locations us-central1-a,us-central1-b',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-pool',
              description: 'Node pool to be updated',
              args: [
                Arg(
                name: 'NODE_POOL',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password to use for cluster auth. Defaults to a server-specified randomly-generated string',
              args: [
                Arg(
                name: 'PASSWORD',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--release-channel',
              description: 'Subscribe or unsubscribe this cluster to a release channel.\n+\nWhen a cluster is subscribed to a release channel, Google maintains\nboth the master version and the node version. Node auto-upgrade\ndefaults to true and cannot be disabled.\n+\n_CHANNEL_ must be one of:\n+\n*None*::: Use \'None\' to opt-out of any release channel.\n+\n*rapid*::: \'rapid\' channel is offered on an early access basis for customers who want\nto test new releases.\n+\nWARNING: Versions available in the \'rapid\' channel may be subject to\nunresolved issues with no known workaround and are not subject to any\nSLAs.\n+\n*regular*::: Clusters subscribed to \'regular\' receive versions that are considered GA\nquality. \'regular\' is intended for production users who want to take\nadvantage of new features.\n+\n*stable*::: Clusters subscribed to \'stable\' receive versions that are known to be\nstable and reliable in production.\n+\n:::\n+',
              args: [
                Arg(
                name: 'CHANNEL',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'rapid'),
                  FigSuggestion(name: 'regular'),
                  FigSuggestion(name: 'stable')
                ]
              )
              ]
            ),
            Option(
              name: '--remove-labels',
              description: 'Labels to remove from the Google Cloud resources in use by the Kubernetes Engine\ncluster. These are unrelated to Kubernetes labels.\nExample:\n+\n  \$ {command} example-cluster --remove-labels=label_a,label_b',
              args: [
                Arg(
                name: 'KEY',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--remove-maintenance-exclusion',
              description: 'Name of a maintenance exclusion to remove. If you hadn\'t specified a name, one\nwas auto-generated. Get it with \$ gcloud container clusters describe',
              args: [
                Arg(
                name: 'NAME',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--resource-usage-bigquery-dataset',
              description: 'The name of the BigQuery dataset to which the cluster\'s usage of cloud\nresources is exported. A table will be created in the specified dataset to\nstore cluster resource usage. The resulting table can be joined with BigQuery\nBilling Export to produce a fine-grained cost breakdown.\n+\nExample:\n+\n  \$ {command} example-cluster --resource-usage-bigquery-dataset=example_bigquery_dataset_name',
              args: [
                Arg(
                name: 'RESOURCE_USAGE_BIGQUERY_DATASET',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--set-password',
              description: 'Set the basic auth password to the specified value, keeping the existing username'
            ),
            Option(
              name: '--start-credential-rotation',
              description: 'Start the rotation of IP and credentials for this cluster. For example:\n+\n  \$ {command} example-cluster --start-credential-rotation\n+\nThis causes the cluster to serve on two IPs, and will initiate a node upgrade to point to the new IP'
            ),
            Option(
              name: '--start-ip-rotation',
              description: 'Start the rotation of this cluster to a new IP. For example:\n+\n  \$ {command} example-cluster --start-ip-rotation\n+\nThis causes the cluster to serve on two IPs, and will initiate a node upgrade to point to the new IP'
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
              name: '--update-addons',
              description: 'Cluster addons to enable or disable. Options are\nHorizontalPodAutoscaling=ENABLED|DISABLED\nHttpLoadBalancing=ENABLED|DISABLED\nKubernetesDashboard=ENABLED|DISABLED\nNetworkPolicy=ENABLED|DISABLED\nCloudRun=ENABLED|DISABLED\nConfigConnector=ENABLED|DISABLED\nNodeLocalDNS=ENABLED|DISABLED',
              args: [
                Arg(
                name: 'ADDON=ENABLED|DISABLED',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--update-labels',
              description: 'Labels to apply to the Google Cloud resources in use by the Kubernetes Engine\ncluster. These are unrelated to Kubernetes labels.\nExample:\n+\n  \$ {command} example-cluster --update-labels=label_a=value1,label_b=value2',
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
              name: '--username',
              description: 'The user name to use for basic auth for the cluster. Use `--password` to specify\na password; if not, the server will randomly generate one',
              args: [
                Arg(
                name: 'USERNAME',
                description: 'String',
                suggestions: []
              )
              ]
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
            ),
            Option(
              name: '--workload-pool',
              description: 'Enable Workload Identity on the cluster.\n+\nWhen enabled, Kubernetes service accounts will be able to act as Cloud IAM\nService Accounts, through the provided workload pool.\n+\nCurrently, the only accepted workload pool is the workload pool of\nthe Cloud project containing the cluster, `PROJECT_ID.svc.id.goog`.\n+\nFor more information on Workload Identity, see\n+\n            https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity',
              args: [
                Arg(
                name: 'WORKLOAD_POOL',
                description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the cluster to update'
          )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade the Kubernetes version of an existing container cluster',
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
              name: '--cluster-version',
              description: 'The Kubernetes release version to which to upgrade the cluster\'s nodes.\n+\nIf desired cluster version is omitted, *node* upgrades default to the current\n*master* version and *master* upgrades default to the default cluster version,\nwhich can be found in the server config.\n+\nYou can find the list of allowed versions for upgrades by running:\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'CLUSTER_VERSION',
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
              name: '--image-type',
              description: 'The image type to use for the cluster/node pool. Defaults to server-specified.\n+\nImage Type specifies the base OS that the nodes in the cluster/node pool will run on.\nIf an image type is specified, that will be assigned to the cluster/node pool and all\nfuture upgrades will use the specified image type. If it is not specified the\nserver will pick the default image type.\n+\nThe default image type and the list of valid image types are available\nusing the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'IMAGE_TYPE',
                description: 'String',
                suggestions: []
              )
              ]
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
              name: '--master',
              description: 'Upgrade the cluster\'s master to the latest version of Kubernetes supported on Kubernetes Engine. Nodes cannot be upgraded at the same time as the master'
            ),
            Option(
              name: '--node-pool',
              description: 'The node pool to upgrade',
              args: [
                Arg(
                name: 'NODE_POOL',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the cluster to upgrade'
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
          name: '--region',
          description: 'Compute region (e.g. us-central1) for the cluster',
          args: [
            Arg(
            name: 'REGION',
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
        ),
        Option(
          name: '--zone',
          description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
          args: [
            Arg(
            name: 'ZONE',
            description: 'String',
            suggestions: []
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-server-config',
      description: 'Get Kubernetes Engine server config',
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
          name: '--region',
          description: 'Compute region (e.g. us-central1) for the cluster',
          args: [
            Arg(
            name: 'REGION',
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
        ),
        Option(
          name: '--zone',
          description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
          args: [
            Arg(
            name: 'ZONE',
            description: 'String',
            suggestions: []
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'hub',
      description: 'Centrally manage features and services on all your Kubernetes clusters with Hub',
      subcommands: [
        Subcommand(
          name: 'memberships',
          description: 'Manage memberships of all your GKE and other Kubernetes cluster with HUB',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Create a new membership for a cluster',
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
                  name: '--external-id',
                  description: 'External-id of the membership resource',
                  args: [
                    Arg(
                    name: 'EXTERNAL_ID',
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
                  name: '--gke-cluster-self-link',
                  description: 'GKE cluster self-link of the cluster represented by this membership;\nfor example,\n\'//container.googleapis.com/projects/my-project/locations/us-central1-a/clusters/my-cluster.\'\nThis is only valid if the represented cluster is a GKE cluster. The\nprovided self-link will be validated to confirm that it maps to the\ncluster represented by this membership',
                  args: [
                    Arg(
                    name: 'GKE_CLUSTER_SELF_LINK',
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
                  description: 'The location name',
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
                name: 'MEMBERSHIP',
                description: 'ID of the membership or fully qualified identifier for the membership'
              )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a membership',
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
                  description: 'The location name',
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
                name: 'MEMBERSHIP',
                description: 'ID of the membership or fully qualified identifier for the membership'
              )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Describe a membership',
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
                  description: 'The location name',
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
                name: 'MEMBERSHIP',
                description: 'ID of the membership or fully qualified identifier for the membership'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List memberships',
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
                  name: '--uri',
                  description: 'Print a list of resource URIs instead of the default output'
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
              name: 'register',
              description: 'Register a cluster with Hub',
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
                  name: '--context',
                  description: 'The cluster context as it appears in the kubeconfig file. You can get\nthis value from the command line by running command:\n`kubectl config current-context`',
                  args: [
                    Arg(
                    name: 'CONTEXT',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
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
                  name: '--gke-cluster',
                  description: 'The location/name of the GKE cluster. The location can be a zone or\na region for e.g `us-central1-a/my-cluster`',
                  args: [
                    Arg(
                    name: 'LOCATION/CLUSTER_NAME',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--gke-uri',
                  description: 'The URI of the GKE cluster; for example,\n\'https://container.googleapis.com/projects/my-project/locations/us-central1-a/clusters/my-cluster\'\nThe URI can obtain by calling:\n    gcloud container clusters list --uri\nThis is only valid if the represented cluster is a GKE cluster. The\nprovided URI will be validated to confirm that it maps to the valid\nGKE cluster',
                  args: [
                    Arg(
                    name: 'GKE_URI',
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
                  name: '--kubeconfig',
                  description: 'The kubeconfig file containing an entry for the cluster. Defaults to\n\$KUBECONFIG if it is set in the environment, otherwise defaults to\n\$HOME/.kube/config',
                  args: [
                    Arg(
                    name: 'KUBECONFIG',
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
                  name: '--manifest-output-file',
                  description: 'The full path of the file into which the Connect Agent installation\nmanifest should be stored. If this option is provided, then the\nmanifest will be written to this file and will not be deployed into\nthe cluster by gcloud, and it will need to be deployed manually',
                  args: [
                    Arg(
                    name: 'MANIFEST_OUTPUT_FILE',
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
                  name: '--proxy',
                  description: 'The proxy address in the format of http[s]://{hostname}. The proxy\nmust support the HTTP CONNECT method in order for this connection to\nsucceed',
                  args: [
                    Arg(
                    name: 'PROXY',
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
                  name: '--service-account-key-file',
                  description: 'The JSON file of a Google Cloud service account private key. This\nservice account key is stored as a secret named ``creds-gcp\'\' in\ngke-connect namespace. To update the ``creds-gcp\'\' secret in\ngke-connect namespace with a new service account key file, run the\nfollowing command:\n+\nkubectl delete secret creds-gcp -n gke-connect\n+\nkubectl create secret generic creds-gcp -n gke-connect --from-file=creds-gcp.json=/path/to/file',
                  args: [
                    Arg(
                    name: 'SERVICE_ACCOUNT_KEY_FILE',
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
                name: 'CLUSTER_NAME',
                description: 'The membership name that you choose to uniquely represents the cluster\nbeing registered on the Hub'
              )
              ]
            ),
            Subcommand(
              name: 'unregister',
              description: 'Unregister a cluster from Hub',
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
                  name: '--context',
                  description: 'The cluster context as it appears in the kubeconfig file. You can get\nthis value from the command line by running command:\n`kubectl config current-context`',
                  args: [
                    Arg(
                    name: 'CONTEXT',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
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
                  name: '--gke-cluster',
                  description: 'The location/name of the GKE cluster. The location can be a zone or\na region for e.g `us-central1-a/my-cluster`',
                  args: [
                    Arg(
                    name: 'LOCATION/CLUSTER_NAME',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--gke-uri',
                  description: 'The URI of the GKE cluster; for example,\n\'https://container.googleapis.com/projects/my-project/locations/us-central1-a/clusters/my-cluster\'\nThe URI can obtain by calling:\n    gcloud container clusters list --uri\nThis is only valid if the represented cluster is a GKE cluster. The\nprovided URI will be validated to confirm that it maps to the valid\nGKE cluster',
                  args: [
                    Arg(
                    name: 'GKE_URI',
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
                  name: '--kubeconfig',
                  description: 'The kubeconfig file containing an entry for the cluster. Defaults to\n\$KUBECONFIG if it is set in the environment, otherwise defaults to\n\$HOME/.kube/config',
                  args: [
                    Arg(
                    name: 'KUBECONFIG',
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
                name: 'CLUSTER_NAME',
                description: 'The membership name that corresponds to the cluster being\nunregistered. To get list of all the memberships on the Hub,\nconsider using the command: `{parent_command} list`'
              )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a membership',
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
                  description: 'The location name',
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
                name: 'MEMBERSHIP',
                description: 'ID of the membership or fully qualified identifier for the membership'
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
      name: 'images',
      description: 'List and manipulate Google Container Registry images',
      subcommands: [
        Subcommand(
          name: 'add-tag',
          description: 'Adds tags to existing image',
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
              name: 'SRC_IMAGE',
              description: 'The fully qualified name(s) of image(s) to add tags for. The name(s) should be formatted as *.gcr.io/PROJECT_ID/IMAGE_PATH@sha256:DIGEST or *.gcr.io/PROJECT_ID/IMAGE_PATH:TAG'
            ),
            Arg(
              name: 'DEST_IMAGE',
              description: 'The fully qualified name(s) of image(s) to be the new tags. The name(s) should be formatted as  *.gcr.io/PROJECT_ID/IMAGE_PATH:TAG',
              isVariadic: true
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete existing images',
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
              name: '--force-delete-tags',
              description: 'If there are tags pointing to an image to be deleted then they must all be specified explicitly, or this flag must be specified, for the command to succeed'
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
            name: 'IMAGE_NAME',
            description: 'The fully qualified name(s) of image(s) to delete. The name(s) should be formatted as *.gcr.io/PROJECT_ID/IMAGE_PATH@sha256:DIGEST or *.gcr.io/PROJECT_ID/IMAGE_PATH:TAG',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Lists information about the specified image',
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
            name: 'IMAGE_NAME',
            description: 'The fully qualified name(s) of image(s) to describe. The name(s) should be formatted as *.gcr.io/PROJECT_ID/IMAGE_PATH@sha256:DIGEST or *.gcr.io/PROJECT_ID/IMAGE_PATH:TAG'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List existing images',
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
              name: '--repository',
              description: 'The name of the repository. Format: *.gcr.io/repository. Defaults to gcr.io/<project>, for the active project',
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
              name: '--uri',
              description: 'Print a list of resource URIs instead of the default output'
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
          name: 'list-tags',
          description: 'List tags and digests for the specified image',
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
              description: 'Comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~\'\' for descending\norder on that field. This flag interacts with other flags that are applied\nin this order: *--flatten*, *--sort-by*, *--filter*, *--limit*.\n The default is *~timestamp*',
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
            name: 'IMAGE_NAME',
            description: 'The name of the image to list tags for. The name format should be *.gcr.io/PROJECT_ID/IMAGE_PATH'
          )
          ]
        ),
        Subcommand(
          name: 'untag',
          description: 'Remove existing image tags',
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
            name: 'IMAGE_NAME',
            description: 'The fully qualified name(s) of image(s) to untag. The name(s) should be formatted as  *.gcr.io/PROJECT_ID/IMAGE_PATH:TAG',
            isVariadic: true
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
      name: 'node-pools',
      description: 'Create and delete operations for Google Kubernetes Engine node pools',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a node pool in a running cluster',
          options: [
            Option(
              name: '--accelerator',
              description: 'Attaches accelerators (e.g. GPUs) to all nodes.\n+\n*type*::: (Required) The specific type (e.g. nvidia-tesla-k80 for nVidia Tesla K80)\nof accelerator to attach to the instances. Use ```gcloud compute\naccelerator-types list``` to learn about all available accelerator types.\n+\n*count*::: (Optional) The number of accelerators to attach to the\ninstances. The default value is 1',
              args: [
                Arg(
                name: 'type=TYPE,[count=COUNT]',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
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
              name: '--boot-disk-kms-key',
              description: 'The Customer Managed Encryption Key used to encrypt the boot disk attached\nto each node in the node pool. This should be of the form\nprojects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME].\nFor more information about protecting resources with Cloud KMS Keys please\nsee:\nhttps://cloud.google.com/compute/docs/disks/customer-managed-encryption',
              args: [
                Arg(
                name: 'BOOT_DISK_KMS_KEY',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--cluster',
              description: 'The cluster to add the node pool to. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--disk-size',
              description: 'Size for node VM boot disks. Defaults to 100GB',
              args: [
                Arg(
                name: 'DISK_SIZE',
                description: 'Googlecloudsdk.calliope.arg_parsers:ParseWithBoundsChecking',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--disk-type',
              description: 'Type of the node VM boot disk. Defaults to pd-standard. _DISK_TYPE_ must be one of: *pd-standard*, *pd-ssd*, *pd-balanced*',
              args: [
                Arg(
                name: 'DISK_TYPE',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'pd-standard'),
                  FigSuggestion(name: 'pd-ssd'),
                  FigSuggestion(name: 'pd-balanced')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-autoprovisioning',
              description: 'Enables Cluster Autoscaler to treat the node pool as if it was autoprovisioned.\n+\nCluster Autoscaler will be able to delete the node pool if it\'s unneeded'
            ),
            Option(
              name: '--enable-autorepair',
              description: 'Enable node autorepair feature for a node pool.\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --enable-autorepair\n+\nNode autorepair is enabled by default for node pools using COS, COS_CONTAINERD, UBUNTU or UBUNTU_CONTAINERD\nas a base image, use --no-enable-autorepair to disable.\n+\nSee https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-repair for more info'
            ),
            Option(
              name: '--enable-autoscaling',
              description: 'Enables autoscaling for a node pool.\n+\nEnables autoscaling in the node pool specified by --node-pool or\nthe default node pool if --node-pool is not provided'
            ),
            Option(
              name: '--enable-autoupgrade',
              description: 'Sets autoupgrade feature for a node pool.\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --enable-autoupgrade\n+\nSee https://cloud.google.com/kubernetes-engine/docs/node-auto-upgrades for more info.\n+\nEnabled by default, use *--no-enable-autoupgrade* to disable'
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
              name: '--image-type',
              description: 'The image type to use for the node pool. Defaults to server-specified.\n+\nImage Type specifies the base OS that the nodes in the node pool will run on.\nIf an image type is specified, that will be assigned to the node pool and all\nfuture upgrades will use the specified image type. If it is not specified the\nserver will pick the default image type.\n+\nThe default image type and the list of valid image types are available\nusing the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'IMAGE_TYPE',
                description: 'String',
                suggestions: []
              )
              ]
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
              name: '--local-ssd-count',
              description: 'The number of local SSD disks to provision on each node, formatted and mounted\nin the filesystem.\n+\nLocal SSDs have a fixed 375 GB capacity per device. The number of disks that\ncan be attached to an instance is limited by the maximum number of disks\navailable on a machine, which differs by compute zone. See\nhttps://cloud.google.com/compute/docs/disks/local-ssd for more information',
              args: [
                Arg(
                name: 'LOCAL_SSD_COUNT',
                description: 'Int',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--machine-type',
              description: 'The type of machine to use for nodes. Defaults to e2-medium.\nThe list of predefined machine types is available using the following command:\n+\n  \$ gcloud compute machine-types list\n+\nYou can also specify custom machine types with the string "custom-CPUS-RAM"\nwhere ```CPUS``` is the number of virtual CPUs and ```RAM``` is the amount of\nRAM in MiB.\n+\nFor example, to create a node pool using custom machines with 2 vCPUs and 12 GB\nof RAM:\n+\n  \$ {command} high-mem-pool --machine-type=custom-2-12288',
              args: [
                Arg(
                name: 'MACHINE_TYPE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-nodes',
              description: 'Maximum number of nodes in the node pool.\n+\nMaximum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MAX_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-pods-per-node',
              description: 'The max number of pods per node for this node pool.\n+\nThis flag sets the maximum number of pods that can be run at the same time on a\nnode. This will override the value given with --default-max-pods-per-node flag\nset at the cluster level.\n+\nMust be used in conjunction with \'--enable-ip-alias\'',
              args: [
                Arg(
                name: 'MAX_PODS_PER_NODE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-surge-upgrade',
              description: 'Number of extra (surge) nodes to be created on each upgrade of the node pool.\n+\nSpecifies the number of extra (surge) nodes to be created during this node\npool\'s upgrades. For example, running the following command will result in\ncreating an extra node each time the node pool is upgraded:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --max-surge-upgrade=1   --max-unavailable-upgrade=0\n+\nMust be used in conjunction with \'--max-unavailable-upgrade\'',
              args: [
                Arg(
                name: 'MAX_SURGE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-unavailable-upgrade',
              description: 'Number of nodes that can be unavailable at the same time on each upgrade of the\nnode pool.\n+\nSpecifies the number of nodes that can be unavailable at the same time during\nthis node pool\'s upgrades. For example, running the following command will\nresult in having 3 nodes being upgraded in parallel (1 + 2), but keeping always\nat least 3 (5 - 2) available each time the node pool is upgraded:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --num-nodes=5   --max-surge-upgrade=1 --max-unavailable-upgrade=2\n+\nMust be used in conjunction with \'--max-surge-upgrade\'',
              args: [
                Arg(
                name: 'MAX_UNAVAILABLE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--metadata',
              description: 'Compute Engine metadata to be made available to the guest operating system\nrunning on nodes within the node pool.\n+\nEach metadata entry is a key/value pair separated by an equals sign.\nMetadata keys must be unique and less than 128 bytes in length. Values\nmust be less than or equal to 32,768 bytes in length. The total size of\nall keys and values must be less than 512 KB. Multiple arguments can be\npassed to this flag. For example:\n+\n``--metadata key-1=value-1,key-2=value-2,key-3=value-3\'\'\n+\nAdditionally, the following keys are reserved for use by Kubernetes\nEngine:\n+\n* ``cluster-location\'\'\n* ``cluster-name\'\'\n* ``cluster-uid\'\'\n* ``configure-sh\'\'\n* ``enable-os-login\'\'\n* ``gci-update-strategy\'\'\n* ``gci-ensure-gke-docker\'\'\n* ``instance-template\'\'\n* ``kube-env\'\'\n* ``startup-script\'\'\n* ``user-data\'\'\n+\nGoogle Kubernetes Engine sets the following keys by default:\n+\n* ``serial-port-logging-enable\'\'\n+\nSee also Compute Engine\'s\nlink:https://cloud.google.com/compute/docs/storing-retrieving-metadata[documentation]\non storing and retrieving instance metadata',
              args: [
                Arg(
                name: 'KEY=VALUE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--metadata-from-file',
              description: 'Same as ``--metadata\'\' except that the value for the entry will\nbe read from a local file',
              args: [
                Arg(
                name: 'KEY=LOCAL_FILE_PATH',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-cpu-platform',
              description: 'When specified, the nodes for the new node pool will be scheduled on host with\nspecified CPU architecture or a newer one.\n+\nExamples:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --min-cpu-platform=PLATFORM\n+\nTo list available CPU platforms in given zone, run:\n+\n  \$ gcloud beta compute zones describe ZONE --format="value(availableCpuPlatforms)"\n+\nCPU platform selection is available only in selected zones',
              args: [
                Arg(
                name: 'PLATFORM',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-nodes',
              description: 'Minimum number of nodes in the node pool.\n+\nMinimum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MIN_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-group',
              description: 'Assign instances of this pool to run on the specified Google Compute Engine\nnode group. This is useful for running workloads on sole tenant nodes.\n+\nTo see available sole tenant node-groups, run:\n+\n  \$ gcloud compute sole-tenancy node-groups list\n+\nTo create a sole tenant node group, run:\n+\n  \$ gcloud compute sole-tenancy node-groups create [GROUP_NAME]     --zone [ZONE] --node-template [TEMPLATE_NAME] --target-size [TARGET_SIZE]\n+\nSee https://cloud.google.com/compute/docs/nodes for more\ninformation on sole tenancy and node groups',
              args: [
                Arg(
                name: 'NODE_GROUP',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-labels',
              description: 'Applies the given kubernetes labels on all nodes in the new node pool. Example:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --node-labels=label1=value1,label2=value2\n+\nNew nodes, including ones created by resize or recreate, will have these labels\non the kubernetes API node object and can be used in nodeSelectors.\nSee [](http://kubernetes.io/docs/user-guide/node-selection/) for examples.\n+\nNote that kubernetes labels, intended to associate cluster components\nand resources with one another and manage resource lifecycles, are different\nfrom Kubernetes Engine labels that are used for the purpose of tracking billing\nand usage information',
              args: [
                Arg(
                name: 'NODE_LABEL',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-locations',
              description: 'The set of zones in which the node pool\'s nodes should be located.\n+\nMultiple locations can be specified, separated by commas. For example:\n+\n  \$ {command} node-pool-1 --node-locations=us-central1-a,us-central1-b',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-taints',
              description: 'Applies the given kubernetes taints on all nodes in the new node pool, which can be used with tolerations for pod scheduling. Example:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --node-taints=key1=val1:NoSchedule,key2=val2:PreferNoSchedule\n+\nNote, this feature uses `gcloud beta` commands. To use gcloud beta commands,\nyou must configure `gcloud` to use the v1beta1 API as described here: https://cloud.google.com/kubernetes-engine/docs/reference/api-organization#beta.\nTo read more about node-taints, see https://cloud.google.com/kubernetes-engine/docs/node-taints',
              args: [
                Arg(
                name: 'NODE_TAINT',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-version',
              description: 'The Kubernetes version to use for nodes. Defaults to server-specified.\n+\nThe default Kubernetes version is available using the following command.\n+\n  \$ gcloud container get-server-config',
              args: [
                Arg(
                name: 'NODE_VERSION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--num-nodes',
              description: 'The number of nodes in the node pool in each of the cluster\'s zones',
              args: [
                Arg(
                name: 'NUM_NODES',
                description: 'Int',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--preemptible',
              description: 'Create nodes using preemptible VM instances in the new node pool.\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --preemptible\n+\nNew nodes, including ones created by resize or recreate, will use preemptible\nVM instances. See https://cloud.google.com/kubernetes-engine/docs/preemptible-vm\nfor more information on how to use Preemptible VMs with Kubernetes Engine'
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--reservation',
              description: 'The name of the reservation, required when `--reservation-affinity=specific`',
              args: [
                Arg(
                name: 'RESERVATION',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--reservation-affinity',
              description: 'The type of the reservation for the node pool. _RESERVATION_AFFINITY_ must be one of: *any*, *none*, *specific*',
              args: [
                Arg(
                name: 'RESERVATION_AFFINITY',
                description: 'String',
                suggestions: [
                  FigSuggestion(name: 'any'),
                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'specific')
                ]
              )
              ]
            ),
            Option(
              name: '--sandbox',
              description: 'Enables the requested sandbox on all nodes in the node pool. Example:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --sandbox="type=gvisor"\n+\nThe only supported type is \'gvisor\'',
              args: [
                Arg(
                name: 'type=TYPE',
                description: 'Dict',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Specifies scopes for the node instances. Examples:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --scopes=https://www.googleapis.com/auth/devstorage.read_only\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --scopes=bigquery,storage-rw,compute-ro\n+\nMultiple SCOPEs can be specified, separated by commas. `logging-write`\nand/or `monitoring` are added unless Cloud Logging and/or Cloud Monitoring\nare disabled (see `--enable-cloud-logging` and `--enable-cloud-monitoring`\nfor more information).\nSCOPE can be either the full URI of the scope or an alias. *default* scopes are\nassigned to all instances. Available aliases are:\n+\nAlias | URI\n--- | ---\nbigquery | https://www.googleapis.com/auth/bigquery\ncloud-platform | https://www.googleapis.com/auth/cloud-platform\ncloud-source-repos | https://www.googleapis.com/auth/source.full_control\ncloud-source-repos-ro | https://www.googleapis.com/auth/source.read_only\ncompute-ro | https://www.googleapis.com/auth/compute.readonly\ncompute-rw | https://www.googleapis.com/auth/compute\ndatastore | https://www.googleapis.com/auth/datastore\ndefault | https://www.googleapis.com/auth/devstorage.read_only\n| https://www.googleapis.com/auth/logging.write\n| https://www.googleapis.com/auth/monitoring.write\n| https://www.googleapis.com/auth/pubsub\n| https://www.googleapis.com/auth/service.management.readonly\n| https://www.googleapis.com/auth/servicecontrol\n| https://www.googleapis.com/auth/trace.append\ngke-default | https://www.googleapis.com/auth/devstorage.read_only\n| https://www.googleapis.com/auth/logging.write\n| https://www.googleapis.com/auth/monitoring\n| https://www.googleapis.com/auth/service.management.readonly\n| https://www.googleapis.com/auth/servicecontrol\n| https://www.googleapis.com/auth/trace.append\nlogging-write | https://www.googleapis.com/auth/logging.write\nmonitoring | https://www.googleapis.com/auth/monitoring\nmonitoring-read | https://www.googleapis.com/auth/monitoring.read\nmonitoring-write | https://www.googleapis.com/auth/monitoring.write\npubsub | https://www.googleapis.com/auth/pubsub\nservice-control | https://www.googleapis.com/auth/servicecontrol\nservice-management | https://www.googleapis.com/auth/service.management.readonly\nsql (deprecated) | https://www.googleapis.com/auth/sqlservice\nsql-admin | https://www.googleapis.com/auth/sqlservice.admin\nstorage-full | https://www.googleapis.com/auth/devstorage.full_control\nstorage-ro | https://www.googleapis.com/auth/devstorage.read_only\nstorage-rw | https://www.googleapis.com/auth/devstorage.read_write\ntaskqueue | https://www.googleapis.com/auth/taskqueue\ntrace | https://www.googleapis.com/auth/trace.append\nuserinfo-email | https://www.googleapis.com/auth/userinfo.email\n+\nDEPRECATION WARNING: https://www.googleapis.com/auth/sqlservice account scope\nand `sql` alias do not provide SQL instance management capabilities and have\nbeen deprecated. Please, use https://www.googleapis.com/auth/sqlservice.admin\nor `sql-admin` to manage your Google SQL Service instances.\n+',
              args: [
                Arg(
                name: 'SCOPE',
                description: 'List',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--service-account',
              description: 'The Google Cloud Platform Service Account to be used by the node VMs. If a service account is specified, the cloud-platform and userinfo.email scopes are used. If no Service Account is specified, the project default service account is used',
              args: [
                Arg(
                name: 'SERVICE_ACCOUNT',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--shielded-integrity-monitoring',
              description: 'Enables monitoring and attestation of the boot integrity of the\ninstance. The attestation is performed against the integrity policy\nbaseline. This baseline is initially derived from the implicitly\ntrusted boot image when the instance is created'
            ),
            Option(
              name: '--shielded-secure-boot',
              description: 'The instance will boot with secure boot enabled'
            ),
            Option(
              name: '--tags',
              description: 'Applies the given Compute Engine tags (comma separated) on all nodes in the new\nnode-pool. Example:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --tags=tag1,tag2\n+\nNew nodes, including ones created by resize or recreate, will have these tags\non the Compute Engine API instance object and can be used in firewall rules.\nSee https://cloud.google.com/sdk/gcloud/reference/compute/firewall-rules/create\nfor examples',
              args: [
                Arg(
                name: 'TAG',
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
            ),
            Option(
              name: '--workload-metadata',
              description: 'Type of metadata server available to pods running in the node pool. _WORKLOAD_METADATA_ must be one of:\n+\n*GCE_METADATA*::: Pods running in this node pool have access to the node\'s underlying Compute Engine Metadata Server.\n*GKE_METADATA*::: Run the Kubernetes Engine Metadata Server on this node. The Kubernetes Engine Metadata Server exposes a metadata API to workloads that is compatible with the V1 Compute Metadata APIs exposed by the Compute Engine and App Engine Metadata Servers. This feature can only be enabled if Workload Identity is enabled at the cluster level.\n:::\n+',
              args: [
                Arg(
                name: 'WORKLOAD_METADATA',
                description: 'Googlecloudsdk.command_lib.container.flags:<lambda>',
                suggestions: [
                  FigSuggestion(name: 'GCE_METADATA'),
                  FigSuggestion(name: 'GKE_METADATA')
                ]
              )
              ]
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the node pool to create'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing node pool in a running cluster',
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
              name: '--cluster',
              description: 'The cluster from which to delete the node pool. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the node pool to delete'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describe an existing node pool for a cluster',
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
              name: '--cluster',
              description: 'The name of the cluster. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the node pool'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List existing node pools for a cluster',
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
              name: '--cluster',
              description: 'The name of the cluster. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
              name: '--uri',
              description: 'Print a list of resource URIs instead of the default output'
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rollback',
          description: 'Rollback a node-pool upgrade',
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
              name: '--cluster',
              description: 'The cluster from which to rollback the node pool. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the node pool to rollback'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates a node pool in a running cluster',
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
              name: '--cluster',
              description: 'The name of the cluster. Overrides the default *container/cluster* property value for this command invocation',
              args: [
                Arg(
                name: 'CLUSTER',
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
              name: '--enable-autoprovisioning',
              description: 'Enables Cluster Autoscaler to treat the node pool as if it was autoprovisioned.\n+\nCluster Autoscaler will be able to delete the node pool if it\'s unneeded'
            ),
            Option(
              name: '--enable-autorepair',
              description: 'Enable node autorepair feature for a node pool.\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --enable-autorepair\n+\nSee https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-repair for more info'
            ),
            Option(
              name: '--enable-autoscaling',
              description: 'Enables autoscaling for a node pool.\n+\nEnables autoscaling in the node pool specified by --node-pool or\nthe default node pool if --node-pool is not provided'
            ),
            Option(
              name: '--enable-autoupgrade',
              description: 'Sets autoupgrade feature for a node pool.\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --enable-autoupgrade\n+\nSee https://cloud.google.com/kubernetes-engine/docs/node-auto-upgrades for more info'
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
              name: '--max-nodes',
              description: 'Maximum number of nodes in the node pool.\n+\nMaximum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MAX_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-surge-upgrade',
              description: 'Number of extra (surge) nodes to be created on each upgrade of the node pool.\n+\nSpecifies the number of extra (surge) nodes to be created during this node\npool\'s upgrades. For example, running the following command will result in\ncreating an extra node each time the node pool is upgraded:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --max-surge-upgrade=1   --max-unavailable-upgrade=0\n+\nMust be used in conjunction with \'--max-unavailable-upgrade\'',
              args: [
                Arg(
                name: 'MAX_SURGE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--max-unavailable-upgrade',
              description: 'Number of nodes that can be unavailable at the same time on each upgrade of the\nnode pool.\n+\nSpecifies the number of nodes that can be unavailable at the same time during\nthis node pool\'s upgrades. For example, assume the node pool has 5 nodes,\nrunning the following command will result in having 3 nodes being upgraded in\nparallel (1 + 2), but keeping always at least 3 (5 - 2) available each time the\nnode pool is upgraded:\n+\n  \$ {command} node-pool-1 --cluster=example-cluster --max-surge-upgrade=1   --max-unavailable-upgrade=2\n+\nMust be used in conjunction with \'--max-surge-upgrade\'',
              args: [
                Arg(
                name: 'MAX_UNAVAILABLE_UPGRADE',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--min-nodes',
              description: 'Minimum number of nodes in the node pool.\n+\nMinimum number of nodes to which the node pool specified by --node-pool\n(or default node pool if unspecified) can scale. Ignored unless\n--enable-autoscaling is also specified',
              args: [
                Arg(
                name: 'MIN_NODES',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--node-locations',
              description: 'Set of zones in which the node pool\'s nodes should be located.\nChanging the locations for a node pool will result in nodes being either created or removed\nfrom the node pool, depending on whether locations are being added or removed.\n+\nMultiple locations can be specified, separated by commas. For example:\n+\n  \$ {command} node-pool-1 --node-locations=us-central1-a,us-central1-b',
              args: [
                Arg(
                name: 'ZONE',
                description: 'List',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--workload-metadata',
              description: 'Type of metadata server available to pods running in the node pool. _WORKLOAD_METADATA_ must be one of:\n+\n*GCE_METADATA*::: Pods running in this node pool have access to the node\'s underlying Compute Engine Metadata Server.\n*GKE_METADATA*::: Run the Kubernetes Engine Metadata Server on this node. The Kubernetes Engine Metadata Server exposes a metadata API to workloads that is compatible with the V1 Compute Metadata APIs exposed by the Compute Engine and App Engine Metadata Servers. This feature can only be enabled if Workload Identity is enabled at the cluster level.\n:::\n+',
              args: [
                Arg(
                name: 'WORKLOAD_METADATA',
                description: 'Googlecloudsdk.command_lib.container.flags:<lambda>',
                suggestions: [
                  FigSuggestion(name: 'GCE_METADATA'),
                  FigSuggestion(name: 'GKE_METADATA')
                ]
              )
              ]
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'NAME',
            description: 'The name of the node pool'
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
          name: '--region',
          description: 'Compute region (e.g. us-central1) for the cluster',
          args: [
            Arg(
            name: 'REGION',
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
        ),
        Option(
          name: '--zone',
          description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
          args: [
            Arg(
            name: 'ZONE',
            description: 'String',
            suggestions: []
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'operations',
      description: 'Get and list operations for Google Kubernetes Engine clusters',
      subcommands: [
        Subcommand(
          name: 'describe',
          description: 'Describe an operation',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'OPERATION_ID',
            description: 'The operation id to look up'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List operations for container clusters',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Poll an operation for completion',
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
              name: '--region',
              description: 'Compute region (e.g. us-central1) for the cluster',
              args: [
                Arg(
                name: 'REGION',
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
            ),
            Option(
              name: '--zone',
              description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
              args: [
                Arg(
                name: 'ZONE',
                description: 'String',
                suggestions: []
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'OPERATION_ID',
            description: 'The operation id to poll'
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
          name: '--region',
          description: 'Compute region (e.g. us-central1) for the cluster',
          args: [
            Arg(
            name: 'REGION',
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
        ),
        Option(
          name: '--zone',
          description: 'Compute zone (e.g. us-central1-a) for the cluster. Overrides the default *compute/zone* property value for this command invocation',
          args: [
            Arg(
            name: 'ZONE',
            description: 'String',
            suggestions: []
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'subnets',
      description: 'Manage subnets to be used by Google Kubernetes Engine clusters',
      subcommands: [
        Subcommand(
          name: 'list-usable',
          description: 'List subnets usable for cluster creation in a specific project',
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
              name: '--network-project',
              description: 'The project owning the subnetworks returned. This field is translated\ninto the expression `networkProjectId=[PROJECT_ID]` and ANDed to\nthe `--filter` flag value.\n+\nDefaults to the *--project* value',
              args: [
                Arg(
                name: 'NETWORK_PROJECT',
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
              name: '--uri',
              description: 'Print a list of resource URIs instead of the default output'
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
