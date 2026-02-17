// Auto-generated from TypeScript source: ansible-galaxy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> serverOptions = [

  Option(
    name: ['--server', '-s'],
    description: 'The Galaxy API server URL',
    args: [
      Arg(
      name: 'api_server',
      description: 'The Galaxy API server URL'
    )
    ]
  ),
  Option(
    name: ['--token', '--api-key'],
    description: 'The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences',
    args: [
      Arg(
      name: 'api_key',
      description: 'The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences'
    )
    ]
  ),
  Option(
    name: ['--ignore-certs', '-c'],
    description: 'Ignore SSL certificate validation errors'
  )
];

final List<Option> collectionDownloadOptions = [

  Option(
    name: '--clear-response-cache',
    description: 'Clear the existing server response cache'
  ),
  Option(
    name: '--no-cache',
    description: 'Do not use the server response cache'
  ),
  Option(
    name: ['--no-deps', '-n'],
    description: 'Don\'t download collection(s) listed as dependencies'
  ),
  Option(
    name: ['--download-path', '-p'],
    description: 'The directory to download the collections to',
    args: [
      Arg(
      name: 'download_path',
      description: 'The directory to download the collections to',
      template: ['folders']
    )
    ]
  ),
  Option(
    name: ['--requirements-file', '-r'],
    description: 'A file containing a list of collections to be downloaded',
    args: [
      Arg(
      name: 'requirements',
      description: 'A file containing a list of collections to be downloaded',
      template: ['filepaths']
    )
    ]
  ),
  Option(
    name: '--pre',
    description: 'Include pre-release versions'
  )
];

final List<Option> collectionInitOptions = [

  Option(
    name: ['--force', '-f'],
    description: 'Force overwriting an existing role or collection'
  ),
  Option(
    name: '--init-path',
    description: 'The path in which the skeleton collection will be created',
    args: [
      Arg(
      name: 'init_path',
      description: 'The path in which the skeleton collection will be created',
      template: ['folders'],
      defaultValue: '.'
    )
    ]
  ),
  Option(
    name: '--collection-skeleton',
    description: 'The path to a collection skeleton that the new collection should be based upon',
    args: [
      Arg(
      name: 'collection_skeleton',
      description: 'The path to a collection skeleton that the new collection should be based upon',
      template: ['folders']
    )
    ]
  )
];

final List<Option> collectionBuildOptions = [

  Option(
    name: ['--force', '-f'],
    description: 'Force overwriting an existing role or collection'
  ),
  Option(
    name: '--output-path',
    description: 'The path in which the collection is built to',
    args: [
      Arg(
      name: 'output_path',
      description: 'The path in which the collection is built to',
      template: ['folders'],
      defaultValue: '.'
    )
    ]
  )
];

final List<Option> collectionPublishOptions = [

  Option(
    name: '--no-wait',
    description: 'Don\'t wait for import validation results'
  ),
  Option(
    name: '--import-timeout',
    description: 'The time to wait for the collection import process to finish',
    args: [
      Arg(
      name: 'import_timeout',
      description: 'The time to wait for the collection import process to finish',
      suggestions: [

        FigSuggestion(name: '60'),
        FigSuggestion(name: '300'),
        FigSuggestion(name: '600'),
        FigSuggestion(name: '900')
      ],
      defaultValue: '60'
    )
    ]
  )
];

final List<Option> collectionListOptions = [

  Option(
    name: ['--collections-path', '-p'],
    description: 'One or more directories to search for collections in addition to the default COLLECTIONS_PATHS; separate multiple paths with \':\'',
    args: [
      Arg(
      name: 'collections_path',
      description: 'One or more directories to search for collections in addition to the default COLLECTIONS_PATHS; separate multiple paths with \':\'',
      template: ['folders'],
      suggestions: [

        FigSuggestion(name: '~/.ansible/collections:/usr/share/ansible/collections')
      ],
      defaultValue: '~/.ansible/collections:/usr/share/ansible/collections'
    )
    ]
  ),
  Option(
    name: '--format',
    description: 'Format to display the list of collections in',
    args: [
      Arg(
      name: 'format',
      description: 'Format to display the list of collections in',
      suggestions: [

        FigSuggestion(name: 'human'),
        FigSuggestion(name: 'yaml'),
        FigSuggestion(name: 'json')
      ],
      defaultValue: 'human'
    )
    ]
  )
];

