// Auto-generated from TypeScript source: symfony.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `symfony` CLI
final FigSpec symfonySpec = FigSpec(
  name: 'symfony',
  description: 'Symfony Binary',
  subcommands: [

    Subcommand(
      name: ['book:check-requirements', 'book:check'],
      description: 'Check that you have all the pre-requisites locally to code while reading the "Symfony: The Fast Track" book'
    ),
    Subcommand(
      name: 'book:checkout',
      description: 'Check out a step of the "Symfony: The Fast Track" book repository'
    ),
    Subcommand(
      name: ['cloud:clear-cache', 'cloud:clearcache', 'cloud:cc'],
      description: 'Clear the CLI cache'
    ),
    Subcommand(
      name: 'cloud:docs',
      description: 'Open the online documentation'
    ),
    Subcommand(
      name: 'cloud:multi',
      description: 'Execute a command on multiple projects'
    ),
    Subcommand(
      name: 'cloud:web',
      description: 'Open the Web UI'
    ),
    Subcommand(
      name: 'cloud:activity:cancel',
      description: 'Cancel an activity'
    ),
    Subcommand(
      name: 'cloud:activity:get',
      description: 'View detailed information on a single activity'
    ),
    Subcommand(
      name: ['cloud:activity:list', 'cloud:activities', 'cloud:act'],
      description: 'Get a list of activities for an environment or project'
    ),
    Subcommand(
      name: 'cloud:activity:log',
      description: 'Display the log for an activity'
    ),
    Subcommand(
      name: 'cloud:app:config-get',
      description: 'View the configuration of an app'
    ),
    Subcommand(
      name: 'cloud:app:list',
      description: 'List apps in the project'
    ),
    Subcommand(
      name: 'cloud:auth:api-token-login',
      description: 'Log in to Platform.sh using an API token'
    ),
    Subcommand(
      name: ['cloud:auth:browser-login', 'cloud:login'],
      description: 'Log in to Platform.sh via a browse'
    ),
    Subcommand(
      name: 'cloud:auth:info',
      description: 'Display your account information'
    ),
    Subcommand(
      name: ['cloud:auth:logout', 'cloud:logout'],
      description: 'Log out of Platform.sh'
    ),
    Subcommand(
      name: [
        'cloud:backup:create',
        'cloud:backup',
        'cloud:snapshot:create',
        'cloud:environment:backup',
      ],
      description: 'Make a backup of an environment'
    ),
    Subcommand(
      name: [
        'cloud:backup:list',
        'cloud:backups',
        'cloud:snapshots',
        'cloud:snapshot:list',
      ],
      description: 'List available backups of an environment'
    ),
    Subcommand(
      name: [
        'cloud:backup:restore',
        'cloud:environment:restore',
        'cloud:snapshot:restore',
      ],
      description: 'Restore an environment backup'
    ),
    Subcommand(
      name: 'cloud:certificate:add',
      description: 'Add an SSL certificate to the project'
    ),
    Subcommand(
      name: 'cloud:certificate:delete',
      description: 'Delete a certificate from the project'
    ),
    Subcommand(
      name: 'cloud:certificate:get',
      description: 'View a certificate'
    ),
    Subcommand(
      name: ['cloud:certificate:list', 'cloud:certificates', 'cloud:certs'],
      description: 'List project certificates'
    ),
    Subcommand(
      name: 'cloud:commit:get',
      description: 'Show commit details'
    ),
    Subcommand(
      name: ['cloud:commit:list', 'cloud:commits'],
      description: 'List commits'
    ),
    Subcommand(
      name: ['cloud:db:dump', 'cloud:sql-dump', 'cloud-environment:sql-dump'],
      description: 'Create a local dump of the remote database'
    ),
    Subcommand(
      name: 'cloud:db:size',
      description: 'Estimate the disk usage of a database'
    ),
    Subcommand(
      name: ['cloud:db:sql', 'cloud:sql', 'cloud:environment:sql'],
      description: 'Run SQL on the remote database'
    ),
    Subcommand(
      name: 'cloud:domain:add',
      description: 'Add a new domain to the project'
    ),
    Subcommand(
      name: 'cloud:domain:delete',
      description: 'Delete a domain from the project'
    ),
    Subcommand(
      name: 'cloud:domain:get',
      description: 'Show detailed information for a domain'
    ),
    Subcommand(
      name: ['cloud:domain:list', 'cloud:domains'],
      description: 'Get a list of all domains'
    ),
    Subcommand(
      name: 'cloud:domain:update',
      description: 'Update a domain'
    ),
    Subcommand(
      name: 'coud:environment:activate',
      description: 'Activate an environment'
    ),
    Subcommand(
      name: ['cloud:environment:branch', 'cloud:branch'],
      description: 'Branch an environment'
    ),
    Subcommand(
      name: ['cloud:environment:checkout', 'cloud:checkout'],
      description: 'Check out an environment'
    ),
    Subcommand(
      name: ['cloud:environment:debug', 'environment:debug'],
      description: 'Debug an environment by switching Symfony to the debug mode temporarily'
    ),
    Subcommand(
      name: ['cloud:environment:delete', 'cloud:environment:deactivate'],
      description: 'Delete one or more environments'
    ),
    Subcommand(
      name: ['cloud:environment:http-access', 'cloud:httpaccess'],
      description: 'Update HTTP access settings for an environment'
    ),
    Subcommand(
      name: ['cloud:environment:info', 'cloud:environment:metadata'],
      description: 'Read or set properties for an environment'
    ),
    Subcommand(
      name: 'cloud:environment:init',
      description: 'Initialize an environment from a public Git repository'
    ),
    Subcommand(
      name: ['cloud:environment:list', 'cloud:environments', 'cloud:env'],
      description: 'Get a list of environments'
    ),
    Subcommand(
      name: ['cloud:environment:logs', 'cloud:log', 'cloud:logs'],
      description: 'Read an environment\'s logs'
    ),
    Subcommand(
      name: ['cloud:environment:merge', 'cloud:merge'],
      description: 'Merge an environment'
    ),
    Subcommand(
      name: ['cloud:environment:push', 'cloud:push', 'deploy', 'cloud:deploy'],
      description: 'Push code to an environment'
    ),
    Subcommand(
      name: ['cloud:environment:redeploy', 'cloud:redeploy'],
      description: 'Redeploy an environment'
    ),
    Subcommand(
      name: ['cloud:environment:relationships', 'cloud:relationships'],
      description: 'Show an environment\'s relationships'
    ),
    Subcommand(
      name: ['cloud:environment:scp', 'cloud:scp'],
      description: 'Copy files to and from current environment using scp'
    ),
    Subcommand(
      name: ['cloud:environment:ssh', 'cloud:ssh'],
      description: 'SSH to the current environment'
    ),
    Subcommand(
      name: ['cloud:environment:synchronize', 'cloud:sync'],
      description: 'Synchronize an environment\'s code and/or data from its parent'
    ),
    Subcommand(
      name: ['cloud:environment:url', 'cloud:url'],
      description: 'Get the public URLs of an environment'
    ),
    Subcommand(
      name: ['cloud:environment:xdebug', 'cloud:xdebug'],
      description: 'Open a tunnel to Xdebug on the environment'
    ),
    Subcommand(
      name: 'cloud:integration:activity:get',
      description: 'View detailed information on a single integration activity'
    ),
    Subcommand(
      name: [
        'cloud:integration:activity:list',
        'cloud:i:act',
        'cloud:integration:activities',
      ],
      description: 'Get a list of activities for an integration'
    ),
    Subcommand(
      name: 'cloud:integration:activity:log',
      description: 'Display the log for an integration activity'
    ),
    Subcommand(
      name: 'cloud:integration:add',
      description: 'Add an integration to the project'
    ),
    Subcommand(
      name: 'cloud:integration:delete',
      description: 'Delete an integration from a project'
    ),
    Subcommand(
      name: 'cloud:integration:get',
      description: 'View details of an integration'
    ),
    Subcommand(
      name: ['cloud:integration:list', 'cloud:integrations'],
      description: 'View a list of project integration(s)'
    ),
    Subcommand(
      name: 'cloud:integration:update',
      description: 'Update an integration'
    ),
    Subcommand(
      name: 'cloud:integration:validate',
      description: 'Validate an existing integration'
    ),
    Subcommand(
      name: 'cloud:mount:download',
      description: 'Download files from a mount, using rsync'
    ),
    Subcommand(
      name: ['cloud:mount:list', 'cloud:mounts'],
      description: 'Get a list of mounts'
    ),
    Subcommand(
      name: 'cloud:mount:size',
      description: 'Check the disk usage of mounts'
    ),
    Subcommand(
      name: 'cloud:mount:upload',
      description: 'Upload files to a mount, using rsync'
    ),
    Subcommand(
      name: 'cloud:organization:billing:address',
      description: 'View or change an organization\'s billing address'
    ),
    Subcommand(
      name: 'cloud:organization:billing:profile',
      description: 'View or change an organization\'s billing profile'
    ),
    Subcommand(
      name: 'cloud:organization:create',
      description: 'Create a new organization'
    ),
    Subcommand(
      name: 'cloud:organization:delete',
      description: 'Delete an organization'
    ),
    Subcommand(
      name: 'cloud:organization:info',
      description: 'View or change organization details'
    ),
    Subcommand(
      name: ['cloud:organization:list', 'cloud:orgs', 'cloud:organizations'],
      description: 'List organizations'
    ),
    Subcommand(
      name: [
        'cloud:organization:subscription:list',
        'cloud:organization:subscriptions',
      ],
      description: 'List subscriptions within an organization'
    ),
    Subcommand(
      name: 'cloud:organization:user:add',
      description: 'Invite a user to an organization'
    ),
    Subcommand(
      name: 'cloud:organization:user:delete',
      description: 'Remove a user from an organization'
    ),
    Subcommand(
      name: 'cloud:organization:user:get',
      description: 'View an organization user'
    ),
    Subcommand(
      name: ['cloud:organization:user:list', 'cloud:organization:users'],
      description: 'List organization users'
    ),
    Subcommand(
      name: 'cloud:organization:user:update',
      description: 'Update an organization user'
    ),
    Subcommand(
      name: 'cloud:project:clear-build-cache',
      description: 'Clear a project\'s build cache'
    ),
    Subcommand(
      name: ['cloud:project:create', 'cloud:create'],
      description: 'Create a new project'
    ),
    Subcommand(
      name: 'cloud:project:delete',
      description: 'Delete a project'
    ),
    Subcommand(
      name: ['cloud:project:get', 'cloud:get'],
      description: 'Clone a project locally'
    ),
    Subcommand(
      name: ['cloud:project:info', 'cloud:project:metadata'],
      description: 'Read or set properties for a project'
    ),
    Subcommand(
      name: ['cloud:project:list', 'cloud:projects', 'cloud:pro'],
      description: 'Get a list of all active projects'
    ),
    Subcommand(
      name: 'cloud:project:set-remote',
      description: 'Set the remote project for the current Git repository'
    ),
    Subcommand(
      name: 'cloud:repo:cat',
      description: 'Read a file in the project repository'
    ),
    Subcommand(
      name: 'cloud:repo:ls',
      description: 'List files in the project repository'
    ),
    Subcommand(
      name: ['cloud:repo:read', 'cloud:read'],
      description: 'Read a directory or file in the project repository'
    ),
    Subcommand(
      name: 'cloud:route:get',
      description: 'View detailed information about a route'
    ),
    Subcommand(
      name: ['cloud:route:list', 'cloud:routes', 'cloud:environment:routes'],
      description: 'List all routes for an environment'
    ),
    Subcommand(
      name: ['cloud:service:list', 'cloud:services'],
      description: 'List services in the project'
    ),
    Subcommand(
      name: ['cloud:service:mongo:dump', 'cloud:mongodump'],
      description: 'Create a binary archive dump of data from MongoDB'
    ),
    Subcommand(
      name: ['cloud:service:mongo:export', 'cloud:mongoexport'],
      description: 'Export data from MongoDB'
    ),
    Subcommand(
      name: ['cloud:service:mongo:restore', 'cloud:mongorestore'],
      description: 'Restore a binary archive dump of data into MongoDB'
    ),
    Subcommand(
      name: ['cloud:service:mongo:shell', 'cloud:mongo'],
      description: 'Use the MongoDB shell'
    ),
    Subcommand(
      name: ['cloud:service:redis-cli', 'cloud:redis'],
      description: 'Access the Redis CLI'
    ),
    Subcommand(
      name: 'cloud:ssh-cert:load',
      description: 'Generate an SSH certificate'
    ),
    Subcommand(
      name: 'cloud:ssh-key:add',
      description: 'Add a new SSH key'
    ),
    Subcommand(
      name: 'cloud:ssh-key:delete',
      description: 'Delete an SSH key'
    ),
    Subcommand(
      name: ['cloud:ssh-key:list', 'cloud:ssh-keys'],
      description: 'Get a list of SSH keys in your accountt'
    ),
    Subcommand(
      name: 'cloud:subscription:info',
      description: 'Read or modify subscription properties'
    ),
    Subcommand(
      name: 'cloud:tunnel:close',
      description: 'Close SSH tunnels'
    ),
    Subcommand(
      name: 'cloud:tunnel:info',
      description: 'View relationship info for SSH tunnels'
    ),
    Subcommand(
      name: ['cloud:tunnel:list', 'cloud:tunnels'],
      description: 'List SSH tunnels'
    ),
    Subcommand(
      name: 'cloud:tunnel:open',
      description: 'Open SSH tunnels to an app\'s relationships'
    ),
    Subcommand(
      name: 'cloud:tunnel:single',
      description: 'Open a single SSH tunnel to an app relationship'
    ),
    Subcommand(
      name: 'cloud:user:add',
      description: 'Add a user to the project'
    ),
    Subcommand(
      name: 'cloud:user:delete',
      description: 'Delete a user from the project'
    ),
    Subcommand(
      name: ['cloud:user:get', 'cloud:vget'],
      description: 'View a user\'s role(s)'
    ),
    Subcommand(
      name: ['cloud:user:list', 'cloud:variables', 'cloud:var'],
      description: 'List project users'
    ),
    Subcommand(
      name: 'cloud:user:update',
      description: 'Update user role(s) on a project'
    ),
    Subcommand(
      name: 'cloud:variable:create',
      description: 'Create a variable'
    ),
    Subcommand(
      name: 'cloud:variable:delete',
      description: 'Delete a variable'
    ),
    Subcommand(
      name: 'cloud:variable:get',
      description: 'View a variable'
    ),
    Subcommand(
      name: 'cloud:variable:list',
      description: 'List variables'
    ),
    Subcommand(
      name: 'cloud:variable:update',
      description: 'Update a variable'
    ),
    Subcommand(
      name: ['cloud:worker:list', 'cloud:workers'],
      description: 'Get a list of all deployed workers'
    ),
    Subcommand(
      name: ['local:check:requirements', 'check-requirements', 'check:req'],
      description: 'Checks requirements for running Symfony and gives useful recommendations to optimize PHP for Symfony'
    ),
    Subcommand(
      name: [
        'local:check:security',
        'security:check',
        'check:security',
        'local:security:check',
      ],
      description: 'Check security issues in project dependencies'
    ),
    Subcommand(
      name: ['local:new', 'new'],
      description: 'Create a new Symfony project'
    ),
    Subcommand(
      name: 'local:php:list',
      description: 'List locally available PHP versions'
    ),
    Subcommand(
      name: 'local:php:refresh',
      description: 'Auto-discover the list of available PHP version'
    ),
    Subcommand(
      name: ['local:proxy:domain:attach', 'proxy:domain:attach'],
      description: 'Attach a local domain for the proxy'
    ),
    Subcommand(
      name: ['local:proxy:domain:detach', 'proxy:domain:detach'],
      description: 'Detach domains from the proxy'
    ),
    Subcommand(
      name: ['local:proxy:start', 'proxy:start'],
      description: 'Start the local proxy server (local domains support)'
    ),
    Subcommand(
      name: ['local:proxy:status', 'proxy:status'],
      description: 'Get the local proxy server status'
    ),
    Subcommand(
      name: ['local:proxy:stop', 'proxy:stop'],
      description: 'Stop the local proxy server'
    ),
    Subcommand(
      name: ['local:run', 'run'],
      description: 'Run a program with environment variables set depending on the current context'
    ),
    Subcommand(
      name: ['local:server:ca:install', 'server:ca:install'],
      description: 'Create a local Certificate Authority for serving HTTPS'
    ),
    Subcommand(
      name: ['local:server:ca:uninstall', 'server:ca:uninstall'],
      description: 'Uninstall the local Certificate Authority'
    ),
    Subcommand(
      name: ['local:server:list', 'server:list'],
      description: 'List all configured local web servers'
    ),
    Subcommand(
      name: ['local:server:log', 'server:log'],
      description: 'Display local web server logs'
    ),
    Subcommand(
      name: ['local:server:prod', 'server:prod'],
      description: 'Switch a project to use Symfony\'s production environment'
    ),
    Subcommand(
      name: ['local:server:start', 'server:start', 'serve'],
      description: 'Run a local web server'
    ),
    Subcommand(
      name: ['local:server:status', 'server:status'],
      description: 'Get the local web server status'
    ),
    Subcommand(
      name: ['local:server:stop', 'server:stop'],
      description: 'Stop the local web server'
    ),
    Subcommand(
      name: ['local:var:expose-from-tunnel', 'var:expose-from-tunnel'],
      description: 'Expose tunnel service environment variables locally'
    ),
    Subcommand(
      name: 'open:local',
      description: 'Open the local project in a browser'
    ),
    Subcommand(
      name: 'open:local:rabbitmq',
      description: 'Open the local project RabbitMQ web management interface in a browser'
    ),
    Subcommand(
      name: 'open:local:webmail',
      description: 'Open the local project mail catcher web interface in a browser'
    ),
    Subcommand(
      name: ['project:init', 'init'],
      description: 'Initialize a new project using templates'
    ),
    Subcommand(
      name: ['self:help', 'help', 'list'],
      description: 'Display help for a command or a category of commands'
    ),
    Subcommand(
      name: ['self:version', 'version'],
      description: 'Display the application version'
    ),
    Subcommand(
      name: 'var:export',
      description: 'Export environment variables depending on the current context'
    ),
    Subcommand(
      name: 'composer',
      description: 'Runs Composer without memory limit'
    ),
    Subcommand(
      name: 'php',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'pecl',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'pear',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'php-fdp',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'php-cgi',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'php-config',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'phpdbg',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'phpize',
      description: 'Runs the binary using the configured PHP version'
    ),
    Subcommand(
      name: 'console',
      description: 'Runs the Symfony Console (bin/console) for current project'
    )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Do not output any message'
    ),
    Option(
      name: '--no-ansi',
      description: 'Disable ANSI output'
    ),
    Option(
      name: '--ansi',
      description: 'Force ANSI output'
    ),
    Option(
      name: '--no-interaction',
      description: 'Do not ask any interactive question'
    ),
    Option(
      name: ['-v', '--verbose'],
      isRepeatable: 3,
      description: 'Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug'
    ),
    Option(
      name: '-V',
      description: 'Print the version'
    )
  ]
);
