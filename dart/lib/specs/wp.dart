// Auto-generated from TypeScript source: wp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wp` CLI
final FigSpec wpSpec = FigSpec(
  name: 'wp',
  description: 'WP-CLI is the command-line interface for WordPress',
  subcommands: [
    Subcommand(
      name: 'cache',
      description: 'Adds, removes, fetches, and flushes the WP Object Cache object',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a value to the object cache',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'value',
              description: 'Value to add to the key'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            ),
            Arg(
              name: 'expiration',
              description: 'Define how long to keep the value, in seconds. 0 means as long as possible'
            )
          ]
        ),
        Subcommand(
          name: 'decr',
          description: 'Decrements a value in the object cache',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'offset',
              description: 'The amount by which to decrement the item’s value'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Removes a value from the object cache',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            )
          ]
        ),
        Subcommand(
          name: 'flush',
          description: 'Flushes the object cache'
        ),
        Subcommand(
          name: 'get',
          description: 'Gets a value from the object cache',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            )
          ]
        ),
        Subcommand(
          name: 'incr',
          description: 'Increments a value in the object cache',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'offset',
              description: 'The amount by which to increment the item’s value'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            )
          ]
        ),
        Subcommand(
          name: 'replace',
          description: 'Replaces a value in the object cache, if the value already exists',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'value',
              description: 'Value to replace'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            ),
            Arg(
              name: 'expiration',
              description: 'Define how long to keep the value, in seconds. 0 means as long as possible'
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets a value to the object cache, regardless of whether it already exists',
          args: [
            Arg(
              name: 'key',
              description: 'Cache key'
            ),
            Arg(
              name: 'value',
              description: 'Value to set on the key'
            ),
            Arg(
              name: 'group',
              description: 'Method for grouping data within the cache which allows the same key to be used across groups'
            ),
            Arg(
              name: 'expiration',
              description: 'Define how long to keep the value, in seconds. 0 means as long as possible'
            )
          ]
        ),
        Subcommand(
          name: 'type',
          description: 'Attempts to determine which object cache is being used'
        )
      ]
    ),
    Subcommand(
      name: 'cap',
      description: 'Adds, removes, and lists capabilities of a user role',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a value to the object cache',
          args: [
            Arg(
              name: 'role',
              description: 'Key for the role'
            ),
            Arg(
              name: 'cap',
              description: 'One or more capabilities to add'
            )
          ],
          options: [
            Option(
              name: '--grant',
              description: 'Adds the capability as an explicit boolean value, instead of implicitly defaulting to true',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'true'
                  ),
                  FigSuggestion(
                    name: 'false'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists capabilities for a given role',
          args: [
            Arg(
            name: 'role',
            description: 'Key for the role'
          )
          ],
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'list'
                  ),
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--show-grant',
              description: 'Display all capabilities defined for a role including grant'
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Removes capabilities from a given role',
          args: [
            Arg(
              name: 'role',
              description: 'Key for the role'
            ),
            Arg(
              name: 'cap',
              description: 'One or more capabilities to remove'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cli',
      description: 'Reviews current WP-CLI info, checks for updates, or views defined aliases',
      options: [],
      subcommands: [
        Subcommand(
          name: 'alias',
          description: 'Retrieves, sets and updates aliases for WordPress Installations',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Creates an alias',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the alias'
              )
              ],
              options: [
                Option(
                  name: '--set-user',
                  description: 'Set user for alias',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--set-url',
                  description: 'Set url for alias',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                ),
                Option(
                  name: '--set-path',
                  description: 'Set path for alias',
                  args: [
                    Arg(
                    name: 'path',
                    template: 'folders'
                  )
                  ]
                ),
                Option(
                  name: '--set-ssh',
                  description: 'Set ssh for alias',
                  args: [
                    Arg(
                    name: 'ss'
                  )
                  ]
                ),
                Option(
                  name: '--set-http',
                  description: 'Set http for alias',
                  args: [
                    Arg(
                    name: 'htt'
                  )
                  ]
                ),
                Option(
                  name: '--grouping',
                  description: 'For grouping multiple aliases',
                  args: [
                    Arg(
                    name: 'groupin'
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Config file to be considered for operations',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'global'
                      ),
                      FigSuggestion(
                        name: 'project'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an alias',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the alias'
              )
              ],
              options: [
                Option(
                  name: '--config',
                  description: 'Config file to be considered for operations',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'global'
                      ),
                      FigSuggestion(
                        name: 'project'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Gets the value for an alias',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the alias'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists available WP-CLI aliases',
              options: [
                Option(
                  name: '--format',
                  description: 'Set user for alias',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'var_export'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates an alias',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the alias'
              )
              ],
              options: [
                Option(
                  name: '--set-user',
                  description: 'Set user for alias',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--set-url',
                  description: 'Set url for alias',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                ),
                Option(
                  name: '--set-path',
                  description: 'Set path for alias',
                  args: [
                    Arg(
                    name: 'path',
                    template: 'folders'
                  )
                  ]
                ),
                Option(
                  name: '--set-ssh',
                  description: 'Set ssh for alias',
                  args: [
                    Arg(
                    name: 'ss'
                  )
                  ]
                ),
                Option(
                  name: '--set-http',
                  description: 'Set http for alias',
                  args: [
                    Arg(
                    name: 'htt'
                  )
                  ]
                ),
                Option(
                  name: '--grouping',
                  description: 'For grouping multiple aliases',
                  args: [
                    Arg(
                    name: 'groupin'
                  )
                  ]
                ),
                Option(
                  name: '--config',
                  description: 'Config file to be considered for operations',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'global'
                      ),
                      FigSuggestion(
                        name: 'project'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cache',
          description: 'Manages the internal WP-CLI cache,',
          subcommands: [
            Subcommand(
              name: 'clear',
              description: 'Clears the internal cache'
            ),
            Subcommand(
              name: 'prune',
              description: 'Prunes the internal cache'
            )
          ]
        ),
        Subcommand(
          name: 'check-update',
          description: 'Checks to see if there is a newer version of WP-CLI available',
          options: [
            Option(
              name: '--patch',
              description: 'Only list patch updates'
            ),
            Option(
              name: '--minor',
              description: 'Only list minor updates'
            ),
            Option(
              name: '--major',
              description: 'Only list major updates'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each update',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields. Defaults to version,update_type,package_url',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cmd-dump',
          description: 'Dumps the list of installed commands, as JSON'
        ),
        Subcommand(
          name: 'completions',
          description: 'Generates tab completion strings',
          options: [
            Option(
              name: '--line',
              description: 'The current command line to be executed',
              args: [
                Arg(
                name: 'lin'
              )
              ]
            ),
            Option(
              name: '--point',
              description: 'The index to the current cursor position relative to the beginning of the command',
              args: [
                Arg(
                name: 'poin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'has-command',
          description: 'Detects if a command exists',
          args: [
            Arg(
            name: 'command_name',
            description: 'The command'
          )
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Prints various details about the WP-CLI environment',
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'list'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'param-dump',
          description: 'Dumps the list of global parameters, as JSON or in var_export format',
          options: [
            Option(
              name: '--with-values',
              description: 'Display current values also'
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'var_export'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates WP-CLI to the latest release',
          options: [
            Option(
              name: '--patch',
              description: 'Only perform patch updates'
            ),
            Option(
              name: '--minor',
              description: 'Only perform minor updates'
            ),
            Option(
              name: '--major',
              description: 'Only perform major updates'
            ),
            Option(
              name: '--stable',
              description: 'Update to the latest stable release. Skips update check'
            ),
            Option(
              name: '--nightly',
              description: 'Update to the latest built version of the master branch. Potentially unstable'
            ),
            Option(
              name: '--yes',
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: '--insecure',
              description: 'Retry without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Prints WP-CLI version'
        )
      ]
    ),
    Subcommand(
      name: 'comment',
      description: 'Creates, updates, deletes, and moderates comments',
      options: [],
      subcommands: [
        Subcommand(
          name: 'approve',
          description: 'Approves a comment',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to approve'
          )
          ]
        ),
        Subcommand(
          name: 'count',
          description: 'Counts comments, on whole blog or on a given post',
          args: [
            Arg(
            name: 'post-id',
            description: 'The ID of the post to count comments in'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Creates a new comment',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Associative args for the new comment. See wp_insert_comment()',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--porcelain',
              description: 'Output just the new comment id'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a comment',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of comments to delete'
          )
          ],
          options: [
            Option(
              name: '--force',
              description: 'Skip the trash bin'
            )
          ]
        ),
        Subcommand(
          name: 'exists',
          description: 'Verifies whether a comment exists',
          args: [
            Arg(
            name: 'id',
            description: 'The ID of the comment to check'
          )
          ]
        ),
        Subcommand(
          name: 'generate',
          description: 'Generates some number of new dummy comments',
          options: [
            Option(
              name: '--count',
              description: 'How many comments to generate?',
              args: [
                Arg(
                name: 'default',
                suggestions: [
                  FigSuggestion(
                    name: '100'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_id',
              description: 'Assign comments to a specific post',
              args: [
                Arg(
                name: 'post-id'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'progress'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets the data of a single comment',
          args: [
            Arg(
            name: 'id',
            description: 'The comment to get'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole comment, returns the value of a single field',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'fields'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of comments',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'One or more args to pass to WP_Comment_Query'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each comment',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'fields'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'meta',
          description: 'Adds, updates, deletes, and lists comment custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to create'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the meta field. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to delete'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Delete all meta for the object'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get meta field value',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all metadata associated with an object',
              args: [
                Arg(
                name: 'id',
                description: 'ID for the object'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'keys'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'fields'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'options',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recount',
          description: 'Recalculates the comment_count value for one or more posts',
          args: [
            Arg(
            name: 'id',
            description: 'IDs for one or more posts to update'
          )
          ]
        ),
        Subcommand(
          name: 'spam',
          description: 'Marks a comment as spam',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to mark as spam'
          )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Gets the status of a comment',
          args: [
            Arg(
            name: 'id',
            description: 'The ID of the comment to check'
          )
          ]
        ),
        Subcommand(
          name: 'trash',
          description: 'Trashes a comment',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to trash'
          )
          ]
        ),
        Subcommand(
          name: 'unapprove',
          description: 'Unapproves a comment',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to unapprove'
          )
          ]
        ),
        Subcommand(
          name: 'unspam',
          description: 'Unmarks a comment as spam',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to unmark as spam'
          )
          ]
        ),
        Subcommand(
          name: 'untrash',
          description: 'Untrashes a comment',
          args: [
            Arg(
            name: 'id',
            description: 'The IDs of the comments to untrash'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates one or more comments',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of comments to update'
          )
          ],
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'One or more fields to update. See wp_update_comment()'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Generates and reads the wp-config.php file',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Generates a wp-config.php file',
          options: [
            Option(
              name: '--dbname',
              description: 'Set the database name',
              args: [
                Arg(
                name: 'dbnam'
              )
              ]
            ),
            Option(
              name: '--dbuser',
              description: 'Set the database user',
              args: [
                Arg(
                name: 'dbuse'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Set the database password',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbhost',
              description: 'Set the database host',
              args: [
                Arg(
                name: 'default',
                suggestions: [
                  FigSuggestion(
                    name: 'localhost'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbprefix',
              description: 'Set the database table prefix',
              args: [
                Arg(
                name: 'default',
                suggestions: [
                  FigSuggestion(
                    name: 'wp_'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbcharset',
              description: 'Set the database charset',
              args: [
                Arg(
                name: 'default',
                suggestions: [
                  FigSuggestion(
                    name: 'utf8'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbcollate',
              description: 'Set the database collation',
              args: [
                Arg(
                name: 'dbcollat'
              )
              ]
            ),
            Option(
              name: '--locale',
              description: 'Set the WPLANG constant. Defaults to \$wp_local_package variable',
              args: [
                Arg(
                name: 'local'
              )
              ]
            ),
            Option(
              name: '--extra-php',
              description: 'If set, the command copies additional PHP code into wp-config.php from STDIN'
            ),
            Option(
              name: '--skip-salts',
              description: 'If set, keys and salts won’t be generated, but should instead be passed via --extra-php'
            ),
            Option(
              name: '--skip-check',
              description: 'If set, the database connection is not checked'
            ),
            Option(
              name: '--force',
              description: 'Overwrites existing files, if present'
            ),
            Option(
              name: '--insecure',
              description: 'Retry API download without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a specific constant or variable from the wp-config.php file',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the wp-config.php constant or variable'
          )
          ],
          options: [
            Option(
              name: '--type',
              description: 'Type of the config value to delete. Defaults to ‘all’',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'constant'
                  ),
                  FigSuggestion(
                    name: 'variable'
                  ),
                  FigSuggestion(
                    name: 'all'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Launches system editor to edit the wp-config.php file'
        ),
        Subcommand(
          name: 'get',
          description: 'Gets the value of a specific constant or variable defined in wp-config.php file',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the wp-config.php constant or variable'
          )
          ],
          options: [
            Option(
              name: '--type',
              description: 'Type of the config value to delete. Defaults to ‘all’',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'constant'
                  ),
                  FigSuggestion(
                    name: 'variable'
                  ),
                  FigSuggestion(
                    name: 'all'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Get value in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'var_export'
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
            )
          ]
        ),
        Subcommand(
          name: 'has',
          description: 'Checks whether a specific constant or variable exists in the wp-config.php file',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the wp-config.php constant or variable'
          )
          ],
          options: [
            Option(
              name: '--type',
              description: 'Type of the config value to delete. Defaults to ‘all’',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'constant'
                  ),
                  FigSuggestion(
                    name: 'variable'
                  ),
                  FigSuggestion(
                    name: 'all'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists variables, constants, and file includes defined in wp-config.php file',
          args: [
            Arg(
            name: 'filter',
            description: 'Name or partial name to filter the list by'
          )
          ],
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
              name: '--strict',
              description: 'Enforce strict matching when a filter is provided'
            )
          ]
        ),
        Subcommand(
          name: 'path',
          description: 'Gets the path to wp-config.php file'
        ),
        Subcommand(
          name: 'set',
          description: 'Sets the value of a specific constant or variable defined in wp-config.php file',
          args: [
            Arg(
              name: 'name',
              description: 'Name of the wp-config.php constant or variable'
            ),
            Arg(
              name: 'value',
              description: 'Value to set the wp-config.php constant or variable to'
            )
          ],
          options: [
            Option(
              name: '--add',
              description: 'Add the value if it doesn’t exist yet. This is the default behavior, override with –no-add'
            ),
            Option(
              name: '--no-add',
              description: 'Add the value if it doesn’t exist yet. This is the default behavior, override with –no-add'
            ),
            Option(
              name: '--raw',
              description: 'Place the value into the wp-config.php file as is, instead of as a quoted string'
            ),
            Option(
              name: '--anchor',
              description: 'Anchor string where additions of new values are anchored around. Defaults to “/* That’s all, stop editing!”',
              args: [
                Arg(
                name: 'ancho'
              )
              ]
            ),
            Option(
              name: '--placement',
              description: 'Where to place the new values in relation to the anchor string',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'before'
                  ),
                  FigSuggestion(
                    name: 'after'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--separator',
              description: 'Separator string to put between an added value and its anchor string. The following escape sequences will be recognized and properly interpreted: ‘\n’ => newline, ‘\r’ => carriage return, ‘\t’ => tab. Defaults to a single EOL (“\n” on *nix and “\r\n” on Windows)',
              args: [
                Arg(
                name: 'separato'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Type of the config value to set. Defaults to ‘all’',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'constant'
                  ),
                  FigSuggestion(
                    name: 'variable'
                  ),
                  FigSuggestion(
                    name: 'all'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'shuffle-salts',
          description: 'Refreshes the salts defined in the wp-config.php file',
          args: [
            Arg(
            name: 'keys',
            description: 'One ore more keys to shuffle. If none are provided, this falls back to the default WordPress Core salt keys'
          )
          ],
          options: [
            Option(
              name: '--force',
              description: 'If an unknown key is requested to be shuffled, add it instead of throwing a warning'
            ),
            Option(
              name: '--insecure',
              description: 'Retry API download without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'core',
      description: 'Downloads, installs, updates, and manages a WordPress installation',
      options: [],
      subcommands: [
        Subcommand(
          name: 'check-update',
          description: 'Checks for WordPress updates via Version Check API',
          options: [
            Option(
              name: '--minor',
              description: 'Compare only the first two parts of the version number'
            ),
            Option(
              name: '--major',
              description: 'Compare only the first part of the version number'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each update',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields. Defaults to version,update_type,package_url',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
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
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Downloads core WordPress files',
          args: [
            Arg(
            name: 'download-url',
            description: 'Download directly from a provided URL instead of fetching the URL from the wordpress.org servers'
          )
          ],
          options: [
            Option(
              name: '--path',
              description: 'Specify the path in which to install WordPress. Defaults to current directory',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--locale',
              description: 'Select which language you want to download',
              args: [
                Arg(
                name: 'local'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Select which version you want to download. Accepts a version number, ‘latest’ or ‘nightly’',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: '<number>'
                  ),
                  FigSuggestion(
                    name: 'latest'
                  ),
                  FigSuggestion(
                    name: 'nightly'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--skip-content',
              description: 'Download WP without the default themes and plugins'
            ),
            Option(
              name: '--force',
              description: 'Overwrites existing files, if present'
            ),
            Option(
              name: '--insecure',
              description: 'Retry download without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Runs the standard WordPress installation process',
          options: [
            Option(
              name: '--url',
              description: 'The address of the new site',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'The title of the new site',
              args: [
                Arg(
                name: 'site-titl'
              )
              ]
            ),
            Option(
              name: '--admin_user',
              description: 'The name of the admin user',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--admin_password',
              description: 'The password for the admin user. Defaults to randomly generated string',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--admin_email',
              description: 'The email address for the admin user',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--skip-email',
              description: 'Don’t send an email notification to the new admin user'
            )
          ]
        ),
        Subcommand(
          name: 'is-installed',
          description: 'Checks if WordPress is installed',
          options: [
            Option(
              name: '--network',
              description: 'Check if this is a multisite installation'
            )
          ]
        ),
        Subcommand(
          name: 'multisite-convert',
          description: 'Transforms an existing single-site installation into a multisite installation',
          options: [
            Option(
              name: '--title',
              description: 'The title of the new network',
              args: [
                Arg(
                name: 'network-titl'
              )
              ]
            ),
            Option(
              name: '--base',
              description: 'Base path after the domain name that each site url will start with',
              args: [
                Arg(
                name: 'url-path',
                suggestions: [
                  FigSuggestion(
                    name: '/'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--subdomains',
              description: 'If passed, the network will use subdomains, instead of subdirectories. Doesn’t work with ‘localhost’'
            )
          ]
        ),
        Subcommand(
          name: 'multisite-install',
          description: 'Installs WordPress multisite from scratch',
          options: [
            Option(
              name: '--url',
              description: 'The address of the new site',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--base',
              description: 'Base path after the domain name that each site url will start with',
              args: [
                Arg(
                name: 'url-path',
                suggestions: [
                  FigSuggestion(
                    name: '/'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--subdomains',
              description: 'If passed, the network will use subdomains, instead of subdirectories. Doesn’t work with ‘localhost’'
            ),
            Option(
              name: '--title',
              description: 'The title of the new site',
              args: [
                Arg(
                name: 'site-titl'
              )
              ]
            ),
            Option(
              name: '--admin_user',
              description: 'The name of the admin user',
              args: [
                Arg(
                name: 'username',
                suggestions: [
                  FigSuggestion(
                    name: 'admin'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--admin_password',
              description: 'The password for the admin user. Defaults to randomly generated string',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--admin_email',
              description: 'The email address for the admin user',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--skip-email',
              description: 'Don’t send an email notification to the new admin user'
            ),
            Option(
              name: '--skip-config',
              description: 'Don’t add multisite constants to wp-config.php'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates WordPress to a newer version',
          args: [
            Arg(
            name: 'zip',
            template: 'filepaths',
            description: 'Path to zip file to use, instead of downloading from wordpress.org'
          )
          ],
          options: [
            Option(
              name: '--minor',
              description: 'Only perform updates for minor releases (e.g. update from WP 4.3 to 4.3.3 instead of 4.4.2)'
            ),
            Option(
              name: '--version',
              description: 'Update to a specific version, instead of to the latest version. Alternatively accepts ‘nightly’',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Update even when installed WP version is greater than the requested version'
            ),
            Option(
              name: '--locale',
              description: 'Select which language you want to download',
              args: [
                Arg(
                name: 'local'
              )
              ]
            ),
            Option(
              name: '--insecure',
              description: 'Retry download without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'update-db',
          description: 'Runs the WordPress database update procedure',
          options: [
            Option(
              name: '--network',
              description: 'Update databases for all sites on a network'
            ),
            Option(
              name: '--dry-run',
              description: 'Compare database versions without performing the update'
            )
          ]
        ),
        Subcommand(
          name: 'verify-checksums',
          description: 'Verifies WordPress files against WordPress.org’s checksums',
          options: [
            Option(
              name: '--version',
              description: 'Verify checksums against a specific version of WordPress',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--locale',
              description: 'Verify checksums against a specific locale of WordPress',
              args: [
                Arg(
                name: 'local'
              )
              ]
            ),
            Option(
              name: '--insecure',
              description: 'Verify checksums against a specific locale of WordPress'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Displays the WordPress version',
          options: [
            Option(
              name: '--extra',
              description: 'Show extended version information'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cron',
      description: 'Tests, runs, and deletes WP-Cron events; manages WP-Cron schedules',
      options: [],
      subcommands: [
        Subcommand(
          name: 'event',
          description: 'Schedules, runs, and deletes WP-Cron events',
          subcommands: [
            Subcommand(
              name: 'delete',
              description: 'Deletes all scheduled cron events for the given hook',
              args: [
                Arg(
                name: 'hook',
                description: 'The hook name'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists scheduled cron events',
              options: [
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific object fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--field=value',
                  insertValue: '--',
                  description: 'Filter by one or more fields'
                ),
                Option(
                  name: '--field',
                  description: 'Prints the value of a single field for each term',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'run',
              description: 'Runs the next scheduled cron event for the given hook',
              args: [
                Arg(
                name: 'hook',
                description: 'The hook name'
              )
              ],
              options: [
                Option(
                  name: '--due-now',
                  description: 'Run all hooks due right now'
                ),
                Option(
                  name: '--all',
                  description: 'Run all hooks'
                )
              ]
            ),
            Subcommand(
              name: 'schedule',
              description: 'Schedules a new cron event',
              args: [
                Arg(
                  name: 'hook',
                  description: 'The hook name'
                ),
                Arg(
                  name: 'next-run',
                  description: 'A Unix timestamp or an English textual datetime description compatible with strtotime(). Defaults to now'
                ),
                Arg(
                  name: 'recurrence',
                  description: 'How often the event should recur. See wp cron schedule list for available schedule names. Defaults to no recurrence'
                )
              ],
              options: [
                Option(
                  name: '--field=value',
                  insertValue: '--',
                  description: 'Arguments to pass to the hook for the event. <field> should be a numeric key, not a string'
                )
              ]
            ),
            Subcommand(
              name: 'unschedule',
              description: 'Unschedules all cron events for a given hook',
              args: [
                Arg(
                name: 'hook',
                description: 'Name of the hook for which all events should be unscheduled'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'schedule',
          description: 'Gets WP-Cron schedules',
          subcommands: [
            Subcommand(
              name: 'list',
              description: 'List available cron schedules',
              options: [
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific object fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--field',
                  description: 'Prints the value of a single field for each schedule',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'options',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'ids'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'test',
          description: 'Tests the WP Cron spawning system and reports back its status'
        )
      ]
    ),
    Subcommand(
      name: 'db',
      description: 'Performs basic database operations using credentials stored in wp-config.php',
      options: [],
      subcommands: [
        Subcommand(
          name: 'check',
          description: 'Checks the current status of the database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysqlcheck. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysqlcheck. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysqlcheck. Refer to mysqlcheck docs'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'clean',
          description: 'Removes all tables with `\$table_prefix` from the database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysqlcheck. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysqlcheck. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to the confirmation message'
            )
          ]
        ),
        Subcommand(
          name: 'cli',
          description: 'Opens a MySQL console using credentials from wp-config.php',
          options: [
            Option(
              name: '--database',
              description: 'Use a specific database. Defaults to DB_NAME',
              args: [
                Arg(
                name: 'databas'
              )
              ]
            ),
            Option(
              name: '--default-character-set',
              description: 'Use a specific character set. Defaults to DB_CHARSET when defined',
              args: [
                Arg(
                name: 'character-se'
              )
              ]
            ),
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysql. Refer to mysql docs'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'columns',
          description: 'Displays information about a given table',
          args: [
            Arg(
            name: 'table',
            description: 'Name of the database table'
          )
          ],
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Creates a new database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'drop',
          description: 'Deletes the existing database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to the confirmation message'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Exports the database to a file or to STDOUT',
          args: [
            Arg(
            name: 'file',
            description: 'The name of the SQL file to export. If ‘-‘, then outputs to STDOUT. If omitted, it will be ‘{dbname}-{Y-m-d}-{random-hash}.sql’'
          )
          ],
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysqldump. Defaults to DB_USER',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysqldump. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysqldump. Refer to mysqldump docs'
            ),
            Option(
              name: '--tables',
              description: 'The comma separated list of specific tables to export. Excluding this parameter will export all tables in the database',
              args: [
                Arg(
                name: 'table'
              )
              ]
            ),
            Option(
              name: '--exclude_tables',
              description: 'The comma separated list of specific tables that should be skipped from exporting. Excluding this parameter will export all tables in the database',
              args: [
                Arg(
                name: 'table'
              )
              ]
            ),
            Option(
              name: '--include-tablespaces',
              description: 'Skips adding the default –no-tablespaces option to mysqldump'
            ),
            Option(
              name: '--porcelain',
              description: 'Output filename for the exported database'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Imports a database from a file or from STDIN',
          args: [
            Arg(
            name: 'file',
            description: 'The name of the SQL file to import. If ‘-‘, then reads from STDIN. If omitted, it will look for ‘{dbname}.sql’'
          )
          ],
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_USER'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_PASSWORD'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysql. Refer to mysql binary docs'
            ),
            Option(
              name: '--skip-optimization',
              description: 'When using an SQL file, do not include speed optimization such as disabling auto-commit and key checks'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'optimize',
          description: 'Optimizes the database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysqlcheck. Defaults to DB_USER',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_USER'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysqlcheck. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_PASSWORD'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysqldump. Refer to mysqldump docs'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'prefix',
          description: 'Displays the database table prefix'
        ),
        Subcommand(
          name: 'query',
          description: 'Executes a SQL query against the database',
          args: [
            Arg(
            name: 'sql',
            description: 'A SQL query. If not passed, will try to read from STDIN'
          )
          ],
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_USER'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_PASSWORD'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysql. Refer to mysql docs'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'repair',
          description: 'Repairs the database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysqlcheck. Defaults to DB_USER',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_USER'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysqlcheck. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_PASSWORD'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Extra arguments to pass to mysqlcheck. Refer to mysqlcheck docs'
            ),
            Option(
              name: '--defaults',
              description: 'Loads the environment’s MySQL option files. Default behavior is to skip loading them to avoid failures due to misconfiguration'
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Removes all tables from the database',
          options: [
            Option(
              name: '--dbuser',
              description: 'Username to pass to mysql. Defaults to DB_USER',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_USER'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--dbpass',
              description: 'Password to pass to mysql. Defaults to DB_PASSWORD',
              args: [
                Arg(
                name: 'value',
                suggestions: [
                  FigSuggestion(
                    name: 'DB_PASSWORD'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to the confirmation message'
            )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Finds a string in the database',
          args: [
            Arg(
              name: 'search',
              description: 'String to search for. The search is case-insensitive by default'
            ),
            Arg(
              name: 'tables',
              description: 'One or more tables to search through for the string'
            )
          ],
          options: [
            Option(
              name: '--network',
              description: 'Search through all the tables registered to \$wpdb in a multisite install'
            ),
            Option(
              name: '--all-tables-with-prefix',
              description: 'Search through all tables that match the registered table prefix, even if not registered on \$wpdb. On one hand, sometimes plugins use tables without registering them to \$wpdb. On another hand, this could return tables you don’t expect. Overrides –network'
            ),
            Option(
              name: '--all-tables',
              description: 'Search through ALL tables in the database, regardless of the prefix, and even if not registered on \$wpdb. Overrides –network and –all-tables-with-prefix'
            ),
            Option(
              name: '--before_context',
              description: 'Number of characters to display before the match',
              args: [
                Arg(
                name: 'num',
                suggestions: [
                  FigSuggestion(
                    name: '40'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--after_context',
              description: 'Number of characters to display after the match',
              args: [
                Arg(
                name: 'num',
                suggestions: [
                  FigSuggestion(
                    name: '40'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--regex',
              description: 'Runs the search as a regular expression (without delimiters). The search becomes case-sensitive (i.e. no PCRE flags are added). Delimiters must be escaped if they occur in the expression. Because the search is run on individual columns, you can use the ^ and \$ tokens to mark the start and end of a match, respectively'
            ),
            Option(
              name: '--regex-flags',
              description: 'Pass PCRE modifiers to the regex search (e.g. ‘i’ for case-insensitivity)',
              args: [
                Arg(
                name: 'regex-flag'
              )
              ]
            ),
            Option(
              name: '--regex-delimiter',
              description: 'The delimiter to use for the regex. It must be escaped if it appears in the search string. The default value is the result of chr(1)',
              args: [
                Arg(
                name: 'regex-delimite'
              )
              ]
            ),
            Option(
              name: '--table_column_once',
              description: 'Output the ‘table:column’ line once before all matching row lines in the table column rather than before each matching row'
            ),
            Option(
              name: '--one_line',
              description: 'Place the ‘table:column’ output on the same line as the row id and match (‘table:column:id:match’). Overrides –table_column_once'
            ),
            Option(
              name: '--matches_only',
              description: 'Only output the string matches (including context). No ‘table:column’s or row ids are outputted'
            ),
            Option(
              name: '--stats',
              description: 'Output stats on the number of matches found, time taken, tables/columns/rows searched, tables skipped'
            ),
            Option(
              name: '--table_column_color',
              description: 'Percent color code to use for the ‘table:column’ output. For a list of available percent color codes, see below. Default ‘%G’ (bright green)',
              args: [
                Arg(
                name: 'table_column_colo'
              )
              ]
            ),
            Option(
              name: '--id_color',
              description: 'Percent color code to use for the row id output. For a list of available percent color codes, see below. Default ‘%Y’ (bright yellow)',
              args: [
                Arg(
                name: 'id_colo'
              )
              ]
            ),
            Option(
              name: '--match_color',
              description: 'Percent color code to use for the match (unless both before and after context are 0, when no color code is used). For a list of available percent color codes, see below. Default ‘%3%k’ (black on a mustard background)',
              args: [
                Arg(
                name: 'match_colo'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'size',
          description: 'Displays the database name and size',
          options: [
            Option(
              name: '--size_format',
              description: 'Display the database size only, as a bare number',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'b'
                  ),
                  FigSuggestion(
                    name: 'kb'
                  ),
                  FigSuggestion(
                    name: 'mb'
                  ),
                  FigSuggestion(
                    name: 'gb'
                  ),
                  FigSuggestion(
                    name: 'tb'
                  ),
                  FigSuggestion(
                    name: 'B'
                  ),
                  FigSuggestion(
                    name: 'KB'
                  ),
                  FigSuggestion(
                    name: 'KiB'
                  ),
                  FigSuggestion(
                    name: 'MB'
                  ),
                  FigSuggestion(
                    name: 'MiB'
                  ),
                  FigSuggestion(
                    name: 'GB'
                  ),
                  FigSuggestion(
                    name: 'GiB'
                  ),
                  FigSuggestion(
                    name: 'TB'
                  ),
                  FigSuggestion(
                    name: 'TiB'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--tables',
              description: 'Display each table name and size instead of the database size'
            ),
            Option(
              name: '--human-readable',
              description: 'Display database sizes in human readable formats'
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
              name: '--scope',
              description: 'Can be all, global, ms_global, blog, or old tables. Defaults to all',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'List all the tables in a multisite install'
            ),
            Option(
              name: '--all-tables-with-prefix',
              description: 'List all tables that match the table prefix even if not registered on \$wpdb. Overrides –network'
            ),
            Option(
              name: '--all-tables',
              description: 'List all tables in the database, regardless of the prefix, and even if not registered on \$wpdb. Overrides –all-tables-with-prefix'
            )
          ]
        ),
        Subcommand(
          name: 'tables',
          description: 'Lists the database tables',
          args: [
            Arg(
            name: 'table',
            description: 'List tables based on wildcard search, e.g. ‘wp_*_options’ or ‘wp_post?’'
          )
          ],
          options: [
            Option(
              name: '--scope',
              description: 'Can be all, global, ms_global, blog, or old tables. Defaults to all',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'List all the tables in a multisite install'
            ),
            Option(
              name: '--all-tables-with-prefix',
              description: 'List all tables that match the table prefix even if not registered on \$wpdb. Overrides –network'
            ),
            Option(
              name: '--all-tables',
              description: 'List all tables in the database, regardless of the prefix, and even if not registered on \$wpdb. Overrides –all-tables-with-prefix'
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'options',
                suggestions: [
                  FigSuggestion(
                    name: 'list'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  )
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dist-archive',
      description: 'Create a distribution archive based on a project’s .distignore file',
      args: [
        Arg(
          name: 'path',
          description: 'Path to the project that includes a .distignore file',
          template: 'folders'
        ),
        Arg(
          name: 'target',
          template: 'filepaths',
          description: 'Path and file name for the distribution archive. Defaults to project directory name plus version, if discoverable'
        )
      ],
      options: [
        Option(
          name: '--create-target-dir',
          description: 'Automatically create the target directory as needed'
        ),
        Option(
          name: '--format',
          description: 'Choose the format for the archive',
          args: [
            Arg(
            name: 'options',
            suggestions: [
              FigSuggestion(
                name: 'zip'
              ),
              FigSuggestion(
                name: 'targz'
              )
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'embed',
      description: 'Inspects oEmbed providers, clears embed cache, and more',
      options: [],
      subcommands: [
        Subcommand(
          name: 'cache',
          description: 'Finds, triggers, and deletes oEmbed caches',
          subcommands: [
            Subcommand(
              name: 'clear',
              description: 'Deletes all oEmbed caches for a given post',
              args: [
                Arg(
                name: 'post_id',
                description: 'ID of the post to clear the cache for'
              )
              ]
            ),
            Subcommand(
              name: 'find',
              description: 'Finds an oEmbed cache post ID for a given URL',
              args: [
                Arg(
                name: 'url',
                description: 'ID of the post to clear the cache for'
              )
              ],
              options: [
                Option(
                  name: '--width',
                  description: 'Width of the embed in pixels. Part of cache key so must match. Defaults to content_width if set else 500px, so is theme and context dependent',
                  args: [
                    Arg(
                    name: 'widt'
                  )
                  ]
                ),
                Option(
                  name: '--height',
                  description: 'Height of the embed in pixels. Part of cache key so must match. Defaults to 1.5 * default width (content_width or 500px), to a maximum of 1000px',
                  args: [
                    Arg(
                    name: 'heigh'
                  )
                  ]
                ),
                Option(
                  name: '--discover',
                  description: 'Whether to search with the discover attribute set or not. Part of cache key so must match. If not given, will search with attribute: unset, ‘1’, ‘0’, returning first'
                )
              ]
            ),
            Subcommand(
              name: 'trigger',
              description: 'Triggers the caching of all oEmbed results for a given post',
              args: [
                Arg(
                name: 'post_id',
                description: 'ID of the post to do the caching for'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'fetch',
          description: 'Attempts to convert a URL into embed HTML',
          args: [
            Arg(
            name: 'url',
            description: 'URL to retrieve oEmbed data for'
          )
          ],
          options: [
            Option(
              name: '--width',
              description: 'Width of the embed in pixels',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Height of the embed in pixels',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--post-id',
              description: 'Cache oEmbed response for a given post',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--discover',
              description: 'Enable oEmbed discovery. Defaults to true'
            ),
            Option(
              name: '--skip-cache',
              description: 'Ignore already cached oEmbed responses. Has no effect if using the ‘raw’ option, which doesn’t use the cache'
            ),
            Option(
              name: '--skip-sanitization',
              description: 'Remove the filter that WordPress from 4.4 onwards uses to sanitize oEmbed responses. Has no effect if using the ‘raw’ option, which by-passes sanitization'
            ),
            Option(
              name: '--do-shortcode',
              description: 'If the URL is handled by a registered embed handler and returns a shortcode, do shortcode and return result. Has no effect if using the ‘raw’ option, which by-passes handlers'
            ),
            Option(
              name: '--limit-response-size',
              description: 'Limit the size of the resulting HTML when using discovery. Default 150 KB (the standard WordPress limit). Not compatible with ‘no-discover’',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--raw',
              description: 'Return the raw oEmbed response instead of the resulting HTML. Ignores the cache and does not sanitize responses or use registered embed handlers'
            ),
            Option(
              name: '--raw-format',
              description: 'The serialization format for the value',
              args: [
                Arg(
                name: 'json|xml',
                suggestions: [
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'xml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'handler',
          description: 'Retrieves embed handlers',
          subcommands: [
            Subcommand(
              name: 'list',
              description: 'Lists all available embed handlers',
              options: [
                Option(
                  name: '--field',
                  description: 'Display the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'provider',
          description: 'Retrieves oEmbed providers',
          subcommands: [
            Subcommand(
              name: 'list',
              description: 'Lists all available oEmbed providers',
              options: [
                Option(
                  name: '--field',
                  description: 'Display the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'match',
              description: 'Gets the matching provider for a given URL',
              args: [
                Arg(
                name: 'url',
                description: 'URL to retrieve provider for'
              )
              ],
              options: [
                Option(
                  name: '--discover',
                  description: 'Whether to use oEmbed discovery or not. Defaults to true'
                ),
                Option(
                  name: '--limit-response-size',
                  description: 'Limit the size of the resulting HTML when using discovery. Default 150 KB (the standard WordPress limit). Not compatible with ‘no-discover’',
                  args: [
                    Arg(
                    name: 'siz'
                  )
                  ]
                ),
                Option(
                  name: '--link-type',
                  description: 'Whether to accept only a certain link type when using discovery. Defaults to any (json or xml), preferring json. Not compatible with ‘no-discover’',
                  args: [
                    Arg(
                    name: 'json|xml',
                    suggestions: [
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'xml'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'eval',
      description: 'Executes arbitrary PHP code',
      args: [
        Arg(
        name: 'php-code',
        description: 'The code to execute, as a string'
      )
      ],
      options: [
        Option(
          name: '--skip-wordpress',
          description: 'Execute code without loading WordPress'
        )
      ]
    ),
    Subcommand(
      name: 'eval-file',
      description: 'Loads and executes a PHP file',
      args: [
        Arg(
          name: 'file',
          description: 'The path to the PHP file to execute. Use ‘-‘ to run code from STDIN'
        ),
        Arg(
          name: 'arg',
          description: 'One or more arguments to pass to the file. They are placed in the \$args variable'
        )
      ],
      options: [
        Option(
          name: '--skip-wordpress',
          description: 'Load and execute file without loading WordPress'
        )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Exports WordPress content to a WXR file',
      options: [
        Option(
          name: '--dir',
          description: 'Full path to directory where WXR export files should be stored. Defaults to current working directory',
          args: [
            Arg(
            name: 'dirname',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--stdout',
          description: 'Output the whole XML using standard output (incompatible with –dir=)'
        ),
        Option(
          name: '--skip_comments',
          description: 'Don’t include comments in the WXR export file'
        ),
        Option(
          name: '--max_file_size',
          description: 'A single export file should have this many megabytes. -1 for unlimited',
          args: [
            Arg(
            name: 'MB',
            suggestions: [
              FigSuggestion(
                name: '15'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--start_date',
          description: 'Export only posts published after this date, in format YYYY-MM-DD',
          args: [
            Arg(
            name: 'dat'
          )
          ]
        ),
        Option(
          name: '--end_date',
          description: 'Export only posts published before this date, in format YYYY-MM-DD',
          args: [
            Arg(
            name: 'dat'
          )
          ]
        ),
        Option(
          name: '--post_type',
          description: 'Export only posts with this post_type. Separate multiple post types with a comma',
          args: [
            Arg(
            name: 'post-type',
            suggestions: [
              FigSuggestion(
                name: 'any'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--post_type__not_in',
          description: 'Export all post types except those identified. Separate multiple post types with a comma. Defaults to none',
          args: [
            Arg(
            name: 'post-typ'
          )
          ]
        ),
        Option(
          name: '--post_in',
          description: 'Export all posts specified as a comma- or space-separated list of IDs. Post’s attachments won’t be exported unless –with_attachments is specified',
          args: [
            Arg(
            name: 'pi'
          )
          ]
        ),
        Option(
          name: '--with_attachments',
          description: 'Force including attachments in case –post__in has been specified'
        ),
        Option(
          name: '--start_id',
          description: 'Export only posts with IDs greater than or equal to this post ID',
          args: [
            Arg(
            name: 'pi'
          )
          ]
        ),
        Option(
          name: '--max_num_posts',
          description: 'Export no more than <num> posts (excluding attachments)',
          args: [
            Arg(
            name: 'nu'
          )
          ]
        ),
        Option(
          name: '--author',
          description: 'Export only posts by this author. Can be either user login or user ID',
          args: [
            Arg(
            name: 'autho'
          )
          ]
        ),
        Option(
          name: '--category',
          description: 'Export only posts in this category',
          args: [
            Arg(
            name: 'categor'
          )
          ]
        ),
        Option(
          name: '--post_status',
          description: 'Export only posts with this status',
          args: [
            Arg(
            name: 'statu'
          )
          ]
        ),
        Option(
          name: '--filename_format',
          description: 'Use a custom format for export filenames. Defaults to ‘{site}.wordpress.{date}.{n}.xml’',
          args: [
            Arg(
            name: 'forma'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'find',
      description: 'Find WordPress installations on the filesystem',
      args: [
        Arg(
        name: 'path',
        template: 'folders',
        description: 'Path to search the subdirectories of'
      )
      ],
      options: [
        Option(
          name: '--skip-ignored-paths',
          description: 'Skip the paths that are ignored by default'
        ),
        Option(
          name: '--include_ignored_paths',
          description: 'Include additional ignored paths as CSV (e.g. ‘/sys-backup/,/temp/’)',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: '--max_depth',
          description: 'Only recurse to a specified depth, inclusive',
          args: [
            Arg(
            name: 'max-dept'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'Limit the output to specific row fields',
          args: [
            Arg(
            name: 'field'
          )
          ]
        ),
        Option(
          name: '--field',
          description: 'Output a specific field for each row',
          args: [
            Arg(
            name: 'fiel'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Render output in a particular format',
          args: [
            Arg(
            name: 'options',
            suggestions: [
              FigSuggestion(
                name: 'table'
              ),
              FigSuggestion(
                name: 'json'
              ),
              FigSuggestion(
                name: 'csv'
              ),
              FigSuggestion(
                name: 'yaml'
              ),
              FigSuggestion(
                name: 'count'
              )
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Gets help on WP-CLI, or on a specific command',
      args: [
        Arg(
        name: 'command',
        description: 'Get help on a specific command'
      )
      ],
      options: []
    ),
    Subcommand(
      name: 'i18n',
      description: 'Provides internationalization tools for WordPress projects',
      options: [],
      subcommands: [
        Subcommand(
          name: 'make-json',
          description: 'Extract JavaScript strings from PO files and add them to individual JSON files',
          args: [
            Arg(
              name: 'source',
              template: 'filepaths',
              description: 'Path to an existing PO file or a directory containing multiple PO files'
            ),
            Arg(
              name: 'destination',
              template: 'folders',
              description: 'Path to the destination directory for the resulting JSON files. Defaults to the source directory'
            )
          ],
          options: [
            Option(
              name: '--purge',
              description: 'Whether to purge the strings that were extracted from the original source file. Defaults to true, use --no-purge to skip the removal'
            ),
            Option(
              name: '--pretty-print',
              description: 'Pretty-print resulting JSON files'
            )
          ]
        ),
        Subcommand(
          name: 'make-mo',
          description: 'Create MO files from PO files',
          args: [
            Arg(
              name: 'source',
              template: 'filepaths',
              description: 'Path to an existing PO file or a directory containing multiple PO files'
            ),
            Arg(
              name: 'destination',
              template: 'folders',
              description: 'Path to the destination directory for the resulting JSON files. Defaults to the source directory'
            )
          ]
        ),
        Subcommand(
          name: 'make-pot',
          description: 'Create a POT file for a WordPress project',
          args: [
            Arg(
              name: 'source',
              description: 'Directory to scan for string extraction'
            ),
            Arg(
              name: 'destination',
              description: 'Name of the resulting POT file'
            )
          ],
          options: [
            Option(
              name: '--slug',
              description: 'Plugin or theme slug. Defaults to the source directory’s basename',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Text domain to look for in the source code, unless the --ignore-domain option is used. By default, the “Text Domain” header of the plugin or theme is used. If none is provided, it falls back to the project slug',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            ),
            Option(
              name: '--ignore-domain',
              description: 'Ignore the text domain completely and extract strings with any text domain'
            ),
            Option(
              name: '--merge',
              description: 'Comma-separated list of POT files whose contents should be merged with the extracted strings. If left empty, defaults to the destination POT file. POT file headers will be ignored',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--subtract',
              description: 'Comma-separated list of POT files whose contents should act as some sort of blacklist for string extraction. Any string which is found on that blacklist will not be extracted. This can be useful when you want to create multiple POT files from the same source directory with slightly different content and no duplicate strings between them',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--include',
              description: 'Comma-separated list of files and paths that should be used for string extraction. If provided, only these files and folders will be taken into account for string extraction. For example, --include=\'src,my-file.php will ignore anything besides my-file.php and files in the src directory. Simple glob patterns can be used, i.e. --include=foo-*.php includes any PHP file with the foo- prefix. Leading and trailing slashes are ignored, i.e. /my/directory/ is the same as my/directory',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--exclude',
              description: 'Comma-separated list of files and paths that should be skipped for string extraction. For example, --exclude=\'.github,myfile.php would ignore any strings found within myfile.php or the .github folder. Simple glob patterns can be used, i.e. --exclude=foo-*.php excludes any PHP file with the foo- prefix. Leading and trailing slashes are ignored, i.e. /my/directory/ is the same as my/directory. The following files and folders are always excluded: node_modules, .git, .svn, .CVS, .hg, vendor, *.min.js',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--headers',
              description: 'Array in JSON format of custom headers which will be added to the POT file. Defaults to empty array',
              args: [
                Arg(
                name: 'header'
              )
              ]
            ),
            Option(
              name: '--skip-js',
              description: 'Skips JavaScript string extraction. Useful when this is done in another build step, e.g. through Babel'
            ),
            Option(
              name: '--skip-php',
              description: 'Skips PHP string extraction'
            ),
            Option(
              name: '--skip-block-json',
              description: 'Skips string extraction from block.json files'
            ),
            Option(
              name: '--skip-audit',
              description: 'Skips string audit where it tries to find possible mistakes in translatable strings. Useful when running in an automated environment'
            ),
            Option(
              name: '--file-comment',
              description: 'String that should be added as a comment to the top of the resulting POT file. By default, a copyright comment is added for WordPress plugins and themes in the following manner: Copyright (C) 2018 Example Plugin Author. This file is distributed under the same license as the Example Plugin package. If a plugin or theme specifies a license in their main plugin file or stylesheet, the comment looks like this: Copyright (C) 2018 Example Plugin Author. This file is distributed under the GPLv2',
              args: [
                Arg(
                name: 'file-commen'
              )
              ]
            ),
            Option(
              name: '--package-name',
              description: 'Name to use for package name in the resulting POT file’s Project-Id-Version header. Overrides plugin or theme name, if applicable',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Imports content from a given WXR file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths',
        description: 'Path to one or more valid WXR files for importing. Directories are also accepted'
      )
      ],
      options: [
        Option(
          name: '--authors',
          description: 'How the author mapping should be handled. Options are ‘create’, ‘mapping.csv’, or ‘skip’. The first will create any non-existent users from the WXR file. The second will read author mapping associations from a CSV, or create a CSV for editing if the file path doesn’t exist. The CSV requires two columns, and a header row like “old_user_login,new_user_login”. The last option will skip any author mapping',
          args: [
            Arg(
            name: 'author'
          )
          ]
        ),
        Option(
          name: '--skip',
          description: 'Skip importing specific data. Supported options are: ‘attachment’ and ‘image_resize’ (skip time-consuming thumbnail generation)',
          args: [
            Arg(
            name: 'data-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'language',
      description: 'Installs, activates, and manages language packs',
      options: [],
      subcommands: [
        Subcommand(
          name: 'core',
          description: 'Installs, activates, and manages core language packs',
          subcommands: [
            Subcommand(
              name: 'activate',
              description: 'Activates a given language',
              args: [
                Arg(
                name: 'language',
                description: 'Language code to activate'
              )
              ]
            ),
            Subcommand(
              name: 'install',
              description: 'Installs a given language',
              args: [
                Arg(
                name: 'language',
                description: 'Language code to install'
              )
              ],
              options: [
                Option(
                  name: '--activate',
                  description: 'If set, the language will be activated immediately after install'
                )
              ]
            ),
            Subcommand(
              name: 'is-installed',
              description: 'Checks if a given language is installed',
              args: [
                Arg(
                name: 'language',
                description: 'Language code to check'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all available languages',
              options: [
                Option(
                  name: '--field',
                  description: 'Display the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--field=value',
                  insertValue: '--',
                  description: 'Filter results by key=value pairs'
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'uninstall',
              description: 'Uninstalls a given language',
              args: [
                Arg(
                name: 'language',
                description: 'Language code to uninstall'
              )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates installed languages for core',
              options: [
                Option(
                  name: '--dry-run',
                  description: 'Preview which translations would be updated'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'plugin',
          description: 'Installs, activates, and manages plugin language packs',
          subcommands: [
            Subcommand(
              name: 'install',
              description: 'Installs a given language for a plugin',
              args: [
                Arg(
                  name: 'plugin',
                  description: 'Plugin to install language for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to install'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, languages for all plugins will be installed'
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format. Used when installing languages for all plugins',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'summary'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'is-installed',
              description: 'Checks if a given language is installed',
              args: [
                Arg(
                  name: 'plugin',
                  description: 'Plugin to check for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to check'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all available languages for one or more plugins',
              args: [
                Arg(
                name: 'plugin',
                description: 'One or more plugins to list languages for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, languages for all plugins will be listed'
                ),
                Option(
                  name: '--field',
                  description: 'Display the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--field=value',
                  insertValue: '--',
                  description: 'Filter results by key=value pairs'
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'uninstall',
              description: 'Uninstalls a given language for a plugin',
              args: [
                Arg(
                  name: 'plugin',
                  description: 'Plugin to uninstall language for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to uninstall'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates installed languages for one or more plugins',
              args: [
                Arg(
                name: 'plugin',
                description: 'One or more plugins to update languages for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, languages for all plugins will be updated'
                ),
                Option(
                  name: '--dry-run',
                  description: 'Preview which translations would be updated'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'theme',
          description: 'Installs, activates, and manages theme language packs',
          subcommands: [
            Subcommand(
              name: 'install',
              description: 'Installs a given language for a theme',
              args: [
                Arg(
                  name: 'theme',
                  description: 'Theme to install language for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to install'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, languages for all themes will be installed'
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format. Used when installing languages for all themes',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'summary'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'is-installed',
              description: 'Checks if a given language is installed',
              args: [
                Arg(
                  name: 'theme',
                  description: 'Theme to install language for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to install'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all available languages for one or more themes',
              args: [
                Arg(
                name: 'theme',
                description: 'One or more themes to list languages for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, available languages for all themes will be listed'
                ),
                Option(
                  name: '--field',
                  description: 'Display the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--field=value',
                  insertValue: '--',
                  description: 'Filter results by key=value pairs'
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'uninstall',
              description: 'Uninstalls a given language for a theme',
              args: [
                Arg(
                  name: 'theme',
                  description: 'Theme to uninstall language for'
                ),
                Arg(
                  name: 'language',
                  description: 'Language code to uninstall'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates installed languages for one or more themes',
              args: [
                Arg(
                name: 'theme',
                description: 'One or more themes to update languages for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, languages for all themes will be updated'
                ),
                Option(
                  name: '--dry-run',
                  description: 'Preview which translations would be updated'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'maintenance-mode',
      description: 'Activates, deactivates or checks the status of the maintenance mode of a site',
      options: [],
      subcommands: [
        Subcommand(
          name: 'activate',
          description: 'Activates maintenance mode',
          options: [
            Option(
              name: '--force',
              description: 'Force maintenance mode activation operation'
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivates maintenance mode'
        ),
        Subcommand(
          name: 'is-active',
          description: 'Detects maintenance mode status'
        ),
        Subcommand(
          name: 'status',
          description: 'Displays maintenance mode status'
        )
      ]
    ),
    Subcommand(
      name: 'media',
      description: 'Imports files as attachments, regenerates thumbnails, or lists registered image sizes',
      options: [],
      subcommands: [
        Subcommand(
          name: 'fix-orientation',
          description: 'Fix image orientation for one or more attachments',
          args: [
            Arg(
            name: 'attachment-id',
            description: 'One or more IDs of the attachments to regenerate'
          )
          ],
          options: [
            Option(
              name: '--dry-run',
              description: 'Check images needing orientation without performing the operation'
            )
          ]
        ),
        Subcommand(
          name: 'image-size',
          description: 'Lists image sizes registered with WordPress',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'count'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Creates attachments from local files or URLs',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            description: 'Path to file or files to be imported. Supports the glob(3) capabilities of the current shell. If file is recognized as a URL (for example, with a scheme of http or ftp), the file will be downloaded to a temp file before being sideloaded'
          )
          ],
          options: [
            Option(
              name: '--post_id',
              description: 'ID of the post to attach the imported files to',
              args: [
                Arg(
                name: 'post_i'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Attachment title (post title field)',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--caption',
              description: 'Caption for attachent (post excerpt field)',
              args: [
                Arg(
                name: 'captio'
              )
              ]
            ),
            Option(
              name: '--alt',
              description: 'Alt text for image (saved as post meta)',
              args: [
                Arg(
                name: 'alt_tex'
              )
              ]
            ),
            Option(
              name: '--desc',
              description: '\'Description\' field (post content) of attachment post',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--skip-copy',
              description: 'If set, media files (local only) are imported to the library but not moved on disk. File names will not be run through wp_unique_filename() with this set'
            ),
            Option(
              name: '--preserve-filetime',
              description: 'Use the file modified time as the post published & modified dates. Remote files will always use the current time'
            ),
            Option(
              name: '--featured_image',
              description: 'If set, set the imported image as the Featured Image of the post its attached to'
            ),
            Option(
              name: '--porcelain',
              description: 'Output just the new attachment ID'
            )
          ]
        ),
        Subcommand(
          name: 'regenerate',
          description: 'Regenerates thumbnails for one or more attachments',
          args: [
            Arg(
            name: 'attachment-id',
            description: 'One or more IDs of the attachments to regenerate'
          )
          ],
          options: [
            Option(
              name: '--image_size',
              description: 'Name of the image size to regenerate. Only thumbnails of this image size will be regenerated, thumbnails of other image sizes will not',
              args: [
                Arg(
                name: 'image_siz'
              )
              ]
            ),
            Option(
              name: '--skip-delete',
              description: 'Skip deletion of the original thumbnails. If your thumbnails are linked from sources outside your control, it’s likely best to leave them around. Defaults to false'
            ),
            Option(
              name: '--only-missing',
              description: 'Only generate thumbnails for images missing image sizes'
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to the confirmation message. Confirmation only shows when no IDs passed as arguments'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'menu',
      description: 'Lists, creates, assigns, and deletes the active theme’s navigation menus',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Creates a new menu',
          args: [
            Arg(
            name: 'menu-name',
            description: 'A descriptive name for the menu'
          )
          ],
          options: [
            Option(
              name: '--porcelain',
              description: 'Output just the new menu ID'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes one or more menus',
          args: [
            Arg(
            name: 'menu',
            description: 'The name, slug, or term ID for the menu(s)'
          )
          ]
        ),
        Subcommand(
          name: 'item',
          description: 'List, add, and delete items associated with a menu',
          subcommands: [
            Subcommand(
              name: 'add-custom',
              description: 'Adds a custom menu item',
              args: [
                Arg(
                  name: 'menu',
                  description: 'The name, slug, or term ID for the menu'
                ),
                Arg(
                  name: 'title',
                  description: 'Title for the link'
                ),
                Arg(
                  name: 'link',
                  description: 'Target URL for the link'
                )
              ],
              options: [
                Option(
                  name: '--description',
                  description: 'Set a custom description for the menu item',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--attr-title',
                  description: 'Set a custom title attribute for the menu item',
                  args: [
                    Arg(
                    name: 'attr-titl'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'Set a custom link target for the menu item',
                  args: [
                    Arg(
                    name: 'targe'
                  )
                  ]
                ),
                Option(
                  name: '--classes',
                  description: 'Set a custom link classes for the menu item',
                  args: [
                    Arg(
                    name: 'classe'
                  )
                  ]
                ),
                Option(
                  name: '--position',
                  description: 'Specify the position of this menu item',
                  args: [
                    Arg(
                    name: 'positio'
                  )
                  ]
                ),
                Option(
                  name: '--parent-id',
                  description: 'Make this menu item a child of another menu item',
                  args: [
                    Arg(
                    name: 'parent-i'
                  )
                  ]
                ),
                Option(
                  name: '--porcelain',
                  description: 'Output just the new menu item ID'
                )
              ]
            ),
            Subcommand(
              name: 'add-post',
              description: 'Adds a post as a menu item',
              args: [
                Arg(
                  name: 'menu',
                  description: 'The name, slug, or term ID for the menu'
                ),
                Arg(
                  name: 'post-id',
                  description: 'Post ID to add to the menu'
                )
              ],
              options: [
                Option(
                  name: '--title',
                  description: 'Set a custom title for the menu item',
                  args: [
                    Arg(
                    name: 'titl'
                  )
                  ]
                ),
                Option(
                  name: '--link',
                  description: 'Set a custom url for the menu item',
                  args: [
                    Arg(
                    name: 'lin'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Set a custom description for the menu item',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--attr-title',
                  description: 'Set a custom title attribute for the menu item',
                  args: [
                    Arg(
                    name: 'attr-titl'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'Set a custom link target for the menu item',
                  args: [
                    Arg(
                    name: 'targe'
                  )
                  ]
                ),
                Option(
                  name: '--classes',
                  description: 'Set a custom link classes for the menu item',
                  args: [
                    Arg(
                    name: 'classe'
                  )
                  ]
                ),
                Option(
                  name: '--position',
                  description: 'Specify the position of this menu item',
                  args: [
                    Arg(
                    name: 'positio'
                  )
                  ]
                ),
                Option(
                  name: '--parent-id',
                  description: 'Make this menu item a child of another menu item',
                  args: [
                    Arg(
                    name: 'parent-i'
                  )
                  ]
                ),
                Option(
                  name: '--porcelain',
                  description: 'Output just the new menu item id'
                )
              ]
            ),
            Subcommand(
              name: 'add-term',
              description: 'Adds a taxonomy term as a menu item',
              args: [
                Arg(
                  name: 'menu',
                  description: 'The name, slug, or term ID for the menu'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'Taxonomy of the term to be added'
                ),
                Arg(
                  name: 'term-id',
                  description: 'Term ID of the term to be added'
                )
              ],
              options: [
                Option(
                  name: '--title',
                  description: 'Set a custom title for the menu item',
                  args: [
                    Arg(
                    name: 'titl'
                  )
                  ]
                ),
                Option(
                  name: '--link',
                  description: 'Set a custom url for the menu item',
                  args: [
                    Arg(
                    name: 'lin'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Set a custom description for the menu item',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--attr-title',
                  description: 'Set a custom title attribute for the menu item',
                  args: [
                    Arg(
                    name: 'attr-titl'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'Set a custom link target for the menu item',
                  args: [
                    Arg(
                    name: 'targe'
                  )
                  ]
                ),
                Option(
                  name: '--classes',
                  description: 'Set a custom link classes for the menu item',
                  args: [
                    Arg(
                    name: 'classe'
                  )
                  ]
                ),
                Option(
                  name: '--position',
                  description: 'Specify the position of this menu item',
                  args: [
                    Arg(
                    name: 'positio'
                  )
                  ]
                ),
                Option(
                  name: '--parent-id',
                  description: 'Make this menu item a child of another menu item',
                  args: [
                    Arg(
                    name: 'parent-i'
                  )
                  ]
                ),
                Option(
                  name: '--porcelain',
                  description: 'Output just the new menu item id'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes one or more items from a menu',
              args: [
                Arg(
                name: 'db-id',
                description: 'Database ID for the menu item(s)'
              )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Gets a list of items associated with a menu',
              args: [
                Arg(
                name: 'menu',
                description: 'The name, slug, or term ID for the menu'
              )
              ],
              options: [
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific object fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a menu item',
              args: [
                Arg(
                name: 'db-id',
                description: 'Database ID for the menu item'
              )
              ],
              options: [
                Option(
                  name: '--title',
                  description: 'Set a custom title for the menu item',
                  args: [
                    Arg(
                    name: 'titl'
                  )
                  ]
                ),
                Option(
                  name: '--link',
                  description: 'Set a custom url for the menu item',
                  args: [
                    Arg(
                    name: 'lin'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Set a custom description for the menu item',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--attr-title',
                  description: 'Set a custom title attribute for the menu item',
                  args: [
                    Arg(
                    name: 'attr-titl'
                  )
                  ]
                ),
                Option(
                  name: '--target',
                  description: 'Set a custom link target for the menu item',
                  args: [
                    Arg(
                    name: 'targe'
                  )
                  ]
                ),
                Option(
                  name: '--classes',
                  description: 'Set a custom link classes for the menu item',
                  args: [
                    Arg(
                    name: 'classe'
                  )
                  ]
                ),
                Option(
                  name: '--position',
                  description: 'Specify the position of this menu item',
                  args: [
                    Arg(
                    name: 'positio'
                  )
                  ]
                ),
                Option(
                  name: '--parent-id',
                  description: 'Make this menu item a child of another menu item',
                  args: [
                    Arg(
                    name: 'parent-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of menus',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'location',
          description: 'Assigns, removes, and lists a menu’s locations',
          subcommands: [
            Subcommand(
              name: 'assign',
              description: 'Assigns a location to a menu',
              args: [
                Arg(
                  name: 'menu',
                  description: 'The name, slug, or term ID for the menu'
                ),
                Arg(
                  name: 'location',
                  description: 'Location’s slug'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists locations for the current theme',
              options: [
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes a location from a menu',
              args: [
                Arg(
                  name: 'menu',
                  description: 'The name, slug, or term ID for the menu'
                ),
                Arg(
                  name: 'location',
                  description: 'Location’s slug'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'network',
      description: 'Perform network-wide operations',
      options: [],
      subcommands: [
        Subcommand(
          name: 'meta',
          description: 'Gets, adds, updates, deletes, and lists network custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to create'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the meta field. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to delete'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Delete all meta for the object'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get meta field value',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all metadata associated with an object',
              args: [
                Arg(
                name: 'id',
                description: 'ID for the object'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'option',
      description: 'Retrieves and sets site options, including plugin and WordPress settings',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a new option value',
          args: [
            Arg(
              name: 'key',
              description: 'The name of the option to add'
            ),
            Arg(
              name: 'value',
              description: 'The value of the option to add. If omitted, the value is read from STDIN'
            )
          ],
          options: [
            Option(
              name: '--format',
              description: 'The serialization format for the value',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--autoload',
              description: 'Should this option be automatically loaded',
              args: [
                Arg(
                name: 'autoload',
                suggestions: [
                  FigSuggestion(
                    name: '\'yes\''
                  ),
                  FigSuggestion(
                    name: '\'no\''
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an option',
          args: [
            Arg(
            name: 'key',
            description: 'Key for the option'
          )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets the value for an option',
          args: [
            Arg(
            name: 'key',
            description: 'Key for the option'
          )
          ],
          options: [
            Option(
              name: '--format',
              description: 'Get value in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'var_export'
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists options and their values',
          options: [
            Option(
              name: '--search',
              description: 'Use wildcards ( * and ? ) to match option name',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--exclude',
              description: 'Pattern to exclude. Use wildcards ( * and ? ) to match option name',
              args: [
                Arg(
                name: 'exclud'
              )
              ]
            ),
            Option(
              name: '--autoload',
              description: 'Match only autoload options when value is on, and only not-autoload option when off',
              args: [
                Arg(
                name: 'autoloa'
              )
              ]
            ),
            Option(
              name: '--transients',
              description: 'List only transients. Use --no-transients to ignore all transients'
            ),
            Option(
              name: '--no-transients',
              description: 'List only transients. Use --no-transients to ignore all transients'
            ),
            Option(
              name: '--unserialize',
              description: 'Unserialize option values in output'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'The serialization format for the value. total_bytes displays the total size of matching options in bytes',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'total_bytes'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Set orderby which field',
              args: [
                Arg(
                name: 'fields',
                suggestions: [
                  FigSuggestion(
                    name: 'option_id'
                  ),
                  FigSuggestion(
                    name: 'option_name'
                  ),
                  FigSuggestion(
                    name: 'option_value'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Set ascending or descending order',
              args: [
                Arg(
                name: 'order',
                suggestions: [
                  FigSuggestion(
                    name: 'asc'
                  ),
                  FigSuggestion(
                    name: 'desc'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'patch',
          description: 'Updates a nested value in an option',
          args: [
            Arg(
              name: 'action',
              description: 'Patch action to perform',
              suggestions: [
                FigSuggestion(
                  name: 'insert'
                ),
                FigSuggestion(
                  name: 'update'
                ),
                FigSuggestion(
                  name: 'delete'
                )
              ]
            ),
            Arg(
              name: 'key',
              description: 'The option name'
            ),
            Arg(
              name: 'key-path',
              description: 'The name(s) of the keys within the value to locate the value to patch'
            ),
            Arg(
              name: 'value',
              description: 'The new value. If omitted, the value is read from STDIN'
            )
          ],
          options: [
            Option(
              name: '--format',
              description: 'The serialization format for the value',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pluck',
          description: 'Gets a nested value from an option',
          args: [
            Arg(
              name: 'key',
              description: 'The option name'
            ),
            Arg(
              name: 'key-path',
              description: 'The name(s) of the keys within the value to locate the value to pluck'
            )
          ],
          options: [
            Option(
              name: '--format',
              description: 'The output format for the value',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates an option value',
          args: [
            Arg(
              name: 'key',
              description: 'The name of the option to update'
            ),
            Arg(
              name: 'value',
              description: 'The new value. If omitted, the value is read from STDIN'
            )
          ],
          options: [
            Option(
              name: '--autoload',
              description: 'Requires WP 4.2. Should this option be automatically loaded',
              args: [
                Arg(
                name: 'autoload',
                suggestions: [
                  FigSuggestion(
                    name: '\'yes\''
                  ),
                  FigSuggestion(
                    name: '\'no'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'The serialization format for the value',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
                  ),
                  FigSuggestion(
                    name: 'json'
                  )
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'package',
      description: 'Lists, installs, and removes WP-CLI packages',
      options: [],
      subcommands: [
        Subcommand(
          name: 'browse',
          description: 'Browses WP-CLI packages available for installation',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
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
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Installs a WP-CLI package',
          args: [
            Arg(
            name: 'name|git|path|zip',
            description: 'Name, git URL, directory path, or .zip file for the package to install. Names can optionally include a version constraint (e.g. wp-cli/server-command:@stable)'
          )
          ],
          options: [
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists installed WP-CLI packages',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
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
            )
          ]
        ),
        Subcommand(
          name: 'path',
          description: 'Gets the path to an installed WP-CLI package, or the package directory',
          args: [
            Arg(
            name: 'name',
            template: 'folders',
            description: 'Name of the package to get the directory for'
          )
          ]
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Uninstalls a WP-CLI package',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the package to uninstall'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates all installed WP-CLI packages to their latest version'
        )
      ]
    ),
    Subcommand(
      name: 'plugin',
      description: 'Manages plugins, including installs, activations, and updates',
      options: [],
      subcommands: [
        Subcommand(
          name: 'activate',
          description: 'Activates one or more plugins',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to activate'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all plugins will be activated'
            ),
            Option(
              name: '--network',
              description: 'If set, the plugin will be activated for the entire multisite network'
            )
          ]
        ),
        Subcommand(
          name: 'auto-updates',
          description: 'Manages plugin auto-updates',
          subcommands: [
            Subcommand(
              name: 'disable',
              description: 'Disables the auto-updates for a plugin',
              args: [
                Arg(
                name: 'plugin',
                description: 'One or more plugins to disable auto-updates for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, auto-updates will be disabled for all plugins'
                ),
                Option(
                  name: '--enabled-only',
                  description: 'If set, filters list of plugins to only include the ones that have auto-updates enabled'
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enables the auto-updates for a plugin',
              args: [
                Arg(
                name: 'plugin',
                description: 'One or more plugins to enable auto-updates for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, auto-updates will be enabled for all plugins'
                ),
                Option(
                  name: '--disabled-only',
                  description: 'If set, filters list of plugins to only include the ones that have auto-updates disabled'
                )
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Shows the status of auto-updates for a plugin',
              args: [
                Arg(
                name: 'plugin',
                description: 'One or more plugins to show the status of the auto-updates of'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, the status of auto-updates for all plugins will be shown'
                ),
                Option(
                  name: '--enabled-only',
                  description: 'If set, filters list of plugins to only include the ones that have auto-updates enabled'
                ),
                Option(
                  name: '--disabled-only',
                  description: 'If set, filters list of plugins to only include the ones that have auto-updates disabled'
                ),
                Option(
                  name: '--field',
                  description: 'Only show the provided field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivates one or more plugins',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to deactivate'
          )
          ],
          options: [
            Option(
              name: '--uninstall',
              description: 'Uninstall the plugin after deactivation'
            ),
            Option(
              name: '--all',
              description: 'If set, all plugins will be deactivated'
            ),
            Option(
              name: '--network',
              description: 'If set, the plugin will be deactivated for the entire multisite network'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes plugin files without deactivating or uninstalling',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to delete'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all plugins will be deleted'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets details about an installed plugin',
          args: [
            Arg(
            name: 'plugin',
            description: 'The plugin to get'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole plugin, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Installs one or more plugins',
          args: [
            Arg(
            name: 'plugin|zip|url',
            description: 'One or more plugins to install. Accepts a plugin slug, the path to a local zip file, or a URL to a remote zip file'
          )
          ],
          options: [
            Option(
              name: '--version',
              description: 'If set, get that particular version from wordpress.org, instead of the stable version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'If set, the command will overwrite any installed version of the plugin, without prompting for confirmation'
            ),
            Option(
              name: '--activate',
              description: 'If set, the plugin will be activated immediately after install'
            ),
            Option(
              name: '--activate-network',
              description: 'If set, the plugin will be network activated immediately after installl'
            ),
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'is-active',
          description: 'Checks if a given plugin is active',
          args: [
            Arg(
            name: 'plugin',
            description: 'The plugin to check'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'If set, check if plugin is network-activated'
            )
          ]
        ),
        Subcommand(
          name: 'is-installed',
          description: 'Checks if a given plugin is installed',
          args: [
            Arg(
            name: 'plugin',
            description: 'The plugin to check'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of plugins',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Filter results based on the value of a field'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each plugin',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
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
              name: '--status',
              description: 'Filter the output by plugin status',
              args: [
                Arg(
                name: 'status',
                suggestions: [
                  FigSuggestion(
                    name: 'active'
                  ),
                  FigSuggestion(
                    name: 'active-network'
                  ),
                  FigSuggestion(
                    name: 'dropin'
                  ),
                  FigSuggestion(
                    name: 'inactive'
                  ),
                  FigSuggestion(
                    name: 'must-use'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'path',
          description: 'Gets the path to a plugin or to the plugin directory',
          args: [
            Arg(
            name: 'plugin',
            description: 'The plugin to get the path to. If not set, will return the path to the plugins directory'
          )
          ],
          options: [
            Option(
              name: '--dir',
              description: 'If set, get the path to the closest parent directory, instead of the plugin file'
            )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Searches the WordPress.org plugin directory',
          args: [
            Arg(
            name: 'search',
            description: 'The string to search for'
          )
          ],
          options: [
            Option(
              name: '--page',
              description: 'Optional page to display',
              args: [
                Arg(
                name: 'page',
                suggestions: [
                  FigSuggestion(
                    name: '1'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--per-page',
              description: 'Optional number of results to display',
              args: [
                Arg(
                name: 'per-page',
                suggestions: [
                  FigSuggestion(
                    name: '10'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each plugin',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Ask for specific fields from the API. Defaults to name,slug,author_profile,rating. Acceptable values:',
              args: [
                Arg(
                name: 'fields',
                suggestions: [
                  FigSuggestion(
                    name: 'name'
                  ),
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'version'
                  ),
                  FigSuggestion(
                    name: 'author'
                  ),
                  FigSuggestion(
                    name: 'author_profile'
                  ),
                  FigSuggestion(
                    name: 'contributors'
                  ),
                  FigSuggestion(
                    name: 'requires'
                  ),
                  FigSuggestion(
                    name: 'tested'
                  ),
                  FigSuggestion(
                    name: 'compatibility'
                  ),
                  FigSuggestion(
                    name: 'rating'
                  ),
                  FigSuggestion(
                    name: 'ratings'
                  ),
                  FigSuggestion(
                    name: 'num_ratings'
                  ),
                  FigSuggestion(
                    name: 'homepage'
                  ),
                  FigSuggestion(
                    name: 'description'
                  ),
                  FigSuggestion(
                    name: 'short_description'
                  ),
                  FigSuggestion(
                    name: 'sections'
                  ),
                  FigSuggestion(
                    name: 'downloaded'
                  ),
                  FigSuggestion(
                    name: 'last_updated'
                  ),
                  FigSuggestion(
                    name: 'added'
                  ),
                  FigSuggestion(
                    name: 'tags'
                  ),
                  FigSuggestion(
                    name: 'versions'
                  ),
                  FigSuggestion(
                    name: 'donate_link'
                  ),
                  FigSuggestion(
                    name: 'banners'
                  ),
                  FigSuggestion(
                    name: 'icons'
                  ),
                  FigSuggestion(
                    name: 'active_installs'
                  ),
                  FigSuggestion(
                    name: 'contributors'
                  ),
                  FigSuggestion(
                    name: 'url'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'plaintext'
                  ),
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
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
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Reveals the status of one or all plugins',
          args: [
            Arg(
            name: 'plugin',
            description: 'A particular plugin to show the status for'
          )
          ]
        ),
        Subcommand(
          name: 'toggle',
          description: 'Toggles a plugin’s activation state',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to toggle'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'If set, the plugin will be toggled for the entire multisite network'
            )
          ]
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Uninstalls one or more plugins',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to uninstall'
          )
          ],
          options: [
            Option(
              name: '--deactivate',
              description: 'Deactivate the plugin before uninstalling. Default behavior is to warn and skip if the plugin is active'
            ),
            Option(
              name: '--skip-delete',
              description: 'If set, the plugin files will not be deleted. Only the uninstall procedure will be run'
            ),
            Option(
              name: '--all',
              description: 'If set, all plugins will be uninstalled'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates one or more plugins',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to update'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all plugins that have updates will be updated'
            ),
            Option(
              name: '--exclude',
              description: 'Comma separated list of plugin names that should be excluded from updating',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--minor',
              description: 'Only perform updates for minor releases (e.g. from 1.3 to 1.4 instead of 2.0)'
            ),
            Option(
              name: '--patch',
              description: 'Only perform updates for patch releases (e.g. from 1.3 to 1.3.3 instead of 1.4)'
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'summary'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'If set, the plugin will be updated to the specified version'
            ),
            Option(
              name: '--dry-run',
              description: 'Preview which plugins would be updated'
            ),
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'verify-checksums',
          description: 'Verifies plugin files against WordPress.org’s checksums',
          args: [
            Arg(
            name: 'plugin',
            description: 'One or more plugins to verify'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all plugins will be verified'
            ),
            Option(
              name: '--strict',
              description: 'If set, even “soft changes” like readme.txt changes will trigger checksum errors'
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'count'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'post',
      description: 'Manages posts, content, and meta',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Creates a new post',
          args: [
            Arg(
            name: 'file',
            description: 'Read post content from <file>. If this value is present, the --post_content argument will be ignored. Passing - as the filename will cause post content to be read from STDIN'
          )
          ],
          options: [
            Option(
              name: '--post_author',
              description: 'The ID of the user who added the post. Default is the current user ID',
              args: [
                Arg(
                name: 'post_autho'
              )
              ]
            ),
            Option(
              name: '--post_date',
              description: 'The date of the post. Default is the current time',
              args: [
                Arg(
                name: 'post_dat'
              )
              ]
            ),
            Option(
              name: '--post_date_gmt',
              description: 'The date of the post in the GMT timezone. Default is the value of \$post_date',
              args: [
                Arg(
                name: 'post_date_gm'
              )
              ]
            ),
            Option(
              name: '--post_content',
              description: 'The post content. Default empty',
              args: [
                Arg(
                name: 'post_conten'
              )
              ]
            ),
            Option(
              name: '--post_content_filtered',
              description: 'The filtered post content. Default empty',
              args: [
                Arg(
                name: 'post_content_filtere'
              )
              ]
            ),
            Option(
              name: '--post_title',
              description: 'The post title. Default empty',
              args: [
                Arg(
                name: 'post_titl'
              )
              ]
            ),
            Option(
              name: '--post_excerpt',
              description: 'The post excerpt. Default empty',
              args: [
                Arg(
                name: 'post_excerp'
              )
              ]
            ),
            Option(
              name: '--post_status',
              description: 'The post status. Default ‘draft’',
              args: [
                Arg(
                name: 'post_statu'
              )
              ]
            ),
            Option(
              name: '--post_type',
              description: 'The post type. Default ‘post’',
              args: [
                Arg(
                name: 'post_typ'
              )
              ]
            ),
            Option(
              name: '--comment_status',
              description: 'Whether the post can accept comments. Accepts ‘open’ or ‘closed’. Default is the value of ‘default_comment_status’ option',
              args: [
                Arg(
                name: 'comment_status',
                suggestions: [
                  FigSuggestion(
                    name: '\'open\''
                  ),
                  FigSuggestion(
                    name: '\'closed'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--ping_status',
              description: 'Whether the post can accept pings. Accepts ‘open’ or ‘closed’. Default is the value of ‘default_ping_status’ option',
              args: [
                Arg(
                name: 'ping_status',
                suggestions: [
                  FigSuggestion(
                    name: '\'open\''
                  ),
                  FigSuggestion(
                    name: '\'closed'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_password',
              description: 'The password to access the post. Default empty',
              args: [
                Arg(
                name: 'post_passwor'
              )
              ]
            ),
            Option(
              name: '--post_name',
              description: 'The post name. Default is the sanitized post title when creating a new post',
              args: [
                Arg(
                name: 'post_nam'
              )
              ]
            ),
            Option(
              name: '--from-post',
              description: 'Post id of a post to be duplicated',
              args: [
                Arg(
                name: 'post_i'
              )
              ]
            ),
            Option(
              name: '--to_ping',
              description: 'Space or carriage return-separated list of URLs to ping. Default empty',
              args: [
                Arg(
                name: 'to_pin'
              )
              ]
            ),
            Option(
              name: '--pinged',
              description: 'Space or carriage return-separated list of URLs that have been pinged. Default empty',
              args: [
                Arg(
                name: 'pinge'
              )
              ]
            ),
            Option(
              name: '--post_modified',
              description: 'The date when the post was last modified. Default is the current time',
              args: [
                Arg(
                name: 'post_modifie'
              )
              ]
            ),
            Option(
              name: '--post_modified_gmt',
              description: 'The date when the post was last modified in the GMT timezone. Default is the current time',
              args: [
                Arg(
                name: 'post_modified_gm'
              )
              ]
            ),
            Option(
              name: '--post_parent',
              description: 'Set this for the post it belongs to, if any. Default 0',
              args: [
                Arg(
                name: 'post_parent',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--menu_order',
              description: 'The order the post should be displayed in. Default 0',
              args: [
                Arg(
                name: 'menu_order',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_mime_type',
              description: 'The mime type of the post. Default empty',
              args: [
                Arg(
                name: 'post_mime_typ'
              )
              ]
            ),
            Option(
              name: '--guid',
              description: 'Global Unique ID for referencing the post. Default empty',
              args: [
                Arg(
                name: 'gui'
              )
              ]
            ),
            Option(
              name: '--post_category',
              description: 'Array of category names, slugs, or IDs. Defaults to value of the ‘default_category’ option',
              args: [
                Arg(
                name: 'post_categor'
              )
              ]
            ),
            Option(
              name: '--tags_input',
              description: 'Array of tag names, slugs, or IDs. Default empty',
              args: [
                Arg(
                name: 'tags_inpu'
              )
              ]
            ),
            Option(
              name: '--tax_input',
              description: 'Array of taxonomy terms keyed by their taxonomy name. Default empty',
              args: [
                Arg(
                name: 'tax_inpu'
              )
              ]
            ),
            Option(
              name: '--meta_input',
              description: 'Array in JSON format of post meta values keyed by their post meta key. Default empty',
              args: [
                Arg(
                name: 'meta_inpu'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Associative args for the new post. See wp_insert_post()'
            ),
            Option(
              name: '--edit',
              description: 'Immediately open system’s editor to write or edit post content. If content is read from a file, from STDIN, or from the --post_content argument, that text will be loaded into the editor'
            ),
            Option(
              name: '--porcelain',
              description: 'Output just the new post id'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing post',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of posts to delete'
          )
          ],
          options: [
            Option(
              name: '--force',
              description: 'Skip the trash bin'
            ),
            Option(
              name: '--defer-term-counting',
              description: 'Recalculate term count in batch, for a performance boost'
            )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Launches system editor to edit post content',
          args: [
            Arg(
            name: 'id',
            description: 'The ID of the post to edit'
          )
          ]
        ),
        Subcommand(
          name: 'exists',
          description: 'Verifies whether a post exists',
          args: [
            Arg(
            name: 'id',
            description: 'The ID of the post to check'
          )
          ]
        ),
        Subcommand(
          name: 'generate',
          description: 'Generates some posts',
          options: [
            Option(
              name: '--count',
              description: 'How many posts to generate?',
              args: [
                Arg(
                name: 'number',
                suggestions: [
                  FigSuggestion(
                    name: '100'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_type',
              description: 'The type of the generated posts',
              args: [
                Arg(
                name: 'type',
                suggestions: [
                  FigSuggestion(
                    name: 'post'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_status',
              description: 'The status of the generated posts',
              args: [
                Arg(
                name: 'status',
                suggestions: [
                  FigSuggestion(
                    name: 'publish'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_title',
              description: 'The post title',
              args: [
                Arg(
                name: 'post_titl'
              )
              ]
            ),
            Option(
              name: '--post_author',
              description: 'The author of the generated posts',
              args: [
                Arg(
                name: 'logi'
              )
              ]
            ),
            Option(
              name: '--post_date',
              description: 'The date of the generated posts. Default: current date',
              args: [
                Arg(
                name: 'yyyy-mm-dd-hh-ii-s'
              )
              ]
            ),
            Option(
              name: '--post_date_gmt',
              description: 'The GMT date of the generated posts. Default: value of post_date (or current date if it’s not set)',
              args: [
                Arg(
                name: 'yyyy-mm-dd-hh-ii-s'
              )
              ]
            ),
            Option(
              name: '--post_content',
              description: 'If set, the command reads the post_content from STDIN'
            ),
            Option(
              name: '--max_depth',
              description: 'For hierarchical post types, generate child posts down to a certain depth',
              args: [
                Arg(
                name: 'number',
                suggestions: [
                  FigSuggestion(
                    name: '1'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'progress'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets details about a post',
          args: [
            Arg(
            name: 'id',
            description: 'The ID of the post to get'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole post, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of posts',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'One or more args to pass to WP_Query'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each post',
              args: [
                Arg(
                name: 'fields',
                suggestions: [
                  FigSuggestion(
                    name: 'ID'
                  ),
                  FigSuggestion(
                    name: 'post_title'
                  ),
                  FigSuggestion(
                    name: 'post_name'
                  ),
                  FigSuggestion(
                    name: 'post_date'
                  ),
                  FigSuggestion(
                    name: 'post_status'
                  ),
                  FigSuggestion(
                    name: 'post_author'
                  ),
                  FigSuggestion(
                    name: 'post_date_gmt'
                  ),
                  FigSuggestion(
                    name: 'post_content'
                  ),
                  FigSuggestion(
                    name: 'post_excerpt'
                  ),
                  FigSuggestion(
                    name: 'comment_status'
                  ),
                  FigSuggestion(
                    name: 'ping_status'
                  ),
                  FigSuggestion(
                    name: 'post_password'
                  ),
                  FigSuggestion(
                    name: 'to_ping'
                  ),
                  FigSuggestion(
                    name: 'pinged'
                  ),
                  FigSuggestion(
                    name: 'post_modified'
                  ),
                  FigSuggestion(
                    name: 'post_modified_gmt'
                  ),
                  FigSuggestion(
                    name: 'post_content_filtered'
                  ),
                  FigSuggestion(
                    name: 'post_parent'
                  ),
                  FigSuggestion(
                    name: 'guid'
                  ),
                  FigSuggestion(
                    name: 'menu_order'
                  ),
                  FigSuggestion(
                    name: 'post_type'
                  ),
                  FigSuggestion(
                    name: 'post_mime_type'
                  ),
                  FigSuggestion(
                    name: 'comment_count'
                  ),
                  FigSuggestion(
                    name: 'filter'
                  ),
                  FigSuggestion(
                    name: 'url'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'fields',
                suggestions: [
                  FigSuggestion(
                    name: 'ID'
                  ),
                  FigSuggestion(
                    name: 'post_title'
                  ),
                  FigSuggestion(
                    name: 'post_name'
                  ),
                  FigSuggestion(
                    name: 'post_date'
                  ),
                  FigSuggestion(
                    name: 'post_status'
                  ),
                  FigSuggestion(
                    name: 'post_author'
                  ),
                  FigSuggestion(
                    name: 'post_date_gmt'
                  ),
                  FigSuggestion(
                    name: 'post_content'
                  ),
                  FigSuggestion(
                    name: 'post_excerpt'
                  ),
                  FigSuggestion(
                    name: 'comment_status'
                  ),
                  FigSuggestion(
                    name: 'ping_status'
                  ),
                  FigSuggestion(
                    name: 'post_password'
                  ),
                  FigSuggestion(
                    name: 'to_ping'
                  ),
                  FigSuggestion(
                    name: 'pinged'
                  ),
                  FigSuggestion(
                    name: 'post_modified'
                  ),
                  FigSuggestion(
                    name: 'post_modified_gmt'
                  ),
                  FigSuggestion(
                    name: 'post_content_filtered'
                  ),
                  FigSuggestion(
                    name: 'post_parent'
                  ),
                  FigSuggestion(
                    name: 'guid'
                  ),
                  FigSuggestion(
                    name: 'menu_order'
                  ),
                  FigSuggestion(
                    name: 'post_type'
                  ),
                  FigSuggestion(
                    name: 'post_mime_type'
                  ),
                  FigSuggestion(
                    name: 'comment_count'
                  ),
                  FigSuggestion(
                    name: 'filter'
                  ),
                  FigSuggestion(
                    name: 'url'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'meta',
          description: 'Adds, updates, deletes, and lists post custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to create'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the meta field. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to delete'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Delete all meta for the object'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get meta field value',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all metadata associated with an object',
              args: [
                Arg(
                name: 'id',
                description: 'ID for the object'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'term',
          description: 'Adds, updates, removes, and lists post terms',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a term to an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the taxonomy type to be added'
                ),
                Arg(
                  name: 'term',
                  description: 'The slug of the term or terms to be added'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all terms associated with an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'One or more taxonomies to list'
                )
              ],
              options: [
                Option(
                  name: '--field',
                  description: 'Prints the value of a single field for each term',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'term_id'
                      ),
                      FigSuggestion(
                        name: 'name'
                      ),
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'taxonomy'
                      ),
                      FigSuggestion(
                        name: 'term_taxonomy_id'
                      ),
                      FigSuggestion(
                        name: 'description'
                      ),
                      FigSuggestion(
                        name: 'term_group'
                      ),
                      FigSuggestion(
                        name: 'parent'
                      ),
                      FigSuggestion(
                        name: 'count'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'term_id'
                      ),
                      FigSuggestion(
                        name: 'name'
                      ),
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'taxonomy'
                      ),
                      FigSuggestion(
                        name: 'term_taxonomy_id'
                      ),
                      FigSuggestion(
                        name: 'description'
                      ),
                      FigSuggestion(
                        name: 'term_group'
                      ),
                      FigSuggestion(
                        name: 'parent'
                      ),
                      FigSuggestion(
                        name: 'count'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a term from an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the term’s taxonomy'
                ),
                Arg(
                  name: 'term',
                  description: 'The name of the term or terms to be removed from the object'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--all',
                  description: 'Remove all terms from the object'
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Set object terms',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the taxonomy type to be updated'
                ),
                Arg(
                  name: 'term',
                  description: 'The slug of the term or terms to be updated'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates one or more existing posts',
          args: [
            Arg(
              name: 'id',
              description: 'One or more IDs of posts to update'
            ),
            Arg(
              name: 'file',
              description: 'One or more fields to update. See wp_insert_post()'
            )
          ],
          options: [
            Option(
              name: '--post_author',
              description: 'The ID of the user who added the post. Default is the current user ID',
              args: [
                Arg(
                name: 'post_autho'
              )
              ]
            ),
            Option(
              name: '--post_date',
              description: 'The date of the post. Default is the current time',
              args: [
                Arg(
                name: 'post_dat'
              )
              ]
            ),
            Option(
              name: '--post_date_gmt',
              description: 'The date of the post in the GMT timezone. Default is the value of \$post_date',
              args: [
                Arg(
                name: 'post_date_gm'
              )
              ]
            ),
            Option(
              name: '--post_content',
              description: 'The post content. Default empty',
              args: [
                Arg(
                name: 'post_conten'
              )
              ]
            ),
            Option(
              name: '--post_content_filtered',
              description: 'The filtered post content. Default empty',
              args: [
                Arg(
                name: 'post_content_filtere'
              )
              ]
            ),
            Option(
              name: '--post_title',
              description: 'The post title. Default empty',
              args: [
                Arg(
                name: 'post_titl'
              )
              ]
            ),
            Option(
              name: '--post_excerpt',
              description: 'The post excerpt. Default empty',
              args: [
                Arg(
                name: 'post_excerp'
              )
              ]
            ),
            Option(
              name: '--post_status',
              description: 'The post status. Default ‘draft’',
              args: [
                Arg(
                name: 'post_statu'
              )
              ]
            ),
            Option(
              name: '--post_type',
              description: 'The post type. Default ‘post’',
              args: [
                Arg(
                name: 'post_typ'
              )
              ]
            ),
            Option(
              name: '--comment_status',
              description: 'Whether the post can accept comments. Accepts ‘open’ or ‘closed’. Default is the value of ‘default_comment_status’ option',
              args: [
                Arg(
                name: 'comment_status',
                suggestions: [
                  FigSuggestion(
                    name: '\'open\''
                  ),
                  FigSuggestion(
                    name: '\'closed'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--ping_status',
              description: 'Whether the post can accept pings. Accepts ‘open’ or ‘closed’. Default is the value of ‘default_ping_status’ option',
              args: [
                Arg(
                name: 'ping_status',
                suggestions: [
                  FigSuggestion(
                    name: '\'open\''
                  ),
                  FigSuggestion(
                    name: '\'closed'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_password',
              description: 'The password to access the post. Default empty',
              args: [
                Arg(
                name: 'post_passwor'
              )
              ]
            ),
            Option(
              name: '--post_name',
              description: 'The post name. Default is the sanitized post title when creating a new post',
              args: [
                Arg(
                name: 'post_nam'
              )
              ]
            ),
            Option(
              name: '--to_ping',
              description: 'Space or carriage return-separated list of URLs to ping. Default empty',
              args: [
                Arg(
                name: 'to_pin'
              )
              ]
            ),
            Option(
              name: '--pinged',
              description: 'Space or carriage return-separated list of URLs that have been pinged. Default empty',
              args: [
                Arg(
                name: 'pinge'
              )
              ]
            ),
            Option(
              name: '--post_modified',
              description: 'The date when the post was last modified. Default is the current time',
              args: [
                Arg(
                name: 'post_modifie'
              )
              ]
            ),
            Option(
              name: '--post_modified_gmt',
              description: 'The date when the post was last modified in the GMT timezone. Default is the current time',
              args: [
                Arg(
                name: 'post_modified_gm'
              )
              ]
            ),
            Option(
              name: '--post_parent',
              description: 'Set this for the post it belongs to, if any. Default 0',
              args: [
                Arg(
                name: 'post_parent',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--menu_order',
              description: 'The order the post should be displayed in. Default 0',
              args: [
                Arg(
                name: 'menu_order',
                suggestions: [
                  FigSuggestion(
                    name: '0'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--post_mime_type',
              description: 'The mime type of the post. Default empty',
              args: [
                Arg(
                name: 'post_mime_typ'
              )
              ]
            ),
            Option(
              name: '--guid',
              description: 'Global Unique ID for referencing the post. Default empty',
              args: [
                Arg(
                name: 'gui'
              )
              ]
            ),
            Option(
              name: '--post_category',
              description: 'Array of category names, slugs, or IDs. Defaults to value of the ‘default_category’ option',
              args: [
                Arg(
                name: 'post_categor'
              )
              ]
            ),
            Option(
              name: '--tags_input',
              description: 'Array of tag names, slugs, or IDs. Default empty',
              args: [
                Arg(
                name: 'tags_inpu'
              )
              ]
            ),
            Option(
              name: '--tax_input',
              description: 'Array of taxonomy terms keyed by their taxonomy name. Default empty',
              args: [
                Arg(
                name: 'tax_inpu'
              )
              ]
            ),
            Option(
              name: '--meta_input',
              description: 'Array in JSON format of post meta values keyed by their post meta key. Default empty',
              args: [
                Arg(
                name: 'meta_inpu'
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'One or more fields to update. See wp_insert_post()'
            ),
            Option(
              name: '--defer-term-counting',
              description: 'Recalculate term count in batch, for a performance boost'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'post-type',
      description: 'Retrieves details on the site’s registered post types',
      options: [],
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Gets details about a registered post type',
          args: [
            Arg(
            name: 'post-type',
            description: 'Post type slug'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole taxonomy, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists registered post types',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Filter by one or more fields (see get_post_types() first parameter for a list of available fields)'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each post type',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific post type fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'profile',
      description: '',
      options: [],
      subcommands: [
        Subcommand(
          name: 'eval',
          description: 'Profile arbitrary code execution',
          args: [
            Arg(
            name: 'php-code',
            description: 'The code to execute, as a string'
          )
          ],
          options: [
            Option(
              name: '--hook',
              description: 'Focus on key metrics for all hooks, or callbacks on a specific hook',
              args: [
                Arg(
                name: 'hoo'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Display one or more fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Ascending or descending order',
              args: [
                Arg(
                name: 'order',
                suggestions: [
                  FigSuggestion(
                    name: 'ASC'
                  ),
                  FigSuggestion(
                    name: 'DESC'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order by fields',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'eval-file',
          description: 'Profile execution of an arbitrary file',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            description: 'The path to the PHP file to execute and profile'
          )
          ],
          options: [
            Option(
              name: '--hook',
              description: 'Focus on key metrics for all hooks, or callbacks on a specific hook',
              args: [
                Arg(
                name: 'hoo'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Display one or more fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Ascending or descending order',
              args: [
                Arg(
                name: 'order',
                suggestions: [
                  FigSuggestion(
                    name: 'ASC'
                  ),
                  FigSuggestion(
                    name: 'DESC'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order by fields',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'hook',
          description: 'Profile key metrics for WordPress hooks (actions and filters)',
          args: [
            Arg(
            name: 'hook',
            description: 'Drill into key metrics of callbacks on a specific WordPress hook'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'Profile callbacks for all WordPress hooks'
            ),
            Option(
              name: '--spotlight',
              description: 'Filter out logs with zero-ish values from the set'
            ),
            Option(
              name: '--url',
              description: 'Execute a request against a specified URL. Defaults to the home URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Display one or more fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Ascending or descending order',
              args: [
                Arg(
                name: 'order',
                suggestions: [
                  FigSuggestion(
                    name: 'ASC'
                  ),
                  FigSuggestion(
                    name: 'DESC'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order by fields',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stage',
          description: 'Profile each stage of the WordPress load process (bootstrap, main_query, template)',
          args: [
            Arg(
            name: 'stage',
            description: 'Drill down into a specific stage'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'Expand upon all stages'
            ),
            Option(
              name: '--spotlight',
              description: 'Filter out logs with zero-ish values from the set'
            ),
            Option(
              name: '--url',
              description: 'Execute a request against a specified URL. Defaults to the home URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Default is all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--order',
              description: 'Ascending or descending order',
              args: [
                Arg(
                name: 'order',
                suggestions: [
                  FigSuggestion(
                    name: 'asc'
                  ),
                  FigSuggestion(
                    name: 'desc'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--orderby',
              description: 'Order by fields',
              args: [
                Arg(
                name: 'orderb'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rewrite',
      description: 'Lists or flushes the site’s rewrite rules, updates the permalink structure',
      options: [],
      subcommands: [
        Subcommand(
          name: 'flush',
          description: 'Flushes rewrite rules',
          options: [
            Option(
              name: '--hard',
              description: 'Perform a hard flush – update .htaccess rules as well as rewrite rules in database. Works only on single site installs'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of the current rewrite rules',
          options: [
            Option(
              name: '--match',
              description: 'Show rewrite rules matching a particular URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--source',
              description: 'Show rewrite rules from a particular source',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to match,query,source',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'structure',
          description: 'Updates the permalink structure',
          args: [
            Arg(
            name: 'permastruct',
            description: 'The new permalink structure to apply'
          )
          ],
          options: [
            Option(
              name: '--category-base',
              description: 'Set the base for category permalinks, i.e. ‘/category/’',
              args: [
                Arg(
                name: 'bas'
              )
              ]
            ),
            Option(
              name: '--tag-base',
              description: 'Set the base for tag permalinks, i.e. ‘/tag/’',
              args: [
                Arg(
                name: 'bas'
              )
              ]
            ),
            Option(
              name: '--hard',
              description: 'Perform a hard flush – update .htaccess rules as well as rewrite rules in database. Works only on single site installs'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role',
      description: 'Manages user roles, including creating new roles and resetting to defaults',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Creates a new role',
          args: [
            Arg(
              name: 'role-key',
              description: 'The internal name of the role'
            ),
            Arg(
              name: 'role-name',
              description: 'The publicly visible name of the role'
            )
          ],
          options: [
            Option(
              name: '--clone',
              description: 'Clone capabilities from an existing role',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing role',
          args: [
            Arg(
            name: 'role-key',
            description: 'The internal name of the role'
          )
          ]
        ),
        Subcommand(
          name: 'exists',
          description: 'Checks if a role exists',
          args: [
            Arg(
            name: 'role-key',
            description: 'The internal name of the role'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all roles',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific row fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Resets any default role to default capabilities',
          args: [
            Arg(
            name: 'role-key',
            description: 'The internal name of one or more roles to reset'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all default roles will be reset'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scaffold',
      description: 'Generates code for post types, taxonomies, plugins, child themes, etc',
      options: [],
      subcommands: [
        Subcommand(
          name: 'block',
          description: 'Generates PHP, JS and CSS code for registering a Gutenberg block for a plugin or theme',
          args: [
            Arg(
            name: 'slug',
            description: 'The internal name of the block'
          )
          ],
          options: [
            Option(
              name: '--title',
              description: 'The display title for your block',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--dashicon',
              description: 'The dashicon to make it easier to identify your block',
              args: [
                Arg(
                name: 'dashico'
              )
              ]
            ),
            Option(
              name: '--category',
              description: 'The category name to help users browse and discover your block',
              args: [
                Arg(
                name: 'category',
                suggestions: [
                  FigSuggestion(
                    name: 'common'
                  ),
                  FigSuggestion(
                    name: 'embed'
                  ),
                  FigSuggestion(
                    name: 'formatting'
                  ),
                  FigSuggestion(
                    name: 'layout'
                  ),
                  FigSuggestion(
                    name: 'widgets'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--theme',
              description: 'Create files in the active theme directory. Specify a theme with --theme=<theme> to have the file placed in that theme'
            ),
            Option(
              name: '--plugin',
              description: 'Create files in the given plugin’s directory',
              args: [
                Arg(
                name: 'plugi'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'child-theme',
          description: 'Generates child theme based on an existing theme',
          args: [
            Arg(
            name: 'slug',
            description: 'The slug for the new child theme'
          )
          ],
          options: [
            Option(
              name: '--parent_theme',
              description: 'What to put in the ‘Template:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--theme_name',
              description: 'What to put in the ‘Theme Name:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'What to put in the ‘Author:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'full-nam'
              )
              ]
            ),
            Option(
              name: '--author_uri',
              description: 'What to put in the ‘Author URI:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--theme_uri',
              description: 'What to put in the ‘Theme URI:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--activate',
              description: 'Activate the newly created child theme'
            ),
            Option(
              name: '--enable-network',
              description: 'Enable the newly created child theme for the entire network'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'plugin',
          description: 'Generates starter code for a plugin',
          args: [
            Arg(
            name: 'slug',
            description: 'The internal name of the plugin'
          )
          ],
          options: [
            Option(
              name: '--dir',
              description: 'Put the new plugin in some arbitrary directory path. Plugin directory will be path plus supplied slug',
              args: [
                Arg(
                name: 'dirname',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--plugin_name',
              description: 'What to put in the ‘Plugin Name:’ header',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--plugin_description',
              description: 'What to put in the ‘Description:’ header',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--plugin_author',
              description: 'What to put in the ‘Author:’ header',
              args: [
                Arg(
                name: 'autho'
              )
              ]
            ),
            Option(
              name: '--plugin_author_uri',
              description: 'What to put in the ‘Author URI:’ header',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--plugin_uri',
              description: 'What to put in the ‘Plugin URI:’ header',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--skip-tests',
              description: 'Don’t generate files for unit testing'
            ),
            Option(
              name: '--ci',
              description: 'Choose a configuration file for a continuous integration provider',
              args: [
                Arg(
                name: 'provider',
                suggestions: [
                  FigSuggestion(
                    name: 'travis'
                  ),
                  FigSuggestion(
                    name: 'circle'
                  ),
                  FigSuggestion(
                    name: 'gitlab',
                    icon: 'fig://icon?type=gitlab'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--activate',
              description: 'Activate the newly created plugin'
            ),
            Option(
              name: '--enable-network',
              description: 'Network activate the newly generated plugin'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'plugin-tests',
          description: 'Generates files needed for running PHPUnit tests in a plugin',
          args: [
            Arg(
            name: 'plugin',
            description: 'The name of the plugin to generate test files for'
          )
          ],
          options: [
            Option(
              name: '--dir',
              description: 'Generate test files for a non-standard plugin path. If no plugin slug is specified, the directory name is used',
              args: [
                Arg(
                name: 'dirname',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--ci',
              description: 'Choose a configuration file for a continuous integration provider',
              args: [
                Arg(
                name: 'provider',
                suggestions: [
                  FigSuggestion(
                    name: 'travis'
                  ),
                  FigSuggestion(
                    name: 'circle'
                  ),
                  FigSuggestion(
                    name: 'gitlab',
                    icon: 'fig://icon?type=gitlab'
                  ),
                  FigSuggestion(
                    name: 'bitbucket'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'post-type',
          description: 'Generates PHP code for registering a custom post type',
          args: [
            Arg(
            name: 'slug',
            description: 'The internal name of the post type'
          )
          ],
          options: [
            Option(
              name: '--label',
              description: 'The text used to translate the update messages',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: '--textdomain',
              description: 'The textdomain to use for the labels',
              args: [
                Arg(
                name: 'textdomai'
              )
              ]
            ),
            Option(
              name: '--dashicon',
              description: 'The dashicon to use in the menu',
              args: [
                Arg(
                name: 'dashico'
              )
              ]
            ),
            Option(
              name: '--theme',
              description: 'Create a file in the active theme directory, instead of sending to STDOUT. Specify a theme with --theme=<theme> to have the file placed in that theme'
            ),
            Option(
              name: '--plugin',
              description: 'Create a file in the given plugin’s directory, instead of sending to STDOUT',
              args: [
                Arg(
                name: 'plugi'
              )
              ]
            ),
            Option(
              name: '--raw',
              description: 'Just generate the register_post_type() call and nothing else'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'taxonomy',
          description: 'Generates PHP code for registering a custom taxonomy',
          args: [
            Arg(
            name: 'slug',
            description: 'The internal name of taxonomy'
          )
          ],
          options: [
            Option(
              name: '--post_types',
              description: 'Post types to register for use with the taxonomy',
              args: [
                Arg(
                name: 'post_type'
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'The text used to translate the update messages',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: '--textdomain',
              description: 'The textdomain to use for the labels',
              args: [
                Arg(
                name: 'textdomai'
              )
              ]
            ),
            Option(
              name: '--theme',
              description: 'Create a file in the active theme directory, instead of sending to STDOUT. Specify a theme with --theme=<theme> to have the file placed in that theme'
            ),
            Option(
              name: '--plugin',
              description: 'Create a file in the given plugin’s directory, instead of sending to STDOUT',
              args: [
                Arg(
                name: 'plugi'
              )
              ]
            ),
            Option(
              name: '--raw',
              description: 'Just generate the register_taxonomy() call and nothing else'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'theme-tests',
          description: 'Generates files needed for running PHPUnit tests in a theme',
          args: [
            Arg(
            name: 'theme',
            description: 'The name of the theme to generate test files for'
          )
          ],
          options: [
            Option(
              name: '--dir',
              description: 'Generate test files for a non-standard theme path. If no theme slug is specified, the directory name is used',
              args: [
                Arg(
                name: 'dirname',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--ci',
              description: 'Choose a configuration file for a continuous integration provider',
              args: [
                Arg(
                name: 'provider',
                suggestions: [
                  FigSuggestion(
                    name: 'travis'
                  ),
                  FigSuggestion(
                    name: 'circle'
                  ),
                  FigSuggestion(
                    name: 'gitlab',
                    icon: 'fig://icon?type=gitlab'
                  ),
                  FigSuggestion(
                    name: 'bitbucket'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'underscores',
          description: 'Generates starter code for a theme based on _s',
          args: [
            Arg(
            name: 'slug',
            description: 'The slug for the new theme, used for prefixing functions'
          )
          ],
          options: [
            Option(
              name: '--activate',
              description: 'Activate the newly downloaded theme'
            ),
            Option(
              name: '--enable-network',
              description: 'Enable the newly downloaded theme for the entire network'
            ),
            Option(
              name: '--theme_name',
              description: 'What to put in the ‘Theme Name:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'What to put in the ‘Author:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'full-nam'
              )
              ]
            ),
            Option(
              name: '--author_uri',
              description: 'What to put in the ‘Author URI:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--sassify',
              description: 'Include stylesheets as SASS'
            ),
            Option(
              name: '--woocommerce',
              description: 'Include WooCommerce boilerplate files'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        ),
        Subcommand(
          name: '_s',
          description: 'Generates starter code for a theme based on _s',
          args: [
            Arg(
            name: 'slug',
            description: 'The slug for the new theme, used for prefixing functions'
          )
          ],
          options: [
            Option(
              name: '--activate',
              description: 'Activate the newly downloaded theme'
            ),
            Option(
              name: '--enable-network',
              description: 'Enable the newly downloaded theme for the entire network'
            ),
            Option(
              name: '--theme_name',
              description: 'What to put in the ‘Theme Name:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'What to put in the ‘Author:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'full-nam'
              )
              ]
            ),
            Option(
              name: '--author_uri',
              description: 'What to put in the ‘Author URI:’ header in ‘style.css’',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--sassify',
              description: 'Include stylesheets as SASS'
            ),
            Option(
              name: '--woocommerce',
              description: 'Include WooCommerce boilerplate files'
            ),
            Option(
              name: '--force',
              description: 'Overwrite files that already exist'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'search-replace',
      description: 'Searches/replaces strings in the database',
      args: [
        Arg(
          name: 'old',
          description: 'A string to search for within the database'
        ),
        Arg(
          name: 'new',
          description: 'Replace instances of the first string with this new string'
        ),
        Arg(
          name: 'table',
          description: 'List of database tables to restrict the replacement to. Wildcards are supported, e.g. \'wp_*options\' or \'wp_post*\''
        )
      ],
      options: [
        Option(
          name: '--dry-run',
          description: 'Run the entire search/replace operation and show report, but don’t save changes to the database'
        ),
        Option(
          name: '--network',
          description: 'Search/replace through all the tables registered to \$wpdb in a multisite install'
        ),
        Option(
          name: '--all-tables-with-prefix',
          description: 'Enable replacement on any tables that match the table prefix even if not registered on \$wpdb'
        ),
        Option(
          name: '--all-tables',
          description: 'Enable replacement on ALL tables in the database, regardless of the prefix, and even if not registered on \$wpdb. Overrides –network and –all-tables-with-prefix'
        ),
        Option(
          name: '--export',
          description: 'Write transformed data as SQL file instead of saving replacements to the database. If <file> is not supplied, will output to STDOUT',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--export_insert_size',
          description: 'Define number of rows in single INSERT statement when doing SQL export. You might want to change this depending on your database configuration (e.g. if you need to do fewer queries). Default: 50',
          args: [
            Arg(
            name: 'rows',
            suggestions: [
              FigSuggestion(
                name: '50'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--skip-tables',
          description: 'Do not perform the replacement on specific tables. Use commas to specify multiple tables. Wildcards are supported, e.g. \'wp_*options\' or \'wp_post*\'',
          args: [
            Arg(
            name: 'table'
          )
          ]
        ),
        Option(
          name: '--skip-columns',
          description: 'Do not perform the replacement on specific columns. Use commas to specify multiple columns',
          args: [
            Arg(
            name: 'column'
          )
          ]
        ),
        Option(
          name: '--include-columns',
          description: 'Perform the replacement on specific columns. Use commas to specify multiple columns',
          args: [
            Arg(
            name: 'column'
          )
          ]
        ),
        Option(
          name: '--precise',
          description: 'Force the use of PHP (instead of SQL) which is more thorough, but slower'
        ),
        Option(
          name: '--recurse-objects',
          description: 'Enable recursing into objects to replace strings. Defaults to true; pass –no-recurse-objects to disable'
        ),
        Option(
          name: '--no-recurse-objects',
          description: 'Enable recursing into objects to replace strings. Defaults to true; pass –no-recurse-objects to disable'
        ),
        Option(
          name: '--verbose',
          description: 'Prints rows to the console as they’re updated'
        ),
        Option(
          name: '--regex',
          description: 'Runs the search using a regular expression (without delimiters). Warning: search-replace will take about 15-20x longer when using –regex'
        ),
        Option(
          name: '--regex-flags',
          description: 'Pass PCRE modifiers to regex search-replace (e.g. ‘i’ for case-insensitivity)',
          args: [
            Arg(
            name: 'regex-flag'
          )
          ]
        ),
        Option(
          name: '--regex-delimiter',
          description: 'The delimiter to use for the regex. It must be escaped if it appears in the search string. The default value is the result of chr(1)',
          args: [
            Arg(
            name: 'regex-delimite'
          )
          ]
        ),
        Option(
          name: '--regex-limit',
          description: 'The maximum possible replacements for the regex per row (or per unserialized data bit per row). Defaults to -1 (no limit)',
          args: [
            Arg(
            name: 'regex-limi'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Render output in a particular format',
          args: [
            Arg(
            name: 'format',
            suggestions: [
              FigSuggestion(
                name: 'table'
              ),
              FigSuggestion(
                name: 'count'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--report',
          description: 'Produce report. Defaults to true'
        ),
        Option(
          name: '--report-changed-only',
          description: 'Report changed fields only. Defaults to false, unless logging, when it defaults to true'
        ),
        Option(
          name: '--log',
          description: 'Log the items changed. If <file> is not supplied or is “-“, will output to STDOUT. Warning: causes a significant slow down, similar or worse to enabling –precise or –regex',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: '--before_context',
          description: 'For logging, number of characters to display before the old match and the new replacement. Default 40. Ignored if not logging',
          args: [
            Arg(
            name: 'nu'
          )
          ]
        ),
        Option(
          name: '--after_context',
          description: 'For logging, number of characters to display after the old match and the new replacement. Default 40. Ignored if not logging',
          args: [
            Arg(
            name: 'nu'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'server',
      description: 'Launches PHP’s built-in web server for a specific WordPress installation',
      options: [
        Option(
          name: '--host',
          description: 'The hostname to bind the server to',
          args: [
            Arg(
            name: 'host',
            suggestions: [
              FigSuggestion(
                name: 'localhost'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The port number to bind the server to',
          args: [
            Arg(
            name: 'port',
            suggestions: [
              FigSuggestion(
                name: '8080'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--docroot',
          description: 'The path to use as the document root. If the path global parameter is set, the default value is it',
          args: [
            Arg(
            name: 'path',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Config the server with a specific .ini file',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Opens an interactive PHP console for running and testing PHP code',
      options: [
        Option(
          name: '--basic',
          description: 'Force the use of WP-CLI’s built-in PHP REPL, even if the Boris or PsySH PHP REPLs are available'
        )
      ]
    ),
    Subcommand(
      name: 'sidebar',
      description: 'Lists registered sidebars',
      options: [],
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Lists registered sidebars',
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific row fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'site',
      description: 'Creates, deletes, empties, moderates, and lists one or more sites on a multisite installation',
      options: [],
      subcommands: [
        Subcommand(
          name: 'activate',
          description: 'Activates one or more sites',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to activate'
          )
          ]
        ),
        Subcommand(
          name: 'archive',
          description: 'Archives one or more sites',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to archive'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Creates a site in a multisite installation',
          options: [
            Option(
              name: '--slug',
              description: 'Path for the new site. Subdomain on subdomain installs, directory on subdirectory installs',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--title',
              description: 'Title of the new site. Default: prettified slug',
              args: [
                Arg(
                name: 'titl'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'Email for Admin user. User will be created if none exists. Assignment to Super Admin if not included',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--network_id',
              description: 'Network to associate new site with. Defaults to current network (typically 1)',
              args: [
                Arg(
                name: 'network-i'
              )
              ]
            ),
            Option(
              name: '--private',
              description: 'If set, the new site will be non-public (not indexed)'
            ),
            Option(
              name: '--porcelain',
              description: 'If set, only the site id will be output on success'
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivates one or more sites',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to deactivate'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a site in a multisite installation',
          args: [
            Arg(
            name: 'site-id',
            description: 'The id of the site to delete. If not provided, you must set the –slug parameter'
          )
          ],
          options: [
            Option(
              name: '--slug',
              description: 'Path of the blog to be deleted. Subdomain on subdomain installs, directory on subdirectory installs',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to the confirmation message'
            ),
            Option(
              name: '--keep-tables',
              description: 'Delete the blog from the list, but don’t drop it’s tables'
            )
          ]
        ),
        Subcommand(
          name: 'empty',
          description: 'Empties a site of its content (posts, comments, terms, and meta)',
          options: [
            Option(
              name: '--uploads',
              description: 'Also delete all files in the site’s uploads directory'
            ),
            Option(
              name: '--yes',
              description: 'Proceed to empty the site without a confirmation prompt'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists all sites in a multisite installation',
          options: [
            Option(
              name: '--network',
              description: 'The network to which the sites belong',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'The serialization format for the value'
            ),
            Option(
              name: '--site_in',
              description: 'Only list the sites with these blog_id values (comma-separated)',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each site',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Comma-separated list of fields to show',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'ids'
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
            )
          ]
        ),
        Subcommand(
          name: 'mature',
          description: 'Sets one or more sites as mature',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to set as mature'
          )
          ]
        ),
        Subcommand(
          name: 'meta',
          description: 'Adds, updates, deletes, and lists site custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to create'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the meta field. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to delete'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Delete all meta for the object'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get meta field value',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all metadata associated with an object',
              args: [
                Arg(
                name: 'id',
                description: 'ID for the object'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id,meta_key,meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'option',
          description: 'Adds, updates, deletes, and lists site options in a multisite installation',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Adds a site option',
              args: [
                Arg(
                  name: 'key',
                  description: 'The name of the site option to add'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the site option to add. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a site option',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the site option'
              )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Gets a site option',
              args: [
                Arg(
                name: 'key',
                description: 'Key for the site option'
              )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists site options',
              options: [
                Option(
                  name: '--search',
                  description: 'Use wildcards ( * and ? ) to match option name',
                  args: [
                    Arg(
                    name: 'patter'
                  )
                  ]
                ),
                Option(
                  name: '--site_id',
                  description: 'Limit options to those of a particular site id',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--field',
                  description: 'Prints the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific object fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'The serialization format for the value. total_bytes displays the total size of matching options in bytes',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'total_bytes'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Updates a nested value in an option',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'key',
                  description: 'The option name'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Gets a nested value from an option',
              args: [
                Arg(
                  name: 'key',
                  description: 'The option name'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a site option',
              args: [
                Arg(
                  name: 'key',
                  description: 'The name of the site option to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'private',
          description: 'Sets one or more sites as private',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to set as private'
          )
          ]
        ),
        Subcommand(
          name: 'public',
          description: 'Sets one or more sites as public',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to set as public'
          )
          ]
        ),
        Subcommand(
          name: 'spam',
          description: 'Marks one or more sites as spam',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to set as spam'
          )
          ]
        ),
        Subcommand(
          name: 'switch-language',
          description: 'Activates a given language',
          args: [
            Arg(
            name: 'language',
            description: 'Language code to activate'
          )
          ]
        ),
        Subcommand(
          name: 'unarchive',
          description: 'Unarchives one or more sites',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to unarchive'
          )
          ]
        ),
        Subcommand(
          name: 'unmature',
          description: 'Sets one or more sites as immature',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to set as unmature'
          )
          ]
        ),
        Subcommand(
          name: 'unspam',
          description: 'Removes one or more sites from spam',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of sites to remove from spam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'super-admin',
      description: 'Lists, adds, or removes super admin users on a multisite installation',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Grants super admin privileges to one or more users',
          args: [
            Arg(
            name: 'user',
            description: 'One or more user IDs, user emails, or user logins'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists users with super admin capabilities',
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'list'
                  ),
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Removes super admin privileges from one or more users',
          args: [
            Arg(
            name: 'user',
            description: 'One or more user IDs, user emails, or user logins'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'taxonomy',
      description: 'Retrieves information about registered taxonomies',
      options: [],
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Gets details about a registered taxonomy',
          args: [
            Arg(
            name: 'taxonomy',
            description: 'Taxonomy slug'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole taxonomy, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists registered taxonomies',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Filter by one or more fields (see get_taxonomies() first parameter for a list of available fields)'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each taxonomy',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific taxonomy fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'term',
      description: 'Manages taxonomy terms and term meta, with create, delete, and list commands',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Creates a new term',
          args: [
            Arg(
              name: 'taxonomy',
              description: 'Taxonomy for the new term'
            ),
            Arg(
              name: 'term',
              description: 'A name for the new term'
            )
          ],
          options: [
            Option(
              name: '--slug',
              description: 'A unique slug for the new term. Defaults to sanitized version of name',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A description for the new term',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'A parent for the new term',
              args: [
                Arg(
                name: 'term-i'
              )
              ]
            ),
            Option(
              name: '--porcelain',
              description: 'Output just the new term id'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes an existing term',
          args: [
            Arg(
              name: 'taxonomy',
              description: 'Taxonomy of the term to delete'
            ),
            Arg(
              name: 'term',
              description: 'One or more IDs or slugs of terms to delete'
            )
          ],
          options: [
            Option(
              name: '--by',
              description: 'Explicitly handle the term value as a slug or id',
              args: [
                Arg(
                name: 'field',
                suggestions: [
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'id'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'generate',
          description: 'Generates some terms',
          args: [
            Arg(
            name: 'taxonomy',
            description: 'The taxonomy for the generated terms'
          )
          ],
          options: [
            Option(
              name: '--count',
              description: 'How many terms to generate?',
              args: [
                Arg(
                name: 'number',
                suggestions: [
                  FigSuggestion(
                    name: '100'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--max_depth',
              description: 'Generate child terms down to a certain depth',
              args: [
                Arg(
                name: 'number',
                suggestions: [
                  FigSuggestion(
                    name: '1'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'progress'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets details about a term',
          args: [
            Arg(
              name: 'taxonomy',
              description: 'Taxonomy of the term to get'
            ),
            Arg(
              name: 'term',
              description: 'ID or slug of term to get'
            )
          ],
          options: [
            Option(
              name: '--by',
              description: 'Explicitly handle the term value as a slug or id',
              args: [
                Arg(
                name: 'field',
                suggestions: [
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'id'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'Instead of returning the whole term, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Get value in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists terms in a taxonomy',
          args: [
            Arg(
            name: 'taxonomy',
            description: 'List terms of one or more taxonomies'
          )
          ],
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Filter by one or more fields (see get_terms() \$args parameter for a list of fields)'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each term',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'meta',
          description: 'Adds, updates, deletes, and lists term custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to create'
                ),
                Arg(
                  name: 'value',
                  description: 'The value of the meta field. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to delete'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Delete all meta for the object'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get meta field value',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Get value in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'var_export'
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all metadata associated with an object',
              args: [
                Arg(
                name: 'id',
                description: 'ID for the object'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id,meta_key,meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'migrate',
          description: 'Migrate a term of a taxonomy to another taxonomy',
          args: [
            Arg(
            name: 'term',
            description: 'Slug or ID of the term to migrate'
          )
          ],
          options: [
            Option(
              name: '--by',
              description: 'Explicitly handle the term value as a slug or id',
              args: [
                Arg(
                name: 'field',
                suggestions: [
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'id'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'Taxonomy slug of the term to migrate',
              args: [
                Arg(
                name: 'taxonom'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'Taxonomy slug to migrate to',
              args: [
                Arg(
                name: 'taxonom'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recount',
          description: 'Recalculates number of posts assigned to each term',
          args: [
            Arg(
            name: 'taxonomy',
            description: 'One or more taxonomies to recalculate'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates an existing term',
          args: [
            Arg(
              name: 'taxonomy',
              description: 'Taxonomy of the term to update'
            ),
            Arg(
              name: 'term',
              description: 'ID or slug for the term to update'
            )
          ],
          options: [
            Option(
              name: '--by',
              description: 'Explicitly handle the term value as a slug or id',
              args: [
                Arg(
                name: 'field',
                suggestions: [
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'id'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'A new name for the term',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--slug',
              description: 'A new slug for the term',
              args: [
                Arg(
                name: 'slu'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A new description for the term',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--parent',
              description: 'A new parent for the term',
              args: [
                Arg(
                name: 'term-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'theme',
      description: 'Manages themes, including installs, activations, and updates',
      options: [],
      subcommands: [
        Subcommand(
          name: 'activate',
          description: 'Activates a theme',
          args: [
            Arg(
            name: 'theme',
            description: 'The theme to activate'
          )
          ]
        ),
        Subcommand(
          name: 'auto-updates',
          description: 'Manages theme auto-updates',
          subcommands: [
            Subcommand(
              name: 'disable',
              description: 'Disables the auto-updates for a theme',
              args: [
                Arg(
                name: 'theme',
                description: 'One or more themes to disable auto-updates for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, auto-updates will be disabled for all themes'
                ),
                Option(
                  name: '--enabled-only',
                  description: 'If set, filters list of themes to only include the ones that have auto-updates enabled'
                )
              ]
            ),
            Subcommand(
              name: 'enable',
              description: 'Enables the auto-updates for a theme',
              args: [
                Arg(
                name: 'theme',
                description: 'One or more themes to enable auto-updates for'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, auto-updates will be enabled for all themes'
                ),
                Option(
                  name: '--enabled-only',
                  description: 'If set, filters list of themes to only include the ones that have auto-updates disabled'
                )
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Shows the status of auto-updates for a theme',
              args: [
                Arg(
                name: 'theme',
                description: 'One or more themes to show the status of the auto-updates of'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'If set, the status of auto-updates for all themes will be shown'
                ),
                Option(
                  name: '--enabled-only',
                  description: 'If set, filters list of themes to only include the ones that have auto-updates enabled'
                ),
                Option(
                  name: '--disabled-only',
                  description: 'If set, filters list of themes to only include the ones that have auto-updates disabled'
                ),
                Option(
                  name: '--field',
                  description: 'Only show the provided field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes one or more themes',
          args: [
            Arg(
            name: 'theme',
            description: 'One or more themes to delete'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all themes will be deleted except active theme'
            ),
            Option(
              name: '--force',
              description: 'To delete active theme use this'
            )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Disables a theme on a WordPress multisite install',
          args: [
            Arg(
            name: 'theme',
            description: 'The theme to disable'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'If set, the theme is disabled on the network level. Note that individual sites may still have this theme enabled if it was enabled for them independently'
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables a theme on a WordPress multisite install',
          args: [
            Arg(
            name: 'theme',
            description: 'The theme to enable'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'If set, the theme is enabled for the entire network'
            ),
            Option(
              name: '--activate',
              description: 'If set, the theme is activated for the current site. Note that the “network” flag has no influence on this'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets details about a theme',
          args: [
            Arg(
            name: 'theme',
            description: 'The theme to get'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole theme, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific fields. Defaults to all fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Installs one or more themes',
          args: [
            Arg(
            name: 'theme|zip|url',
            description: 'One or more themes to install. Accepts a theme slug, the path to a local zip file, or a URL to a remote zip file'
          )
          ],
          options: [
            Option(
              name: '--version',
              description: 'If set, get that particular version from wordpress.org, instead of the stable version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'If set, the command will overwrite any installed version of the theme, without prompting for confirmation'
            ),
            Option(
              name: '--activate',
              description: 'If set, the theme is activated for the current site. Note that the “network” flag has no influence on this'
            ),
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        ),
        Subcommand(
          name: 'is-active',
          description: 'Checks if a given theme is active',
          args: [
            Arg(
            name: 'theme',
            description: 'The plugin to check'
          )
          ]
        ),
        Subcommand(
          name: 'is-installed',
          description: 'Checks if a given theme is installed',
          args: [
            Arg(
            name: 'theme',
            description: 'The plugin to check'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets a list of themes',
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Filter results based on the value of a field'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each theme',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Filter the output by theme status',
              args: [
                Arg(
                name: 'status',
                suggestions: [
                  FigSuggestion(
                    name: 'active'
                  ),
                  FigSuggestion(
                    name: 'parent'
                  ),
                  FigSuggestion(
                    name: 'inactive'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mod',
          description: 'Sets, gets, and removes theme mods',
          subcommands: [
            Subcommand(
              name: 'get',
              description: 'Gets one or more theme mods',
              args: [
                Arg(
                name: 'mod',
                description: 'One or more mods to get'
              )
              ],
              options: [
                Option(
                  name: '--field',
                  description: 'Returns the value of a single field'
                ),
                Option(
                  name: '--all',
                  description: 'List all theme mods'
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Gets a list of theme mods',
              options: [
                Option(
                  name: '--field',
                  description: 'Returns the value of a single field',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes one or more theme mods',
              args: [
                Arg(
                name: 'mod',
                description: 'One or more mods to remove'
              )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Remove all theme mods'
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Sets the value of a theme mod',
              args: [
                Arg(
                  name: 'mod',
                  description: 'The name of the theme mod to set or update'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'path',
          description: 'Gets the path to a theme or to the theme directory',
          args: [
            Arg(
            name: 'theme',
            description: 'The theme to get the path to. Path includes “style.css” file. If not set, will return the path to the themes directory'
          )
          ],
          options: [
            Option(
              name: '--dir',
              description: 'If set, get the path to the closest parent directory, instead of the theme’s “style.css” file'
            )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Searches the WordPress.org theme directory',
          args: [
            Arg(
            name: 'search',
            description: 'The string to search for'
          )
          ],
          options: [
            Option(
              name: '--page',
              description: 'Optional page to display',
              args: [
                Arg(
                name: 'page',
                suggestions: [
                  FigSuggestion(
                    name: '1'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--per-page',
              description: 'Optional number of results to display. Defaults to 10',
              args: [
                Arg(
                name: 'per-page',
                suggestions: [
                  FigSuggestion(
                    name: '10'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each theme',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Ask for specific fields from the API. Defaults to name,slug,author,rating',
              args: [
                Arg(
                name: 'fields',
                suggestions: [
                  FigSuggestion(
                    name: 'name'
                  ),
                  FigSuggestion(
                    name: 'slug'
                  ),
                  FigSuggestion(
                    name: 'version'
                  ),
                  FigSuggestion(
                    name: 'author'
                  ),
                  FigSuggestion(
                    name: 'preview_url'
                  ),
                  FigSuggestion(
                    name: 'screenshot_url'
                  ),
                  FigSuggestion(
                    name: 'rating'
                  ),
                  FigSuggestion(
                    name: 'num_ratings'
                  ),
                  FigSuggestion(
                    name: 'homepage'
                  ),
                  FigSuggestion(
                    name: 'description'
                  ),
                  FigSuggestion(
                    name: 'url'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Reveals the status of one or all themes',
          args: [
            Arg(
            name: 'theme',
            description: 'A particular theme to show the status for'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates one or more themes',
          args: [
            Arg(
            name: 'theme',
            description: 'One or more themes to update'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all themes that have updates will be updated'
            ),
            Option(
              name: '--exclude',
              description: 'Comma separated list of theme names that should be excluded from updating',
              args: [
                Arg(
                name: 'theme-name'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'summary'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'If set, the theme will be updated to the specified version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Preview which themes would be updated'
            ),
            Option(
              name: '--insecure',
              description: 'Retry downloads without certificate validation if TLS handshake fails. Note: This makes the request vulnerable to a MITM attack'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'transient',
      description: 'Adds, gets, and deletes entries in the WordPress Transient Cache',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Deletes a transient value',
          args: [
            Arg(
            name: 'key',
            description: 'Key for the transient'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'Delete the value of a network|site transient. On single site, this is a specially-named cache key. On multisite, this is a global cache (instead of local to the site)'
            ),
            Option(
              name: '--all',
              description: 'Delete all transients'
            ),
            Option(
              name: '--expired',
              description: 'Delete all expired transients'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets a transient value',
          args: [
            Arg(
            name: 'key',
            description: 'Key for the transient'
          )
          ],
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
              name: '--network',
              description: 'Get the value of a network|site transient. On single site, this is a specially-named cache key. On multisite, this is a global cache (instead of local to the site)'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists transients and their values',
          options: [
            Option(
              name: '--search',
              description: 'Use wildcards ( * and ? ) to match transient name',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: '--exclude',
              description: 'Pattern to exclude. Use wildcards ( * and ? ) to match transient name',
              args: [
                Arg(
                name: 'patter'
              )
              ]
            ),
            Option(
              name: '--network',
              description: 'Get the values of network|site transients. On single site, this is a specially-named cache key. On multisite, this is a global cache (instead of local to the site)'
            ),
            Option(
              name: '--unserialize',
              description: 'Unserialize transient values in output'
            ),
            Option(
              name: '--human-readable',
              description: 'Human-readable output for expirations'
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets a transient value',
          args: [
            Arg(
              name: 'key',
              description: 'Key for the transient'
            ),
            Arg(
              name: 'value',
              description: 'Value to be set for the transient'
            ),
            Arg(
              name: 'expiration',
              description: 'Time until expiration, in seconds'
            )
          ],
          options: [
            Option(
              name: '--network',
              description: 'Set the value of a network|site transient. On single site, this is a specially-named cache key. On multisite, this is a global cache (instead of local to the site)'
            )
          ]
        ),
        Subcommand(
          name: 'type',
          description: 'Determines the type of transients implementation'
        )
      ]
    ),
    Subcommand(
      name: 'user',
      description: 'Manages users, along with their roles, capabilities, and meta',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add-cap',
          description: 'Adds a capability to a user',
          args: [
            Arg(
              name: 'user',
              description: 'User ID, user email, or user login'
            ),
            Arg(
              name: 'cap',
              description: 'The capability to add'
            )
          ]
        ),
        Subcommand(
          name: 'add-role',
          description: 'Adds a role for a user',
          args: [
            Arg(
              name: 'user',
              description: 'User ID, user email, or user login'
            ),
            Arg(
              name: 'role',
              description: 'Add the specified role to the user'
            )
          ]
        ),
        Subcommand(
          name: 'check-password',
          description: 'Checks if a user’s password is valid or not',
          args: [
            Arg(
              name: 'user',
              description: 'The user login, user email or user ID of the user to check credentials for'
            ),
            Arg(
              name: 'user_pass',
              description: 'A string that contains the plain text password for the user'
            )
          ],
          options: [
            Option(
              name: '--escape-chars',
              description: 'Escape password with wp_slash() to mimic the same behavior as wp-login.php'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Creates a new user',
          args: [
            Arg(
              name: 'user-login',
              description: 'The login of the user to create'
            ),
            Arg(
              name: 'user-email',
              description: 'The email address of the user to create'
            )
          ],
          options: [
            Option(
              name: '--role',
              description: 'The role of the user to create. Default: default role. Possible values include ‘administrator’, ‘editor’, ‘author’, ‘contributor’, ‘subscriber’',
              args: [
                Arg(
                name: 'role',
                suggestions: [
                  FigSuggestion(
                    name: 'administrator'
                  ),
                  FigSuggestion(
                    name: 'editor'
                  ),
                  FigSuggestion(
                    name: 'author'
                  ),
                  FigSuggestion(
                    name: 'contributor'
                  ),
                  FigSuggestion(
                    name: 'subscriber'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--user_pass',
              description: 'The user password. Default: randomly generated',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--user_registered',
              description: 'The date the user registered. Default: current date',
              args: [
                Arg(
                name: 'yyyy-mm-dd-hh-ii-s'
              )
              ]
            ),
            Option(
              name: '--display_name',
              description: 'The display name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--user_nicename',
              description: 'A string that contains a URL-friendly name for the user. The default is the user’s username',
              args: [
                Arg(
                name: 'nice_nam'
              )
              ]
            ),
            Option(
              name: '--user_url',
              description: 'A string containing the user’s URL for the user’s web site',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--nickname',
              description: 'The user’s nickname, defaults to the user’s username',
              args: [
                Arg(
                name: 'nicknam'
              )
              ]
            ),
            Option(
              name: '--first_name',
              description: 'The user’s first name',
              args: [
                Arg(
                name: 'first_nam'
              )
              ]
            ),
            Option(
              name: '--last_name',
              description: 'The user’s last name',
              args: [
                Arg(
                name: 'last_nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A string containing content about the user',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--rich_editing',
              description: 'A string for whether to enable the rich editor or not. False if not empty',
              args: [
                Arg(
                name: 'rich_editin'
              )
              ]
            ),
            Option(
              name: '--send-email',
              description: 'Send an email to the user with their new account details'
            ),
            Option(
              name: '--porcelain',
              description: 'Output just the new user id'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes one or more users from the current site',
          args: [
            Arg(
            name: 'user',
            description: 'The user login, user email, or user ID of the user(s) to delete'
          )
          ],
          options: [
            Option(
              name: '--network',
              description: 'On multisite, delete the user from the entire network'
            ),
            Option(
              name: '--reassign',
              description: 'User ID to reassign the posts to',
              args: [
                Arg(
                name: 'user-i'
              )
              ]
            ),
            Option(
              name: '--yes',
              description: 'Answer yes to any confirmation prompts'
            )
          ]
        ),
        Subcommand(
          name: 'generate',
          description: 'Generates some users',
          options: [
            Option(
              name: '--count',
              description: 'How many users to generate?',
              args: [
                Arg(
                name: 'number',
                suggestions: [
                  FigSuggestion(
                    name: '100'
                  )
                ]
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'The role of the generated users. Default: default role from WP',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'progress'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Gets details about a user',
          args: [
            Arg(
            name: 'user',
            description: 'User ID, user email, or user login'
          )
          ],
          options: [
            Option(
              name: '--field',
              description: 'Instead of returning the whole user, returns the value of a single field',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Get a specific subset of the user’s fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
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
            )
          ]
        ),
        Subcommand(
          name: 'import-csv',
          description: 'Imports users from a CSV file',
          args: [
            Arg(
            name: 'file',
            description: 'The local or remote CSV file of users to import. If ‘-‘, then reads from STDIN'
          )
          ],
          options: [
            Option(
              name: '--send-email',
              description: 'Send an email to new users with their account details'
            ),
            Option(
              name: '--skip-update',
              description: 'Don’t update users that already exist'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists users',
          options: [
            Option(
              name: '--role',
              description: 'Only display users with a certain role',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Control output by one or more arguments of WP_User_Query()'
            ),
            Option(
              name: '--network',
              description: 'List all users in the network for multisite'
            ),
            Option(
              name: '--field',
              description: 'Prints the value of a single field for each user',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--fields',
              description: 'Limit the output to specific object fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-caps',
          description: 'Lists all capabilities for a user',
          args: [
            Arg(
            name: 'user',
            description: 'User ID, user email, or login'
          )
          ],
          options: [
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'list'
                  ),
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'meta',
          description: 'Adds, updates, deletes, and lists user custom fields',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Adds a meta field',
              args: [
                Arg(
                  name: 'user',
                  description: 'The user login, user email, or user ID of the user to add metadata for'
                ),
                Arg(
                  name: 'key',
                  description: 'The metadata key'
                ),
                Arg(
                  name: 'value',
                  description: 'The new metadata value'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a meta field',
              args: [
                Arg(
                  name: 'user',
                  description: 'The user login, user email, or user ID of the user to delete metadata from'
                ),
                Arg(
                  name: 'key',
                  description: 'The metadata key'
                ),
                Arg(
                  name: 'value',
                  description: 'The value to delete. If omitted, all rows with key will deleted'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Gets meta field value',
              args: [
                Arg(
                  name: 'user',
                  description: 'The user login, user email, or user ID of the user to get metadata for'
                ),
                Arg(
                  name: 'key',
                  description: 'The metadata key'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
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
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all metadata associated with a user',
              args: [
                Arg(
                name: 'user',
                description: 'The user login, user email, or user ID of the user to get metadata for'
              )
              ],
              options: [
                Option(
                  name: '--keys',
                  description: 'Limit output to metadata of specific keys',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields. Defaults to id,meta_key,meta_value',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id,meta_key,meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Set orderby which field',
                  args: [
                    Arg(
                    name: 'fields',
                    suggestions: [
                      FigSuggestion(
                        name: 'id'
                      ),
                      FigSuggestion(
                        name: 'meta_key'
                      ),
                      FigSuggestion(
                        name: 'meta_value'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--order',
                  description: 'Set ascending or descending order',
                  args: [
                    Arg(
                    name: 'order',
                    suggestions: [
                      FigSuggestion(
                        name: 'asc'
                      ),
                      FigSuggestion(
                        name: 'desc'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unserialize',
                  description: 'Unserialize meta_value output'
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Update a nested value for a meta field',
              args: [
                Arg(
                  name: 'action',
                  description: 'Patch action to perform',
                  suggestions: [
                    FigSuggestion(
                      name: 'insert'
                    ),
                    FigSuggestion(
                      name: 'update'
                    ),
                    FigSuggestion(
                      name: 'delete'
                    )
                  ]
                ),
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to update'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to patch'
                ),
                Arg(
                  name: 'value',
                  description: 'The new value. If omitted, the value is read from STDIN'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pluck',
              description: 'Get a nested value from a meta field',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'key',
                  description: 'The name of the meta field to get'
                ),
                Arg(
                  name: 'key-path',
                  description: 'The name(s) of the keys within the value to locate the value to pluck'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The output format of the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
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
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a meta field',
              args: [
                Arg(
                  name: 'user',
                  description: 'The user login, user email, or user ID of the user to update metadata for'
                ),
                Arg(
                  name: 'key',
                  description: 'The metadata key'
                ),
                Arg(
                  name: 'value',
                  description: 'The new metadata value'
                )
              ],
              options: [
                Option(
                  name: '--format',
                  description: 'The serialization format for the value',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'plaintext'
                      ),
                      FigSuggestion(
                        name: 'json'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove-cap',
          description: 'Removes a user’s capability',
          args: [
            Arg(
              name: 'user',
              description: 'User ID, user email, or user login'
            ),
            Arg(
              name: 'cap',
              description: 'The capability to be removed'
            )
          ]
        ),
        Subcommand(
          name: 'remove-role',
          description: 'Removes a user’s role',
          args: [
            Arg(
              name: 'user',
              description: 'User ID, user email, or user login'
            ),
            Arg(
              name: 'role',
              description: 'A specific role to remove'
            )
          ]
        ),
        Subcommand(
          name: 'reset-password',
          description: 'Resets the password for one or more users',
          args: [
            Arg(
            name: 'user',
            description: 'One or more user logins or IDs'
          )
          ],
          options: [
            Option(
              name: '--skip-email',
              description: 'Don’t send an email notification to the affected user(s)'
            )
          ]
        ),
        Subcommand(
          name: 'session',
          description: 'Destroys and lists a user’s sessions',
          subcommands: [
            Subcommand(
              name: 'destroy',
              description: 'Destroy a session for the given user',
              args: [
                Arg(
                  name: 'user',
                  description: 'User ID, user email, or user login'
                ),
                Arg(
                  name: 'token',
                  description: 'The token of the session to destroy. Defaults to the most recently created session'
                )
              ],
              options: [
                Option(
                  name: '--all',
                  description: 'Destroy all of the user’s sessions'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List sessions for the given user',
              args: [
                Arg(
                name: 'user',
                description: 'User ID, user email, or user login'
              )
              ],
              options: [
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-role',
          description: 'Sets the user role',
          args: [
            Arg(
              name: 'user',
              description: 'User ID, user email, or user login'
            ),
            Arg(
              name: 'role',
              description: 'Make the user have the specified role. If not passed, the default role is used'
            )
          ]
        ),
        Subcommand(
          name: 'spam',
          description: 'Marks one or more users as spam',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of users to mark as spam'
          )
          ]
        ),
        Subcommand(
          name: 'term',
          description: 'Adds, updates, removes, and lists user terms',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a term to an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the taxonomy type to be added'
                ),
                Arg(
                  name: 'term',
                  description: 'The slug of the term or terms to be added'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all terms associated with an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'ID for the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'One or more taxonomies to list'
                )
              ],
              options: [
                Option(
                  name: '--field',
                  description: 'Prints the value of a single field for each term',
                  args: [
                    Arg(
                    name: 'fiel'
                  )
                  ]
                ),
                Option(
                  name: '--fields',
                  description: 'Limit the output to specific row fields',
                  args: [
                    Arg(
                    name: 'field'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Render output in a particular format',
                  args: [
                    Arg(
                    name: 'format',
                    suggestions: [
                      FigSuggestion(
                        name: 'table'
                      ),
                      FigSuggestion(
                        name: 'csv'
                      ),
                      FigSuggestion(
                        name: 'json'
                      ),
                      FigSuggestion(
                        name: 'yaml'
                      ),
                      FigSuggestion(
                        name: 'count'
                      ),
                      FigSuggestion(
                        name: 'ids'
                      )
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a term from an object',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the term’s taxonomy'
                ),
                Arg(
                  name: 'term',
                  description: 'The name of the term or terms to be removed from the object'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--all',
                  description: 'Remove all terms from the object'
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Set object terms',
              args: [
                Arg(
                  name: 'id',
                  description: 'The ID of the object'
                ),
                Arg(
                  name: 'taxonomy',
                  description: 'The name of the taxonomy type to be updated'
                ),
                Arg(
                  name: 'term',
                  description: 'The slug of the term or terms to be updated'
                )
              ],
              options: [
                Option(
                  name: '--by',
                  description: 'Explicitly handle the term value as a slug or id',
                  args: [
                    Arg(
                    name: 'field',
                    suggestions: [
                      FigSuggestion(
                        name: 'slug'
                      ),
                      FigSuggestion(
                        name: 'id'
                      )
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unspam',
          description: 'Removes one or more users from spam',
          args: [
            Arg(
            name: 'id',
            description: 'One or more IDs of users to remove from spam'
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates an existing user',
          args: [
            Arg(
            name: 'user',
            description: 'The user login, user email or user ID of the user(s) to update'
          )
          ],
          options: [
            Option(
              name: '--user_pass',
              description: 'A string that contains the plain text password for the user',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--user_nicename',
              description: 'A string that contains a URL-friendly name for the user. The default is the user’s username',
              args: [
                Arg(
                name: 'nice_nam'
              )
              ]
            ),
            Option(
              name: '--user_url',
              description: 'A string containing the user’s URL for the user’s web site',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--user_email',
              description: 'A string containing the user’s email address',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--display_name',
              description: 'The display name',
              args: [
                Arg(
                name: 'display_nam'
              )
              ]
            ),
            Option(
              name: '--nickname',
              description: 'The user’s nickname, defaults to the user’s username',
              args: [
                Arg(
                name: 'nicknam'
              )
              ]
            ),
            Option(
              name: '--first_name',
              description: 'The user’s first name',
              args: [
                Arg(
                name: 'first_nam'
              )
              ]
            ),
            Option(
              name: '--last_name',
              description: 'The user’s last name',
              args: [
                Arg(
                name: 'last_nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'A string containing content about the user',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--rich_editing',
              description: 'A string for whether to enable the rich editor or not. False if not empty',
              args: [
                Arg(
                name: 'rich_editin'
              )
              ]
            ),
            Option(
              name: '--user_registered',
              description: 'The date the user registered. Default: current date',
              args: [
                Arg(
                name: 'yyyy-mm-dd-hh-ii-s'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'A string used to set the user’s role',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--field',
              description: 'One or more fields to update. For accepted fields, see wp_update_user()',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--skip-email',
              description: 'Don’t send an email notification to the user'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'widget',
      description: 'Manages widgets, including adding and moving them within sidebars',
      options: [],
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a widget to a sidebar',
          args: [
            Arg(
              name: 'name',
              description: 'Widget name'
            ),
            Arg(
              name: 'sidebar-id',
              description: 'ID for the corresponding sidebar'
            ),
            Arg(
              name: 'position',
              description: 'Widget’s current position within the sidebar. Defaults to last'
            )
          ],
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Widget option to add, with its new value'
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivates one or more widgets from an active sidebar',
          args: [
            Arg(
            name: 'widget-id',
            description: 'Unique ID for the widget(s)'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes one or more widgets from a sidebar',
          args: [
            Arg(
            name: 'widget-id',
            description: 'Unique ID for the widget(s)'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists widgets associated with a sidebar',
          args: [
            Arg(
            name: 'sidebar-id',
            description: 'ID for the corresponding sidebar'
          )
          ],
          options: [
            Option(
              name: '--fields',
              description: 'Limit the output to specific row fields',
              args: [
                Arg(
                name: 'field'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Render output in a particular format',
              args: [
                Arg(
                name: 'format',
                suggestions: [
                  FigSuggestion(
                    name: 'table'
                  ),
                  FigSuggestion(
                    name: 'csv'
                  ),
                  FigSuggestion(
                    name: 'ids'
                  ),
                  FigSuggestion(
                    name: 'json'
                  ),
                  FigSuggestion(
                    name: 'count'
                  ),
                  FigSuggestion(
                    name: 'yaml'
                  )
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'move',
          description: 'Moves the position of a widget',
          args: [
            Arg(
            name: 'widget-id',
            description: 'Unique ID for the widget'
          )
          ],
          options: [
            Option(
              name: '--position',
              description: 'Assign the widget to a new position',
              args: [
                Arg(
                name: 'positio'
              )
              ]
            ),
            Option(
              name: '--sidebar-id',
              description: 'Assign the widget to a new sidebars',
              args: [
                Arg(
                name: 'sidebar-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Resets sidebar',
          args: [
            Arg(
            name: 'sidebar-id',
            description: 'One or more sidebars to reset'
          )
          ],
          options: [
            Option(
              name: '--all',
              description: 'If set, all sidebars will be reset'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates options for an existing widget',
          args: [
            Arg(
            name: 'widget-id',
            description: 'Unique ID for the widget'
          )
          ],
          options: [
            Option(
              name: '--field=value',
              insertValue: '--',
              description: 'Field to update, with its new value'
            )
          ]
        )
      ]
    )
  ]
);