final List<Option> collectionVerifyOptions = [

  Option(
    name: ['--collections-path', '-p'],
    description: 'One or more directories to search for collections in addition to the default COLLECTIONS_PATHS; separate multiple paths with \':\'',
    args: [
      Arg(
      name: 'collections_path',
      description: 'One or more directories to search for collections in addition to the default COLLECTIONS_PATHS; separate multiple paths with \':\'',
      template: ['folders'],
      suggestions: [

        FigSuggestion(name: '~/.ansible/collections:/usr/share/ansible/collections')
      ],
      defaultValue: '~/.ansible/collections:/usr/share/ansible/collections'
    )
    ]
  ),
  Option(
    name: ['--ignore-errors', '-i'],
    description: 'Ignore errors during verification and continue with the next specified collection'
  ),
  Option(
    name: ['--requirements-file', '-r'],
    description: 'A file containing a list of collections to be downloaded',
    args: [
      Arg(
      name: 'requirements',
      description: 'A file containing a list of collections to be downloaded',
      template: ['filepaths']
    )
    ]
  )
];

final List<Option> roleInitOptions = [

  Option(
    name: ['--force', '-f'],
    description: 'Force overwriting an existing role or collection'
  ),
  Option(
    name: '--offline',
    description: 'Don\'t query the galaxy API when creating roles'
  ),
  Option(
    name: '--init-path',
    description: 'The path in which the skeleton collection will be created',
    args: [
      Arg(
      name: 'init_path',
      description: 'The path in which the skeleton collection will be created',
      template: ['folders'],
      defaultValue: '.'
    )
    ]
  ),
  Option(
    name: '--role-skeleton',
    description: 'The path in which the skeleton role will be created',
    args: [
      Arg(
      name: 'role_skeleton',
      description: 'The path in which the skeleton role will be created',
      template: ['folders'],
      defaultValue: '.'
    )
    ]
  ),
  Option(
    name: '--type',
    description: 'Initialize using an alternate role type',
    args: [
      Arg(
      name: 'role_type',
      description: 'Initialize using an alternate role type',
      suggestions: [

        FigSuggestion(name: 'container'),
        FigSuggestion(name: 'apb'),
        FigSuggestion(name: 'network')
      ],
      defaultValue: 'container'
    )
    ]
  )
];

