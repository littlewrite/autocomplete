// Auto-generated from TypeScript source: pytest.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pytest` CLI
final FigSpec pytestSpec = FigSpec(
  name: 'pytest',
  args: [
    Arg(
    name: 'File or Directory',
    description: 'The test file or directory you want to run pytest on. If omitted, pytest will run all \\\n      of the files of the form test_*.py or *_test.py in the current directory \\\n      and its subdirectories',
    isOptional: true,
    template: ['filepaths', 'folders']
  )
  ],
  options: [
    Option(
      name: '--assert',
      description: 'Control assertion debugging tools. \'plain\' performs no assertion debugging. \'rewrite\' (the default) rewrites assert statements in test modules on import to provide assert expression information',
      args: [
        Arg(
        name: 'Mode',
        suggestions: [
          FigSuggestion(name: 'plain'),
          FigSuggestion(name: 'rewrite')
        ]
      )
      ]
    ),
    Option(
      name: '--basetemp',
      description: 'Base temporary directory for this test run.(warning: this directory is removed if it exists)',
      args: [
        Arg(
        name: 'Directory',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Load configuration from `file` instead of trying to locate one of the implicit configuration files',
      args: [
        Arg(
        name: 'File',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--cache-clear',
      description: 'Remove all cache contents at start of test run'
    ),
    Option(
      name: '--cache-show',
      description: 'Show cache contents, don\'t perform collection or tests. Optional argument: glob (default: \'*\')',
      args: [
        Arg(
        name: 'Glob',
        isOptional: true,
        defaultValue: '*'
      )
      ]
    ),
    Option(
      name: '--capture',
      description: 'Per-test capturing method',
      args: [
        Arg(
        name: 'Method',
        description: 'One of fd|sys|no|tee-sys',
        suggestions: [
          FigSuggestion(name: 'fd'),
          FigSuggestion(name: 'sys'),
          FigSuggestion(name: 'no'),
          FigSuggestion(name: 'tee-sys')
        ]
      )
      ]
    ),
    Option(
      name: '--code-highlight',
      description: 'Whether code should be highlighted (only if --color is also enabled)',
      dependsOn: ['--color'],
      args: [
        Arg(
        name: 'Highlight',
        suggestions: [
          FigSuggestion(name: 'yes'),
          FigSuggestion(name: 'no')
        ]
      )
      ]
    ),
    Option(
      name: ['--co', '--collect-only'],
      description: 'Only collect tests, don\'t execute them'
    ),
    Option(
      name: '--collect-in-virtualenv',
      description: 'Don\'t ignore tests in a local virtualenv directory'
    ),
    Option(
      name: '--color',
      description: 'Color terminal output',
      args: [
        Arg(
        name: 'Color',
        suggestions: [
          FigSuggestion(name: 'yes'),
          FigSuggestion(name: 'no'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: '--confcutdir',
      description: 'Only load conftest.py\'s relative to specified dir',
      args: [
        Arg(
        name: 'Dir',
        template: ['folders']
      )
      ]
    ),
    Option(
      name: '--continue-on-collection-errors',
      description: 'Force test execution even if collection errors occur'
    ),
    Option(
      name: '--debug',
      description: 'Store internal tracing debug information in this log file. This file is opened with \'w\' and truncated as a result, care advised. Defaults to \'pytestdebug.log\'',
      args: [
        Arg(
        name: 'Debug File Name',
        isOptional: true,
        defaultValue: 'pytestdebug.log'
      )
      ]
    ),
    Option(
      name: '--durations',
      description: 'Show N slowest setup/test durations (N=0 for all)',
      args: [
        Arg(
        name: 'N',
        description: '(N=0 for all)'
      )
      ]
    ),
    Option(
      name: '--durations-min',
      description: 'Minimal duration in seconds for inclusion in slowest list',
      args: [
        Arg(
        name: 'N',
        defaultValue: '0.005'
      )
      ]
    ),
    Option(
      name: '--deselect',
      description: 'Deselect item (via node id prefix) during collection (multi-allowed)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'nodeid_prefix'
      )
      ]
    ),
    Option(
      name: ['--disable-warnings', '--disable-pytest-warnings'],
      description: 'Disable warnings summary'
    ),
    Option(
      name: '--doctest-continue-on-failure',
      description: 'For a given doctest, continue to run after the first failure'
    ),
    Option(
      name: '--doctest-ignore-import-errors',
      description: 'Ignore doctest ImportErrors'
    ),
    Option(
      name: '--doctest-modules',
      description: 'Run doctests in all .py modules'
    ),
    Option(
      name: '--doctest-report',
      description: 'Choose another output format for diffs on doctest failure',
      args: [
        Arg(
        name: 'Output format',
        description: 'None,cdiff,ndiff,udiff,only_first_failure',
        suggestions: [
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'cdiff'),
          FigSuggestion(name: 'ndiff'),
          FigSuggestion(name: 'udiff'),
          FigSuggestion(name: 'only_first_failure')
        ]
      )
      ]
    ),
    Option(
      name: '--doctest-glob',
      description: 'Doctests file matching pattern, default: test*.txt',
      args: [
        Arg(
        name: 'Pattern',
        defaultValue: 'test*.txt'
      )
      ]
    ),
    Option(
      name: ['--exitfirst', '-x'],
      description: 'Exit instantly on first error or failed test'
    ),
    Option(
      name: ['--failed-first', '--ff'],
      description: 'Run all tests, but run the last failures first'
    ),
    Option(
      name: '--fixtures',
      description: 'Shows builtin and custom fixtures. Note that this command omits fixtures with leading _ unless the -v option is added'
    ),
    Option(
      name: '--fixtures-per-test',
      description: 'Show fixtures per test'
    ),
    Option(
      name: '--full-trace',
      description: 'Don\'t cut any tracebacks (default is to cut)'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'This shows help on command line and config-line options'
    ),
    Option(
      name: '--ignore',
      description: 'Ignore path during collection (multi-allowed)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'Path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ignore-glob',
      description: 'Ignore path pattern during collection (multi-allowed)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'Path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--import-mode',
      description: 'Prepend/append to sys.path when importing test modules and conftest files, default is to prepend',
      args: [
        Arg(
        name: 'Mode',
        defaultValue: 'prepend',
        suggestions: [
          FigSuggestion(name: 'prepend'),
          FigSuggestion(name: 'append'),
          FigSuggestion(name: 'importlib')
        ]
      )
      ]
    ),
    Option(
      name: '--junit-xml',
      description: 'Create junit-xml style report file at given path',
      args: [
        Arg(
        name: 'Path',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: '--junit-prefix',
      description: 'Prepend prefix to classnames in junit-xml output',
      args: [
        Arg(
        name: 'Str',
        description: 'String to prepend'
      )
      ]
    ),
    Option(
      name: '-k',
      description: 'Only run tests which match the given substring expression. An expression is a python evaluatable expression where all names are substring-matched against test names and their parent classes. Example: -k \'test_method or test_other\' matches all test functions and classes whose name contains \'test_method\' or \'test_other\', while -k \'not test_method\' matches those that don\'t contain \'test_method\' in their names. -k \'not test_method and not test_other\' will eliminate the matches. Additionally keywords are matched to classes and functions containing extra names in their \'extra_keyword_matches\' set, as well as functions which have names assigned directly to them. The matching is case- insensitive',
      args: [
        Arg(
        name: 'Expression',
        description: 'Ex: \'test_method or test_other\''
      )
      ]
    ),
    Option(
      name: '--keep-duplicates',
      description: 'Keep duplicate tests'
    ),
    Option(
      name: ['--showlocals', '-l'],
      description: 'Show locals in tracebacks (disabled by default)'
    ),
    Option(
      name: ['--last-failed-no-failures', '--lfnf'],
      description: 'Which tests to run with no previously (known) failures',
      args: [
        Arg(
        name: 'Tests',
        suggestions: [
          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'none')
        ],
        defaultValue: 'all'
      )
      ]
    ),
    Option(
      name: ['--last-failed', '--lf'],
      description: 'Rerun only the tests that failed at the last run (or all if none failed)'
    ),
    Option(
      name: '--log-auto-indent',
      description: 'Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer',
      args: [
        Arg(
        name: 'Log Auto Indent Setting',
        suggestions: [
          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false')
        ]
      )
      ]
    ),
    Option(
      name: '--log-cli-level',
      description: 'Cli logging level',
      args: [
        Arg(
        name: 'Log CLI Level',
        suggestions: [
          FigSuggestion(name: 'CRITICAL'),
          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'WARNING'),
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'DEBUG')
        ]
      )
      ]
    ),
    Option(
      name: '--log-cli-format',
      description: 'Log format as used by the logging module',
      args: [
        Arg(
        name: 'Log CLI Format'
      )
      ]
    ),
    Option(
      name: '--log-cli-date-format',
      description: 'Log date format as used by the logging module',
      args: [
        Arg(
        name: 'Log CLI Date Forma'
      )
      ]
    ),
    Option(
      name: '--log-date-format',
      description: 'Log date format as used by the logging module',
      args: [
        Arg(
        name: 'Log Date Forma'
      )
      ]
    ),
    Option(
      name: '--log-format',
      description: 'Log format as used by the logging module',
      args: [
        Arg(
        name: 'Log Format'
      )
      ]
    ),
    Option(
      name: '--log-file',
      description: 'Path to a file where logging will be written to',
      args: [
        Arg(
        name: 'Log File Path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--log-file-level',
      description: 'Log file logging level',
      args: [
        Arg(
        name: 'Log File Level',
        suggestions: [
          FigSuggestion(name: 'CRITICAL'),
          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'WARNING'),
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'DEBUG')
        ]
      )
      ]
    ),
    Option(
      name: '--log-file-date-format',
      description: 'Log date format as used by the logging module',
      args: [
        Arg(
        name: 'Log File Date Forma'
      )
      ]
    ),
    Option(
      name: '--log-file-format',
      description: 'Log format as used by the logging module',
      args: [
        Arg(
        name: 'Log File Format'
      )
      ]
    ),
    Option(
      name: '--log-level',
      description: 'Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler\'s effective level, where it is `WARNING` by default',
      args: [
        Arg(
        name: 'Level',
        suggestions: [
          FigSuggestion(name: 'CRITICAL'),
          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'WARNING'),
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'DEBUG')
        ]
      )
      ]
    ),
    Option(
      name: '-m',
      description: 'Only run tests matching given mark expression',
      args: [
        Arg(
        name: 'Mark Expression'
      )
      ]
    ),
    Option(
      name: '--markers',
      description: 'Show markers (builtin, plugin and per-project ones)'
    ),
    Option(
      name: '--maxfail',
      description: 'Exit after first num failures or errors',
      args: [
        Arg(
        name: 'num'
      )
      ]
    ),
    Option(
      name: ['--new-first', '--nf'],
      description: 'Run tests from new files first, then the rest of the tests sorted by file mtime'
    ),
    Option(
      name: '--noconftest',
      description: 'Don\'t load any conftest.py files'
    ),
    Option(
      name: '--no-header',
      description: 'Disable header'
    ),
    Option(
      name: '--no-summary',
      description: 'Disable summary'
    ),
    Option(
      name: ['--override-ini', '-o'],
      description: 'Override ini option with `option=value` style`',
      args: [
        Arg(
        name: 'Override INI',
        description: 'Ex: `-o xfail_strict=True -o cache_dir=cache'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Early-load given plugin module name or entry point (multi-allowed)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'Plugin name'
      )
      ]
    ),
    Option(
      name: '--pastebin',
      description: 'Send failed|all info to bpaste.net pastebin service',
      args: [
        Arg(
        name: 'mode',
        suggestions: [
          FigSuggestion(name: 'failed'),
          FigSuggestion(name: 'all')
        ]
      )
      ]
    ),
    Option(
      name: '--pdb',
      description: 'Start the interactive Python debugger on errors or KeyboardInterrupt'
    ),
    Option(
      name: '--pdbcls',
      description: 'Specify a custom interactive Python debugger for use with --pdb',
      args: [
        Arg(
        name: 'modulename:classname',
        description: 'Ex: --pdbcls=IPython.terminal.debugger:TerminalPdb'
      )
      ]
    ),
    Option(
      name: '--pyargs',
      description: 'Try to interpret all arguments as python packages'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Decrease verbosity'
    ),
    Option(
      name: '-r',
      description: 'Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll. (w)arnings are enabled by default (see --disable-warnings), \'N\' can be used to reset the list. (default: \'fE\')',
      args: [
        Arg(
        name: 'chars',
        suggestions: [
          FigSuggestion(name: 'a'),
          FigSuggestion(name: 'A'),
          FigSuggestion(name: 'E'),
          FigSuggestion(name: 'f'),
          FigSuggestion(name: 'N'),
          FigSuggestion(name: 'p'),
          FigSuggestion(name: 'P'),
          FigSuggestion(name: 's'),
          FigSuggestion(name: 'w'),
          FigSuggestion(name: 'x'),
          FigSuggestion(name: 'X')
        ],
        defaultValue: 'fE'
      )
      ]
    ),
    Option(
      name: '--rootdir',
      description: 'Define root directory for tests. Can be relative path: \'root_dir\', \'./root_dir\', \'root_dir/another_dir/\'; absolute path: \'/home/user/root_dir\'; path with variables:\'\$HOME/root_dir\'',
      args: [
        Arg(
        name: 'Root Dir',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--runxfail',
      description: 'Report the results of xfail tests as if they were not marked'
    ),
    Option(
      name: '-s',
      description: 'Shortcut for --capture=no'
    ),
    Option(
      name: '--setup-only',
      description: 'Only setup fixtures, do not execute tests'
    ),
    Option(
      name: '--setup-show',
      description: 'Show setup of fixtures while executing tests'
    ),
    Option(
      name: '--setup-plan',
      description: 'Show what fixtures and tests would be executed but don\'t execute anything'
    ),
    Option(
      name: '--show-capture',
      description: 'Controls how captured stdout/stderr/log is shown on failed tests',
      args: [
        Arg(
        name: 'Capture method',
        suggestions: [
          FigSuggestion(name: 'no'),
          FigSuggestion(name: 'stdout'),
          FigSuggestion(name: 'stderr'),
          FigSuggestion(name: 'log'),
          FigSuggestion(name: 'all')
        ],
        defaultValue: 'all'
      )
      ]
    ),
    Option(
      name: ['--stepwise', '--sw'],
      description: 'Exit on test failure and continue from last failing test next time'
    ),
    Option(
      name: ['--stepwise-skip', '--sw-skip'],
      description: 'Ignore the first failing test but stop on the next failing test'
    ),
    Option(
      name: '--strict',
      description: 'Alias to --strict-markers'
    ),
    Option(
      name: '--strict-config',
      description: 'Any warnings encountered while parsing the `pytest` section of the configuration file raise errors'
    ),
    Option(
      name: '--strict-markers',
      description: 'Markers not registered in the `markers` section of the configuration file raise errors'
    ),
    Option(
      name: '--tb',
      description: 'Traceback print mode',
      args: [
        Arg(
        name: 'Traceback print mode',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'long'),
          FigSuggestion(name: 'short'),
          FigSuggestion(name: 'line'),
          FigSuggestion(name: 'native'),
          FigSuggestion(name: 'no')
        ]
      )
      ]
    ),
    Option(
      name: '--trace',
      description: 'Immediately break when running each test'
    ),
    Option(
      name: '--trace-config',
      description: 'Trace considerations of conftest.py files'
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Increase verbosity',
      isRepeatable: true
    ),
    Option(
      name: '--verbosity',
      description: 'Set verbosity. Default is 0',
      args: [
        Arg(
        name: 'Verbosity level',
        defaultValue: '0'
      )
      ]
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Display pytest version and information about plugins. When given twice, also display information about plugins'
    ),
    Option(
      name: ['--pythonwarnings', '-W'],
      description: 'Set which warnings to report, see -W option of python itself',
      args: [
        Arg(
        name: 'Warnings to report'
      )
      ]
    )
  ]
);
