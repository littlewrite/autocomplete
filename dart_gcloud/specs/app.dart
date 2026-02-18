// Auto-generated from TypeScript source: app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `app` CLI
final FigSpec appSpec = FigSpec(
  name: 'app',
  description: 'Manage your App Engine deployments',
  subcommands: [

    Subcommand(
      name: 'browse',
      description: 'Open the current app in a web browser',
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
          name: '--launch-browser',
          description: 'Launch a browser if possible. When disabled, only displays the URL. Enabled by default, use *--no-launch-browser* to disable'
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
          name: '--service',
          description: 'The service that should be opened. If not specified, use the default service. May be used in conjunction with `--version`',
          args: [
            Arg(
            name: 'SERVICE',
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
    ),
    Subcommand(
      name: 'create',
      description: 'Create an App Engine app within the current Google Cloud Project',
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
          description: 'The region to create the app within.  Use `gcloud app regions list` to list available regions.  If not provided, select region interactively',
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
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy the local code and/or configuration of your app to App Engine',
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
          name: '--appyaml',
          description: 'Deploy with a specific app.yaml that will replace the one defined in the DEPLOYABLE',
          args: [
            Arg(
            name: 'APPYAML',
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
          name: '--bucket',
          description: 'The Google Cloud Storage bucket used to stage files associated with the deployment. If this argument is not specified, the application\'s default code bucket is used',
          args: [
            Arg(
            name: 'BUCKET',
            description: 'Googlecloudsdk.api_lib.storage.storage_util:FromArgument',
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
          name: '--ignore-file',
          description: 'Override the .gcloudignore file and use the specified file instead',
          args: [
            Arg(
            name: 'IGNORE_FILE',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--image-url',
          description: '(App Engine flexible environment only.) Deploy with a specific Docker image. Docker url must be from one of the valid Container Registry hostnames',
          args: [
            Arg(
            name: 'IMAGE_URL',
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
          name: '--no-cache',
          description: 'Skip caching mechanisms involved in the deployment process, in particular do not use cached dependencies during the build step'
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
          name: '--promote',
          description: 'Promote the deployed version to receive all traffic. Overrides the default *app/promote_by_default* property value for this command invocation. Use *--no-promote* to disable'
        ),
        Option(
          name: '--quiet',
          description: 'Disable all interactive prompts when running gcloud commands. If input\nis required, defaults will be used, or an error will be raised.\nOverrides the default core/disable_prompts property value for this\ncommand invocation. This is equivalent to setting the environment\nvariable `CLOUDSDK_CORE_DISABLE_PROMPTS` to 1'
        ),
        Option(
          name: '--stop-previous-version',
          description: 'Stop the previously running version when deploying a new version that\nreceives all traffic.\n+\nNote that if the version is running on an instance\nof an auto-scaled service in the App Engine Standard\nenvironment, using `--stop-previous-version` will not work\nand the previous version will continue to run because auto-scaled service\ninstances are always running.\n+\nOverrides the default *app/stop_previous_version* property value for this command invocation. Use *--no-stop-previous-version* to disable'
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
        name: 'DEPLOYABLES',
        description: 'The yaml files for the services or configurations you want to deploy.\nIf not given, defaults to `app.yaml` in the current directory.\nIf that is not found, attempts to automatically generate necessary\nconfiguration files (such as app.yaml) in the current directory'
      )
      ]
    ),
    Subcommand(
      name: 'describe',
      description: 'Display all data about an existing service',
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
      name: 'domain-mappings',
      description: 'View and manage your App Engine domain mappings',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a domain mapping',
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
              name: '--certificate-id',
              description: 'A certificate id to use for this domain. May not be used on a domain mapping with automatically managed certificates. Use the `gcloud app ssl-certificates list` to see available certificates for this app',
              args: [
                Arg(
                name: 'CERTIFICATE_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--certificate-management',
              description: 'Type of certificate management. \'automatic\' will provision an SSL certificate automatically while \'manual\' requires the user to provide a certificate id to provision. _CERTIFICATE_MANAGEMENT_ must be one of: *automatic*, *manual*',
              args: [
                Arg(
                name: 'CERTIFICATE_MANAGEMENT',
                description: 'Googlecloudsdk.calliope.base:_ChoiceValueType',
                suggestions: [

                  FigSuggestion(name: 'automatic'),
                  FigSuggestion(name: 'manual')
                ]
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
            name: 'DOMAIN',
            description: 'A valid domain which may begin with a wildcard, such as: `example.com` or `*.example.com`'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a specified domain mapping',
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
            name: 'DOMAIN',
            description: 'A valid domain which may begin with a wildcard, such as: `example.com` or `*.example.com`'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describes a specified domain mapping',
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
            name: 'DOMAIN',
            description: 'A valid domain which may begin with a wildcard, such as: `example.com` or `*.example.com`'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists domain mappings',
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
          name: 'update',
          description: 'Updates a domain mapping',
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
              name: '--certificate-id',
              description: 'A certificate id to use for this domain. May not be used on a domain mapping with automatically managed certificates. Use the `gcloud app ssl-certificates list` to see available certificates for this app',
              args: [
                Arg(
                name: 'CERTIFICATE_ID',
                description: 'String',
                suggestions: []
              )
              ]
            ),
            Option(
              name: '--certificate-management',
              description: 'Type of certificate management. \'automatic\' will provision an SSL certificate automatically while \'manual\' requires the user to provide a certificate id to provision. _CERTIFICATE_MANAGEMENT_ must be one of: *automatic*, *manual*',
              args: [
                Arg(
                name: 'CERTIFICATE_MANAGEMENT',
                description: 'Googlecloudsdk.calliope.base:_ChoiceValueType',
                suggestions: [

                  FigSuggestion(name: 'automatic'),
                  FigSuggestion(name: 'manual')
                ]
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
              name: '--no-certificate-id',
              description: 'Do not associate any certificate with this domain'
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
            name: 'DOMAIN',
            description: 'A valid domain which may begin with a wildcard, such as: `example.com` or `*.example.com`'
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
      name: 'firewall-rules',
      description: 'View and manage your App Engine firewall rules',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a firewall rule',
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
              name: '--action',
              description: 'Allow or deny matched traffic. _ACTION_ must be one of: *ALLOW*, *DENY*',
              args: [
                Arg(
                name: 'ACTION',
                description: 'Googlecloudsdk.command_lib.app.flags:<lambda>',
                suggestions: [

                  FigSuggestion(name: 'ALLOW'),
                  FigSuggestion(name: 'DENY')
                ]
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
              name: '--description',
              description: 'A text description of the rule',
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
              name: '--source-range',
              description: 'An IP address or range in CIDR notation or the ```*``` wildcard to match all traffic',
              args: [
                Arg(
                name: 'SOURCE_RANGE',
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
            name: 'PRIORITY',
            description: 'An integer between 1 and 2^32-1 which indicates the evaluation order of rules. Lowest priority rules are evaluated first. The handle `default` may also be used to refer to the final rule at priority 2^32-1 which is always present in a set of rules'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a specified firewall rule',
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
            name: 'PRIORITY',
            description: 'An integer between 1 and 2^32-1 which indicates the evaluation order of rules. Lowest priority rules are evaluated first. The handle `default` may also be used to refer to the final rule at priority 2^32-1 which is always present in a set of rules'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Prints the fields of a specified firewall rule',
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
            name: 'PRIORITY',
            description: 'An integer between 1 and 2^32-1 which indicates the evaluation order of rules. Lowest priority rules are evaluated first. The handle `default` may also be used to refer to the final rule at priority 2^32-1 which is always present in a set of rules'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the firewall rules',
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
          name: 'test-ip',
          description: 'Display firewall rules that match a given IP',
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
            name: 'IP',
            description: 'An IPv4 or IPv6 address to test against the firewall'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates a firewall rule',
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
              name: '--action',
              description: 'Allow or deny matched traffic. _ACTION_ must be one of: *ALLOW*, *DENY*',
              args: [
                Arg(
                name: 'ACTION',
                description: 'Googlecloudsdk.command_lib.app.flags:<lambda>',
                suggestions: [

                  FigSuggestion(name: 'ALLOW'),
                  FigSuggestion(name: 'DENY')
                ]
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
              description: 'A text description of the rule',
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
              name: '--source-range',
              description: 'An IP address or range in CIDR notation or the ```*``` wildcard to match all traffic',
              args: [
                Arg(
                name: 'SOURCE_RANGE',
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
            name: 'PRIORITY',
            description: 'An integer between 1 and 2^32-1 which indicates the evaluation order of rules. Lowest priority rules are evaluated first. The handle `default` may also be used to refer to the final rule at priority 2^32-1 which is always present in a set of rules'
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
      name: 'gen-repo-info-file',
      description: '[DEPRECATED] Saves repository information in a file',
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
          name: '--output-directory',
          description: 'The directory in which to create the source context file. Defaults to the current directory, or the directory containing --output-file if that option is provided with a file name that includes a directory path',
          args: [
            Arg(
            name: 'OUTPUT_DIRECTORY',
            description: 'String',
            suggestions: []
          )
          ]
        ),
        Option(
          name: '--output-file',
          description: '(Deprecated; use --output-directory instead.) Specifies the full name of the output file to contain a single source context.  The file name must be "source-context.json" in order to work with cloud diagnostic tools',
          args: [
            Arg(
            name: 'OUTPUT_FILE',
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
          name: '--source-directory',
          description: 'The path to directory containing the source code for the build',
          args: [
            Arg(
            name: 'SOURCE_DIRECTORY',
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
    ),
    Subcommand(
      name: 'instances',
      description: 'View and manage your App Engine instances',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a specified instance',
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
              name: '--service',
              description: 'The service ID',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'INSTANCE',
            description: 'The instance ID'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Display all data about an existing instance',
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
              name: '--service',
              description: 'The service ID',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'INSTANCE',
            description: 'The instance ID'
          )
          ]
        ),
        Subcommand(
          name: 'disable-debug',
          description: 'Disable debug mode for an instance',
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
              name: '--service',
              description: 'If specified, only match instances belonging to the given service.\nThis affects both interactive and non-interactive selection',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'INSTANCE',
            description: 'The instance ID to disable debug mode on. If not specified,\nselect instance interactively. Must uniquely specify (with other\nflags) exactly one instance'
          )
          ]
        ),
        Subcommand(
          name: 'enable-debug',
          description: 'Enable debug mode for an instance (only works on the flexible environment)',
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
              name: '--service',
              description: 'If specified, only match instances belonging to the given service.\nThis affects both interactive and non-interactive selection',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'INSTANCE',
            description: 'Instance ID to enable debug mode on. If not specified,\nselect instance interactively. Must uniquely specify (with other\nflags) exactly one instance'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the instances affiliated with the current App Engine project',
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
              name: '--service',
              description: 'If specified, only list instances belonging to the given service',
              args: [
                Arg(
                name: 'SERVICE',
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
          name: 'scp',
          description: 'SCP from or to the VM of an App Engine Flexible instance',
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
              name: '--compress',
              description: 'Enable compression'
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
              name: '--recurse',
              description: 'Upload directories recursively'
            ),
            Option(
              name: '--service',
              description: 'The service ID',
              args: [
                Arg(
                name: 'SERVICE',
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
              name: '[INSTANCE:]SRC',
              description: 'Specifies the files to copy',
              isVariadic: true
            ),
            Arg(
              name: '[INSTANCE:]DEST',
              description: 'Specifies a destination for the source files'
            )
          ]
        ),
        Subcommand(
          name: 'ssh',
          description: 'SSH into the VM of an App Engine Flexible instance',
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
              name: '--container',
              description: 'Name of the container within the VM to connect to',
              args: [
                Arg(
                name: 'CONTAINER',
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
              name: '--service',
              description: 'The service ID',
              args: [
                Arg(
                name: 'SERVICE',
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
              name: 'INSTANCE',
              description: 'The instance ID'
            ),
            Arg(
              name: 'COMMAND',
              description: 'Remote command to execute on the VM.\n+\nThe \'--\' argument must be specified between gcloud specific args on the left and COMMAND on the right'
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
      name: 'logs',
      description: 'Manage your App Engine logs',
      subcommands: [

        Subcommand(
          name: 'read',
          description: 'Reads log entries for the current App Engine app',
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
              name: '--level',
              description: 'Filter entries with severity equal to or higher than a given level. _LEVEL_ must be one of: *critical*, *error*, *warning*, *info*, *debug*, *any*',
              args: [
                Arg(
                name: 'LEVEL',
                description: 'String',
                suggestions: [

                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'any')
                ]
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Number of log entries to show',
              args: [
                Arg(
                name: 'LIMIT',
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
              name: '--logs',
              description: 'Filter entries from a particular set of logs. Must be a comma-separated list of log names (request_log, stdout, stderr, etc)',
              args: [
                Arg(
                name: 'APP_LOG',
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
              name: '--service',
              description: 'Limit to specific service',
              args: [
                Arg(
                name: 'SERVICE',
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
        ),
        Subcommand(
          name: 'tail',
          description: 'Streams logs for App Engine apps',
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
              name: '--level',
              description: 'Filter entries with severity equal to or higher than a given level. _LEVEL_ must be one of: *critical*, *error*, *warning*, *info*, *debug*, *any*',
              args: [
                Arg(
                name: 'LEVEL',
                description: 'String',
                suggestions: [

                  FigSuggestion(name: 'critical'),
                  FigSuggestion(name: 'error'),
                  FigSuggestion(name: 'warning'),
                  FigSuggestion(name: 'info'),
                  FigSuggestion(name: 'debug'),
                  FigSuggestion(name: 'any')
                ]
              )
              ]
            ),
            Option(
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--logs',
              description: 'Filter entries from a particular set of logs. Must be a comma-separated list of log names (request_log, stdout, stderr, etc)',
              args: [
                Arg(
                name: 'APP_LOG',
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
              name: '--service',
              description: 'Limit to specific service',
              args: [
                Arg(
                name: 'SERVICE',
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
      name: 'open-console',
      description: 'Open the App Engine dashboard, or log viewer, in a web browser',
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
          name: '--logs',
          description: 'Open the log viewer instead of the App Engine dashboard'
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
          name: '--service',
          description: 'The service to consider. If not specified, use the default service',
          args: [
            Arg(
            name: 'SERVICE',
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
    ),
    Subcommand(
      name: 'operations',
      description: 'View and manage your App Engine Operations',
      subcommands: [

        Subcommand(
          name: 'describe',
          description: 'Describes the operation',
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
            name: 'OPERATION',
            description: 'ID of operation'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the operations',
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
              name: '--pending',
              description: 'Only display pending operations'
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
          name: 'wait',
          description: 'Polls an operation until completion',
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
            name: 'OPERATION',
            description: 'ID of operation'
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
      name: 'regions',
      description: 'View regional availability of App Engine runtime environments',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the availability of flex and standard environments for each region',
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
      name: 'services',
      description: 'View and manage your App Engine services',
      subcommands: [

        Subcommand(
          name: 'browse',
          description: 'Open the specified service(s) in a browser',
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
              name: '--launch-browser',
              description: 'Launch a browser if possible. When disabled, only displays the URL. Enabled by default, use *--no-launch-browser* to disable'
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
            name: 'SERVICES',
            description: 'The services to open (optionally filtered by the --version flag)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete services in the current project',
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
            name: 'SERVICES',
            description: 'The service(s) to delete',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Display all data about an existing service',
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
            name: 'SERVICE',
            description: 'The service to describe'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List your existing services',
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
          name: 'set-traffic',
          description: 'Set traffic splitting settings',
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
              name: '--migrate',
              description: 'The migrate flag determines whether or not to use traffic migration\nduring the operation. Traffic migration will attempt to automatically\nmigrate traffic from the previous version to the new version, giving\nthe autoscaler time to respond. See the documentation here:\n[](https://cloud.google.com/appengine/docs/python/console/trafficmigration)\nfor more information'
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
              name: '--split-by',
              description: 'Whether to split traffic based on cookie, IP address or random. _SPLIT_BY_ must be one of: *cookie*, *ip*, *random*',
              args: [
                Arg(
                name: 'SPLIT_BY',
                description: 'String',
                suggestions: [

                  FigSuggestion(name: 'cookie'),
                  FigSuggestion(name: 'ip'),
                  FigSuggestion(name: 'random')
                ]
              )
              ]
            ),
            Option(
              name: '--splits',
              description: 'Key-value pairs describing what proportion of traffic should go to\neach version. The split values are added together and used as\nweights. The exact values do not matter, only their relation to each\nother. For example, v1=2,v2=2 is equivalent to v1=.5,v2=.5',
              args: [
                Arg(
                name: 'SPLITS',
                description: 'Dict',
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
            name: 'SERVICES',
            description: 'The services to modify'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update service-level settings',
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
              name: '--ingress',
              description: 'Control what traffic can reach the app. _INGRESS_ must be one of: *all*, *internal-only*, *internal-and-cloud-load-balancing*',
              args: [
                Arg(
                name: 'INGRESS',
                description: 'String',
                suggestions: [

                  FigSuggestion(name: 'all'),
                  FigSuggestion(name: 'internal-only'),
                  FigSuggestion(name: 'internal-and-cloud-load-balancing')
                ]
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
            name: 'SERVICES',
            description: 'The services to modify'
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
      name: 'ssl-certificates',
      description: 'View and manage your App Engine SSL certificates',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Uploads a new SSL certificate',
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
              name: '--certificate',
              description: 'The file path for the new certificate to upload. Must be in PEM\nx.509 format including the header and footer',
              args: [
                Arg(
                name: 'LOCAL_FILE_PATH',
                description: 'String',
                suggestions: []
              )
              ],
              priority: 100
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
              name: '--display-name',
              description: 'A display name for this certificate',
              args: [
                Arg(
                name: 'DISPLAY_NAME',
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
              name: '--log-http',
              description: 'Log all HTTP server requests and responses to stderr. Overrides the default *core/log_http* property value for this command invocation'
            ),
            Option(
              name: '--private-key',
              description: 'The file path to a local RSA private key file. The private key must be\nPEM encoded with header and footer and must be 2048 bits\nor fewer',
              args: [
                Arg(
                name: 'LOCAL_FILE_PATH',
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
          name: 'delete',
          description: 'Deletes an SSL certificate',
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
            name: 'ID',
            description: 'The id of the certificate. This identifier is printed upon creation of a new certificate. Run `{parent_command} list` to view existing certificates'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Describes a specified SSL certificate',
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
            name: 'ID',
            description: 'The id of the certificate. This identifier is printed upon creation of a new certificate. Run `{parent_command} list` to view existing certificates'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the SSL certificates',
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
          name: 'update',
          description: 'Updates an SSL certificate',
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
              name: '--certificate',
              description: 'The file path for the new certificate to upload. Must be in PEM\nx.509 format including the header and footer',
              args: [
                Arg(
                name: 'LOCAL_FILE_PATH',
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
              name: '--display-name',
              description: 'A display name for this certificate',
              args: [
                Arg(
                name: 'DISPLAY_NAME',
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
              name: '--private-key',
              description: 'The file path to a local RSA private key file. The private key must be\nPEM encoded with header and footer and must be 2048 bits\nor fewer',
              args: [
                Arg(
                name: 'LOCAL_FILE_PATH',
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
            name: 'ID',
            description: 'The id of the certificate. This identifier is printed upon creation of a new certificate. Run `{parent_command} list` to view existing certificates'
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
      name: 'update',
      description: 'Updates an App Engine application',
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
          name: '--split-health-checks',
          description: 'Enables/disables split health checks by default on new deployments. Use *--split-health-checks* to enable and *--no-split-health-checks* to disable'
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
      description: 'View and manage your App Engine versions',
      subcommands: [

        Subcommand(
          name: 'browse',
          description: 'Open the specified versions in a browser',
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
              name: '--launch-browser',
              description: 'Launch a browser if possible. When disabled, only displays the URL. Enabled by default, use *--no-launch-browser* to disable'
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
              name: '--service',
              description: 'If specified, only open versions from the given service. If not specified, use the default service',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'VERSIONS',
            description: 'The versions to open (optionally filtered by the --service flag)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a specified version',
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
              name: '--service',
              description: 'If specified, only delete versions from the given service',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'VERSIONS',
            description: 'The versions to delete (optionally filtered by the --service flag)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Display all data about an existing version',
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
              name: '--service',
              description: 'The service corresponding to the version to show',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'VERSION',
            description: 'The ID of the version to show'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List your existing versions',
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
              name: '--hide-no-traffic',
              description: 'Only show versions that are receiving traffic'
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
              name: '--service',
              description: 'Only show versions from this service',
              args: [
                Arg(
                name: 'SERVICE',
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
          name: 'migrate',
          description: 'Migrate traffic from one version to another for a set of services',
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
              name: '--service',
              description: 'If specified, only migrate versions from the given service',
              args: [
                Arg(
                name: 'SERVICE',
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
            description: 'The version to migrate to'
          )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start serving specified versions',
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
              name: '--service',
              description: 'If specified, only start versions from the given service',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'VERSIONS',
            description: 'The versions to start. (optionally filtered by the --service flag)',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop serving specified versions',
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
              name: '--service',
              description: 'If specified, only stop versions from the given service',
              args: [
                Arg(
                name: 'SERVICE',
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
            name: 'VERSIONS',
            description: 'The versions to stop (optionally filtered by the --service flag)',
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