final List<Option> roleRemoveOptions = [

  Option(
    name: ['--roles-path', '--role-path'],
    description: 'The path to the directory containing your roles',
    args: [
      Arg(
      name: 'roles_path',
      description: 'The path to the directory containing your roles',
      suggestions: [

        FigSuggestion(name: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles')
      ],
      defaultValue: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles'
    )
    ]
  )
];

final List<Option> roleListOptions = [

  Option(
    name: ['--roles-path', '--role-path'],
    description: 'The path to the directory containing your roles',
    args: [
      Arg(
      name: 'roles_path',
      description: 'The path to the directory containing your roles',
      suggestions: [

        FigSuggestion(name: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles')
      ],
      defaultValue: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles'
    )
    ]
  )
];

final List<Option> roleSearchOptions = [

  Option(
    name: '--platforms',
    description: 'List of OS platforms to filter by',
    args: [
      Arg(
      name: 'platforms',
      description: 'List of OS platforms to filter by'
    )
    ]
  ),
  Option(
    name: '--galaxy-tags',
    description: 'List of Galaxy tags to filter by',
    args: [
      Arg(
      name: 'galaxy_tags',
      description: 'List of Galaxy tags to filter by'
    )
    ]
  ),
  Option(
    name: '--author',
    description: 'GitHub username',
    args: [
      Arg(
      name: 'author',
      description: 'GitHub username'
    )
    ]
  )
];

final List<Option> roleImportOptions = [

  Option(
    name: '--branch',
    description: 'The name of a branch to import. Defaults to the repository\'s default branch (usually master)',
    args: [
      Arg(
      name: 'reference',
      description: 'The name of a branch to import. Defaults to the repository\'s default branch (usually master)',
      suggestions: [

        FigSuggestion(name: 'master'),
        FigSuggestion(name: 'main'),
        FigSuggestion(name: 'develop')
      ],
      defaultValue: 'master'
    )
    ]
  ),
  Option(
    name: '--role-name',
    description: 'The name the role should have, if different than the repo name',
    args: [
      Arg(
      name: 'role_name',
      description: 'The name the role should have, if different than the repo name'
    )
    ]
  ),
  Option(
    name: '--status',
    description: 'Check the status of the most recent import request for given github_user/github_repo'
  )
];

final List<Option> roleSetupOptions = [

  Option(
    name: ['--roles-path', '--role-path'],
    description: 'The path to the directory containing your roles',
    args: [
      Arg(
      name: 'roles_path',
      description: 'The path to the directory containing your roles',
      suggestions: [

        FigSuggestion(name: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles')
      ],
      defaultValue: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles'
    )
    ]
  ),
  Option(
    name: '--remove',
    description: 'Remove the integration matching the provided ID value. Use --list to see ID values',
    args: [
      Arg(
      name: 'remove_id',
      description: 'Remove the integration matching the provided ID value. Use --list to see ID values'
    )
    ],
    exclusiveOn: ['--list']
  ),
  Option(
    name: '--list',
    description: 'List all of your integrations',
    exclusiveOn: ['--remove']
  )
];

final List<Option> roleInfoOptions = [

  Option(
    name: ['--roles-path', '--role-path'],
    description: 'The path to the directory containing your roles',
    args: [
      Arg(
      name: 'roles_path',
      description: 'The path to the directory containing your roles',
      suggestions: [

        FigSuggestion(name: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles')
      ],
      defaultValue: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles'
    )
    ]
  ),
  Option(
    name: '--offline',
    description: 'Don\'t query the galaxy API when creating roles'
  )
];

final List<Option> roleInstallOptions = [

  Option(
    name: ['--roles-path', '--role-path'],
    description: 'The path to the directory containing your roles',
    args: [
      Arg(
      name: 'roles_path',
      description: 'The path to the directory containing your roles',
      suggestions: [

        FigSuggestion(name: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles')
      ],
      defaultValue: '~/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles'
    )
    ]
  ),
  Option(
    name: ['--no-deps', '-n'],
    description: 'Don\'t download roles listed as dependencies'
  ),
  Option(
    name: '--force-with-deps',
    description: 'Force overwriting an existing role and its dependencies'
  ),
  Option(
    name: ['--requirements-file', '-r'],
    description: 'A file containing a list of collections to be downloaded',
    args: [
      Arg(
      name: 'requirements',
      description: 'A file containing a list of collections to be downloaded',
      template: ['filepaths']
    )
    ]
  ),
  Option(
    name: ['--keep-scm-meta', '-g'],
    description: 'Use tar instead of the scm archive option when packaging the role'
  )
];

/// Completion spec for `ansible-galaxy` CLI
final FigSpec ansibleGalaxySpec = FigSpec(
  name: 'ansible-galaxy',
  description: 'Perform various Role and Collection related operations',
  subcommands: [

    Subcommand(
      name: 'collection',
      description: 'Operate on collections',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download collections',
          options: [

            ...serverOptions,
            ...collectionDownloadOptions
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize collections',
          options: [

            ...serverOptions,
            ...collectionInitOptions
          ],
          args: [
            Arg(
            name: 'collection_name',
            description: 'Name of the collection'
          )
          ]
        ),
        Subcommand(
          name: 'build',
          description: 'Build collections',
          options: [

            ...serverOptions,
            ...collectionBuildOptions
          ],
          args: [
            Arg(
            name: 'collection',
            description: 'Path(s) to the collection to be built',
            template: ['folders'],
            defaultValue: '.'
          )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish collections',
          options: [

            ...serverOptions,
            ...collectionPublishOptions
          ],
          args: [
            Arg(
            name: 'collection_path',
            description: 'The path to the collection tarball to publish',
            template: ['folders'],
            defaultValue: '.'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List collections',
          options: [

            ...serverOptions,
            ...collectionListOptions
          ],
          args: [
            Arg(
            name: 'collection',
            description: 'The collections to list',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify collections',
          options: [

            ...serverOptions,
            ...collectionVerifyOptions
          ],
          args: [
            Arg(
            name: 'collection_name',
            description: 'The collections to verify',
            isOptional: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role',
      description: 'Operate on roles',
      subcommands: [

        Subcommand(
          name: 'init',
          description: 'Initialize roles',
          options: [

            ...serverOptions,
            ...roleInitOptions
          ],
          args: [
            Arg(
            name: 'role_name',
            description: 'Name of the role'
          )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove roles',
          options: [

            ...serverOptions,
            ...roleRemoveOptions
          ],
          args: [
            Arg(
            name: 'role_name',
            description: 'The role to remove'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List roles',
          options: [

            ...serverOptions,
            ...roleListOptions
          ],
          args: [
            Arg(
            name: 'role',
            description: 'The role to list',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Search roles',
          options: [

            ...serverOptions,
            ...roleSearchOptions
          ],
          args: [
            Arg(
            name: 'searchterm',
            description: 'Search terms',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import roles',
          options: [

            ...serverOptions,
            ...roleImportOptions
          ],
          args: [

            Arg(
              name: 'github_user',
              description: 'GitHub username',
              isOptional: true
            ),
            Arg(
              name: 'github_repo',
              description: 'GitHub repository'
            )
          ]
        ),
        Subcommand(
          name: 'setup',
          description: 'Set up roles',
          options: [

            ...serverOptions,
            ...roleSetupOptions
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Role information',
          options: [

            ...serverOptions,
            ...roleInfoOptions
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install roles',
          options: [

            ...serverOptions,
            ...roleInstallOptions
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help and exit',
      isPersistent: true
    ),
    Option(
      name: '--verbose',
      description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
      exclusiveOn: ['-v'],
      isPersistent: true
    ),
    Option(
      name: '-v',
      description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
      isRepeatable: 4,
      exclusiveOn: ['--verbose'],
      isPersistent: true
    ),
    Option(
      name: '--version',
      description: 'Shows version number, config file location, module search path, module location, executable location and exit',
      isPersistent: true
    )
  ]
);
