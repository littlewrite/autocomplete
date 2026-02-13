// Auto-generated from TypeScript source: sanity.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sanity` CLI
final FigSpec sanitySpec = FigSpec(
  name: 'sanity',
  description: 'Sanity CLI tool for managing Sanity installations, managing plugins, schemas and datasets',
  subcommands: [

    Subcommand(
      name: 'help',
      description: 'Displays help information about Sanity',
      args: [
        Arg(
        name: 'command',
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Builds the current Sanity configuration to a static bundle',
      options: [

        Option(
          name: '--source-maps',
          description: 'Enable source maps for built bundles (increases size of bundle)'
        ),
        Option(
          name: '--no-minify',
          description: 'Skip minifying built JavaScript (speeds up build, increases size of bundle)'
        ),
        Option(
          name: ['-y', '--yes'],
          description: 'Use unattended mode, accepting defaults and using only flags for choices'
        )
      ]
    ),
    Subcommand(
      name: 'codemod',
      description: 'Runs a code modification script',
      options: [

        Option(
          name: '--dry',
          description: 'Dry run (no changes are made to files)'
        ),
        Option(
          name: '--extensions',
          description: 'Transform files with these file extensions (comma separated list) (default: js,ts,tsx)',
          args: [
            Arg(
            name: 'extension'
          )
          ]
        ),
        Option(
          name: '--no-verify',
          description: 'Skip verification before running codemod'
        )
      ]
    ),
    Subcommand(
      name: 'configcheck',
      description: 'Checks if the required configuration files for plugins exists and are up to date'
    ),
    Subcommand(
      name: 'cors',
      description: 'Interact with CORS-entries for your project',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Allow a new origin to use your project API through CORS',
          options: [

            Option(
              name: '--credentials',
              description: 'Allow credentials (token/cookie) to be sent from this origin',
              exclusiveOn: ['--no-credentials']
            ),
            Option(
              name: '--no-credentials',
              description: 'Disallow credentials (token/cookie) to be sent from this origin',
              exclusiveOn: ['--credentials']
            )
          ],
          args: [
            Arg(
            name: 'origin',
            description: 'The origin to allo'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing CORS-origin from your project',
          args: [
            Arg(
            name: 'origin',
            description: 'The origin to delet'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all origins allowed to access the API for this project'
        )
      ]
    ),
    Subcommand(
      name: 'dataset',
      description: 'Interact with datasets in your project',
      subcommands: [

        Subcommand(
          name: 'alias',
          description: 'You can manage your dataset alias using this command',
          subcommands: [

            Subcommand(
              name: 'create',
              args: [

                Arg(
                  name: 'alias-name',
                  isOptional: true
                ),
                Arg(
                  name: 'target-dataset',
                  isOptional: true
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              args: [
                Arg(
                name: 'alias-nam'
              )
              ]
            ),
            Subcommand(
              name: 'link',
              options: [

                Option(
                  name: '--force',
                  description: 'Skips security prompt and forces link command'
                )
              ],
              args: [

                Arg(
                  name: 'alias-name',
                  isOptional: true
                ),
                Arg(
                  name: 'target-dataset',
                  isOptional: true
                )
              ]
            ),
            Subcommand(
              name: 'unlink',
              args: [
                Arg(
                name: 'alias-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'copy',
          description: 'Manages dataset copying, including starting a new copy job, listing copy jobs and following the progress of a running copy job',
          options: [

            Option(
              name: '--detach',
              description: 'Start the copy without waiting for it to finish'
            ),
            Option(
              name: '--attach',
              description: 'Attach to the running copy process to show progress',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: '--skip-history',
              description: 'Don\'t preserve document history on copy'
            ),
            Option(
              name: '--list',
              description: 'Lists all dataset copy jobs corresponding to a certain criteria'
            ),
            Option(
              name: '--offset',
              description: 'Start position in the list of jobs. Default 0. With --list',
              args: [
                Arg(
                name: 'offse'
              )
              ],
              dependsOn: ['--list']
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of jobs returned. Default 10. Maximum 1000. With --list',
              args: [
                Arg(
                name: 'limi'
              )
              ],
              dependsOn: ['--list']
            )
          ],
          args: [

            Arg(
              name: 'source-dataset',
              isOptional: true
            ),
            Arg(
              name: 'target-dataset',
              isOptional: true
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new dataset within your project',
          options: [

            Option(
              name: '--visibility',
              description: 'Set visibility for this dataset (public/private)',
              args: [
                Arg(
                name: 'visibility',
                suggestions: [

                  FigSuggestion(name: 'public'),
                  FigSuggestion(name: 'private')
                ]
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a dataset within your project',
          args: [
            Arg(
            name: 'datasetNam'
          )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export dataset to local filesystem as a gzipped tarball',
          options: [

            Option(
              name: '--raw',
              description: 'Extract only documents, without rewriting asset references'
            ),
            Option(
              name: '--no-assets',
              description: 'Export only non-asset documents and remove references to image assets'
            ),
            Option(
              name: '--no-drafts',
              description: 'Export only published versions of documents'
            ),
            Option(
              name: '--no-compress',
              description: 'Skips compressing tarball entries (still generates a gzip file)'
            ),
            Option(
              name: '--types',
              description: 'Defines which document types to export',
              args: [
                Arg(
                name: 'type'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite any file with the same name'
            ),
            Option(
              name: '--asset-concurrency',
              description: 'Concurrent number of asset downloads',
              args: [
                Arg(
                name: 'nu'
              )
              ]
            )
          ],
          args: [

            Arg(
              name: 'name'
            ),
            Arg(
              name: 'destination',
              template: 'folders'
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import documents to given dataset from ndjson file',
          options: [

            Option(
              name: '--missing',
              description: 'On duplicate document IDs, skip importing document in question'
            ),
            Option(
              name: '--replace',
              description: 'On duplicate document IDs, replace existing document with imported document'
            ),
            Option(
              name: '--allow-failing-assets',
              description: 'Skip assets that cannot be fetched/uploaded'
            ),
            Option(
              name: '--replace-assets',
              description: 'Skip reuse of existing assets'
            )
          ],
          args: [

            Arg(
              name: 'file',
              template: 'filepaths'
            ),
            Arg(
              name: 'target_dataset'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List datasets of your project'
        ),
        Subcommand(
          name: 'visibility',
          description: 'Set visibility of a dataset',
          args: [

            Arg(
              name: 'dataset'
            ),
            Arg(
              name: 'mode',
              suggestions: [

                FigSuggestion(name: 'get'),
                FigSuggestion(name: 'set')
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Gathers information on Sanity environment',
      options: [

        Option(
          name: '--secrets',
          description: 'Include API keys in output'
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploys a statically built Sanity studio',
      options: [

        Option(
          name: '--source-maps',
          description: 'Enable source maps for built bundles (increases size of bundle)'
        ),
        Option(
          name: '--no-minify',
          description: 'Skip minifying built JavaScript (speeds up build, increases size of bundle)'
        ),
        Option(
          name: '--no-build',
          description: 'Don\'t build the studio prior to deploy, instead deploying the version currently in `dist/`'
        )
      ],
      args: [
        Arg(
        name: 'source_dir',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Opens the Sanity documentation'
    ),
    Subcommand(
      name: 'documents',
      description: 'Interact with documents in your project',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create one or more documents',
          options: [

            Option(
              name: '--replace',
              description: 'On duplicate document IDs, replace existing document with specified document(s)'
            ),
            Option(
              name: '--missing',
              description: 'On duplicate document IDs, don\'t modify the target document(s)'
            ),
            Option(
              name: '--watch',
              description: 'Write the documents whenever the target file or buffer changes'
            ),
            Option(
              name: '--json5',
              description: 'Use JSON5 file type to allow a "simplified" version of JSON'
            ),
            Option(
              name: '--id',
              description: 'Specify a document ID to use. Will fetch remote document ID and populate editor',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--dataset',
              description: 'NAME to override dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a document by ID',
          options: [

            Option(
              name: '--dataset',
              description: 'NAME to override dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get and print a document by ID',
          options: [

            Option(
              name: '--pretty',
              description: 'Colorized JSON output'
            ),
            Option(
              name: '--dataset',
              description: 'NAME to override dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'document_i'
          )
          ]
        ),
        Subcommand(
          name: 'query',
          description: 'Query for documents',
          options: [

            Option(
              name: '--pretty',
              description: 'Colorized JSON output'
            ),
            Option(
              name: '--dataset',
              description: 'NAME to override dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            ),
            Option(
              name: '--api-version',
              description: 'API version to use (defaults to `v1`)',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'quer'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'exec',
      description: 'Runs a script in Sanity context',
      options: [

        Option(
          name: '--with-user-token',
          description: 'Preload access token from CLI config into \'part:@sanity/base/client\' part'
        ),
        Option(
          name: '--mock-browser-env',
          description: 'Mocks a browser-like environment using jsdom'
        )
      ],
      args: [
        Arg(
        name: 'script',
        template: 'filepath'
      )
      ]
    ),
    Subcommand(
      name: 'graphql',
      description: 'Interact with GraphQL APIs',
      subcommands: [

        Subcommand(
          name: 'deploy',
          description: 'Deploy a GraphQL API from the current Sanity schema',
          options: [

            Option(
              name: '--dataset',
              description: 'Deploy API for the given dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Deploy API to given tag (defaults to \'default\')',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: '--generation',
              description: 'API generation to deploy (defaults to \'gen3\')',
              args: [
                Arg(
                name: 'generatio'
              )
              ]
            ),
            Option(
              name: '--non-null-document-fields',
              description: 'Set document interface fields (_id, _type etc) as non-null'
            ),
            Option(
              name: '--playground',
              description: 'Deploy a GraphQL playground for easily testing queries (public)'
            ),
            Option(
              name: '--no-playground',
              description: 'Skip playground prompt (do not deploy a playground)'
            ),
            Option(
              name: '--force',
              description: 'Deploy API without confirming breaking changes'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all the GraphQL endpoints deployed for this project'
        ),
        Subcommand(
          name: 'undeploy',
          description: 'Remove a deployed GraphQL API',
          options: [

            Option(
              name: '--dataset',
              description: 'Delete GraphQL API for the given dataset',
              args: [
                Arg(
                name: 'datase'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Delete GraphQL API for the given tag (defaults to \'default\')',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'hook',
      description: 'Interact with hooks in your project',
      subcommands: [

        Subcommand(
          name: 'attempt',
          description: 'Print details of a given webhook delivery attempt',
          args: [
            Arg(
            name: 'attempt_i'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new hook for the given dataset'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a hook within your project',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List hooks for a given project'
        ),
        Subcommand(
          name: 'logs',
          description: 'List latest log entries for a given hook',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a new Sanity project or plugin',
      options: [

        Option(
          name: ['-y', '--yes'],
          description: 'Use unattended mode, accepting defaults and using only flags for choices'
        ),
        Option(
          name: '--project',
          description: 'Project ID to use for the studio',
          args: [
            Arg(
            name: 'projectId'
          )
          ]
        ),
        Option(
          name: '--organization',
          description: 'Organization ID to use for the project',
          args: [
            Arg(
            name: 'organizationId'
          )
          ]
        ),
        Option(
          name: '--dataset',
          description: 'Dataset name for the studio',
          args: [
            Arg(
            name: 'dataset'
          )
          ]
        ),
        Option(
          name: '--dataset-default',
          description: 'Set up a project with a public dataset named "production"'
        ),
        Option(
          name: '--output-path',
          description: 'Path to write studio project to',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: '--template',
          description: 'Project template to use [default: "clean"]',
          args: [
            Arg(
            name: 'template'
          )
          ]
        ),
        Option(
          name: '--provider',
          description: 'Login provider to use',
          args: [
            Arg(
            name: 'provider'
          )
          ]
        ),
        Option(
          name: '--visibility',
          description: 'Visibility mode for dataset (public/private)',
          args: [
            Arg(
            name: 'mode',
            suggestions: [

              FigSuggestion(name: 'public'),
              FigSuggestion(name: 'private')
            ]
          )
          ]
        ),
        Option(
          name: '--create-project',
          description: 'Create a new project with the given name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--project-plan',
          description: 'Optionally select a plan for a new project',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--coupon',
          description: 'Optionally select a coupon for a new project (cannot be used with --project-plan)',
          exclusiveOn: ['--project-plan'],
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: '--reconfigure',
          description: 'Reconfigure Sanity studio in current folder with new project/dataset'
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Installs a Sanity plugin to the current Sanity configuration',
      args: [
        Arg(
        name: 'plugi'
      )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Authenticates against the Sanity.io API (no flag) or a third-party identity provider (with --sso flag)',
      options: [

        Option(
          name: '--sso',
          description: 'Authenticate against a third-party identity provider',
          args: [
            Arg(
            name: 'slug'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Logs out of the Sanity.io session'
    ),
    Subcommand(
      name: 'manage',
      description: 'Opens the Sanity project management UI'
    ),
    Subcommand(
      name: 'projects',
      description: 'Interact with projects connected to your logged in user',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists projects connected to your user',
          options: [

            Option(
              name: '--sort',
              description: 'Sort output by specified column',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Sort output ascending/descending',
              args: [
                Arg(
                name: 'order',
                suggestions: [

                  FigSuggestion(name: 'asc'),
                  FigSuggestion(name: 'desc')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Starts a web server for the Content Studio',
      options: [

        Option(
          name: '--port',
          description: 'TCP port to start server on. [default: 3333]',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: '--host',
          description: 'The local network interface at which to listen. [default: "127.0.0.1"]',
          args: [
            Arg(
            name: 'host'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'undeploy',
      description: 'Removes the deployed studio from <hostname>.sanity.studio'
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Removes a Sanity plugin from the current Sanity configuration',
      args: [
        Arg(
        name: 'plugi'
      )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrades all (or some) Sanity modules to their latest versions',
      options: [

        Option(
          name: '--range',
          description: 'Version range to upgrade to, eg \'^2.2.7\' or \'2.1.x\'',
          args: [
            Arg(
            name: 'range'
          )
          ]
        ),
        Option(
          name: '--tag',
          description: 'Tagged release to upgrade to, eg \'canary\' or \'some-feature\'',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--save-exact',
          description: 'Pin the resolved version numbers in package.json (no ^ prefix)'
        )
      ]
    ),
    Subcommand(
      name: 'users',
      description: 'Manage users of your project',
      subcommands: [

        Subcommand(
          name: 'invite',
          description: 'Invite a new user to the project',
          options: [

            Option(
              name: '--role',
              description: 'Role to invite the user as',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'emai'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List users of the project',
          options: [

            Option(
              name: '--no-invitations',
              description: 'Don\'t include pending invitations'
            ),
            Option(
              name: '--no-robots',
              description: 'Don\'t include robots (token users)'
            ),
            Option(
              name: '--sort',
              description: 'Sort users by specified column: id, name, role, date',
              args: [
                Arg(
                name: 'field',
                suggestions: [

                  FigSuggestion(name: 'id'),
                  FigSuggestion(name: 'name'),
                  FigSuggestion(name: 'role'),
                  FigSuggestion(name: 'date')
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Sort output ascending/descending',
              args: [
                Arg(
                name: 'order',
                suggestions: [

                  FigSuggestion(name: 'asc'),
                  FigSuggestion(name: 'desc')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'versions',
      description: 'Shows the installed versions of Sanity CLI and core components'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for sanity'
    )
  ]
);
