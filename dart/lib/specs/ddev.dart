// Auto-generated from TypeScript source: ddev.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ddev` CLI
final FigSpec ddevSpec = FigSpec(
  name: 'ddev',
  description: 'DDEV-Local local development environment',
  subcommands: [
    Subcommand(
      name: 'auth',
      description: 'A collection of authentication commands',
      subcommands: [
        Subcommand(
          name: 'ssh',
          description: 'Add ssh key authentication to the ddev-ssh-auth container',
          options: [
            Option(
              name: ['--ssh-key-path', '-d'],
              description: 'Full path to ssh key directory',
              args: [
                Arg(
                name: 'ssh-key-pat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Removes items ddev has created',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Clean all ddev projects'
        ),
        Option(
          name: '--dry-run',
          description: 'Run the clean command without deleting'
        )
      ]
    ),
    Subcommand(
      name: 'composer',
      description: 'Executes a composer command within the web container',
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Executes \'composer create-project\' within the web container with the arguments and flags provided',
          options: [
            Option(
              name: ['--yes', '-y'],
              description: 'Yes - skip confirmation prompt'
            )
          ]
        ),
        Subcommand(
          name: 'create-project',
          description: ''
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Create or modify a ddev project configuration in the current directory',
      subcommands: [
        Subcommand(
          name: 'global',
          description: 'Change global configuration',
          options: [
            Option(
              name: '--auto-restart-containers',
              description: 'If true, automatically restart containers after a reboot or docker restart'
            ),
            Option(
              name: '--disable-http2',
              description: 'Optionally disable http2 in ddev-router, \'ddev global --disable-http2\' or `ddev global --disable-http2=false\''
            ),
            Option(
              name: '--fail-on-hook-fail',
              description: 'If true, \'ddev start\' will fail when a hook fails'
            ),
            Option(
              name: '--instrumentation-opt-in',
              description: 'Instrumentation-opt-in=true'
            ),
            Option(
              name: '--internet-detection-timeout-ms',
              description: 'Increase timeout when checking internet timeout, in milliseconds',
              args: [
                Arg(
                name: 'internet-detection-timeout-ms',
                defaultValue: '300'
              )
              ]
            ),
            Option(
              name: '--letsencrypt-email',
              description: 'Email associated with Let\'s Encrypt, `ddev global --letsencrypt-email=me@example.com\'',
              args: [
                Arg(
                name: 'letsencrypt-emai'
              )
              ]
            ),
            Option(
              name: '--mutagen-enabled',
              description: 'If true, web container will use mutagen caching/asynchronous updates'
            ),
            Option(
              name: '--nfs-mount-enabled',
              description: 'Enable NFS mounting on all projects globally'
            ),
            Option(
              name: '--no-bind-mounts',
              description: 'If true, don\'t use bind-mounts - useful for environments like remote docker where bind-mounts are impossible'
            ),
            Option(
              name: '--omit-containers',
              description: 'For example, --omit-containers=dba,ddev-ssh-agent',
              args: [
                Arg(
                name: 'omit-container'
              )
              ]
            ),
            Option(
              name: '--required-docker-compose-version',
              description: 'Override default docker-compose version',
              args: [
                Arg(
                name: 'required-docker-compose-versio'
              )
              ]
            ),
            Option(
              name: '--router-bind-all-interfaces',
              description: 'Router-bind-all-interfaces=true'
            ),
            Option(
              name: '--simple-formatting',
              description: 'If true, use simple formatting and no color for tables'
            ),
            Option(
              name: '--table-style',
              description: 'Table style for list and describe, see ~/.ddev/global_config.yaml for values',
              args: [
                Arg(
                name: 'table-styl'
              )
              ]
            ),
            Option(
              name: '--use-docker-compose-from-path',
              description: 'If true, use docker-compose from path instead of private ~/.ddev/bin/docker-compose'
            ),
            Option(
              name: '--use-hardened-images',
              description: 'If true, use more secure \'hardened\' images for an actual internet deployment'
            ),
            Option(
              name: '--use-letsencrypt',
              description: 'Enables experimental Let\'s Encrypt integration, \'ddev global --use-letsencrypt\' or `ddev global --use-letsencrypt=false\''
            ),
            Option(
              name: '--web-environment',
              description: 'Set the environment variables in the web container: --web-environment="TYPO3_CONTEXT=Development,SOMEENV=someval"',
              args: [
                Arg(
                name: 'web-environmen'
              )
              ]
            ),
            Option(
              name: '--web-environment-add',
              description: 'Append environment variables to the web container: --web-environment="TYPO3_CONTEXT=Development,SOMEENV=someval"',
              args: [
                Arg(
                name: 'web-environment-ad'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--additional-fqdns',
          description: 'A comma-delimited list of FQDNs for the project',
          args: [
            Arg(
            name: 'additional-fqdn'
          )
          ]
        ),
        Option(
          name: '--additional-hostnames',
          description: 'A comma-delimited list of hostnames for the project',
          args: [
            Arg(
            name: 'additional-hostname'
          )
          ]
        ),
        Option(
          name: '--apptype',
          description: 'Provide the project type (one of backdrop, drupal10, drupal6, drupal7, drupal8, drupal9, laravel, magento, magento2, php, shopware6, typo3, wordpress). This is autodetected and this flag is necessary only to override the detection. This is the same as --project-type and is included only for backwards compatibility',
          args: [
            Arg(
            name: 'apptyp'
          )
          ]
        ),
        Option(
          name: '--auto',
          description: 'Automatically run config without prompting'
        ),
        Option(
          name: '--bind-all-interfaces',
          description: 'Bind host ports on all interfaces, not just on localhost network interface'
        ),
        Option(
          name: '--composer-root',
          description: 'Overrides the default composer root directory for the web service',
          args: [
            Arg(
            name: 'composer-roo'
          )
          ]
        ),
        Option(
          name: '--composer-root-default',
          description: 'Unsets a web service composer root directory override'
        ),
        Option(
          name: '--composer-version',
          description: 'Specify override for composer version in web container. This may be "", "1", "2", "2.2", "stable", "preview", "snapshot" or a specific version',
          args: [
            Arg(
            name: 'composer-versio'
          )
          ]
        ),
        Option(
          name: '--create-docroot',
          description: 'Prompts ddev to create the docroot if it doesn\'t exist'
        ),
        Option(
          name: '--database',
          description: 'Specify the database type:version to use. Defaults to mariadb:10.4',
          args: [
            Arg(
            name: 'databas'
          )
          ]
        ),
        Option(
          name: '--db-image',
          description: 'Sets the db container image',
          args: [
            Arg(
            name: 'db-imag'
          )
          ]
        ),
        Option(
          name: '--db-image-default',
          description: 'Sets the default db container image for this ddev version'
        ),
        Option(
          name: '--db-working-dir',
          description: 'Overrides the default working directory for the db service',
          args: [
            Arg(
            name: 'db-working-di'
          )
          ]
        ),
        Option(
          name: '--db-working-dir-default',
          description: 'Unsets a db service working directory override'
        ),
        Option(
          name: '--dba-image',
          description: 'Sets the dba container image',
          args: [
            Arg(
            name: 'dba-imag'
          )
          ]
        ),
        Option(
          name: '--dba-image-default',
          description: 'Sets the default dba container image for this ddev version'
        ),
        Option(
          name: '--dba-working-dir',
          description: 'Overrides the default working directory for the dba service',
          args: [
            Arg(
            name: 'dba-working-di'
          )
          ]
        ),
        Option(
          name: '--dba-working-dir-default',
          description: 'Unsets a dba service working directory override'
        ),
        Option(
          name: '--dbimage-extra-packages',
          description: 'A comma-delimited list of Debian packages that should be added to db container when the project is started',
          args: [
            Arg(
            name: 'dbimage-extra-package'
          )
          ]
        ),
        Option(
          name: '--default-container-timeout',
          description: 'Default time in seconds that ddev waits for all containers to become ready on start',
          args: [
            Arg(
            name: 'default-container-timeout',
            defaultValue: '12'
          )
          ]
        ),
        Option(
          name: '--disable-settings-management',
          description: 'Prevent ddev from creating or updating CMS settings files'
        ),
        Option(
          name: '--docroot',
          description: 'Provide the relative docroot of the project, like \'docroot\' or \'htdocs\' or \'web\', defaults to empty, the current directory',
          args: [
            Arg(
            name: 'docroo'
          )
          ]
        ),
        Option(
          name: '--fail-on-hook-fail',
          description: 'Decide whether \'ddev start\' should be interrupted by a failing hook'
        ),
        Option(
          name: '--host-db-port',
          description: 'The db container\'s localhost-bound port',
          args: [
            Arg(
            name: 'host-db-por'
          )
          ]
        ),
        Option(
          name: '--host-dba-port',
          description: 'The dba (PHPMyAdmin) container\'s localhost-bound port, if exposed via bind-all-interfaces',
          args: [
            Arg(
            name: 'host-dba-por'
          )
          ]
        ),
        Option(
          name: '--host-https-port',
          description: 'The web container\'s localhost-bound https port',
          args: [
            Arg(
            name: 'host-https-por'
          )
          ]
        ),
        Option(
          name: '--host-webserver-port',
          description: 'The web container\'s localhost-bound port',
          args: [
            Arg(
            name: 'host-webserver-por'
          )
          ]
        ),
        Option(
          name: '--http-port',
          description: 'The router HTTP port for this project',
          args: [
            Arg(
            name: 'http-por'
          )
          ]
        ),
        Option(
          name: '--https-port',
          description: 'The router HTTPS port for this project',
          args: [
            Arg(
            name: 'https-por'
          )
          ]
        ),
        Option(
          name: '--image-defaults',
          description: 'Sets the default web, db, and dba container images'
        ),
        Option(
          name: '--mailhog-https-port',
          description: 'Router port to be used for mailhog access (https)',
          args: [
            Arg(
            name: 'mailhog-https-por'
          )
          ]
        ),
        Option(
          name: '--mailhog-port',
          description: 'Router port to be used for mailhog access',
          args: [
            Arg(
            name: 'mailhog-por'
          )
          ]
        ),
        Option(
          name: '--mutagen-enabled',
          description: 'Enable mutagen asynchronous update of project in web container'
        ),
        Option(
          name: '--nfs-mount-enabled',
          description: 'Enable NFS mounting of project in container'
        ),
        Option(
          name: '--ngrok-args',
          description: 'Provide extra args to ngrok in ddev share',
          args: [
            Arg(
            name: 'ngrok-arg'
          )
          ]
        ),
        Option(
          name: '--no-project-mount',
          description: 'Whether or not to skip mounting project code into the web container'
        ),
        Option(
          name: '--nodejs-version',
          description: 'Specify the nodejs version to use if you don\'t want the default NodeJS 16',
          args: [
            Arg(
            name: 'nodejs-versio'
          )
          ]
        ),
        Option(
          name: '--omit-containers',
          description: 'A comma-delimited list of container types that should not be started when the project is started',
          args: [
            Arg(
            name: 'omit-container'
          )
          ]
        ),
        Option(
          name: '--php-version',
          description: 'The version of PHP that will be enabled in the web container',
          args: [
            Arg(
            name: 'php-versio'
          )
          ]
        ),
        Option(
          name: '--phpmyadmin-https-port',
          description: 'Router port to be used for PHPMyAdmin (dba) container access (https)',
          args: [
            Arg(
            name: 'phpmyadmin-https-por'
          )
          ]
        ),
        Option(
          name: '--phpmyadmin-port',
          description: 'Router port to be used for PHPMyAdmin (dba) container access',
          args: [
            Arg(
            name: 'phpmyadmin-por'
          )
          ]
        ),
        Option(
          name: '--project-name',
          description: 'Provide the project name of project to configure (normally the same as the last part of directory name)',
          args: [
            Arg(
            name: 'project-nam'
          )
          ]
        ),
        Option(
          name: '--project-tld',
          description: 'Set the top-level domain to be used for projects, defaults to ddev.site',
          args: [
            Arg(
            name: 'project-tld',
            defaultValue: 'ddev.sit'
          )
          ]
        ),
        Option(
          name: '--project-type',
          description: 'Provide the project type (one of backdrop, drupal10, drupal6, drupal7, drupal8, drupal9, laravel, magento, magento2, php, shopware6, typo3, wordpress). This is autodetected and this flag is necessary only to override the detection',
          args: [
            Arg(
            name: 'project-typ'
          )
          ]
        ),
        Option(
          name: '--projectname',
          description: 'Provide the project name of project to configure (normally the same as the last part of directory name)',
          args: [
            Arg(
            name: 'projectnam'
          )
          ]
        ),
        Option(
          name: '--projecttype',
          description: 'Provide the project type (one of backdrop, drupal10, drupal6, drupal7, drupal8, drupal9, laravel, magento, magento2, php, shopware6, typo3, wordpress). This is autodetected and this flag is necessary only to override the detection',
          args: [
            Arg(
            name: 'projecttyp'
          )
          ]
        ),
        Option(
          name: '--show-config-location',
          description: 'Output the location of the config.yaml file if it exists, or error that it doesn\'t exist'
        ),
        Option(
          name: '--sitename',
          description: 'Provide the project name of project to configure (normally the same as the last part of directory name) This is the same as project-name and is included only for backwards compatibility',
          args: [
            Arg(
            name: 'sitenam'
          )
          ]
        ),
        Option(
          name: '--timezone',
          description: 'Specify timezone for containers and php, like Europe/London or America/Denver or GMT or UTC',
          args: [
            Arg(
            name: 'timezon'
          )
          ]
        ),
        Option(
          name: '--upload-dir',
          description: 'Sets the project\'s upload directory, the destination directory of the import-files command',
          args: [
            Arg(
            name: 'upload-di'
          )
          ]
        ),
        Option(
          name: '--use-dns-when-possible',
          description: 'Use DNS for hostname resolution instead of /etc/hosts when possible'
        ),
        Option(
          name: '--web-environment',
          description: 'Set the environment variables in the web container: --web-environment="TYPO3_CONTEXT=Development,SOMEENV=someval"',
          args: [
            Arg(
            name: 'web-environmen'
          )
          ]
        ),
        Option(
          name: '--web-environment-add',
          description: 'Append environment variables to the web container: --web-environment="TYPO3_CONTEXT=Development,SOMEENV=someval"',
          args: [
            Arg(
            name: 'web-environment-ad'
          )
          ]
        ),
        Option(
          name: '--web-image',
          description: 'Sets the web container image',
          args: [
            Arg(
            name: 'web-imag'
          )
          ]
        ),
        Option(
          name: '--web-image-default',
          description: 'Sets the default web container image for this ddev version'
        ),
        Option(
          name: '--web-working-dir',
          description: 'Overrides the default working directory for the web service',
          args: [
            Arg(
            name: 'web-working-di'
          )
          ]
        ),
        Option(
          name: '--web-working-dir-default',
          description: 'Unsets a web service working directory override'
        ),
        Option(
          name: '--webimage-extra-packages',
          description: 'A comma-delimited list of Debian packages that should be added to web container when the project is started',
          args: [
            Arg(
            name: 'webimage-extra-package'
          )
          ]
        ),
        Option(
          name: '--webserver-type',
          description: 'Sets the project\'s desired webserver type: nginx-fpm or apache-fpm',
          args: [
            Arg(
            name: 'webserver-typ'
          )
          ]
        ),
        Option(
          name: '--working-dir-defaults',
          description: 'Unsets all service working directory overrides'
        ),
        Option(
          name: '--xdebug-enabled',
          description: 'Whether or not XDebug is enabled in the web container'
        )
      ]
    ),
    Subcommand(
      name: ['d', 'dbg', 'debug'],
      description: 'A collection of debugging commands',
      subcommands: [
        Subcommand(
          name: 'capabilities',
          description: 'Show capabilities of this version of ddev'
        ),
        Subcommand(
          name: 'check-db-match',
          description: 'Verify that the database in the ddev-db server matches the configured type/version'
        ),
        Subcommand(
          name: 'compose-config',
          description: 'Prints the docker-compose configuration of the current project'
        ),
        Subcommand(
          name: 'configyaml',
          description: 'Prints the project config.*.yaml usage'
        ),
        Subcommand(
          name: 'dockercheck',
          description: 'Diagnose DDEV docker/colima setup'
        ),
        Subcommand(
          name: 'download-images',
          description: 'Download all images required by ddev'
        ),
        Subcommand(
          name: 'fix-commands',
          description: 'Fix up custom/shell commands without running ddev start'
        ),
        Subcommand(
          name: 'get-volume-db-version',
          description: 'Get the database type/version found in the ddev-dbserver\'s database volume, which may not be the same as the configured database type/version'
        ),
        Subcommand(
          name: 'migrate-database',
          description: 'Migrate a mysql or mariadb database to a different dbtype:dbversion; works only with mysql and mariadb, not with postgres'
        ),
        Subcommand(
          name: 'mutagen',
          description: 'Allows access to any mutagen command'
        ),
        Subcommand(
          name: 'nfsmount',
          description: 'Checks to see if nfs mounting works for current project'
        ),
        Subcommand(
          name: 'refresh',
          description: 'Refreshes docker cache for project'
        ),
        Subcommand(
          name: 'router-nginx-config',
          description: 'Prints the nginx config of the router'
        ),
        Subcommand(
          name: 'test',
          description: 'Run diagnostics on ddev using the embedded test_ddev.sh script'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Remove all project information (including database) for an existing project',
      subcommands: [
        Subcommand(
          name: 'images',
          description: 'Deletes drud/ddev-* docker images not in use by current ddev version',
          options: [
            Option(
              name: ['--all', '-a'],
              description: 'If set, deletes all Docker images created by ddev'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Yes - skip confirmation prompt'
            )
          ]
        )
      ],
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Delete all projects'
        ),
        Option(
          name: '--clean-containers',
          description: 'Clean up all ddev docker containers which are not required by this version of ddev'
        ),
        Option(
          name: ['--omit-snapshot', '-O'],
          description: 'Omit/skip database snapshot'
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Yes - skip confirmation prompt'
        )
      ]
    ),
    Subcommand(
      name: ['desc', 'st', 'status', 'describe'],
      description: 'Get a detailed description of a running ddev project'
    ),
    Subcommand(
      name: ['.', 'exec'],
      description: 'Execute a shell command in the container for a service. Uses the web service by default',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Defines the execution directory within the container',
          args: [
            Arg(
            name: 'di'
          )
          ]
        ),
        Option(
          name: '--raw',
          description: 'Use raw exec (do not interpret with bash inside container)'
        ),
        Option(
          name: ['--service', '-s'],
          description: 'Defines the service to connect to. [e.g. web, db]',
          args: [
            Arg(
            name: 'service',
            defaultValue: 'we'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'export-db',
      description: 'Dump a database to a file or to stdout',
      options: [
        Option(
          name: '--bzip2',
          description: 'Use bzip2 compression'
        ),
        Option(
          name: ['--file', '-f'],
          description: 'Provide the path to output the dump',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['--gzip', '-z'],
          description: 'Use gzip compression'
        ),
        Option(
          name: ['--target-db', '-d'],
          description: 'If provided, target-db is alternate database to export',
          args: [
            Arg(
            name: 'target-db',
            defaultValue: 'd'
          )
          ]
        ),
        Option(
          name: '--xz',
          description: 'Use xz compression'
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get/Download a 3rd party add-on (service, provider, etc.)',
      options: [
        Option(
          name: '--all',
          description: 'List unofficial add-ons for \'ddev get\' in addition to the official ones'
        ),
        Option(
          name: '--list',
          description: 'List available add-ons for \'ddev get\''
        )
      ]
    ),
    Subcommand(
      name: 'hostname',
      description: 'Manage your hostfile entries',
      options: [
        Option(
          name: '--fire-bazooka',
          description: 'Alias of --remove-inactive'
        ),
        Option(
          name: ['--remove', '-r'],
          description: 'Remove the provided host name - ip correlation'
        ),
        Option(
          name: ['--remove-inactive', '-R'],
          description: 'Remove host names of inactive projects'
        )
      ]
    ),
    Subcommand(
      name: 'import-db',
      description: 'Import a sql file into the project',
      options: [
        Option(
          name: '--extract-path',
          description: 'If provided asset is an archive, provide the path to extract within the archive',
          args: [
            Arg(
            name: 'extract-pat'
          )
          ]
        ),
        Option(
          name: '--no-drop',
          description: 'Set if you do NOT want to drop the db before importing'
        ),
        Option(
          name: ['--progress', '-p'],
          description: 'Display a progress bar during import'
        ),
        Option(
          name: ['--src', '-f'],
          description: 'Provide the path to a sql dump in .sql or tar/tar.gz/tgz/zip format',
          args: [
            Arg(
            name: 'sr'
          )
          ]
        ),
        Option(
          name: ['--target-db', '-d'],
          description: 'If provided, target-db is alternate database to import into',
          args: [
            Arg(
            name: 'target-db',
            defaultValue: 'd'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'import-files',
      description: 'Pull the uploaded files directory of an existing project to the default public upload directory of your project',
      options: [
        Option(
          name: '--extract-path',
          description: 'If provided asset is an archive, optionally provide the path to extract within the archive',
          args: [
            Arg(
            name: 'extract-pat'
          )
          ]
        ),
        Option(
          name: '--src',
          description: 'Provide the path to the source directory or tar/tar.gz/tgz/zip archive of files to import',
          args: [
            Arg(
            name: 'sr'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['l', 'ls', 'list'],
      description: 'List projects',
      options: [
        Option(
          name: ['--active-only', '-A'],
          description: 'If set, only currently active projects will be displayed'
        ),
        Option(
          name: '--continuous',
          description: 'If set, project information will be emitted until the command is stopped'
        ),
        Option(
          name: ['--continuous-sleep-interval', '-I'],
          description: 'Time in seconds between ddev list --continuous output lists',
          args: [
            Arg(
            name: 'continuous-sleep-interval',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: ['--wrap-table', '-W'],
          description: 'Display table with wrapped text if required'
        )
      ]
    ),
    Subcommand(
      name: 'logs',
      description: 'Get the logs from your running services',
      options: [
        Option(
          name: ['--follow', '-f'],
          description: 'Follow the logs in real time'
        ),
        Option(
          name: ['--service', '-s'],
          description: 'Defines the service to retrieve logs from. [e.g. web, db]',
          args: [
            Arg(
            name: 'service',
            defaultValue: 'we'
          )
          ]
        ),
        Option(
          name: '--tail',
          description: 'How many lines to show',
          args: [
            Arg(
            name: 'tai'
          )
          ]
        ),
        Option(
          name: ['--time', '-t'],
          description: 'Add timestamps to logs'
        )
      ]
    ),
    Subcommand(
      name: 'mutagen',
      description: 'Commands for mutagen status and sync, etc',
      subcommands: [
        Subcommand(
          name: 'monitor',
          description: 'Monitor mutagen status'
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset mutagen for project'
        ),
        Subcommand(
          name: ['st', 'status'],
          description: 'Shows mutagen sync status',
          options: [
            Option(
              name: ['--verbose', '-l'],
              description: 'Extended/verbose output for mutagen status'
            )
          ]
        ),
        Subcommand(
          name: 'sync',
          description: 'Explicit sync for mutagen',
          options: [
            Option(
              name: '--verbose',
              description: 'Extended/verbose output for mutagen status'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['sc', 'stop-containers', 'pause'],
      description: 'Uses \'docker stop\' to pause/stop the containers belonging to a project',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Pause all running projects'
        )
      ]
    ),
    Subcommand(
      name: ['powerdown', 'poweroff'],
      description: 'Completely stop all projects and containers'
    ),
    Subcommand(
      name: 'pull',
      description: 'Pull files and database using a configured provider plugin'
    ),
    Subcommand(
      name: 'push',
      description: 'Push files and database using a configured provider plugin'
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a project or several projects',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Restart all projects'
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Add or remove, enable or disable extra services',
      subcommands: [
        Subcommand(
          name: 'disable',
          description: 'Disable a 3rd party service'
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable a 3rd party service'
        )
      ]
    ),
    Subcommand(
      name: 'share',
      description: 'Share project on the internet via ngrok',
      options: [
        Option(
          name: '--subdomain',
          description: 'Ngrok --subdomain argument, as in "ngrok --subdomain my-subdomain:, requires paid ngrok.com account"',
          args: [
            Arg(
            name: 'subdomai'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'snapshot',
      description: 'Create a database snapshot for one or more projects',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Snapshot all projects. Will start the project if it is stopped or paused'
        ),
        Option(
          name: ['--cleanup', '-C'],
          description: 'Cleanup snapshots'
        ),
        Option(
          name: ['--list', '-l'],
          description: 'List snapshots'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Provide a name for the snapshot',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Yes - skip confirmation prompt'
        )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'Starts a shell session in the container for a service. Uses web service by default',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Defines the destination directory within the container',
          args: [
            Arg(
            name: 'di'
          )
          ]
        ),
        Option(
          name: ['--service', '-s'],
          description: 'Defines the service to connect to. [e.g. web, db]',
          args: [
            Arg(
            name: 'service',
            defaultValue: 'we'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['add', 'start'],
      description: 'Start a ddev project',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Start all projects'
        ),
        Option(
          name: ['--select', '-s'],
          description: 'Interactively select a project to start'
        ),
        Option(
          name: ['--skip-confirmation', '-y'],
          description: 'Skip any confirmation steps'
        )
      ]
    ),
    Subcommand(
      name: ['remove', 'rm', 'stop'],
      description: 'Stop and remove the containers of a project. Does not lose or harm anything unless you add --remove-data',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Stop and remove all running or container-stopped projects and remove from global projects list'
        ),
        Option(
          name: ['--omit-snapshot', '-O'],
          description: 'Omit/skip database snapshot'
        ),
        Option(
          name: ['--remove-data', '-R'],
          description: 'Remove stored project data (MySQL, logs, etc.)'
        ),
        Option(
          name: ['--select', '-s'],
          description: 'Interactively select a project to stop'
        ),
        Option(
          name: ['--snapshot', '-S'],
          description: 'Create database snapshot'
        ),
        Option(
          name: '--stop-ssh-agent',
          description: 'Stop the ddev-ssh-agent container'
        ),
        Option(
          name: ['--unlist', '-U'],
          description: 'Remove the project from global project list, it won\'t show in ddev list until started again'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print ddev version and component versions'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: 'auth',
          description: 'A collection of authentication commands',
          subcommands: [
            Subcommand(
              name: 'ssh',
              description: 'Add ssh key authentication to the ddev-ssh-auth container'
            )
          ]
        ),
        Subcommand(
          name: 'clean',
          description: 'Removes items ddev has created'
        ),
        Subcommand(
          name: 'composer',
          description: 'Executes a composer command within the web container',
          subcommands: [
            Subcommand(
              name: 'create',
              description: 'Executes \'composer create-project\' within the web container with the arguments and flags provided'
            ),
            Subcommand(
              name: 'create-project',
              description: ''
            )
          ]
        ),
        Subcommand(
          name: 'config',
          description: 'Create or modify a ddev project configuration in the current directory',
          subcommands: [
            Subcommand(
              name: 'global',
              description: 'Change global configuration'
            )
          ]
        ),
        Subcommand(
          name: ['d', 'dbg', 'debug'],
          description: 'A collection of debugging commands',
          subcommands: [
            Subcommand(
              name: 'capabilities',
              description: 'Show capabilities of this version of ddev'
            ),
            Subcommand(
              name: 'check-db-match',
              description: 'Verify that the database in the ddev-db server matches the configured type/version'
            ),
            Subcommand(
              name: 'compose-config',
              description: 'Prints the docker-compose configuration of the current project'
            ),
            Subcommand(
              name: 'configyaml',
              description: 'Prints the project config.*.yaml usage'
            ),
            Subcommand(
              name: 'dockercheck',
              description: 'Diagnose DDEV docker/colima setup'
            ),
            Subcommand(
              name: 'download-images',
              description: 'Download all images required by ddev'
            ),
            Subcommand(
              name: 'fix-commands',
              description: 'Fix up custom/shell commands without running ddev start'
            ),
            Subcommand(
              name: 'get-volume-db-version',
              description: 'Get the database type/version found in the ddev-dbserver\'s database volume, which may not be the same as the configured database type/version'
            ),
            Subcommand(
              name: 'migrate-database',
              description: 'Migrate a mysql or mariadb database to a different dbtype:dbversion; works only with mysql and mariadb, not with postgres'
            ),
            Subcommand(
              name: 'mutagen',
              description: 'Allows access to any mutagen command'
            ),
            Subcommand(
              name: 'nfsmount',
              description: 'Checks to see if nfs mounting works for current project'
            ),
            Subcommand(
              name: 'refresh',
              description: 'Refreshes docker cache for project'
            ),
            Subcommand(
              name: 'router-nginx-config',
              description: 'Prints the nginx config of the router'
            ),
            Subcommand(
              name: 'test',
              description: 'Run diagnostics on ddev using the embedded test_ddev.sh script'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Remove all project information (including database) for an existing project',
          subcommands: [
            Subcommand(
              name: 'images',
              description: 'Deletes drud/ddev-* docker images not in use by current ddev version'
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'st', 'status', 'describe'],
          description: 'Get a detailed description of a running ddev project'
        ),
        Subcommand(
          name: ['.', 'exec'],
          description: 'Execute a shell command in the container for a service. Uses the web service by default'
        ),
        Subcommand(
          name: 'export-db',
          description: 'Dump a database to a file or to stdout'
        ),
        Subcommand(
          name: 'get',
          description: 'Get/Download a 3rd party add-on (service, provider, etc.)'
        ),
        Subcommand(
          name: 'hostname',
          description: 'Manage your hostfile entries'
        ),
        Subcommand(
          name: 'import-db',
          description: 'Import a sql file into the project'
        ),
        Subcommand(
          name: 'import-files',
          description: 'Pull the uploaded files directory of an existing project to the default public upload directory of your project'
        ),
        Subcommand(
          name: ['l', 'ls', 'list'],
          description: 'List projects'
        ),
        Subcommand(
          name: 'logs',
          description: 'Get the logs from your running services'
        ),
        Subcommand(
          name: 'mutagen',
          description: 'Commands for mutagen status and sync, etc',
          subcommands: [
            Subcommand(
              name: 'monitor',
              description: 'Monitor mutagen status'
            ),
            Subcommand(
              name: 'reset',
              description: 'Reset mutagen for project'
            ),
            Subcommand(
              name: ['st', 'status'],
              description: 'Shows mutagen sync status'
            ),
            Subcommand(
              name: 'sync',
              description: 'Explicit sync for mutagen'
            )
          ]
        ),
        Subcommand(
          name: ['sc', 'stop-containers', 'pause'],
          description: 'Uses \'docker stop\' to pause/stop the containers belonging to a project'
        ),
        Subcommand(
          name: ['powerdown', 'poweroff'],
          description: 'Completely stop all projects and containers'
        ),
        Subcommand(
          name: 'pull',
          description: 'Pull files and database using a configured provider plugin'
        ),
        Subcommand(
          name: 'push',
          description: 'Push files and database using a configured provider plugin'
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart a project or several projects'
        ),
        Subcommand(
          name: 'service',
          description: 'Add or remove, enable or disable extra services',
          subcommands: [
            Subcommand(
              name: 'disable',
              description: 'Disable a 3rd party service'
            ),
            Subcommand(
              name: 'enable',
              description: 'Enable a 3rd party service'
            )
          ]
        ),
        Subcommand(
          name: 'share',
          description: 'Share project on the internet via ngrok'
        ),
        Subcommand(
          name: 'snapshot',
          description: 'Create a database snapshot for one or more projects'
        ),
        Subcommand(
          name: 'ssh',
          description: 'Starts a shell session in the container for a service. Uses web service by default'
        ),
        Subcommand(
          name: ['add', 'start'],
          description: 'Start a ddev project'
        ),
        Subcommand(
          name: ['remove', 'rm', 'stop'],
          description: 'Stop and remove the containers of a project. Does not lose or harm anything unless you add --remove-data'
        ),
        Subcommand(
          name: 'version',
          description: 'Print ddev version and component versions'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--json-output', '-j'],
      description: 'If true, user-oriented output will be in JSON format',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
