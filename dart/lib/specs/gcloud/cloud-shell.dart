// Auto-generated from TypeScript source: cloud-shell.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cloud-shell` CLI
final FigSpec cloudShellSpec = FigSpec(
  name: 'cloud-shell',
  description: 'Manage Google Cloud Shell',
  subcommands: [

    Subcommand(
      name: 'get-mount-command',
      description: 'Prints a command to mount the Cloud Shell home directory via sshfs',
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
          name: '--force-key-file-overwrite',
          description: 'If enabled gcloud will regenerate and overwrite the files associated\nwith a broken SSH key without asking for confirmation in both\ninteractive and non-interactive environment.\n+\nIf disabled gcloud will not attempt to regenerate the files associated\nwith a broken SSH key and fail in both interactive and non-interactive\nenvironment'
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
          name: '--ssh-key-file',
          description: 'The path to the SSH key file. By default, this is\n  *~/.ssh/google_compute_engine*'
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
        name: 'MOUNT_DIR',
        description: 'Local directory onto which the Cloud Shell home directory should be\nmounted'
      )
      ]
    ),
    Subcommand(
      name: 'scp',
      description: 'Copies files between Cloud Shell and the local machine',
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
          name: '--dry-run',
          description: 'If provided, prints the command that would be run to standard out\ninstead of executing it'
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
          name: '--force-key-file-overwrite',
          description: 'If enabled gcloud will regenerate and overwrite the files associated\nwith a broken SSH key without asking for confirmation in both\ninteractive and non-interactive environment.\n+\nIf disabled gcloud will not attempt to regenerate the files associated\nwith a broken SSH key and fail in both interactive and non-interactive\nenvironment'
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
          name: '--recurse',
          description: 'Upload directories recursively'
        ),
        Option(
          name: '--scp-flag',
          description: 'Extra flag to be sent to scp. This flag may be repeated',
          args: [
            Arg(
            name: 'SCP_FLAG',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--ssh-key-file',
          description: 'The path to the SSH key file. By default, this is\n  *~/.ssh/google_compute_engine*'
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
          name: '(cloudshell|localhost):SRC',
          description: 'Specifies the files to copy',
          isVariadic: true
        ),
        Arg(
          name: '(cloudshell|localhost):DEST',
          description: 'Specifies a destination for the source files'
        )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'Allows you to establish an interactive SSH session with Cloud Shell',
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
          name: '--authorize-session',
          description: 'If provided, sends OAuth credentials to the current Cloud Shell session\non behalf of the user. When this completes, the session will be\nauthorized to run various Google Cloud command-line tools without\nrequiring the user to manually authenticate'
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
          name: '--command',
          description: 'A command to run in Cloud Shell.\n+\nRuns the command in Cloud Shell and then exits',
          args: [
            Arg(
            name: 'COMMAND',
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
          name: '--dry-run',
          description: 'If provided, prints the command that would be run to standard out\ninstead of executing it'
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
          name: '--force-key-file-overwrite',
          description: 'If enabled gcloud will regenerate and overwrite the files associated\nwith a broken SSH key without asking for confirmation in both\ninteractive and non-interactive environment.\n+\nIf disabled gcloud will not attempt to regenerate the files associated\nwith a broken SSH key and fail in both interactive and non-interactive\nenvironment'
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
          name: '--ssh-flag',
          description: 'Additional flags to be passed to *ssh(1)*',
          args: [
            Arg(
            name: 'SSH_FLAG',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--ssh-key-file',
          description: 'The path to the SSH key file. By default, this is\n  *~/.ssh/google_compute_engine*'
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
