// Auto-generated from TypeScript source: logging.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `logging` CLI
final FigSpec loggingSpec = FigSpec(
  name: 'logging',
  description: 'Manage Cloud Logging',
  subcommands: [

    Subcommand(
      name: 'logs',
      description: 'Manages your project\'s logs',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes all entries from a log',
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
            name: 'LOG_NAME',
            description: 'Log name'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists your project\'s logs',
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
      name: 'metrics',
      description: 'Manages logs-based metrics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a logs-based metric',
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
              description: 'The metric\'s description',
              args: [
                Arg(
                name: 'DESCRIPTION',
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
              name: '--log-filter',
              description: 'The metric\'s filter expression. The filter must be for a V2 LogEntry',
              args: [
                Arg(
                name: 'LOG_FILTER',
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
            name: 'METRIC_NAME',
            description: 'The name of the new metric'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a logs-based metric',
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
            name: 'METRIC_NAME',
            description: 'The name of the metric to delete'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Shows the definition of a logs-based metric',
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
            name: 'METRIC_NAME',
            description: 'The name of the metric'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Displays all logs-based metrics',
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
          description: 'Updates the definition of a logs-based metric',
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
              description: 'A new description for the metric. If omitted, the description is not changed',
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
              name: '--log-filter',
              description: 'A new filter string for the metric. If omitted, the filter is not changed',
              args: [
                Arg(
                name: 'LOG_FILTER',
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
            name: 'METRIC_NAME',
            description: 'The name of the log-based metric to update'
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
      name: 'read',
      description: 'Read log entries',
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
          name: '--billing-account',
          description: 'Read log entries associated with this billing account',
          args: [
            Arg(
            name: 'BILLING_ACCOUNT_ID',
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
          name: '--folder',
          description: 'Read log entries associated with this folder',
          args: [
            Arg(
            name: 'FOLDER_ID',
            description: 'String',
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
          name: '--freshness',
          description: 'Return entries that are not older than this value. Works only with DESC ordering and filters without a timestamp. See \$ gcloud topic datetimes for information on duration formats',
          args: [
            Arg(
            name: 'FRESHNESS',
            description: 'Googlecloudsdk.calliope.arg_parsers:ParseWithBoundsChecking',
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
          name: '--order',
          description: 'Ordering of returned log entries based on timestamp field. _ORDER_ must be one of: *desc*, *asc*',
          args: [
            Arg(
            name: 'ORDER',
            description: 'Googlecloudsdk.calliope.base:_ChoiceValueType',
            suggestions: [

              FigSuggestion(name: 'desc'),
              FigSuggestion(name: 'asc')
            ]
          )
          ]
        ),
        Option(
          name: '--organization',
          description: 'Read log entries associated with this organization',
          args: [
            Arg(
            name: 'ORGANIZATION_ID',
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
        name: 'LOG_FILTER',
        description: 'Filter expression that specifies the log entries to return. A detailed guide on basic and advanced filters can be found at: https://cloud.google.com/logging/docs/view/overview'
      )
      ]
    ),
    Subcommand(
      name: 'resource-descriptors',
      description: 'Get information about resource descriptors',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all available resource descriptors',
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
      name: 'sinks',
      description: 'Manages sinks used to export logs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a sink',
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
              name: '--billing-account',
              description: 'Create a sink associated with this billing account',
              args: [
                Arg(
                name: 'BILLING_ACCOUNT_ID',
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
              name: '--folder',
              description: 'Create a sink associated with this folder',
              args: [
                Arg(
                name: 'FOLDER_ID',
                description: 'String',
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
              name: '--include-children',
              description: 'Whether to export logs from all child projects and folders. Only applies to sinks for organizations and folders'
            ),
            Option(
              name: '--log-filter',
              description: 'A filter expression for the sink. If present, the filter specifies which log entries to export',
              args: [
                Arg(
                name: 'LOG_FILTER',
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
              name: '--organization',
              description: 'Create a sink associated with this organization',
              args: [
                Arg(
                name: 'ORGANIZATION_ID',
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
              name: 'SINK_NAME',
              description: 'The name for the sink'
            ),
            Arg(
              name: 'DESTINATION',
              description: 'The destination for the sink'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a sink',
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
              name: '--billing-account',
              description: 'Delete a sink associated with this billing account',
              args: [
                Arg(
                name: 'BILLING_ACCOUNT_ID',
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
              name: '--folder',
              description: 'Delete a sink associated with this folder',
              args: [
                Arg(
                name: 'FOLDER_ID',
                description: 'String',
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
              name: '--organization',
              description: 'Delete a sink associated with this organization',
              args: [
                Arg(
                name: 'ORGANIZATION_ID',
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
            name: 'SINK_NAME',
            description: 'The name of the sink to delete'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Displays information about a sink',
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
              name: '--billing-account',
              description: 'Describe a sink associated with this billing account',
              args: [
                Arg(
                name: 'BILLING_ACCOUNT_ID',
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
              name: '--folder',
              description: 'Describe a sink associated with this folder',
              args: [
                Arg(
                name: 'FOLDER_ID',
                description: 'String',
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
              name: '--organization',
              description: 'Describe a sink associated with this organization',
              args: [
                Arg(
                name: 'ORGANIZATION_ID',
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
            name: 'SINK_NAME',
            description: 'The name of the sink to describe'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the defined sinks',
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
              name: '--billing-account',
              description: 'List sinks associated with this billing account',
              args: [
                Arg(
                name: 'BILLING_ACCOUNT_ID',
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
              name: '--folder',
              description: 'List sinks associated with this folder',
              args: [
                Arg(
                name: 'FOLDER_ID',
                description: 'String',
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
              name: '--organization',
              description: 'List sinks associated with this organization',
              args: [
                Arg(
                name: 'ORGANIZATION_ID',
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
          name: 'update',
          description: 'Updates a sink',
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
              name: '--billing-account',
              description: 'Update a sink associated with this billing account',
              args: [
                Arg(
                name: 'BILLING_ACCOUNT_ID',
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
              name: '--folder',
              description: 'Update a sink associated with this folder',
              args: [
                Arg(
                name: 'FOLDER_ID',
                description: 'String',
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
              name: '--log-filter',
              description: 'A new filter expression for the sink. If omitted, the sink\'s existing filter (if any) is unchanged',
              args: [
                Arg(
                name: 'LOG_FILTER',
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
              name: '--organization',
              description: 'Update a sink associated with this organization',
              args: [
                Arg(
                name: 'ORGANIZATION_ID',
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
              name: 'SINK_NAME',
              description: 'The name of the sink to update'
            ),
            Arg(
              name: 'DESTINATION',
              description: 'A new destination for the sink. If omitted, the sink\'s existing destination is unchanged'
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
      name: 'write',
      description: 'Write a log entry',
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
          name: '--billing-account',
          description: 'Write log entries associated with this billing account',
          args: [
            Arg(
            name: 'BILLING_ACCOUNT_ID',
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
          name: '--folder',
          description: 'Write log entries associated with this folder',
          args: [
            Arg(
            name: 'FOLDER_ID',
            description: 'String',
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
          name: '--organization',
          description: 'Write log entries associated with this organization',
          args: [
            Arg(
            name: 'ORGANIZATION_ID',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--payload-type',
          description: 'Type of the log entry payload. _PAYLOAD_TYPE_ must be one of: *text*, *json*',
          args: [
            Arg(
            name: 'PAYLOAD_TYPE',
            description: 'String',
            suggestions: [

              FigSuggestion(name: 'text'),
              FigSuggestion(name: 'json')
            ]
          )
          ]
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--severity',
          description: 'Severity level of the log entry. _SEVERITY_ must be one of: *DEFAULT*, *DEBUG*, *INFO*, *NOTICE*, *WARNING*, *ERROR*, *CRITICAL*, *ALERT*, *EMERGENCY*',
          args: [
            Arg(
            name: 'SEVERITY',
            description: 'String',
            suggestions: [

              FigSuggestion(name: 'DEFAULT'),
              FigSuggestion(name: 'DEBUG'),
              FigSuggestion(name: 'INFO'),
              FigSuggestion(name: 'NOTICE'),
              FigSuggestion(name: 'WARNING'),
              FigSuggestion(name: 'ERROR'),
              FigSuggestion(name: 'CRITICAL'),
              FigSuggestion(name: 'ALERT'),
              FigSuggestion(name: 'EMERGENCY')
            ]
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
          name: 'LOG_NAME',
          description: 'Name of the log where the log entry will be written'
        ),
        Arg(
          name: 'MESSAGE',
          description: 'Message to put in the log entry. It can be JSON if you include `--payload-type=json`'
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
