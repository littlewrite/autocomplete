// Auto-generated from TypeScript source: cmake.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cmake` CLI
final FigSpec cmakeSpec = FigSpec(
  name: 'cmake',
  description: 'Command-line interface of the cross-platform buildsystem generator CMake',
  subcommands: [

    Subcommand(
      name: '--build',
      description: 'Project binary directory to be built and must be first. This is required unless a preset is specified',
      args: [
        Arg(
        name: 'dir',
        template: 'folders',
        isOptional: true
      )
      ],
      options: [

        Option(
          name: '--preset',
          description: 'Use a build preset to specify build options',
          args: [
            Arg(
            name: 'preset'
          )
          ]
        ),
        Option(
          name: '--list-presets',
          description: 'Lists the available presets. If no option is specified only configure presets will be listed. The current working directory must contain CMake preset files'
        ),
        Option(
          name: ['--parallel', '-j'],
          description: 'The maximum number of concurrent processes to use when building. If <jobs> is omitted the native build tool\'s default number is used',
          args: [
            Arg(
            name: 'jobs',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['--target', '-t'],
          description: 'Build <tgt> instead of the default target. Multiple targets may be given, separated by spaces',
          args: [
            Arg(
            name: 'target',
            isVariadic: true
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'For multi-configuration tools, choose configuration <cfg>',
          args: [
            Arg(
            name: 'cfg'
          )
          ]
        ),
        Option(
          name: '--clean-first',
          description: 'Build target clean first, then build'
        ),
        Option(
          name: '--use-stderr',
          description: 'Ignored. Behavior is default in CMake >= 3.0'
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Enable verbose output - if supported - including the build commands to be executed'
        ),
        Option(
          name: '--',
          description: 'Pass remaining options to the native tool'
        )
      ]
    ),
    Subcommand(
      name: '--install',
      description: 'Project binary directory to install. This is required and must be first',
      args: [
        Arg(
        name: 'dir',
        template: 'folders'
      )
      ],
      options: [

        Option(
          name: '--config',
          description: 'For multi-configuration generators',
          args: [
            Arg(
            name: 'cfg'
          )
          ]
        ),
        Option(
          name: '--component',
          description: 'Component-based install. Only install component specified',
          args: [
            Arg(
            name: 'cfg'
          )
          ]
        ),
        Option(
          name: '--default-directory-permissions',
          description: 'Default directory install permissions',
          args: [
            Arg(
            name: 'permissions',
            description: 'Format: <u=rwx,g=rx,o=rx>'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Override the installation prefix',
          args: [
            Arg(
            name: 'prefix'
          )
          ]
        ),
        Option(
          name: '--strip',
          description: 'Strip before installing'
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Enable verbose output'
        )
      ]
    ),
    Subcommand(
      name: '--open',
      description: 'Open the generated project in the associated application. This is only supported by some generators',
      args: [
        Arg(
        name: 'dir',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: '-P',
      description: 'Process the given cmake file as a script written in the CMake language. No configure or generate step is performed and the cache is not modified. If variables are defined using -D, this must be done before the -P argument',
      args: [
        Arg(
        name: 'cmake script file',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: '-E',
      description: 'CMake provides builtin command-line tools through the signature',
      subcommands: [

        Subcommand(
          name: 'capabilities',
          description: 'Report cmake capabilities in JSON format. The output is a JSON object with the following keys'
        ),
        Subcommand(
          name: 'cat',
          description: 'Concatenate files and print on the standard output',
          args: [
            Arg(
            name: 'files',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'chdir',
          description: 'Change the current working directory and run a command',
          args: [

            Arg(
              name: 'dir',
              template: 'folders'
            ),
            Arg(
              name: 'command'
            )
          ]
        ),
        Subcommand(
          name: 'compare_files',
          description: 'Check if file1 is the same as file2. If fails are the same, then returns 0, if not returns 1. In case of invalid arguments, it returns 2',
          args: [

            Arg(
              name: 'file1',
              template: 'filepaths'
            ),
            Arg(
              name: 'file2',
              template: 'filepaths'
            )
          ],
          options: [

            Option(
              name: '--ignore-eol',
              description: 'Implies line-wise comparison and ignores LF/CRLF differences'
            )
          ]
        ),
        Subcommand(
          name: 'copy',
          description: 'Copy files to <destination> (either file or directory). If multiple files are specified, the <destination> must be directory and it must exist. Wildcards are not supported. copy does follow symlinks. That means it does not copy symlinks, but the files or directories it point to',
          args: [

            Arg(
              name: 'file',
              template: 'filepaths',
              isVariadic: true
            ),
            Arg(
              name: 'destination',
              template: 'folders'
            )
          ]
        ),
        Subcommand(
          name: 'copy_directory',
          description: 'Copy content of <dir>... directories to <destination> directory. If <destination> directory does not exist it will be created. copy_directory does follow symlinks',
          args: [

            Arg(
              name: 'dir',
              template: 'folders',
              isVariadic: true
            ),
            Arg(
              name: 'destination',
              template: 'folders'
            )
          ]
        ),
        Subcommand(
          name: 'copy_if_different',
          description: 'Copy files to <destination> (either file or directory) if they have changed. If multiple files are specified, the <destination> must be directory and it must exist. copy_if_different does follow symlinks',
          args: [

            Arg(
              name: 'file',
              template: 'filepaths',
              isVariadic: true
            ),
            Arg(
              name: 'destination',
              template: 'folders'
            )
          ]
        ),
        Subcommand(
          name: 'create_symlink',
          description: 'Create a symbolic link <new> naming <old>',
          args: [

            Arg(
              name: 'old'
            ),
            Arg(
              name: 'new'
            )
          ]
        ),
        Subcommand(
          name: 'create_hardlink',
          description: 'Create a hard link <new> naming <old>',
          args: [

            Arg(
              name: 'old'
            ),
            Arg(
              name: 'new'
            )
          ]
        ),
        Subcommand(
          name: 'echo',
          description: 'Displays arguments as text',
          args: [
            Arg(
            name: 'string',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'echo_append',
          description: 'Displays arguments as text but no new line',
          args: [
            Arg(
            name: 'string',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'env',
          description: 'Run command in a modified environment',
          args: [

            Arg(
              name: 'key value pair',
              description: 'Format: NAME=VALUE',
              isOptional: true,
              isVariadic: true
            ),
            Arg(
              name: 'command'
            )
          ],
          options: [

            Option(
              name: '--unset',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'environment',
          description: 'Display the current environment variables'
        ),
        Subcommand(
          name: 'false',
          description: 'Do nothing, with an exit code of 1'
        ),
        Subcommand(
          name: 'make_directory',
          description: 'Create <dir> directories. If necessary, create parent directories too. If a directory already exists it will be silently ignored',
          args: [
            Arg(
            name: 'dir',
            template: 'folders',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'md5sum',
          description: 'Create MD5 checksum of files in md5sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'sha1sum',
          description: 'Create SHA1 checksum of files in sha1sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'sha224sum',
          description: 'Create SHA224 checksum of files in sha224sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'sha226sum',
          description: 'Create SHA226 checksum of files in sha226sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'sha384sum',
          description: 'Create SHA384 checksum of files in sha384sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'sha512sum',
          description: 'Create SHA512 checksum of files in sha512sum compatible format',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove the file(s). The planned behavior was that if any of the listed files already do not exist, the command returns a non-zero exit code, but no message is logged',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ],
          options: [

            Option(
              name: '-f',
              description: 'The -f option changes the behavior to return a zero exit code (i.e. success) in such situations instead. remove does not follow symlinks. That means it remove only symlinks and not files it point to'
            )
          ]
        ),
        Subcommand(
          name: 'remove_directory',
          description: 'Remove <dir> directories and their contents. If a directory does not exist it will be silently ignored. If <dir> is a symlink to a directory, just the symlink will be removed. Use rm instead',
          args: [
            Arg(
            name: 'dir',
            template: 'folders',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'rm',
          description: 'Remove the files <file> or directories dir',
          args: [

            Arg(
              name: 'file',
              template: 'filepaths',
              isVariadic: true
            ),
            Arg(
              name: 'dir',
              template: 'folders',
              isVariadic: true
            )
          ],
          options: [

            Option(
              name: ['-r', '-R'],
              description: 'Use -r or -R to remove directories and their contents recursively. If any of the listed files/directories do not exist, the command returns a non-zero exit code, but no message is logged'
            ),
            Option(
              name: '-f',
              description: 'The -f option changes the behavior to return a zero exit code (i.e. success) in such situations instead'
            )
          ]
        ),
        Subcommand(
          name: 'server',
          description: 'Launch cmake-server(7) mode'
        ),
        Subcommand(
          name: 'sleep',
          description: 'Sleep for given number of seconds',
          args: [
            Arg(
            name: 'number',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'tar',
          description: 'Create or extract a tar or zip archive',
          options: [

            Option(
              name: 'c',
              description: 'Create a new archive containing the specified files. If used, the pathname argument is mandatory'
            ),
            Option(
              name: 'x',
              description: 'Extract to disk from the archive. The <pathname>... argument could be used to extract only selected files or directories. When extracting selected files or directories, you must provide their exact names including the path, as printed by list (-t)'
            ),
            Option(
              name: 't',
              description: 'List archive contents. The <pathname>... argument could be used to list only selected files or directories'
            ),
            Option(
              name: 'v',
              description: 'Produce verbose output'
            ),
            Option(
              name: 'z',
              description: 'Compress the resulting archive with gzip'
            ),
            Option(
              name: 'j',
              description: 'Compress the resulting archive with bzip2'
            ),
            Option(
              name: 'J',
              description: 'Compress the resulting archive with XZ'
            ),
            Option(
              name: '--zstd',
              description: 'Compress the resulting archive with Zstandard'
            ),
            Option(
              name: '--files-from',
              description: 'Read file names from the given file, one per line. Blank lines are ignored. Lines may not start in - except for --add-file=<name> to add files whose names start in -',
              args: [
                Arg(
                name: 'file',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Specify the format of the archive to be created',
              args: [
                Arg(
                name: 'format',
                suggestions: [

                  FigSuggestion(name: '7zip'),
                  FigSuggestion(name: 'gnutar'),
                  FigSuggestion(name: 'pax'),
                  FigSuggestion(name: 'paxr'),
                  FigSuggestion(name: 'zip')
                ]
              )
              ]
            ),
            Option(
              name: '--mtime',
              description: 'Specify modification time recorded in tarball entries',
              args: [
                Arg(
                name: 'date'
              )
              ]
            ),
            Option(
              name: '--',
              description: 'Stop interpreting options and treat all remaining arguments as file names, even if they start with -'
            )
          ],
          args: [
            Arg(
            name: 'pathname',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'time',
          description: 'Run command and display elapsed time',
          args: [
            Arg(
            name: 'command'
          )
          ]
        ),
        Subcommand(
          name: 'touch',
          description: 'Creates <file> if file do not exist. If <file> exists, it is changing <file> access and modification times',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'touch_nocreate',
          description: 'Touch a file if it exists but do not create it. If a file does not exist it will be silently ignored',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'true',
          description: 'Do nothing, with an exit code of 0'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '-S',
      description: 'Path to root directory of the CMake project to build',
      args: [
        Arg(
        name: 'path-to-source',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--help'
    ),
    Option(
      name: '-B',
      description: 'Path to directory which CMake will use as the root of build directory. If the directory doesn\'t already exist CMake will make it',
      args: [
        Arg(
        name: 'path-to-source',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-C',
      description: 'Pre-load a script to populate the cache',
      args: [
        Arg(
        name: 'initial-cache',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-D',
      description: 'Create or update a CMake CACHE entry',
      args: [
        Arg(
        name: 'key value pair',
        description: '<var>:<type>=<value> or <var>=<value>'
      )
      ]
    ),
    Option(
      name: '-U',
      description: 'Remove matching entries from CMake CACHE',
      args: [
        Arg(
        name: 'globbing_expr'
      )
      ]
    ),
    Option(
      name: '-G',
      description: 'Specify a build system generator',
      args: [
        Arg(
        name: 'generator-name'
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Toolset specification for the generator, if supported',
      args: [
        Arg(
        name: 'toolset-spec'
      )
      ]
    ),
    Option(
      name: '-A',
      description: 'Specify platform name if supported by generator',
      args: [
        Arg(
        name: 'platform-name'
      )
      ]
    ),
    Option(
      name: 'toolchain',
      description: 'Specify the cross compiling toolchain file, equivalent to setting CMAKE_TOOLCHAIN_FILE variable',
      args: [
        Arg(
        name: 'path-to-file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--install-prefix',
      description: 'Specify the installation directory, used by the CMAKE_INSTALL_PREFIX variable. Must be an absolute path',
      args: [
        Arg(
        name: 'directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-Wno-dev',
      description: 'Suppress developer warnings'
    ),
    Option(
      name: '-Wdev',
      description: 'Enable developer warnings'
    ),
    Option(
      name: '-Werror',
      description: 'Enable the type of warnings',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(
            name: 'dev',
            description: 'Make developer warnings errors'
          ),
          FigSuggestion(
            name: 'deprecated',
            description: 'Make deprecated macro and function warnings errors'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-Wno-error',
      description: 'Disable the type of warnings',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(
            name: 'dev',
            description: 'Make developer warnings not errors'
          ),
          FigSuggestion(
            name: 'deprecated',
            description: 'Make deprecated macro and function warnings not errors'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-Wdeprecated',
      description: 'Enable deprecated functionality warnings'
    ),
    Option(
      name: '-Wno-deprecated',
      description: 'Suppress deprecated functionality warnings'
    ),
    Option(
      name: '-L',
      description: 'List non-advanced cached-variables'
    ),
    Option(
      name: '-N',
      description: 'View mode only'
    ),
    Option(
      name: '--graphviz',
      description: 'Generate graphviz of dependencies',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--system-information',
      description: 'Dump information about this system',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--log-level',
      description: 'Set log-level',
      args: [
        Arg(
        name: 'log-level',
        suggestions: [

          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'WARNING'),
          FigSuggestion(name: 'NOTICE'),
          FigSuggestion(name: 'STATUS'),
          FigSuggestion(name: 'VERBOSE'),
          FigSuggestion(name: 'DEBUG'),
          FigSuggestion(name: 'TRACE')
        ]
      )
      ]
    ),
    Option(
      name: '--log-context',
      description: 'Enable the message() command outputting context attached to each message'
    ),
    Option(
      name: '--debug-trycompile',
      description: 'Do not delete the try_compile() build tree'
    ),
    Option(
      name: '--debug-output',
      description: 'Put cmake in a debug mode'
    ),
    Option(
      name: '--debug-find',
      description: 'Put cmake find commands in a debug mode'
    ),
    Option(
      name: '--trace',
      description: 'Put cmake in trace mode'
    ),
    Option(
      name: '--trace-expand',
      description: 'Put cmake in trace mode with variables expanded'
    ),
    Option(
      name: '--trace-format',
      description: 'Put cmake in trace mode and sets the trace output format',
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(name: 'human'),
          FigSuggestion(name: 'json-v1')
        ]
      )
      ]
    ),
    Option(
      name: '--trace-source',
      description: 'Put cmake in trace mode, but output only lines of a specified file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--trace-redirect',
      description: 'Put cmake in trace mode and redirect trace output to a file instead of stderr',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--warn-uninitialized',
      description: 'Warn about uninitialized values'
    ),
    Option(
      name: '--warn-unused-vars',
      description: 'Does nothing. In CMake versions 3.2 and below this enabled warnings about unused variables. In CMake versions 3.3 through 3.18 the option was broken. In CMake 3.19 and above the option has been removed'
    ),
    Option(
      name: '--no-warn-unused-cli',
      description: 'Don\'t warn about command line options. Don\'t find variables that are declared on the command line, but not used'
    ),
    Option(
      name: '--check-system-vars',
      description: 'Find problems with variable usage in system files'
    ),
    Option(
      name: '--preset',
      description: 'Reads a preset from <path-to-source>/CMakePresets.json and <path-to-source>/CMakeUserPresets.json. The preset may specify the generator and the build directory, and a list of variables and other arguments to pass to CMake. The current working directory must contain CMake preset files. The CMake GUI can also recognize CMakePresets.json and CMakeUserPresets.json files',
      args: [
        Arg(
        name: 'preset'
      )
      ]
    ),
    Option(
      name: '--list-presets',
      description: 'Lists the available presets',
      args: [
        Arg(
        name: 'type',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'configure'),
          FigSuggestion(name: 'build'),
          FigSuggestion(name: 'test'),
          FigSuggestion(name: 'all')
        ]
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'path-to-source | path-to-existing-build',
    template: 'folders'
  )
  ]
);
