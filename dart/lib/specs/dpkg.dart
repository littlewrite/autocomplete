// Auto-generated from TypeScript source: dpkg.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dpkg` CLI
final FigSpec dpkgSpec = FigSpec(
  name: 'dpkg',
  description: 'Debian package management system',
  subcommands: [
    Subcommand(
      name: 'query',
      description: 'Query the dpkg database',
      options: [
        Option(
          name: ['-l', '--list'],
          description: 'List packages matching a pattern',
          args: [
            Arg(
            name: 'patter'
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'Display the status of available packages',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-L', '--listfiles'],
          description: 'List files in a package',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-S', '--search'],
          description: 'Search for a package owning a file',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['-p', '--print-avail'],
          description: 'Display details about a package in the dpkg database',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-W', '--show'],
          description: 'Show a package in the dpkg database',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install or upgrade packages',
      args: [
        Arg(
        name: 'packag'
      )
      ],
      options: [
        Option(
          name: ['-R', '--recursive'],
          description: 'Recursively handle packages'
        ),
        Option(
          name: ['-B', '--auto-deconfigure'],
          description: 'Uninstall packages that depend on the target package'
        ),
        Option(
          name: '--skip-same-version',
          description: 'Don\'t upgrade if the same version is already installed'
        ),
        Option(
          name: '--force-depends',
          description: 'Ignore dependency problems'
        ),
        Option(
          name: '--force-confnew',
          description: 'Always install the new version of configuration files'
        ),
        Option(
          name: '--force-confold',
          description: 'Always install the old version of configuration files'
        ),
        Option(
          name: '--force-confdef',
          description: 'Always install the default version of configuration files'
        ),
        Option(
          name: '--force-confmiss',
          description: 'Always install missing configuration files'
        ),
        Option(
          name: '--no-triggers',
          description: 'Skip processing triggers'
        ),
        Option(
          name: '--no-act',
          description: 'Simulate the action, but don\'t execute'
        )
      ]
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove packages',
      args: [
        Arg(
        name: 'packag'
      )
      ],
      options: [
        Option(
          name: ['-R', '--recursive'],
          description: 'Recursively remove packages'
        ),
        Option(
          name: ['-B', '--auto-deconfigure'],
          description: 'Uninstall packages that depend on the target package'
        ),
        Option(
          name: '--no-act',
          description: 'Simulate the action, but don\'t execute'
        )
      ]
    ),
    Subcommand(
      name: 'purge',
      description: 'Remove packages and their configuration files',
      args: [
        Arg(
        name: 'packag'
      )
      ],
      options: [
        Option(
          name: ['-R', '--recursive'],
          description: 'Recursively remove packages'
        ),
        Option(
          name: '--no-act',
          description: 'Simulate the action, but don\'t execute'
        )
      ]
    ),
    Subcommand(
      name: 'configure',
      description: 'Configure a package after installation',
      args: [
        Arg(
        name: 'packag'
      )
      ],
      options: [
        Option(
          name: '--pending',
          description: 'Configure all unconfigured packages'
        ),
        Option(
          name: '--no-triggers',
          description: 'Skip processing triggers'
        ),
        Option(
          name: '--no-act',
          description: 'Simulate the action, but don\'t execute'
        )
      ]
    ),
    Subcommand(
      name: 'reconfigure',
      description: 'Reconfigure a package',
      args: [
        Arg(
        name: 'packag'
      )
      ],
      options: [
        Option(
          name: '--no-triggers',
          description: 'Skip processing triggers'
        ),
        Option(
          name: '--no-act',
          description: 'Simulate the action, but don\'t execute'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List packages in the dpkg database',
      options: [
        Option(
          name: ['-l', '--list'],
          description: 'List packages matching a pattern',
          args: [
            Arg(
            name: 'patter'
          )
          ]
        ),
        Option(
          name: ['-s', '--status'],
          description: 'Display the status of available packages',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-L', '--listfiles'],
          description: 'List files in a package',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-S', '--search'],
          description: 'Search for a package owning a file',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['-p', '--print-avail'],
          description: 'Display details about a package in the dpkg database',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: ['-W', '--show'],
          description: 'Show a package in the dpkg database',
          args: [
            Arg(
            name: 'packag'
          )
          ]
        ),
        Option(
          name: '--installed',
          description: 'List installed packages'
        ),
        Option(
          name: '--avail',
          description: 'List available packages'
        ),
        Option(
          name: '--hold',
          description: 'List packages on hold'
        ),
        Option(
          name: '--deferred',
          description: 'List deferred packages'
        )
      ]
    ),
    Subcommand(
      name: 'builddeb',
      description: 'Build Debian package files from sources',
      args: [
        Arg(
        name: 'director'
      )
      ],
      options: [
        Option(
          name: ['-us', '--unsigned'],
          description: 'Build unsigned .changes and .dsc files'
        ),
        Option(
          name: ['-uc', '--unsigned-changes'],
          description: 'Build unsigned .changes file'
        ),
        Option(
          name: ['-sa', '--source'],
          description: 'Build source package'
        ),
        Option(
          name: '-rfakeroot',
          description: 'Use fakeroot when building the package'
        ),
        Option(
          name: ['-b', '--binary'],
          description: 'Build binary package from source'
        ),
        Option(
          name: '--force-sign',
          description: 'Force signing of changes file'
        ),
        Option(
          name: ['-m', '--maintainer'],
          description: 'Specify the package maintainer',
          args: [
            Arg(
            name: 'emai'
          )
          ]
        ),
        Option(
          name: ['-c', '--changes'],
          description: 'Specify the changes file to use',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: ['-v', '--version'],
          description: 'Specify the version to use',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--increment',
          description: 'Increment the version number in the changelog'
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Check the dependencies of packages',
      args: [
        Arg(
        name: 'package',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['-a', '--all'],
          description: 'Check all installed packages'
        ),
        Option(
          name: ['-d', '--unmet'],
          description: 'Check for unmet dependencies'
        ),
        Option(
          name: ['-i', '--check-installed'],
          description: 'Check installed packages'
        ),
        Option(
          name: ['-U', '--check-unpacked'],
          description: 'Check unpacked packages'
        ),
        Option(
          name: ['-c', '--nocheck'],
          description: 'Skip checking for broken dependencies'
        ),
        Option(
          name: ['-r', '--reverse'],
          description: 'Check reverse dependencies'
        )
      ]
    ),
    Subcommand(
      name: 'compare-versions',
      description: 'Compare package versions',
      args: [
        Arg(
          name: 'version1'
        ),
        Arg(
          name: 'relation',
          isOptional: true,
          suggestions: [
            FigSuggestion(name: 'lt'),
            FigSuggestion(name: 'le'),
            FigSuggestion(name: 'eq'),
            FigSuggestion(name: 'ne'),
            FigSuggestion(name: 'gt'),
            FigSuggestion(name: 'ge')
          ]
        ),
        Arg(
          name: 'version2'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Help for dpkg'
    )
  ]
);
