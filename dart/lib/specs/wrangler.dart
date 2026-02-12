// Auto-generated from TypeScript source: wrangler.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wrangler` CLI
final FigSpec wranglerSpec = FigSpec(
  name: 'wrangler',
  description: 'Wrangler CLI for Cloudflare Workers',
  subcommands: [
    Subcommand(
      name: 'generate',
      args: [
        Arg(
          name: 'name',
          isOptional: true,
          description: 'The name of your worker! [default: worker]'
        ),
        Arg(
          name: 'template',
          isOptional: true
        )
      ],
      options: [
        Option(
          name: ['-s', '--site'],
          args: [
            Arg(
            name: 'site',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-t', '--type'],
          args: [
            Arg(
            name: 'type',
            isOptional: true
          )
          ],
          description: 'The type of project you want generated'
        )
      ],
      description: 'Generate a new worker project'
    ),
    Subcommand(
      name: 'kv:namespace',
      description: 'Interact with your Workers KV Namespaces',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a new namespace',
          args: [
            Arg(
            name: 'namespace'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete namespace'
        ),
        Subcommand(
          name: 'list',
          description: 'List all namespaces on your Cloudflare account'
        )
      ]
    ),
    Subcommand(
      name: 'kv:key',
      description: 'Individually manage Workers KV key-value',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete a key and its value from a namespace',
          args: [
            Arg(
            name: 'key',
            description: 'Key whose value to delete'
          )
          ],
          options: [
            Option(
              name: ['-b', '--binding'],
              args: [
                Arg(
                name: 'binding'
              )
              ],
              description: 'The binding of the namespace this action applies to'
            ),
            Option(
              name: ['-n', '--namespace-id'],
              args: [
                Arg(
                name: 'namespace-id'
              )
              ],
              description: 'The ID of the namespace this action applies to'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get a key\'s value from a namespace',
          args: [
            Arg(
            name: 'key'
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Prints this message or the help of the given subcommand(s)'
        ),
        Subcommand(
          name: 'list',
          description: 'List all keys in a namespace. Produces JSON output'
        ),
        Subcommand(
          name: 'put',
          description: 'Put a key-value pair into a namespace',
          args: [
            Arg(
            name: 'key'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kv:bulk',
      description: 'Interact with multiple Workers KV key-value pairs at once',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete multiple keys and their values from a namespace',
          args: [
            Arg(
            name: 'keys'
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Prints this message or the help of the given subcommand(s)'
        ),
        Subcommand(
          name: 'put',
          description: 'Upload multiple key-value pairs to a namespace',
          args: [
            Arg(
            name: 'keys',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'route',
      description: 'List or delete worker routes',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete a route by ID',
          args: [
            Arg(
            name: 'routeId'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all routes associated with a zone (outputs json)'
        )
      ]
    ),
    Subcommand(
      name: 'secret',
      description: 'Generate a secret that can be referenced in the worker script',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete a secret variable from a script',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all secrets for a script'
        ),
        Subcommand(
          name: 'put',
          description: 'Create or update a secret variable for a script',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Create a wrangler.toml for an existing project',
      args: [
        Arg(
        name: 'name',
        description: 'The name of your worker! [default: worker]',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['-s', '--site']
        ),
        Option(
          name: ['-t', '--type'],
          args: [
            Arg(
            name: 'type',
            isOptional: true
          )
          ],
          description: 'The type of project you want generated'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build your worker',
      options: []
    ),
    Subcommand(
      name: 'preview',
      description: 'Preview your code temporarily on cloudflareworkers.com',
      args: [
        Arg(
          name: 'method',
          isOptional: true,
          suggestions: [
            FigSuggestion(name: 'get'),
            FigSuggestion(name: 'post')
          ]
        ),
        Arg(
          name: 'body',
          isOptional: true,
          description: 'Body string to post to your preview worker request'
        )
      ],
      options: [
        Option(
          name: '--headless',
          description: 'Don\'t open the browser on preview'
        ),
        Option(
          name: '--watch'
        ),
        Option(
          name: ['-u', '--url']
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Start a local server for developing your worker',
      options: [
        Option(
          name: ['-h', '--host'],
          args: [
            Arg(
            name: 'hostname'
          )
          ]
        ),
        Option(
          name: ['-i', '--ip'],
          args: [
            Arg(
            name: 'ip_address'
          )
          ],
          description: 'IP to listen on. Defaults to 127.0.0.1'
        ),
        Option(
          name: ['-p', '--port'],
          args: [
            Arg(
            name: 'port'
          )
          ],
          description: 'Port to listen on. Defaults to 8787'
        )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish your worker to the orange cloud',
      args: [
        Arg(
        name: 'output',
        suggestions: [
          FigSuggestion(name: 'json')
        ],
        description: '[possible values: json]',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '--delete-class',
          args: [
            Arg(
            name: 'delete-class'
          )
          ],
          description: 'Delete all durable objects associated with a class in your script'
        ),
        Option(
          name: '--new-class',
          args: [
            Arg(
            name: 'new-class'
          )
          ],
          description: 'Allow durable objects to be created from a class in your script'
        ),
        Option(
          name: '--rename-class',
          args: [
            Arg(
            name: 'rename-class new-name'
          )
          ],
          description: 'Rename a durable object class in your script'
        ),
        Option(
          name: '--transfer-class',
          args: [
            Arg(
            name: 'transfer-class'
          )
          ],
          description: 'Transfer all durable objects associated with a class in another script to a class in this script'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Authenticate Wrangler with a Cloudflare API Token or Global API Key',
      options: [
        Option(
          name: '--api-key',
          description: 'Use an email and global API key for authentication. This is not recommended; use API tokens (the default) if possible'
        ),
        Option(
          name: '--no-verify',
          description: 'Do not verify provided credentials before writing out Wrangler config file'
        )
      ]
    ),
    Subcommand(
      name: 'subdomain',
      description: 'Configure your workers.dev subdomain',
      args: [
        Arg(
        name: 'name',
        description: 'The subdomain on workers.dev you\'d like to reserve'
      )
      ],
      options: []
    ),
    Subcommand(
      name: 'whoami',
      description: 'Retrieve your user info and test your auth config',
      options: []
    ),
    Subcommand(
      name: 'tail',
      description: 'Aggregate logs from production worker',
      options: [
        Option(
          name: ['-f', '--format'],
          args: [
            Arg(
            name: 'format',
            suggestions: [
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'pretty')
            ]
          )
          ],
          description: 'Specify an output format [default: json]  [possible values: json, pretty]'
        ),
        Option(
          name: '--metrics',
          args: [
            Arg(
            name: 'metrics-port'
          )
          ],
          description: 'Provides endpoint for cloudflared metrics. Used to retrieve tunnel url'
        ),
        Option(
          name: ['-p', '--port'],
          args: [
            Arg(
            name: 'port'
          )
          ],
          description: 'Port to accept tail log requests'
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Authenticate Wrangler with your Cloudflare username and password',
      options: []
    ),
    Subcommand(
      name: 'report',
      description: 'Report an error caught by Wrangler to Cloudflare',
      options: [
        Option(
          name: 'log',
          args: [
            Arg(
            name: 'logfile',
            template: 'filepaths'
          )
          ],
          description: 'Specifies a log to report (e.g. --log=1619728882567.log)'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Prints this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'command'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['-V', '--version'],
      description: 'Prints version information'
    )
  ]
);
