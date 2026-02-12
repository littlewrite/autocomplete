// Auto-generated from TypeScript source: helm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `helm` CLI
final FigSpec helmSpec = FigSpec(
  name: 'helm',
  description: 'The Helm package manager for Kubernetes',
  subcommands: [
    Subcommand(
      name: 'completion',
      description: 'Generate autocompletion scripts for the specified shell',
      subcommands: [
        Subcommand(
          name: 'bash',
          description: 'Generate autocompletion script for bash',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate autocompletion script for fish',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate autocompletion script for powershell',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate autocompletion script for zsh',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new chart with the given name',
      options: [
        Option(
          name: ['--starter', '-p'],
          description: 'The name or absolute path to Helm starter scaffold',
          args: [
            Arg(
            name: 'starte'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['dep', 'dependencies', 'dependency'],
      description: 'Manage a chart\'s dependencies',
      subcommands: [
        Subcommand(
          name: 'build',
          description: 'Rebuild the charts/ directory based on the Chart.lock file',
          options: [
            Option(
              name: '--keyring',
              description: 'Keyring containing public keys',
              args: [
                Arg(
                name: 'keyring',
                template: 'filepaths',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--skip-refresh',
              description: 'Do not refresh the local repository cache'
            ),
            Option(
              name: '--verify',
              description: 'Verify the packages against signatures'
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List the dependencies for the given chart',
          options: [
            Option(
              name: '--max-col-width',
              description: 'Maximum column width for output table',
              args: [
                Arg(
                name: 'max-col-width',
                defaultValue: '8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['up', 'update'],
          description: 'Update charts/ based on the contents of Chart.yaml',
          options: [
            Option(
              name: '--keyring',
              description: 'Keyring containing public keys',
              args: [
                Arg(
                name: 'keyring',
                template: 'filepaths',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--skip-refresh',
              description: 'Do not refresh the local repository cache'
            ),
            Option(
              name: '--verify',
              description: 'Verify the packages against signatures'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'Helm client environment information'
    ),
    Subcommand(
      name: 'get',
      description: 'Download extended information of a named release',
      subcommands: [
        Subcommand(
          name: 'all',
          description: 'Download all information for a named release',
          options: [
            Option(
              name: '--revision',
              description: 'Get the named release with revision',
              args: [
                Arg(
                name: 'revision',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--template',
              description: 'Go template for formatting the output, eg: {{.Release.Name}}',
              args: [
                Arg(
                name: 'templat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'hooks',
          description: 'Download all hooks for a named release',
          options: [
            Option(
              name: '--revision',
              description: 'Get the named release with revision',
              args: [
                Arg(
                name: 'revision',
                defaultValue: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'manifest',
          description: 'Download the manifest for a named release',
          options: [
            Option(
              name: '--revision',
              description: 'Get the named release with revision',
              args: [
                Arg(
                name: 'revision',
                defaultValue: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'notes',
          description: 'Download the notes for a named release',
          options: [
            Option(
              name: '--revision',
              description: 'Get the named release with revision',
              args: [
                Arg(
                name: 'revision',
                defaultValue: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'values',
          description: 'Download the values file for a named release',
          options: [
            Option(
              name: ['--all', '-a'],
              description: 'Dump all (computed) values'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'tabl'
              )
              ]
            ),
            Option(
              name: '--revision',
              description: 'Get the named release with revision',
              args: [
                Arg(
                name: 'revision',
                defaultValue: ''
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['hist', 'history'],
      description: 'Fetch release history',
      options: [
        Option(
          name: '--max',
          description: 'Maximum number of revision to include in history',
          args: [
            Arg(
            name: 'max',
            defaultValue: '25'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'tabl'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install a chart',
      options: [
        Option(
          name: '--atomic',
          description: 'If set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used'
        ),
        Option(
          name: '--ca-file',
          description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
          args: [
            Arg(
            name: 'ca-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cert-file',
          description: 'Identify HTTPS client using this SSL certificate file',
          args: [
            Arg(
            name: 'cert-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--create-namespace',
          description: 'Create the release namespace if not present'
        ),
        Option(
          name: '--dependency-update',
          description: 'Update dependencies if they are missing before installing the chart'
        ),
        Option(
          name: '--description',
          description: 'Add a custom description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--devel',
          description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
        ),
        Option(
          name: '--disable-openapi-validation',
          description: 'If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema'
        ),
        Option(
          name: '--dry-run',
          description: 'Simulate an install'
        ),
        Option(
          name: ['--generate-name', '-g'],
          description: 'Generate the name (and omit the NAME parameter)'
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip tls certificate checks for the chart download'
        ),
        Option(
          name: '--key-file',
          description: 'Identify HTTPS client using this SSL key file',
          args: [
            Arg(
            name: 'key-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--keyring',
          description: 'Location of public keys used for verification',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        ),
        Option(
          name: '--name-template',
          description: 'Specify template used to name the release',
          args: [
            Arg(
            name: 'name-templat'
          )
          ]
        ),
        Option(
          name: '--no-hooks',
          description: 'Prevent hooks from running during install'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'tabl'
          )
          ]
        ),
        Option(
          name: '--pass-credentials',
          description: 'Pass credentials to all domains'
        ),
        Option(
          name: '--password',
          description: 'Chart repository password where to locate the requested chart',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--post-renderer',
          description: 'The path to an executable to be used for post rendering. If it exists in \$PATH, the binary will be used, otherwise it will try to look for the executable at the given path',
          args: [
            Arg(
            name: 'post-rendere'
          )
          ]
        ),
        Option(
          name: '--post-renderer-args',
          description: 'An argument to the post-renderer (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'post-renderer-arg'
          )
          ]
        ),
        Option(
          name: '--render-subchart-notes',
          description: 'If set, render subchart notes along with the parent'
        ),
        Option(
          name: '--replace',
          description: 'Re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production'
        ),
        Option(
          name: '--repo',
          description: 'Chart repository url where to locate the requested chart',
          args: [
            Arg(
            name: 'rep'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--set-string',
          description: 'Set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-strin'
          )
          ]
        ),
        Option(
          name: '--skip-crds',
          description: 'If set, no CRDs will be installed. By default, CRDs are installed if not already present'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'Chart repository username where to locate the requested chart',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        ),
        Option(
          name: ['--values', '-f'],
          description: 'Specify values in a YAML file or a URL (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'values',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--verify',
          description: 'Verify the package before using it'
        ),
        Option(
          name: '--version',
          description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'If set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout'
        ),
        Option(
          name: '--wait-for-jobs',
          description: 'If set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout'
        )
      ]
    ),
    Subcommand(
      name: 'lint',
      description: 'Examine a chart for possible issues',
      options: [
        Option(
          name: '--quiet',
          description: 'Print only warnings and errors'
        ),
        Option(
          name: '--set',
          description: 'Set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--set-string',
          description: 'Set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-strin'
          )
          ]
        ),
        Option(
          name: '--strict',
          description: 'Fail on lint warnings'
        ),
        Option(
          name: ['--values', '-f'],
          description: 'Specify values in a YAML file or a URL (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'values',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--with-subcharts',
          description: 'Lint dependent charts'
        )
      ]
    ),
    Subcommand(
      name: ['ls', 'list'],
      description: 'List releases',
      options: [
        Option(
          name: ['--all', '-a'],
          description: 'Show all releases without any filter applied'
        ),
        Option(
          name: ['--all-namespaces', '-A'],
          description: 'List releases across all namespaces'
        ),
        Option(
          name: ['--date', '-d'],
          description: 'Sort by release date'
        ),
        Option(
          name: '--deployed',
          description: 'Show deployed releases. If no other is specified, this will be automatically enabled'
        ),
        Option(
          name: '--failed',
          description: 'Show failed releases'
        ),
        Option(
          name: ['--filter', '-f'],
          description: 'A regular expression (Perl compatible). Any releases that match the expression will be included in the results',
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: ['--max', '-m'],
          description: 'Maximum number of releases to fetch',
          args: [
            Arg(
            name: 'max',
            defaultValue: '25'
          )
          ]
        ),
        Option(
          name: '--no-headers',
          description: 'Don\'t print headers when using the default output format'
        ),
        Option(
          name: '--offset',
          description: 'Next release index in the list, used to offset from start value',
          args: [
            Arg(
            name: 'offset',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'tabl'
          )
          ]
        ),
        Option(
          name: '--pending',
          description: 'Show pending releases'
        ),
        Option(
          name: ['--reverse', '-r'],
          description: 'Reverse the sort order'
        ),
        Option(
          name: ['--selector', '-l'],
          description: 'Selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'.(e.g. -l key1=value1,key2=value2). Works only for secret(default) and configmap storage backends',
          args: [
            Arg(
            name: 'selecto'
          )
          ]
        ),
        Option(
          name: ['--short', '-q'],
          description: 'Output short (quiet) listing format'
        ),
        Option(
          name: '--superseded',
          description: 'Show superseded releases'
        ),
        Option(
          name: '--time-format',
          description: 'Format time using golang time formatter. Example: --time-format "2006-01-02 15:04:05Z0700"',
          args: [
            Arg(
            name: 'time-forma'
          )
          ]
        ),
        Option(
          name: '--uninstalled',
          description: 'Show uninstalled releases (if \'helm uninstall --keep-history\' was used)'
        ),
        Option(
          name: '--uninstalling',
          description: 'Show releases that are currently being uninstalled'
        )
      ]
    ),
    Subcommand(
      name: 'package',
      description: 'Package a chart directory into a chart archive',
      options: [
        Option(
          name: '--app-version',
          description: 'Set the appVersion on the chart to this version',
          args: [
            Arg(
            name: 'app-versio'
          )
          ]
        ),
        Option(
          name: ['--dependency-update', '-u'],
          description: 'Update dependencies from "Chart.yaml" to dir "charts/" before packaging'
        ),
        Option(
          name: ['--destination', '-d'],
          description: 'Location to write the chart',
          args: [
            Arg(
            name: 'destination',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--key',
          description: 'Name of the key to use when signing. Used if --sign is true',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--keyring',
          description: 'Location of a public keyring',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        ),
        Option(
          name: '--passphrase-file',
          description: 'Location of a file which contains the passphrase for the signing key. Use "-" in order to read from stdin',
          args: [
            Arg(
            name: 'passphrase-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--sign',
          description: 'Use a PGP private key to sign this package'
        ),
        Option(
          name: '--version',
          description: 'Set the version on the chart to this semver version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'plugin',
      description: 'Install, list, or uninstall Helm plugins',
      subcommands: [
        Subcommand(
          name: ['add', 'install'],
          description: 'Install one or more Helm plugins',
          options: [
            Option(
              name: '--version',
              description: 'Specify a version constraint. If this is not specified, the latest version is installed',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List installed Helm plugins'
        ),
        Subcommand(
          name: ['rm', 'remove', 'uninstall'],
          description: 'Uninstall one or more Helm plugins'
        ),
        Subcommand(
          name: ['up', 'update'],
          description: 'Update one or more Helm plugins'
        )
      ]
    ),
    Subcommand(
      name: ['fetch', 'pull'],
      description: 'Download a chart from a repository and (optionally) unpack it in local directory',
      options: [
        Option(
          name: '--ca-file',
          description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
          args: [
            Arg(
            name: 'ca-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cert-file',
          description: 'Identify HTTPS client using this SSL certificate file',
          args: [
            Arg(
            name: 'cert-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['--destination', '-d'],
          description: 'Location to write the chart. If this and untardir are specified, untardir is appended to this',
          args: [
            Arg(
            name: 'destination',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--devel',
          description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip tls certificate checks for the chart download'
        ),
        Option(
          name: '--key-file',
          description: 'Identify HTTPS client using this SSL key file',
          args: [
            Arg(
            name: 'key-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--keyring',
          description: 'Location of public keys used for verification',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        ),
        Option(
          name: '--pass-credentials',
          description: 'Pass credentials to all domains'
        ),
        Option(
          name: '--password',
          description: 'Chart repository password where to locate the requested chart',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--prov',
          description: 'Fetch the provenance file, but don\'t perform verification'
        ),
        Option(
          name: '--repo',
          description: 'Chart repository url where to locate the requested chart',
          args: [
            Arg(
            name: 'rep'
          )
          ]
        ),
        Option(
          name: '--untar',
          description: 'If set to true, will untar the chart after downloading it'
        ),
        Option(
          name: '--untardir',
          description: 'If untar is specified, this flag specifies the name of the directory into which the chart is expanded',
          args: [
            Arg(
            name: 'untardir',
            defaultValue: '.',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'Chart repository username where to locate the requested chart',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        ),
        Option(
          name: '--verify',
          description: 'Verify the package before using it'
        ),
        Option(
          name: '--version',
          description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Push a chart to remote'
    ),
    Subcommand(
      name: 'registry',
      description: 'Login to or logout from a registry',
      subcommands: [
        Subcommand(
          name: 'login',
          description: 'Login to a registry',
          options: [
            Option(
              name: '--insecure',
              description: 'Allow connections to TLS registry without certs'
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Registry password or identity token',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--password-stdin',
              description: 'Read password or identity token from stdin'
            ),
            Option(
              name: ['--username', '-u'],
              description: 'Registry username',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logout',
          description: 'Logout from a registry'
        )
      ]
    ),
    Subcommand(
      name: 'repo',
      description: 'Add, list, remove, update, and index chart repositories',
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Add a chart repository',
          options: [
            Option(
              name: '--allow-deprecated-repos',
              description: 'By default, this command will not allow adding official repos that have been permanently deleted. This disables that behavior'
            ),
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--force-update',
              description: 'Replace (overwrite) the repo if it already exists'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the repository'
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--no-update',
              description: 'Ignored. Formerly, it would disabled forced updates. It is deprecated by force-update'
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--password-stdin',
              description: 'Read chart repository password from stdin'
            ),
            Option(
              name: '--username',
              description: 'Chart repository username',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'index',
          description: 'Generate an index file given a directory containing packaged charts',
          options: [
            Option(
              name: '--merge',
              description: 'Merge the generated index into the given index',
              args: [
                Arg(
                name: 'merg'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Url of chart repository',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List chart repositories',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'tabl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'remove'],
          description: 'Remove one or more chart repositories'
        ),
        Subcommand(
          name: ['up', 'update'],
          description: 'Update information of available charts locally from chart repositories',
          options: [
            Option(
              name: '--fail-on-repo-update-fail',
              description: 'Update fails if any of the repository updates fail'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rollback',
      description: 'Roll back a release to a previous revision',
      options: [
        Option(
          name: '--cleanup-on-fail',
          description: 'Allow deletion of new resources created in this rollback when rollback fails'
        ),
        Option(
          name: '--dry-run',
          description: 'Simulate a rollback'
        ),
        Option(
          name: '--force',
          description: 'Force resource update through delete/recreate if needed'
        ),
        Option(
          name: '--history-max',
          description: 'Limit the maximum number of revisions saved per release. Use 0 for no limit',
          args: [
            Arg(
            name: 'history-max',
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: '--no-hooks',
          description: 'Prevent hooks from running during rollback'
        ),
        Option(
          name: '--recreate-pods',
          description: 'Performs pods restart for the resource if applicable'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'If set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout'
        ),
        Option(
          name: '--wait-for-jobs',
          description: 'If set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout'
        )
      ]
    ),
    Subcommand(
      name: 's3',
      description: 'Manage chart repositories on Amazon S3'
    ),
    Subcommand(
      name: 'search',
      description: 'Search for a keyword in charts',
      subcommands: [
        Subcommand(
          name: 'hub',
          description: 'Search for charts in the Artifact Hub or your own hub instance',
          options: [
            Option(
              name: '--endpoint',
              description: 'Hub instance to query for charts',
              args: [
                Arg(
                name: 'endpoint',
                defaultValue: 'https://hub.helm.s'
              )
              ]
            ),
            Option(
              name: '--list-repo-url',
              description: 'Print charts repository URL'
            ),
            Option(
              name: '--max-col-width',
              description: 'Maximum column width for output table',
              args: [
                Arg(
                name: 'max-col-width',
                defaultValue: '5'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'tabl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'repo',
          description: 'Search repositories for a keyword in charts',
          options: [
            Option(
              name: '--devel',
              description: 'Use development versions (alpha, beta, and release candidate releases), too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--max-col-width',
              description: 'Maximum column width for output table',
              args: [
                Arg(
                name: 'max-col-width',
                defaultValue: '5'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'tabl'
              )
              ]
            ),
            Option(
              name: ['--regexp', '-r'],
              description: 'Use regular expressions for searching repositories you have added'
            ),
            Option(
              name: '--version',
              description: 'Search using semantic versioning constraints on repositories you have added',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--versions', '-l'],
              description: 'Show the long listing, with each version of each chart on its own line, for repositories you have added'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['inspect', 'show'],
      description: 'Show information of a chart',
      subcommands: [
        Subcommand(
          name: 'all',
          description: 'Show all information of the chart',
          options: [
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--devel',
              description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the chart download'
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--keyring',
              description: 'Location of public keys used for verification',
              args: [
                Arg(
                name: 'keyring',
                template: 'filepaths',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password where to locate the requested chart',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repo',
              description: 'Chart repository url where to locate the requested chart',
              args: [
                Arg(
                name: 'rep'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Chart repository username where to locate the requested chart',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--verify',
              description: 'Verify the package before using it'
            ),
            Option(
              name: '--version',
              description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'chart',
          description: 'Show the chart\'s definition',
          options: [
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--devel',
              description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the chart download'
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: '--keyring',
              description: 'Location of public keys used for verification',
              args: [
                Arg(
                name: 'keyring',
                template: 'filepaths',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password where to locate the requested chart',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repo',
              description: 'Chart repository url where to locate the requested chart',
              args: [
                Arg(
                name: 'rep'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Chart repository username where to locate the requested chart',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--verify',
              description: 'Verify the package before using it'
            ),
            Option(
              name: '--version',
              description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'crds',
          description: 'Show the chart\'s CRDs',
          options: [
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--devel',
              description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the chart download'
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--keyring',
              description: 'Location of public keys used for verification',
              args: [
                Arg(
                name: 'keyring',
                defaultValue: '~/.gnupg/pubring.gpg',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password where to locate the requested chart',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repo',
              description: 'Chart repository url where to locate the requested chart',
              args: [
                Arg(
                name: 'rep'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Chart repository username where to locate the requested chart',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--verify',
              description: 'Verify the package before using it'
            ),
            Option(
              name: '--version',
              description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'readme',
          description: 'Show the chart\'s README',
          options: [
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--devel',
              description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the chart download'
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: '--keyring',
              description: 'Location of public keys used for verification',
              args: [
                Arg(
                name: 'keyring',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password where to locate the requested chart',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repo',
              description: 'Chart repository url where to locate the requested chart',
              args: [
                Arg(
                name: 'rep'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Chart repository username where to locate the requested chart',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--verify',
              description: 'Verify the package before using it'
            ),
            Option(
              name: '--version',
              description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'values',
          description: 'Show the chart\'s values',
          options: [
            Option(
              name: '--ca-file',
              description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
              args: [
                Arg(
                name: 'ca-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--cert-file',
              description: 'Identify HTTPS client using this SSL certificate file',
              args: [
                Arg(
                name: 'cert-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--devel',
              description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
            ),
            Option(
              name: '--insecure-skip-tls-verify',
              description: 'Skip tls certificate checks for the chart download'
            ),
            Option(
              name: '--jsonpath',
              description: 'Supply a JSONPath expression to filter the output',
              args: [
                Arg(
                name: 'jsonpat'
              )
              ]
            ),
            Option(
              name: '--key-file',
              description: 'Identify HTTPS client using this SSL key file',
              args: [
                Arg(
                name: 'key-file',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: '--keyring',
              description: 'Location of public keys used for verification',
              args: [
                Arg(
                name: 'keyring',
                template: 'filepaths',
                defaultValue: '~/.gnupg/pubring.gpg'
              )
              ]
            ),
            Option(
              name: '--pass-credentials',
              description: 'Pass credentials to all domains'
            ),
            Option(
              name: '--password',
              description: 'Chart repository password where to locate the requested chart',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--repo',
              description: 'Chart repository url where to locate the requested chart',
              args: [
                Arg(
                name: 'rep'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'Chart repository username where to locate the requested chart',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: '--verify',
              description: 'Verify the package before using it'
            ),
            Option(
              name: '--version',
              description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Display the status of the named release',
      options: [
        Option(
          name: ['--output', '-o'],
          description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'tabl'
          )
          ]
        ),
        Option(
          name: '--revision',
          description: 'If set, display the status of the named release with revision',
          args: [
            Arg(
            name: 'revision',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--show-desc',
          description: 'If set, display the description message of the named release'
        )
      ]
    ),
    Subcommand(
      name: 'template',
      description: 'Locally render templates',
      options: [
        Option(
          name: ['--api-versions', '-a'],
          description: 'Kubernetes api versions used for Capabilities.APIVersions',
          isRepeatable: true,
          args: [
            Arg(
            name: 'api-version'
          )
          ]
        ),
        Option(
          name: '--atomic',
          description: 'If set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used'
        ),
        Option(
          name: '--ca-file',
          description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
          args: [
            Arg(
            name: 'ca-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cert-file',
          description: 'Identify HTTPS client using this SSL certificate file',
          args: [
            Arg(
            name: 'cert-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--create-namespace',
          description: 'Create the release namespace if not present'
        ),
        Option(
          name: '--dependency-update',
          description: 'Update dependencies if they are missing before installing the chart'
        ),
        Option(
          name: '--description',
          description: 'Add a custom description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--devel',
          description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
        ),
        Option(
          name: '--disable-openapi-validation',
          description: 'If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema'
        ),
        Option(
          name: '--dry-run',
          description: 'Simulate an install'
        ),
        Option(
          name: ['--generate-name', '-g'],
          description: 'Generate the name (and omit the NAME parameter)'
        ),
        Option(
          name: '--include-crds',
          description: 'Include CRDs in the templated output'
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip tls certificate checks for the chart download'
        ),
        Option(
          name: '--is-upgrade',
          description: 'Set .Release.IsUpgrade instead of .Release.IsInstall'
        ),
        Option(
          name: '--key-file',
          description: 'Identify HTTPS client using this SSL key file',
          args: [
            Arg(
            name: 'key-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--keyring',
          description: 'Location of public keys used for verification',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        ),
        Option(
          name: '--kube-version',
          description: 'Kubernetes version used for Capabilities.KubeVersion',
          args: [
            Arg(
            name: 'kube-versio'
          )
          ]
        ),
        Option(
          name: '--name-template',
          description: 'Specify template used to name the release',
          args: [
            Arg(
            name: 'name-templat'
          )
          ]
        ),
        Option(
          name: '--no-hooks',
          description: 'Prevent hooks from running during install'
        ),
        Option(
          name: '--output-dir',
          description: 'Writes the executed templates to files in output-dir instead of stdout',
          args: [
            Arg(
            name: 'output-dir',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--pass-credentials',
          description: 'Pass credentials to all domains'
        ),
        Option(
          name: '--password',
          description: 'Chart repository password where to locate the requested chart',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--post-renderer',
          description: 'The path to an executable to be used for post rendering. If it exists in \$PATH, the binary will be used, otherwise it will try to look for the executable at the given path',
          args: [
            Arg(
            name: 'post-rendere'
          )
          ]
        ),
        Option(
          name: '--post-renderer-args',
          description: 'An argument to the post-renderer (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'post-renderer-arg'
          )
          ]
        ),
        Option(
          name: '--release-name',
          description: 'Use release name in the output-dir path'
        ),
        Option(
          name: '--render-subchart-notes',
          description: 'If set, render subchart notes along with the parent'
        ),
        Option(
          name: '--replace',
          description: 'Re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production'
        ),
        Option(
          name: '--repo',
          description: 'Chart repository url where to locate the requested chart',
          args: [
            Arg(
            name: 'rep'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--set-string',
          description: 'Set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-strin'
          )
          ]
        ),
        Option(
          name: ['--show-only', '-s'],
          description: 'Only show manifests rendered from the given templates',
          isRepeatable: true,
          args: [
            Arg(
            name: 'show-onl'
          )
          ]
        ),
        Option(
          name: '--skip-crds',
          description: 'If set, no CRDs will be installed. By default, CRDs are installed if not already present'
        ),
        Option(
          name: '--skip-tests',
          description: 'Skip tests from templated output'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'Chart repository username where to locate the requested chart',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        ),
        Option(
          name: '--validate',
          description: 'Validate your manifests against the Kubernetes cluster you are currently pointing at. This is the same validation performed on an install'
        ),
        Option(
          name: ['--values', '-f'],
          description: 'Specify values in a YAML file or a URL (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'values',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--verify',
          description: 'Verify the package before using it'
        ),
        Option(
          name: '--version',
          description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'If set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout'
        ),
        Option(
          name: '--wait-for-jobs',
          description: 'If set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run tests for a release',
      options: [
        Option(
          name: '--filter',
          description: 'Specify tests by attribute (currently "name") using attribute=value syntax or \'!attribute=value\' to exclude a test (can specify multiple or separate values with commas: name=test1,name=test2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'filte'
          )
          ]
        ),
        Option(
          name: '--logs',
          description: 'Dump the logs from test pods (this runs after all tests are complete, but before any cleanup)'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['del', 'delete', 'un', 'uninstall'],
      description: 'Uninstall a release',
      options: [
        Option(
          name: '--description',
          description: 'Add a custom description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Simulate a uninstall'
        ),
        Option(
          name: '--keep-history',
          description: 'Remove all associated resources and mark the release as deleted, but retain the release history'
        ),
        Option(
          name: '--no-hooks',
          description: 'Prevent hooks from running during uninstallation'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'If set, will wait until all the resources are deleted before returning. It will wait for as long as --timeout'
        )
      ]
    ),
    Subcommand(
      name: 'unittest',
      description: 'Unittest for helm charts'
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade a release',
      options: [
        Option(
          name: '--atomic',
          description: 'If set, upgrade process rolls back changes made in case of failed upgrade. The --wait flag will be set automatically if --atomic is used'
        ),
        Option(
          name: '--ca-file',
          description: 'Verify certificates of HTTPS-enabled servers using this CA bundle',
          args: [
            Arg(
            name: 'ca-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cert-file',
          description: 'Identify HTTPS client using this SSL certificate file',
          args: [
            Arg(
            name: 'cert-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--cleanup-on-fail',
          description: 'Allow deletion of new resources created in this upgrade when upgrade fails'
        ),
        Option(
          name: '--create-namespace',
          description: 'If --install is set, create the release namespace if not present'
        ),
        Option(
          name: '--dependency-update',
          description: 'Update dependencies if they are missing before installing the chart'
        ),
        Option(
          name: '--description',
          description: 'Add a custom description',
          args: [
            Arg(
            name: 'descriptio'
          )
          ]
        ),
        Option(
          name: '--devel',
          description: 'Use development versions, too. Equivalent to version \'>0.0.0-0\'. If --version is set, this is ignored'
        ),
        Option(
          name: '--disable-openapi-validation',
          description: 'If set, the upgrade process will not validate rendered templates against the Kubernetes OpenAPI Schema'
        ),
        Option(
          name: '--dry-run',
          description: 'Simulate an upgrade'
        ),
        Option(
          name: '--force',
          description: 'Force resource updates through a replacement strategy'
        ),
        Option(
          name: '--history-max',
          description: 'Limit the maximum number of revisions saved per release. Use 0 for no limit',
          args: [
            Arg(
            name: 'history-max',
            defaultValue: '1'
          )
          ]
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip tls certificate checks for the chart download'
        ),
        Option(
          name: ['--install', '-i'],
          description: 'If a release by this name doesn\'t already exist, run an install'
        ),
        Option(
          name: '--key-file',
          description: 'Identify HTTPS client using this SSL key file',
          args: [
            Arg(
            name: 'key-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--keyring',
          description: 'Location of public keys used for verification',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        ),
        Option(
          name: '--no-hooks',
          description: 'Disable pre/post upgrade hooks'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Prints the output in the specified format. Allowed values: table, json, yaml',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'tabl'
          )
          ]
        ),
        Option(
          name: '--pass-credentials',
          description: 'Pass credentials to all domains'
        ),
        Option(
          name: '--password',
          description: 'Chart repository password where to locate the requested chart',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--post-renderer',
          description: 'The path to an executable to be used for post rendering. If it exists in \$PATH, the binary will be used, otherwise it will try to look for the executable at the given path',
          args: [
            Arg(
            name: 'post-rendere'
          )
          ]
        ),
        Option(
          name: '--post-renderer-args',
          description: 'An argument to the post-renderer (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'post-renderer-arg'
          )
          ]
        ),
        Option(
          name: '--recreate-pods',
          description: 'Performs pods restart for the resource if applicable'
        ),
        Option(
          name: '--render-subchart-notes',
          description: 'If set, render subchart notes along with the parent'
        ),
        Option(
          name: '--repo',
          description: 'Chart repository url where to locate the requested chart',
          args: [
            Arg(
            name: 'rep'
          )
          ]
        ),
        Option(
          name: '--reset-values',
          description: 'When upgrading, reset the values to the ones built into the chart'
        ),
        Option(
          name: '--reuse-values',
          description: 'When upgrading, reuse the last release\'s values and merge in any overrides from the command line via --set and -f. If \'--reset-values\' is specified, this is ignored'
        ),
        Option(
          name: '--set',
          description: 'Set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: '--set-file',
          description: 'Set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-file',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--set-string',
          description: 'Set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'set-strin'
          )
          ]
        ),
        Option(
          name: '--skip-crds',
          description: 'If set, no CRDs will be installed when an upgrade is performed with install flag enabled. By default, CRDs are installed if not already present, when an upgrade is performed with install flag enabled'
        ),
        Option(
          name: '--timeout',
          description: 'Time to wait for any individual Kubernetes operation (like Jobs for hooks)',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '5m0'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'Chart repository username where to locate the requested chart',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        ),
        Option(
          name: ['--values', '-f'],
          description: 'Specify values in a YAML file or a URL (can specify multiple)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'values',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--verify',
          description: 'Verify the package before using it'
        ),
        Option(
          name: '--version',
          description: 'Specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'If set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout'
        ),
        Option(
          name: '--wait-for-jobs',
          description: 'If set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout'
        )
      ]
    ),
    Subcommand(
      name: 'verify',
      description: 'Verify that a chart at the given path has been signed and is valid',
      options: [
        Option(
          name: '--keyring',
          description: 'Keyring containing public keys',
          args: [
            Arg(
            name: 'keyring',
            template: 'filepaths',
            defaultValue: '~/.gnupg/pubring.gpg'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the client version information',
      options: [
        Option(
          name: ['--client', '-c'],
          description: 'Display client version information'
        ),
        Option(
          name: '--short',
          description: 'Print the version number'
        ),
        Option(
          name: '--template',
          description: 'Template for version string format',
          args: [
            Arg(
            name: 'templat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: 'completion',
          description: 'Generate autocompletion scripts for the specified shell',
          subcommands: [
            Subcommand(
              name: 'bash',
              description: 'Generate autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new chart with the given name'
        ),
        Subcommand(
          name: ['dep', 'dependencies', 'dependency'],
          description: 'Manage a chart\'s dependencies',
          subcommands: [
            Subcommand(
              name: 'build',
              description: 'Rebuild the charts/ directory based on the Chart.lock file'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List the dependencies for the given chart'
            ),
            Subcommand(
              name: ['up', 'update'],
              description: 'Update charts/ based on the contents of Chart.yaml'
            )
          ]
        ),
        Subcommand(
          name: 'env',
          description: 'Helm client environment information'
        ),
        Subcommand(
          name: 'get',
          description: 'Download extended information of a named release',
          subcommands: [
            Subcommand(
              name: 'all',
              description: 'Download all information for a named release'
            ),
            Subcommand(
              name: 'hooks',
              description: 'Download all hooks for a named release'
            ),
            Subcommand(
              name: 'manifest',
              description: 'Download the manifest for a named release'
            ),
            Subcommand(
              name: 'notes',
              description: 'Download the notes for a named release'
            ),
            Subcommand(
              name: 'values',
              description: 'Download the values file for a named release'
            )
          ]
        ),
        Subcommand(
          name: ['hist', 'history'],
          description: 'Fetch release history'
        ),
        Subcommand(
          name: 'install',
          description: 'Install a chart'
        ),
        Subcommand(
          name: 'lint',
          description: 'Examine a chart for possible issues'
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List releases'
        ),
        Subcommand(
          name: 'package',
          description: 'Package a chart directory into a chart archive'
        ),
        Subcommand(
          name: 'plugin',
          description: 'Install, list, or uninstall Helm plugins',
          subcommands: [
            Subcommand(
              name: ['add', 'install'],
              description: 'Install one or more Helm plugins'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List installed Helm plugins'
            ),
            Subcommand(
              name: ['rm', 'remove', 'uninstall'],
              description: 'Uninstall one or more Helm plugins'
            ),
            Subcommand(
              name: ['up', 'update'],
              description: 'Update one or more Helm plugins'
            )
          ]
        ),
        Subcommand(
          name: ['fetch', 'pull'],
          description: 'Download a chart from a repository and (optionally) unpack it in local directory'
        ),
        Subcommand(
          name: 'push',
          description: 'Push a chart to remote'
        ),
        Subcommand(
          name: 'registry',
          description: 'Login to or logout from a registry',
          subcommands: [
            Subcommand(
              name: 'login',
              description: 'Login to a registry'
            ),
            Subcommand(
              name: 'logout',
              description: 'Logout from a registry'
            )
          ]
        ),
        Subcommand(
          name: 'repo',
          description: 'Add, list, remove, update, and index chart repositories',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add a chart repository'
            ),
            Subcommand(
              name: 'index',
              description: 'Generate an index file given a directory containing packaged charts'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'List chart repositories'
            ),
            Subcommand(
              name: ['rm', 'remove'],
              description: 'Remove one or more chart repositories'
            ),
            Subcommand(
              name: ['up', 'update'],
              description: 'Update information of available charts locally from chart repositories'
            )
          ]
        ),
        Subcommand(
          name: 'rollback',
          description: 'Roll back a release to a previous revision'
        ),
        Subcommand(
          name: 's3',
          description: 'Manage chart repositories on Amazon S3'
        ),
        Subcommand(
          name: 'search',
          description: 'Search for a keyword in charts',
          subcommands: [
            Subcommand(
              name: 'hub',
              description: 'Search for charts in the Artifact Hub or your own hub instance'
            ),
            Subcommand(
              name: 'repo',
              description: 'Search repositories for a keyword in charts'
            )
          ]
        ),
        Subcommand(
          name: ['inspect', 'show'],
          description: 'Show information of a chart',
          subcommands: [
            Subcommand(
              name: 'all',
              description: 'Show all information of the chart'
            ),
            Subcommand(
              name: 'chart',
              description: 'Show the chart\'s definition'
            ),
            Subcommand(
              name: 'crds',
              description: 'Show the chart\'s CRDs'
            ),
            Subcommand(
              name: 'readme',
              description: 'Show the chart\'s README'
            ),
            Subcommand(
              name: 'values',
              description: 'Show the chart\'s values'
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Display the status of the named release'
        ),
        Subcommand(
          name: 'template',
          description: 'Locally render templates'
        ),
        Subcommand(
          name: 'test',
          description: 'Run tests for a release'
        ),
        Subcommand(
          name: ['del', 'delete', 'un', 'uninstall'],
          description: 'Uninstall a release'
        ),
        Subcommand(
          name: 'unittest',
          description: 'Unittest for helm charts'
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade a release'
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify that a chart at the given path has been signed and is valid'
        ),
        Subcommand(
          name: 'version',
          description: 'Print the client version information'
        )
      ]
    )
  ],
  options: [
    Option(
      name: '--add-dir-header',
      description: 'If true, adds the file directory to the header of the log messages',
      isPersistent: true
    ),
    Option(
      name: '--alsologtostderr',
      description: 'Log to standard error as well as files',
      isPersistent: true
    ),
    Option(
      name: '--burst-limit',
      description: 'Client-side default throttling limit',
      isPersistent: true,
      args: [
        Arg(
        name: 'burst-limit',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Enable verbose output',
      isPersistent: true
    ),
    Option(
      name: '--kube-apiserver',
      description: 'The address and the port for the Kubernetes API server',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-apiserve'
      )
      ]
    ),
    Option(
      name: '--kube-as-group',
      description: 'Group to impersonate for the operation, this flag can be repeated to specify multiple groups',
      isPersistent: true,
      isRepeatable: true,
      args: [
        Arg(
        name: 'kube-as-grou'
      )
      ]
    ),
    Option(
      name: '--kube-as-user',
      description: 'Username to impersonate for the operation',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-as-use'
      )
      ]
    ),
    Option(
      name: '--kube-ca-file',
      description: 'The certificate authority file for the Kubernetes API server connection',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-ca-file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--kube-context',
      description: 'Name of the kubeconfig context to use',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-contex'
      )
      ]
    ),
    Option(
      name: '--kube-insecure-skip-tls-verify',
      description: 'If true, the Kubernetes API server\'s certificate will not be checked for validity. This will make your HTTPS connections insecure',
      isPersistent: true
    ),
    Option(
      name: '--kube-tls-server-name',
      description: 'Server name to use for Kubernetes API server certificate validation. If it is not provided, the hostname used to contact the server is used',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-tls-server-nam'
      )
      ]
    ),
    Option(
      name: '--kube-token',
      description: 'Bearer token used for authentication',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-toke'
      )
      ]
    ),
    Option(
      name: '--kubeconfig',
      description: 'Path to the kubeconfig file',
      isPersistent: true,
      args: [
        Arg(
        name: 'kubeconfig',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--log-backtrace-at',
      description: 'When logging hits line file:N, emit a stack trace',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-backtrace-at',
        defaultValue: ':'
      )
      ]
    ),
    Option(
      name: '--log-dir',
      description: 'If non-empty, write log files in this directory',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-dir',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--log-file',
      description: 'If non-empty, use this log file',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--log-file-max-size',
      description: 'Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-file-max-size',
        defaultValue: '180'
      )
      ]
    ),
    Option(
      name: '--logtostderr',
      description: 'Log to standard error instead of files',
      isPersistent: true
    ),
    Option(
      name: ['--namespace', '-n'],
      description: 'Namespace scope for this request',
      isPersistent: true,
      args: [
        Arg(
        name: 'namespac'
      )
      ]
    ),
    Option(
      name: '--one-output',
      description: 'If true, only write logs to their native severity level (vs also writing to each lower severity level)',
      isPersistent: true
    ),
    Option(
      name: '--registry-config',
      description: 'Path to the registry config file',
      isPersistent: true,
      args: [
        Arg(
        name: 'registry-config',
        template: 'filepaths',
        defaultValue: '~/Library/Preferences/helm/registry/config.json'
      )
      ]
    ),
    Option(
      name: '--repository-cache',
      description: 'Path to the file containing cached repository indexes',
      isPersistent: true,
      args: [
        Arg(
        name: 'repository-cache',
        template: 'filepaths',
        defaultValue: '~/Library/Caches/helm/repository'
      )
      ]
    ),
    Option(
      name: '--repository-config',
      description: 'Path to the file containing repository names and URLs',
      isPersistent: true,
      args: [
        Arg(
        name: 'repository-config',
        template: 'filepaths',
        defaultValue: '~/Library/Preferences/helm/repositories.yaml'
      )
      ]
    ),
    Option(
      name: '--skip-headers',
      description: 'If true, avoid header prefixes in the log messages',
      isPersistent: true
    ),
    Option(
      name: '--skip-log-headers',
      description: 'If true, avoid headers when opening log files',
      isPersistent: true
    ),
    Option(
      name: '--stderrthreshold',
      description: 'Logs at or above this threshold go to stderr',
      isPersistent: true,
      args: [
        Arg(
        name: 'stderrthreshold',
        defaultValue: ''
      )
      ]
    ),
    Option(
      name: ['--v', '-v'],
      description: 'Number for the log level verbosity',
      isPersistent: true,
      args: [
        Arg(
        name: 'v',
        defaultValue: ''
      )
      ]
    ),
    Option(
      name: '--vmodule',
      description: 'Comma-separated list of pattern=N settings for file-filtered logging',
      isPersistent: true,
      args: [
        Arg(
        name: 'vmodul'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
