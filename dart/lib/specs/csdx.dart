// Auto-generated from TypeScript source: csdx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `csdx` CLI
final FigSpec csdxSpec = FigSpec(
  name: 'csdx',
  description: 'Content Stack CLI',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'The auth:login command lets you log in to Contentstack and save the session',
      options: [

        Option(
          name: ['-u', '--username'],
          description: 'Email address of your Contentstack account',
          args: [
            Arg(
            name: 'email address'
          )
          ]
        ),
        Option(
          name: ['-p', '--password'],
          description: 'Password can be passed in command',
          args: [
            Arg(
            name: 'password'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth:tokens:add',
      description: 'Lets you add an existing management token from your Contentstack account and save it to the session for further use',
      options: [

        Option(
          name: ['-a', '--alias'],
          description: 'Alias (name) you want to assign to the token',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: '--management',
          description: 'Alias (name) you want to assign to the token'
        ),
        Option(
          name: '--delivery',
          description: 'Flag to set delivery token'
        ),
        Option(
          name: ['-k', '--stack-api-key'],
          description: 'API key of the stack where the token exists',
          args: [
            Arg(
            name: 'stack-api-key'
          )
          ]
        ),
        Option(
          name: '--token',
          description: 'Value of the token',
          args: [
            Arg(
            name: 'token'
          )
          ],
          dependsOn: ['--stack-api-key']
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Force token replace'
        )
      ]
    ),
    Subcommand(
      name: 'auth:tokens:remove',
      description: 'The auth:tokens:remove command lets you delete a management/ delivery token from your local CLI session',
      options: [

        Option(
          name: ['-a', '--alias'],
          description: 'Alias (name) you want to assign to the token',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: ['-i', '--ignore'],
          description: 'Ignores if token not present. Command'
        )
      ]
    ),
    Subcommand(
      name: 'cm:bootstrap',
      description: 'The \'Bootstrap\' plugin in Contentstack CLI allows users to automate the process of project setup for starter apps',
      options: [

        Option(
          name: '--app-name',
          description: 'The name of the starter app you want to use. Example: reactjs-starter, nextjs-starter, gatsby-starter, angular-starter, nuxt-starter',
          args: [
            Arg(
            name: 'app-name',
            suggestions: [

              FigSuggestion(
                name: 'reactjs-starter'
              ),
              FigSuggestion(
                name: 'nextjs-starter'
              ),
              FigSuggestion(
                name: 'gatsby-starter'
              ),
              FigSuggestion(
                name: 'angular-starter'
              ),
              FigSuggestion(
                name: 'nuxt-starter'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--project-dir',
          description: 'Directory/path to setup the project. If directory name has a space then provide the path as a string or escap the space using back slash as shown in the below example',
          args: [
            Arg(
            name: 'project-dir'
          )
          ]
        ),
        Option(
          name: '--app-type',
          description: 'Sample or Starter app',
          args: [
            Arg(
            name: 'app-type',
            suggestions: [

              FigSuggestion(
                name: 'Sample'
              ),
              FigSuggestion(
                name: 'Starter'
              )
            ]
          )
          ]
        ),
        Option(
          name: ['-k', '--stack-api-key'],
          description: 'Provide stack API key to seed content',
          args: [
            Arg(
            name: 'stack-api-key'
          )
          ]
        ),
        Option(
          name: '--org',
          description: 'Provide organization UID to create a new stack',
          args: [
            Arg(
            name: 'org'
          )
          ]
        ),
        Option(
          name: ['-n', '--stack-name'],
          description: 'Name of the new stack that will be created',
          args: [
            Arg(
            name: 'stack-name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth:tokens',
      description: 'The auth:tokens command lists the existing tokens added to the session',
      options: [

        Option(
          name: ['-x', '--extended'],
          description: 'To show extra columns'
        ),
        Option(
          name: '--columns',
          description: 'To display specific columns, separated by comma',
          args: [
            Arg(
            name: 'columns'
          )
          ]
        ),
        Option(
          name: '--csv',
          description: 'Output is csv format'
        ),
        Option(
          name: '--filter',
          description: 'To filter the property by partial string matching, ex: name=foo',
          args: [
            Arg(
            name: 'filter'
          )
          ]
        ),
        Option(
          name: '--no-header',
          description: 'To hide table’s header in output'
        ),
        Option(
          name: '--no-truncate',
          description: 'To not truncate output to fit screen'
        ),
        Option(
          name: '--output',
          description: 'To display output in a particular format',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(
                name: 'csv'
              ),
              FigSuggestion(
                name: 'json'
              ),
              FigSuggestion(
                name: 'yaml'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--sort',
          description: 'To sort the list, prepend \'-\' to sort in a descending order',
          args: [
            Arg(
            name: 'sort'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config:get:region',
      description: 'The config:get:region command will return the name of the region on which you are performing actions in Contentstack, via the CLI'
    ),
    Subcommand(
      name: 'config:set:region',
      description: 'The config:set:region command lets you select a region, from the available Contentstack regions, to perform actions using the CLI',
      args: [
        Arg(
        name: 'region',
        description: 'The ContentStack AWS region you want to use',
        suggestions: [

          FigSuggestion(
            name: 'EU'
          ),
          FigSuggestion(
            name: 'AZURE-NA'
          ),
          FigSuggestion(
            name: 'NA',
            priority: 100
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'cm:stacks:export',
      description: 'The cm:stacks:export command lets you export content from one stack to another',
      options: [

        Option(
          name: ['-c', '--config'],
          description: '[optional] path of the config',
          args: [
            Arg(
            name: 'config'
          )
          ]
        ),
        Option(
          name: ['-k', '--stack-api-key'],
          description: 'API key of the source stack',
          args: [
            Arg(
            name: 'stack-api-key'
          )
          ]
        ),
        Option(
          name: ['-a', '--alias'],
          description: 'The management token of the source stack from which you will export content',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Option(
          name: ['-d', '--data-dir'],
          description: 'The path or the location in your file system to store the exported content. For e.g., ./content',
          args: [
            Arg(
            name: 'data-dir'
          )
          ]
        ),
        Option(
          name: '--branch',
          description: 'The name of the branch where you want to export your content. If you don’t mention the branch name, then by default the content will be exported from all the branches of your stack',
          args: [
            Arg(
            name: 'branch'
          )
          ]
        ),
        Option(
          name: '--module',
          description: '[optional] Specific module name. If not specified, the export command will export all the modules to the stack. The available modules are assets, content-types, entries, environments, extensions, global-fields, labels, locales, webhooks, and workflows',
          args: [
            Arg(
            name: 'module',
            suggestions: [

              FigSuggestion(name: 'assets'),
              FigSuggestion(name: 'content-types'),
              FigSuggestion(name: 'entries'),
              FigSuggestion(name: 'environments'),
              FigSuggestion(name: 'extensions'),
              FigSuggestion(name: 'global-fields'),
              FigSuggestion(name: 'labels'),
              FigSuggestion(name: 'locales'),
              FigSuggestion(name: 'webhooks'),
              FigSuggestion(name: 'workflows')
            ]
          )
          ]
        ),
        Option(
          name: '--content-types',
          description: '[optional] content type',
          args: [
            Arg(
            name: 'content-types'
          )
          ]
        ),
        Option(
          name: '--secured-assets',
          description: '[optional] use when assets are secured',
          args: [
            Arg(
            name: 'secured-assets'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'The auth:logout command lets you log out of Contentstack and clear the session'
    ),
    Subcommand(
      name: 'whoami',
      description: 'The csdx auth:whoami command returns the username (email address) of the user who is currently logged in to the session'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for csdx',
      isPersistent: true
    )
  ]
);
