// Auto-generated from TypeScript source: scheduler.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `scheduler` CLI
final FigSpec schedulerSpec = FigSpec(
  name: 'scheduler',
  description: 'Manage Cloud Scheduler jobs and schedules',
  subcommands: [
    Subcommand(
      name: 'jobs',
      description: 'Manage Cloud Scheduler jobs',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create Cloud Scheduler jobs for various types of targets',
          subcommands: [
            Subcommand(
              name: 'app-engine',
              description: 'Create a Cloud Scheduler job with an App Engine target',
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
                  name: '--attempt-deadline',
                  description: 'The deadline for job attempts. If the request handler doesn\'t respond by this dealine,\nthe request is cancelled and the attempt is marked as failed. For example, 20s',
                  args: [
                    Arg(
                    name: 'ATTEMPT_DEADLINE',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  description: 'Human-readable description of the job',
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
                  name: '--headers',
                  description: 'KEY=VALUE pairs of HTTP headers to include in the request.\n*Cannot be repeated*. For example:\n`--headers Accept-Language=en-us,Accept=text/plain`',
                  args: [
                    Arg(
                    name: 'HEADERS',
                    description: 'Googlecloudsdk.command_lib.util.apis.yaml_command_schema_util:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--http-method',
                  description: 'HTTP method to use for the request. _HTTP_METHOD_ must be one of: *delete*, *get*, *head*, *post*, *put*',
                  args: [
                    Arg(
                    name: 'HTTP_METHOD',
                    description: 'Googlecloudsdk.command_lib.util.apis.arg_utils:EnumNameToChoice',
                    suggestions: [
                      FigSuggestion(name: 'delete'),
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'head'),
                      FigSuggestion(name: 'post'),
                      FigSuggestion(name: 'put')
                    ]
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Data payload to be included as the body of the HTTP\nrequest. May only be given with compatible HTTP methods (PUT\nor POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'Googlecloudsdk.core.util.http_encoding:Encode',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to file containing the data payload to be included as the\nbody of the HTTP request. May only be given with compatible HTTP\nmethods (PUT or POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--relative-url',
                  description: 'Relative URL to use for the request (beginning with "/")',
                  args: [
                    Arg(
                    name: 'RELATIVE_URL',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--service',
                  description: 'ID of the App Engine service to send the request to',
                  args: [
                    Arg(
                    name: 'SERVICE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
              )
              ]
            ),
            Subcommand(
              name: 'http',
              description: 'Create a Cloud Scheduler job that triggers an action via HTTP',
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
                  name: '--attempt-deadline',
                  description: 'The deadline for job attempts. If the request handler doesn\'t respond by this dealine,\nthe request is cancelled and the attempt is marked as failed. For example, 20s',
                  args: [
                    Arg(
                    name: 'ATTEMPT_DEADLINE',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  description: 'Human-readable description of the job',
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
                  name: '--headers',
                  description: 'KEY=VALUE pairs of HTTP headers to include in the request.\n*Cannot be repeated*. For example:\n`--headers Accept-Language=en-us,Accept=text/plain`',
                  args: [
                    Arg(
                    name: 'HEADERS',
                    description: 'Googlecloudsdk.command_lib.util.apis.yaml_command_schema_util:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--help',
                  description: 'Display detailed help'
                ),
                Option(
                  name: '--http-method',
                  description: 'HTTP method to use for the request. _HTTP_METHOD_ must be one of: *delete*, *get*, *head*, *post*, *put*',
                  args: [
                    Arg(
                    name: 'HTTP_METHOD',
                    description: 'Googlecloudsdk.command_lib.util.apis.arg_utils:EnumNameToChoice',
                    suggestions: [
                      FigSuggestion(name: 'delete'),
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'head'),
                      FigSuggestion(name: 'post'),
                      FigSuggestion(name: 'put')
                    ]
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Data payload to be included as the body of the HTTP\nrequest. May only be given with compatible HTTP methods (PUT\nor POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'Googlecloudsdk.core.util.http_encoding:Encode',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to file containing the data payload to be included as the\nbody of the HTTP request. May only be given with compatible HTTP\nmethods (PUT or POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--oauth-service-account-email',
                  description: 'The service account email to be used for generating an OAuth2\naccess token to be included in the request sent to the target\nwhen executing the job. The service account must be within the\nsame project as the job. The caller must have\niam.serviceAccounts.actAs permission for the service account. The\ntoken must be OAuth if the target is a Google APIs service\nwith URL `*.googleapis.com`',
                  args: [
                    Arg(
                    name: 'OAUTH_SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--oauth-token-scope',
                  description: 'The scope to be used when generating an OAuth2 access token to\nbe included in the request sent to the target when executing the\njob. If not specified,\n"https://www.googleapis.com/auth/cloud-platform" will be used',
                  args: [
                    Arg(
                    name: 'OAUTH_TOKEN_SCOPE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--oidc-service-account-email',
                  description: 'The service account email to be used for generating an OpenId\nConnect token to be included in the request sent to the target\nwhen executing the job. The service account must be within the\nsame project as the job. The caller must have\niam.serviceAccounts.actAs permission for the service account. The\nOIDC token is generally used *except* for Google APIs hosted on\n`*.googleapis.com`: these APIs expect an OAuth token',
                  args: [
                    Arg(
                    name: 'OIDC_SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--oidc-token-audience',
                  description: 'The audience to be used when generating an OpenId Connect token\nto be included in the request sent to the target when executing\nthe job. If not specified, the URI specified in target will be\nused',
                  args: [
                    Arg(
                    name: 'OIDC_TOKEN_AUDIENCE',
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
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
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
                  name: '--uri',
                  description: 'The full URI path that the request will be sent to. This string must\nbegin with either "http://" or "https://". For example,\n`http://acme.com` or `https://acme.com/sales:8080`. Cloud Scheduler will\nencode some characters for safety and compatibility. The maximum allowed\nURL length is 2083 characters after encoding',
                  args: [
                    Arg(
                    name: 'URI',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ],
                  priority: 100
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
              )
              ]
            ),
            Subcommand(
              name: 'pubsub',
              description: 'Create a Cloud Scheduler job with a Pub/Sub target',
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
                  name: '--attributes',
                  description: 'Comma-separated list of attributes. Each attribute has the form\n"NAME=VALUE". You can specify up to 100 attributes',
                  args: [
                    Arg(
                    name: 'ATTRIBUTES',
                    description: 'Googlecloudsdk.command_lib.scheduler.util:ParseAttributes',
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
                  description: 'Human-readable description of the job',
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Body of the message',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to a file containing the body of the message',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'Name of the Google Cloud Pub/Sub topic to publish to when the job runs',
                  args: [
                    Arg(
                    name: 'TOPIC',
                    description: 'Googlecloudsdk.command_lib.util.hooks.types:Parse',
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
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
          name: 'delete',
          description: 'Delete a job',
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
            name: 'JOB',
            description: 'ID of the job or fully qualified identifier for the job'
          )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show details about a job',
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
            name: 'JOB',
            description: 'ID of the job or fully qualified identifier for the job'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List jobs',
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
          name: 'pause',
          description: 'Pause the execution of a job',
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
            name: 'JOB',
            description: 'ID of the job or fully qualified identifier for the job'
          )
          ]
        ),
        Subcommand(
          name: 'resume',
          description: 'Resume execution of a paused job',
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
            name: 'JOB',
            description: 'ID of the job or fully qualified identifier for the job'
          )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Trigger an on-demand execution of a job',
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
            name: 'JOB',
            description: 'ID of the job or fully qualified identifier for the job'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update Cloud Scheduler jobs for various types of targets',
          subcommands: [
            Subcommand(
              name: 'app-engine',
              description: 'Update a Cloud Scheduler job with an App Engine target',
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
                  name: '--attempt-deadline',
                  description: 'The deadline for job attempts. If the request handler doesn\'t respond by this dealine,\nthe request is cancelled and the attempt is marked as failed. For example, 20s',
                  args: [
                    Arg(
                    name: 'ATTEMPT_DEADLINE',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--clear-headers',
                  description: 'Clear the list of HTTP headers'
                ),
                Option(
                  name: '--clear-max-backoff',
                  description: 'Clear the field corresponding to `--max-backoff`'
                ),
                Option(
                  name: '--clear-max-doublings',
                  description: 'Clear the field corresponding to `--max-doublings`'
                ),
                Option(
                  name: '--clear-max-retry-attempts',
                  description: 'Clear the field corresponding to `--max-retry-attempts`'
                ),
                Option(
                  name: '--clear-max-retry-duration',
                  description: 'Clear the field corresponding to `--max-retry-duration`'
                ),
                Option(
                  name: '--clear-message-body',
                  description: 'Clear the field corresponding to `--message-body` or `--message-body-from-file`'
                ),
                Option(
                  name: '--clear-min-backoff',
                  description: 'Clear the field corresponding to `--min-backoff`'
                ),
                Option(
                  name: '--clear-relative-url',
                  description: 'Clear the field corresponding to `--relative-url`'
                ),
                Option(
                  name: '--clear-service',
                  description: 'Clear the field corresponding to `--service`'
                ),
                Option(
                  name: '--clear-time-zone',
                  description: 'Clear the field corresponding to `--time-zone`'
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
                  description: 'Human-readable description of the job',
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
                  name: '--http-method',
                  description: 'HTTP method to use for the request. _HTTP_METHOD_ must be one of: *delete*, *get*, *head*, *post*, *put*',
                  args: [
                    Arg(
                    name: 'HTTP_METHOD',
                    description: 'Googlecloudsdk.command_lib.util.apis.arg_utils:EnumNameToChoice',
                    suggestions: [
                      FigSuggestion(name: 'delete'),
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'head'),
                      FigSuggestion(name: 'post'),
                      FigSuggestion(name: 'put')
                    ]
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Data payload to be included as the body of the HTTP\nrequest. May only be given with compatible HTTP methods (PUT\nor POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'Googlecloudsdk.core.util.http_encoding:Encode',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to file containing the data payload to be included as the\nbody of the HTTP request. May only be given with compatible HTTP\nmethods (PUT or POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--relative-url',
                  description: 'Relative URL to use for the request (beginning with "/")',
                  args: [
                    Arg(
                    name: 'RELATIVE_URL',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--remove-headers',
                  description: 'KEY1,KEY2 list of HTTP headers to remove from the request.\n`--remove-headers Accept-Language,Accept`',
                  args: [
                    Arg(
                    name: 'REMOVE_HEADERS',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--service',
                  description: 'ID of the App Engine service to send the request to',
                  args: [
                    Arg(
                    name: 'SERVICE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
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
                  name: '--update-headers',
                  description: 'KEY=VALUE pairs of HTTP headers to include in the request.\n*Cannot be repeated*. For example:\n`--update-headers Accept-Language=en-us,Accept=text/plain`',
                  args: [
                    Arg(
                    name: 'UPDATE_HEADERS',
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
              )
              ]
            ),
            Subcommand(
              name: 'http',
              description: 'Update a Cloud Scheduler job that triggers an action via HTTP',
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
                  name: '--attempt-deadline',
                  description: 'The deadline for job attempts. If the request handler doesn\'t respond by this dealine,\nthe request is cancelled and the attempt is marked as failed. For example, 20s',
                  args: [
                    Arg(
                    name: 'ATTEMPT_DEADLINE',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--clear-auth-token',
                  description: 'Clear the auth token fields: `--oidc-service-account-email`,\n`--oidc-token-audience`, `--oauth-service-account-email`,\nand `--oauth-token-scope`'
                ),
                Option(
                  name: '--clear-headers',
                  description: 'Clear the list of HTTP headers'
                ),
                Option(
                  name: '--clear-max-backoff',
                  description: 'Clear the field corresponding to `--max-backoff`'
                ),
                Option(
                  name: '--clear-max-doublings',
                  description: 'Clear the field corresponding to `--max-doublings`'
                ),
                Option(
                  name: '--clear-max-retry-attempts',
                  description: 'Clear the field corresponding to `--max-retry-attempts`'
                ),
                Option(
                  name: '--clear-max-retry-duration',
                  description: 'Clear the field corresponding to `--max-retry-duration`'
                ),
                Option(
                  name: '--clear-message-body',
                  description: 'Clear the field corresponding to `--message-body` or `--message-body-from-file`'
                ),
                Option(
                  name: '--clear-min-backoff',
                  description: 'Clear the field corresponding to `--min-backoff`'
                ),
                Option(
                  name: '--clear-time-zone',
                  description: 'Clear the field corresponding to `--time-zone`'
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
                  description: 'Human-readable description of the job',
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
                  name: '--http-method',
                  description: 'HTTP method to use for the request. _HTTP_METHOD_ must be one of: *delete*, *get*, *head*, *post*, *put*',
                  args: [
                    Arg(
                    name: 'HTTP_METHOD',
                    description: 'Googlecloudsdk.command_lib.util.apis.arg_utils:EnumNameToChoice',
                    suggestions: [
                      FigSuggestion(name: 'delete'),
                      FigSuggestion(name: 'get'),
                      FigSuggestion(name: 'head'),
                      FigSuggestion(name: 'post'),
                      FigSuggestion(name: 'put')
                    ]
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Data payload to be included as the body of the HTTP\nrequest. May only be given with compatible HTTP methods (PUT\nor POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'Googlecloudsdk.core.util.http_encoding:Encode',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to file containing the data payload to be included as the\nbody of the HTTP request. May only be given with compatible HTTP\nmethods (PUT or POST)',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--oauth-service-account-email',
                  description: 'The service account email to be used for generating an OAuth2\naccess token to be included in the request sent to the target\nwhen executing the job. The service account must be within the\nsame project as the job. The caller must have\niam.serviceAccounts.actAs permission for the service account. The\ntoken must be OAuth if the target is a Google APIs service\nwith URL `*.googleapis.com`',
                  args: [
                    Arg(
                    name: 'OAUTH_SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--oauth-token-scope',
                  description: 'The scope to be used when generating an OAuth2 access token to\nbe included in the request sent to the target when executing the\njob. If not specified,\n"https://www.googleapis.com/auth/cloud-platform" will be used',
                  args: [
                    Arg(
                    name: 'OAUTH_TOKEN_SCOPE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--oidc-service-account-email',
                  description: 'The service account email to be used for generating an OpenId\nConnect token to be included in the request sent to the target\nwhen executing the job. The service account must be within the\nsame project as the job. The caller must have\niam.serviceAccounts.actAs permission for the service account. The\nOIDC token is generally used *except* for Google APIs hosted on\n`*.googleapis.com`: these APIs expect an OAuth token',
                  args: [
                    Arg(
                    name: 'OIDC_SERVICE_ACCOUNT_EMAIL',
                    description: 'String',
                    suggestions: []
                  )
                  ],
                  priority: 100
                ),
                Option(
                  name: '--oidc-token-audience',
                  description: 'The audience to be used when generating an OpenId Connect token\nto be included in the request sent to the target when executing\nthe job. If not specified, the URI specified in target will be\nused',
                  args: [
                    Arg(
                    name: 'OIDC_TOKEN_AUDIENCE',
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
                  name: '--remove-headers',
                  description: 'KEY1,KEY2 list of HTTP headers to remove from the request.\n`--remove-headers Accept-Language,Accept`',
                  args: [
                    Arg(
                    name: 'REMOVE_HEADERS',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
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
                  name: '--update-headers',
                  description: 'KEY=VALUE pairs of HTTP headers to include in the request.\n*Cannot be repeated*. For example:\n`--update-headers Accept-Language=en-us,Accept=text/plain`',
                  args: [
                    Arg(
                    name: 'UPDATE_HEADERS',
                    description: 'Dict',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--uri',
                  description: 'The full URI path that the request will be sent to. This string must\nbegin with either "http://" or "https://". For example,\n`http://acme.com` or `https://acme.com/sales:8080`. Cloud Scheduler will\nencode some characters for safety and compatibility. The maximum allowed\nURL length is 2083 characters after encoding',
                  args: [
                    Arg(
                    name: 'URI',
                    description: 'Googlecloudsdk.calliope.arg_parsers:Parse',
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
              )
              ]
            ),
            Subcommand(
              name: 'pubsub',
              description: 'Update a Cloud Scheduler job with a Pub/Sub target',
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
                  name: '--clear-attributes',
                  description: 'Clear the field corresponding to `--attributes`'
                ),
                Option(
                  name: '--clear-max-backoff',
                  description: 'Clear the field corresponding to `--max-backoff`'
                ),
                Option(
                  name: '--clear-max-doublings',
                  description: 'Clear the field corresponding to `--max-doublings`'
                ),
                Option(
                  name: '--clear-max-retry-attempts',
                  description: 'Clear the field corresponding to `--max-retry-attempts`'
                ),
                Option(
                  name: '--clear-max-retry-duration',
                  description: 'Clear the field corresponding to `--max-retry-duration`'
                ),
                Option(
                  name: '--clear-min-backoff',
                  description: 'Clear the field corresponding to `--min-backoff`'
                ),
                Option(
                  name: '--clear-time-zone',
                  description: 'Clear the field corresponding to `--time-zone`'
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
                  description: 'Human-readable description of the job',
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
                  name: '--max-backoff',
                  description: 'Maximum amount of time to wait before retrying a task after it\nfails. For example, `10m`. Default is `1h`',
                  args: [
                    Arg(
                    name: 'MAX_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-doublings',
                  description: 'Maximum number of times that the interval between failed job\nretries will be doubled before the increase becomes constant',
                  args: [
                    Arg(
                    name: 'MAX_DOUBLINGS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-attempts',
                  description: 'Number of times to retry the request if it fails or times out. Must\nbe in range 0-5 inclusive. Default is 0',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_ATTEMPTS',
                    description: 'Int',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--max-retry-duration',
                  description: 'Time limit for retrying a failed task, measured from when the task was\nfirst run. If specified with `--max-retry-attempts` greater than 0, the\ntask will be retried until both limits are reached. Default is 0 (which\nmeans unlimited)',
                  args: [
                    Arg(
                    name: 'MAX_RETRY_DURATION',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body',
                  description: 'Body of the message',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--message-body-from-file',
                  description: 'Path to a file containing the body of the message',
                  args: [
                    Arg(
                    name: 'MESSAGE_BODY_FROM_FILE',
                    description: 'Googlecloudsdk.calliope.arg_parsers:FileContents',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--min-backoff',
                  description: 'Minimum amount of time to wait before retrying a task after it\nfails. For example, `10s`. Default is `5s`',
                  args: [
                    Arg(
                    name: 'MIN_BACKOFF',
                    description: 'Googlecloudsdk.core.util.times:ParseDuration',
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
                  name: '--remove-attributes',
                  description: 'Comma-separated list of attribute keys to remove with the form\n"KEY1,KEY2"',
                  args: [
                    Arg(
                    name: 'REMOVE_ATTRIBUTES',
                    description: 'List',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'Schedule on which the job will be executed.\n+\nAs a general rule, execution `n + 1` of a job will not begin until\nexecution `n` has finished. Cloud Scheduler will never allow two\nsimultaneously outstanding executions. For example, this implies that if\nthe `n+1` execution is scheduled to run at `16:00` but the `n`\nexecution takes until `16:15`, the `n+1` execution will not start\nuntil `16:15`. A scheduled start time will be delayed if the previous\nexecution has not ended when its scheduled time occurs.\n+\nIf --retry-count > 0 and a job attempt fails, the job will be tried a\ntotal of --retry-count times, with exponential backoff, until the next\nscheduled start time.\n+\nThe schedule can be either of the following types:\n* Crontab: http://en.wikipedia.org/wiki/Cron#Overview\n* English-like schedule: https://cloud.google.com/scheduler/docs/quickstart#defining_the_job_schedule',
                  args: [
                    Arg(
                    name: 'SCHEDULE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--time-zone',
                  description: 'Specifies the time zone to be used in interpreting --schedule. The value\nof this field must be a time zone name from the tz database\n(http://en.wikipedia.org/wiki/Tz_database).\n+\nNote that some time zones include a provision for\ndaylight savings time. The rules for daylight saving time are\ndetermined by the chosen time zone.\n+\nFor UTC use the string "utc". Default is "utc"',
                  args: [
                    Arg(
                    name: 'TIME_ZONE',
                    description: 'String',
                    suggestions: []
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'Name of the Google Cloud Pub/Sub topic to publish to when the job runs',
                  args: [
                    Arg(
                    name: 'TOPIC',
                    description: 'Googlecloudsdk.command_lib.util.hooks.types:Parse',
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
                  name: '--update-attributes',
                  description: 'Comma-separated list of attributes. Each attribute has the form\n"NAME=VALUE". You can specify up to 100 attributes',
                  args: [
                    Arg(
                    name: 'UPDATE_ATTRIBUTES',
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
                name: 'JOB',
                description: 'ID of the job or fully qualified identifier for the job'
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
