// Auto-generated from TypeScript source: ruff.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> GlobalOptions = [

  Option(
    name: ['-v', '--verbose'],
    description: 'Enable verbose logging'
  ),
  Option(
    name: ['-q', '--quiet'],
    description: 'Print diagnostics, but nothing else'
  ),
  Option(
    name: ['-s', '--silent'],
    description: 'Disable all logging (but still exit with status code "1" upon detecting diagnostics)'
  ),
  Option(
    name: '--config',
    description: 'Path to the `pyproject.toml` or `ruff.toml` file to use for configuration',
    args: [
      Arg(
      name: 'config',
      isOptional: true,
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--isolated',
    description: 'Ignore all configuration files'
  ),
  Option(
    name: '--help',
    description: 'Print help'
  )
];

final List<Option> checkOptions = [

  Option(
    name: '--fix',
    description: 'Apply fixes to resolve lint violations'
  ),
  Option(
    name: '--unsafe-fixes',
    description: 'Include fixes that may not retain the original intent of the code'
  ),
  Option(
    name: '--show-fixes',
    description: 'Show an enumeration of all fixed lint violations'
  ),
  Option(
    name: '--diff',
    description: 'Avoid writing any fixed files back; instead, output a diff for each changed file to stdout, and exit 0 if there are no diffs. Implies `--fix-only`'
  ),
  Option(
    name: ['-w', '--watch'],
    description: 'Run in watch mode by re-running whenever files change'
  ),
  Option(
    name: '--fix-only',
    description: 'Apply fixes to resolve lint violations, but don\'t report on, or exit non-zero for, leftover violations. Implies `--fix`'
  ),
  Option(
    name: '--ignore-noqa',
    description: 'Ignore any `# noqa` comments'
  ),
  Option(
    name: '--output-format',
    description: 'Output serialization format for violations. The default serialization format is \'full\'',
    args: [
      Arg(
      name: 'output_format',
      isOptional: true,
      suggestions: [

        FigSuggestion(name: 'concise'),
        FigSuggestion(name: 'full'),
        FigSuggestion(name: 'json'),
        FigSuggestion(name: 'json-lines'),
        FigSuggestion(name: 'junit'),
        FigSuggestion(name: 'grouped'),
        FigSuggestion(name: 'github'),
        FigSuggestion(name: 'gitlab'),
        FigSuggestion(name: 'pylint'),
        FigSuggestion(name: 'rdjson'),
        FigSuggestion(name: 'azure'),
        FigSuggestion(name: 'sarif')
      ]
    )
    ]
  ),
  Option(
    name: ['-o', '--output-file'],
    description: 'Specify file to write the linter output to (default: stdout)',
    args: [
      Arg(
      name: 'output_file',
      isOptional: true,
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--target-version',
    description: 'The minimum Python version that should be supported',
    args: [
      Arg(
      name: 'target_version',
      isOptional: true,
      suggestions: [

        FigSuggestion(name: 'py37'),
        FigSuggestion(name: 'py38'),
        FigSuggestion(name: 'py39'),
        FigSuggestion(name: 'py310'),
        FigSuggestion(name: 'py311'),
        FigSuggestion(name: 'py312'),
        FigSuggestion(name: 'py313')
      ]
    )
    ]
  ),
  Option(
    name: '--preview',
    description: 'Enable preview mode; checks will include unstable rules and fixes'
  ),
  Option(
    name: '--extension',
    description: 'List of mappings from file extension to language (one of `python`, `ipynb`, `pyi`). For example, to treat `.ipy` files as IPython notebooks, use `--extension ipy:ipynb`',
    args: [
      Arg(
      name: 'extension',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--statistics',
    description: 'Show counts for every rule with at least one violation'
  ),
  Option(
    name: '--add-noqa',
    description: 'Enable automatic additions of `noqa` directives to failing lines'
  ),
  Option(
    name: '--show-files',
    description: 'See the files Ruff will be run against with the current settings'
  ),
  Option(
    name: '--show-settings',
    description: 'See the settings Ruff will use to lint a given Python file'
  ),
  Option(
    name: ['-h', '--help'],
    description: 'Print help'
  ),
  Option(
    name: '--select',
    description: 'Comma-separated list of rule codes to enable (or ALL, to enable all rules)',
    args: [
      Arg(
      name: 'select',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--ignore',
    description: 'Comma-separated list of rule codes to disable',
    args: [
      Arg(
      name: 'ignore',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--extend-select',
    description: 'Like --select, but adds additional rule codes on top of the selected ones',
    args: [
      Arg(
      name: 'extend_select',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--per-file-ignores',
    description: 'List of mappings from file pattern to code to exclude',
    args: [
      Arg(
      name: 'per_file_ignores',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--extend-per-file-ignores',
    description: 'Like `--per-file-ignores`, but adds additional ignores on top of those already specified',
    args: [
      Arg(
      name: 'extend_per_file_ignores',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--fixable',
    description: 'List of rule codes to treat as eligible for fix. Only applicable when fix itself is enabled (e.g., via `--fix`)',
    args: [
      Arg(
      name: 'fixable',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--unfixable',
    description: 'List of rule codes to treat as ineligible for fix. Only applicable when fix itself is enabled (e.g., via `--fix`)',
    args: [
      Arg(
      name: 'unfixable',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--extend-fixable',
    description: 'Like --fixable, but adds additional rule codes on top of those already specified',
    args: [
      Arg(
      name: 'extend_fixable',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--exclude',
    description: 'List of paths, used to omit files and/or directories from analysis',
    args: [
      Arg(
      name: 'exclude',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--extend-exclude',
    description: 'Like --exclude, but adds additional files and directories on top of those already excluded',
    args: [
      Arg(
      name: 'extend_exclude',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--respect-gitignore',
    description: 'Respect file exclusions via `.gitignore` and other standard ignore files'
  ),
  Option(
    name: '--force-exclude',
    description: 'Enforce exclusions, even for paths passed to Ruff directly on the command-line'
  ),
  Option(
    name: ['-n', '--no-cache'],
    description: 'Disable cache reads'
  ),
  Option(
    name: '--cache-dir',
    description: 'Path to the cache directory',
    args: [
      Arg(
      name: 'cache_dir',
      isOptional: true,
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--stdin-filename',
    description: 'The name of the file when passing it through stdin',
    args: [
      Arg(
      name: 'stdin_filename',
      isOptional: true,
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-e', '--exit-zero'],
    description: 'Exit with status code "0", even upon detecting lint violations'
  ),
  Option(
    name: '--exit-non-zero-on-fix',
    description: 'Exit with a non-zero status code if any files were modified via fix, even if no lint violations remain'
  )
];

final List<Option> formatOptions = [

  Option(
    name: '--check',
    description: 'Avoid writing any formatted files back; instead, exit with a non-zero status code if any files would have been modified, and zero otherwise'
  ),
  Option(
    name: '--diff',
    description: 'Avoid writing any formatted files back; instead, exit with a non-zero status code and the difference between the current file and how the formatted file would look like'
  ),
  Option(
    name: '--extension',
    description: 'List of mappings from file extension to language (one of `python`, `ipynb`, `pyi`). For example, to treat `.ipy` files as IPython notebooks, use `--extension ipy:ipynb`',
    args: [
      Arg(
      name: 'extension',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--target-version',
    description: 'The minimum Python version that should be supported',
    args: [
      Arg(
      name: 'target_version',
      isOptional: true,
      suggestions: [

        FigSuggestion(name: 'py37'),
        FigSuggestion(name: 'py38'),
        FigSuggestion(name: 'py39'),
        FigSuggestion(name: 'py310'),
        FigSuggestion(name: 'py311'),
        FigSuggestion(name: 'py312'),
        FigSuggestion(name: 'py313')
      ]
    )
    ]
  ),
  Option(
    name: '--preview',
    description: 'Enable preview mode; enables unstable formatting. Use `--no-preview` to disable'
  ),
  Option(
    name: ['-n', '--no-cache'],
    description: 'Disable cache reads (env: RUFF_NO_CACHE=)'
  ),
  Option(
    name: '--cache-dir',
    description: 'Path to the cache directory (env: RUFF_CACHE_DIR=)',
    args: [
      Arg(
      name: 'cache_dir',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--stdin-filename',
    description: 'The name of the file when passing it through stdin',
    args: [
      Arg(
      name: 'stdin_filename',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--respect-gitignore',
    description: 'Respect file exclusions via `.gitignore` and other standard ignore files'
  ),
  Option(
    name: '--exclude',
    description: 'List of paths, used to omit files and/or directories from analysis',
    args: [
      Arg(
      name: 'exclude',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--force-exclude',
    description: 'Enforce exclusions, even for paths passed to Ruff directly on the command-line'
  ),
  Option(
    name: '--line-length',
    description: 'Set the line-length',
    args: [
      Arg(
      name: 'line_length',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--range',
    description: 'When specified, Ruff will try to only format the code in the given range',
    args: [
      Arg(
      name: 'range',
      isOptional: true
    )
    ]
  )
];

final List<FigSuggestion> rules = [

  FigSuggestion(
    name: 'F401',
    description: 'Unused-import'
  ),
  FigSuggestion(
    name: 'F402',
    description: 'Import-shadowed-by-loop-var'
  ),
  FigSuggestion(
    name: 'F403',
    description: 'Undefined-local-with-import-star'
  ),
  FigSuggestion(
    name: 'F404',
    description: 'Late-future-import'
  ),
  FigSuggestion(
    name: 'F405',
    description: 'Undefined-local-with-import-star-usage'
  ),
  FigSuggestion(
    name: 'F406',
    description: 'Undefined-local-with-nested-import-star-usage'
  ),
  FigSuggestion(
    name: 'F407',
    description: 'Future-feature-not-defined'
  ),
  FigSuggestion(
    name: 'F501',
    description: 'Percent-format-invalid-format'
  ),
  FigSuggestion(
    name: 'F502',
    description: 'Percent-format-expected-mapping'
  ),
  FigSuggestion(
    name: 'F503',
    description: 'Percent-format-expected-sequence'
  ),
  FigSuggestion(
    name: 'F504',
    description: 'Percent-format-extra-named-arguments'
  ),
  FigSuggestion(
    name: 'F505',
    description: 'Percent-format-missing-argument'
  ),
  FigSuggestion(
    name: 'F506',
    description: 'Percent-format-mixed-positional-and-named'
  ),
  FigSuggestion(
    name: 'F507',
    description: 'Percent-format-positional-count-mismatch'
  ),
  FigSuggestion(
    name: 'F508',
    description: 'Percent-format-star-requires-sequence'
  ),
  FigSuggestion(
    name: 'F509',
    description: 'Percent-format-unsupported-format-character'
  ),
  FigSuggestion(
    name: 'F521',
    description: 'String-dot-format-invalid-format'
  ),
  FigSuggestion(
    name: 'F522',
    description: 'String-dot-format-extra-named-arguments'
  ),
  FigSuggestion(
    name: 'F523',
    description: 'String-dot-format-extra-positional-arguments'
  ),
  FigSuggestion(
    name: 'F524',
    description: 'String-dot-format-missing-arguments'
  ),
  FigSuggestion(
    name: 'F525',
    description: 'String-dot-format-mixing-automatic'
  ),
  FigSuggestion(
    name: 'F541',
    description: 'F-string-missing-placeholders'
  ),
  FigSuggestion(
    name: 'F601',
    description: 'Multi-value-repeated-key-literal'
  ),
  FigSuggestion(
    name: 'F602',
    description: 'Multi-value-repeated-key-variable'
  ),
  FigSuggestion(
    name: 'F621',
    description: 'Expressions-in-star-assignment'
  ),
  FigSuggestion(
    name: 'F622',
    description: 'Multiple-starred-expressions'
  ),
  FigSuggestion(
    name: 'F631',
    description: 'Assert-tuple'
  ),
  FigSuggestion(
    name: 'F632',
    description: 'Is-literal'
  ),
  FigSuggestion(
    name: 'F633',
    description: 'Invalid-print-syntax'
  ),
  FigSuggestion(
    name: 'F634',
    description: 'If-tuple'
  ),
  FigSuggestion(
    name: 'F701',
    description: 'Break-outside-loop'
  ),
  FigSuggestion(
    name: 'F702',
    description: 'Continue-outside-loop'
  ),
  FigSuggestion(
    name: 'F704',
    description: 'Yield-outside-function'
  ),
  FigSuggestion(
    name: 'F706',
    description: 'Return-outside-function'
  ),
  FigSuggestion(
    name: 'F707',
    description: 'Default-except-not-last'
  ),
  FigSuggestion(
    name: 'F722',
    description: 'Forward-annotation-syntax-error'
  ),
  FigSuggestion(
    name: 'F811',
    description: 'Redefined-while-unused'
  ),
  FigSuggestion(
    name: 'F821',
    description: 'Undefined-name'
  ),
  FigSuggestion(
    name: 'F822',
    description: 'Undefined-export'
  ),
  FigSuggestion(
    name: 'F823',
    description: 'Undefined-local'
  ),
  FigSuggestion(
    name: 'F841',
    description: 'Unused-variable'
  ),
  FigSuggestion(
    name: 'F842',
    description: 'Unused-annotation'
  ),
  FigSuggestion(
    name: 'F901',
    description: 'Raise-not-implemented'
  ),
  FigSuggestion(
    name: 'E101',
    description: 'Mixed-spaces-and-tabs'
  ),
  FigSuggestion(
    name: 'E111',
    description: 'Indentation-with-invalid-multiple'
  ),
  FigSuggestion(
    name: 'E112',
    description: 'No-indented-block'
  ),
  FigSuggestion(
    name: 'E113',
    description: 'Unexpected-indentation'
  ),
  FigSuggestion(
    name: 'E114',
    description: 'Indentation-with-invalid-multiple-comment'
  ),
  FigSuggestion(
    name: 'E115',
    description: 'No-indented-block-comment'
  ),
  FigSuggestion(
    name: 'E116',
    description: 'Unexpected-indentation-comment'
  ),
  FigSuggestion(
    name: 'E117',
    description: 'Over-indented'
  ),
  FigSuggestion(
    name: 'E201',
    description: 'Whitespace-after-open-bracket'
  ),
  FigSuggestion(
    name: 'E202',
    description: 'Whitespace-before-close-bracket'
  ),
  FigSuggestion(
    name: 'E203',
    description: 'Whitespace-before-punctuation'
  ),
  FigSuggestion(
    name: 'E204',
    description: 'Whitespace-after-decorator'
  ),
  FigSuggestion(
    name: 'E211',
    description: 'Whitespace-before-parameters'
  ),
  FigSuggestion(
    name: 'E221',
    description: 'Multiple-spaces-before-operator'
  ),
  FigSuggestion(
    name: 'E222',
    description: 'Multiple-spaces-after-operator'
  ),
  FigSuggestion(
    name: 'E223',
    description: 'Tab-before-operator'
  ),
  FigSuggestion(
    name: 'E224',
    description: 'Tab-after-operator'
  ),
  FigSuggestion(
    name: 'E225',
    description: 'Missing-whitespace-around-operator'
  ),
  FigSuggestion(
    name: 'E226',
    description: 'Missing-whitespace-around-arithmetic-operator'
  ),
  FigSuggestion(
    name: 'E227',
    description: 'Missing-whitespace-around-bitwise-or-shift-operator'
  ),
  FigSuggestion(
    name: 'E228',
    description: 'Missing-whitespace-around-modulo-operator'
  ),
  FigSuggestion(
    name: 'E231',
    description: 'Missing-whitespace'
  ),
  FigSuggestion(
    name: 'E241',
    description: 'Multiple-spaces-after-comma'
  ),
  FigSuggestion(
    name: 'E242',
    description: 'Tab-after-comma'
  ),
  FigSuggestion(
    name: 'E251',
    description: 'Unexpected-spaces-around-keyword-parameter-equals'
  ),
  FigSuggestion(
    name: 'E252',
    description: 'Missing-whitespace-around-parameter-equals'
  ),
  FigSuggestion(
    name: 'E261',
    description: 'Too-few-spaces-before-inline-comment'
  ),
  FigSuggestion(
    name: 'E262',
    description: 'No-space-after-inline-comment'
  ),
  FigSuggestion(
    name: 'E265',
    description: 'No-space-after-block-comment'
  ),
  FigSuggestion(
    name: 'E266',
    description: 'Multiple-leading-hashes-for-block-comment'
  ),
  FigSuggestion(
    name: 'E271',
    description: 'Multiple-spaces-after-keyword'
  ),
  FigSuggestion(
    name: 'E272',
    description: 'Multiple-spaces-before-keyword'
  ),
  FigSuggestion(
    name: 'E273',
    description: 'Tab-after-keyword'
  ),
  FigSuggestion(
    name: 'E274',
    description: 'Tab-before-keyword'
  ),
  FigSuggestion(
    name: 'E275',
    description: 'Missing-whitespace-after-keyword'
  ),
  FigSuggestion(
    name: 'E301',
    description: 'Blank-line-between-methods'
  ),
  FigSuggestion(
    name: 'E302',
    description: 'Blank-lines-top-level'
  ),
  FigSuggestion(
    name: 'E303',
    description: 'Too-many-blank-lines'
  ),
  FigSuggestion(
    name: 'E304',
    description: 'Blank-line-after-decorator'
  ),
  FigSuggestion(
    name: 'E305',
    description: 'Blank-lines-after-function-or-class'
  ),
  FigSuggestion(
    name: 'E306',
    description: 'Blank-lines-before-nested-definition'
  ),
  FigSuggestion(
    name: 'E401',
    description: 'Multiple-imports-on-one-line'
  ),
  FigSuggestion(
    name: 'E402',
    description: 'Module-import-not-at-top-of-file'
  ),
  FigSuggestion(
    name: 'E501',
    description: 'Line-too-long'
  ),
  FigSuggestion(
    name: 'E502',
    description: 'Redundant-backslash'
  ),
  FigSuggestion(
    name: 'E701',
    description: 'Multiple-statements-on-one-line-colon'
  ),
  FigSuggestion(
    name: 'E702',
    description: 'Multiple-statements-on-one-line-semicolon'
  ),
  FigSuggestion(
    name: 'E703',
    description: 'Useless-semicolon'
  ),
  FigSuggestion(
    name: 'E711',
    description: 'None-comparison'
  ),
  FigSuggestion(
    name: 'E712',
    description: 'True-false-comparison'
  ),
  FigSuggestion(
    name: 'E713',
    description: 'Not-in-test'
  ),
  FigSuggestion(
    name: 'E714',
    description: 'Not-is-test'
  ),
  FigSuggestion(
    name: 'E721',
    description: 'Type-comparison'
  ),
  FigSuggestion(
    name: 'E722',
    description: 'Bare-except'
  ),
  FigSuggestion(
    name: 'E731',
    description: 'Lambda-assignment'
  ),
  FigSuggestion(
    name: 'E741',
    description: 'Ambiguous-variable-name'
  ),
  FigSuggestion(
    name: 'E742',
    description: 'Ambiguous-class-name'
  ),
  FigSuggestion(
    name: 'E743',
    description: 'Ambiguous-function-name'
  ),
  FigSuggestion(
    name: 'E902',
    description: 'Io-error'
  ),
  FigSuggestion(
    name: 'W191',
    description: 'Tab-indentation'
  ),
  FigSuggestion(
    name: 'W291',
    description: 'Trailing-whitespace'
  ),
  FigSuggestion(
    name: 'W292',
    description: 'Missing-newline-at-end-of-file'
  ),
  FigSuggestion(
    name: 'W293',
    description: 'Blank-line-with-whitespace'
  ),
  FigSuggestion(
    name: 'W391',
    description: 'Too-many-newlines-at-end-of-file'
  ),
  FigSuggestion(
    name: 'W505',
    description: 'Doc-line-too-long'
  ),
  FigSuggestion(
    name: 'W605',
    description: 'Invalid-escape-sequence'
  ),
  FigSuggestion(
    name: 'C901',
    description: 'Complex-structure'
  ),
  FigSuggestion(
    name: 'N801',
    description: 'Invalid-class-name'
  ),
  FigSuggestion(
    name: 'N802',
    description: 'Invalid-function-name'
  ),
  FigSuggestion(
    name: 'N803',
    description: 'Invalid-argument-name'
  ),
  FigSuggestion(
    name: 'N804',
    description: 'Invalid-first-argument-name-for-class-method'
  ),
  FigSuggestion(
    name: 'N805',
    description: 'Invalid-first-argument-name-for-method'
  ),
  FigSuggestion(
    name: 'N806',
    description: 'Non-lowercase-variable-in-function'
  ),
  FigSuggestion(
    name: 'N807',
    description: 'Dunder-function-name'
  ),
  FigSuggestion(
    name: 'N811',
    description: 'Constant-imported-as-non-constant'
  ),
  FigSuggestion(
    name: 'N812',
    description: 'Lowercase-imported-as-non-lowercase'
  ),
  FigSuggestion(
    name: 'N813',
    description: 'Camelcase-imported-as-lowercase'
  ),
  FigSuggestion(
    name: 'N814',
    description: 'Camelcase-imported-as-constant'
  ),
  FigSuggestion(
    name: 'N815',
    description: 'Mixed-case-variable-in-class-scope'
  ),
  FigSuggestion(
    name: 'N816',
    description: 'Mixed-case-variable-in-global-scope'
  ),
  FigSuggestion(
    name: 'N817',
    description: 'Camelcase-imported-as-acronym'
  ),
  FigSuggestion(
    name: 'N818',
    description: 'Error-suffix-on-exception-name'
  ),
  FigSuggestion(
    name: 'N999',
    description: 'Invalid-module-name'
  ),
  FigSuggestion(
    name: 'D100',
    description: 'Undocumented-public-module'
  ),
  FigSuggestion(
    name: 'D101',
    description: 'Undocumented-public-class'
  ),
  FigSuggestion(
    name: 'D102',
    description: 'Undocumented-public-method'
  ),
  FigSuggestion(
    name: 'D103',
    description: 'Undocumented-public-function'
  ),
  FigSuggestion(
    name: 'D104',
    description: 'Undocumented-public-package'
  ),
  FigSuggestion(
    name: 'D105',
    description: 'Undocumented-magic-method'
  ),
  FigSuggestion(
    name: 'D106',
    description: 'Undocumented-public-nested-class'
  ),
  FigSuggestion(
    name: 'D107',
    description: 'Undocumented-public-init'
  ),
  FigSuggestion(
    name: 'D200',
    description: 'Fits-on-one-line'
  ),
  FigSuggestion(
    name: 'D201',
    description: 'No-blank-line-before-function'
  ),
  FigSuggestion(
    name: 'D202',
    description: 'No-blank-line-after-function'
  ),
  FigSuggestion(
    name: 'D203',
    description: 'One-blank-line-before-class'
  ),
  FigSuggestion(
    name: 'D204',
    description: 'One-blank-line-after-class'
  ),
  FigSuggestion(
    name: 'D205',
    description: 'Blank-line-after-summary'
  ),
  FigSuggestion(
    name: 'D206',
    description: 'Indent-with-spaces'
  ),
  FigSuggestion(
    name: 'D207',
    description: 'Under-indentation'
  ),
  FigSuggestion(
    name: 'D208',
    description: 'Over-indentation'
  ),
  FigSuggestion(
    name: 'D209',
    description: 'New-line-after-last-paragraph'
  ),
  FigSuggestion(
    name: 'D210',
    description: 'Surrounding-whitespace'
  ),
  FigSuggestion(
    name: 'D211',
    description: 'Blank-line-before-class'
  ),
  FigSuggestion(
    name: 'D212',
    description: 'Multi-line-summary-first-line'
  ),
  FigSuggestion(
    name: 'D213',
    description: 'Multi-line-summary-second-line'
  ),
  FigSuggestion(
    name: 'D214',
    description: 'Section-not-over-indented'
  ),
  FigSuggestion(
    name: 'D215',
    description: 'Section-underline-not-over-indented'
  ),
  FigSuggestion(
    name: 'D300',
    description: 'Triple-single-quotes'
  ),
  FigSuggestion(
    name: 'D301',
    description: 'Escape-sequence-in-docstring'
  ),
  FigSuggestion(
    name: 'D400',
    description: 'Ends-in-period'
  ),
  FigSuggestion(
    name: 'D401',
    description: 'Non-imperative-mood'
  ),
  FigSuggestion(
    name: 'D402',
    description: 'No-signature'
  ),
  FigSuggestion(
    name: 'D403',
    description: 'First-line-capitalized'
  ),
  FigSuggestion(
    name: 'D404',
    description: 'Docstring-starts-with-this'
  ),
  FigSuggestion(
    name: 'D405',
    description: 'Capitalize-section-name'
  ),
  FigSuggestion(
    name: 'D406',
    description: 'New-line-after-section-name'
  ),
  FigSuggestion(
    name: 'D407',
    description: 'Dashed-underline-after-section'
  ),
  FigSuggestion(
    name: 'D408',
    description: 'Section-underline-after-name'
  ),
  FigSuggestion(
    name: 'D409',
    description: 'Section-underline-matches-section-length'
  ),
  FigSuggestion(
    name: 'D410',
    description: 'No-blank-line-after-section'
  ),
  FigSuggestion(
    name: 'D411',
    description: 'No-blank-line-before-section'
  ),
  FigSuggestion(
    name: 'D412',
    description: 'Blank-lines-between-header-and-content'
  ),
  FigSuggestion(
    name: 'D413',
    description: 'Blank-line-after-last-section'
  ),
  FigSuggestion(
    name: 'D414',
    description: 'Empty-docstring-section'
  ),
  FigSuggestion(
    name: 'D415',
    description: 'Ends-in-punctuation'
  ),
  FigSuggestion(
    name: 'D416',
    description: 'Section-name-ends-in-colon'
  ),
  FigSuggestion(
    name: 'D417',
    description: 'Undocumented-param'
  ),
  FigSuggestion(
    name: 'D418',
    description: 'Overload-with-docstring'
  ),
  FigSuggestion(
    name: 'D419',
    description: 'Empty-docstring'
  ),
  FigSuggestion(
    name: 'I001',
    description: 'Unsorted-imports'
  ),
  FigSuggestion(
    name: 'I002',
    description: 'Missing-required-import'
  ),
  FigSuggestion(
    name: 'UP001',
    description: 'Useless-metaclass-type'
  ),
  FigSuggestion(
    name: 'UP003',
    description: 'Type-of-primitive'
  ),
  FigSuggestion(
    name: 'UP004',
    description: 'Useless-object-inheritance'
  ),
  FigSuggestion(
    name: 'UP005',
    description: 'Deprecated-unittest-alias'
  ),
  FigSuggestion(
    name: 'UP006',
    description: 'Non-pep585-annotation'
  ),
  FigSuggestion(
    name: 'UP007',
    description: 'Non-pep604-annotation'
  ),
  FigSuggestion(
    name: 'UP008',
    description: 'Super-call-with-parameters'
  ),
  FigSuggestion(
    name: 'UP009',
    description: 'Utf8-encoding-declaration'
  ),
  FigSuggestion(
    name: 'UP010',
    description: 'Unnecessary-future-import'
  ),
  FigSuggestion(
    name: 'UP011',
    description: 'Lru-cache-without-parameters'
  ),
  FigSuggestion(
    name: 'UP012',
    description: 'Unnecessary-encode-utf8'
  ),
  FigSuggestion(
    name: 'UP013',
    description: 'Convert-typed-dict-functional-to-class'
  ),
  FigSuggestion(
    name: 'UP014',
    description: 'Convert-named-tuple-functional-to-class'
  ),
  FigSuggestion(
    name: 'UP015',
    description: 'Redundant-open-modes'
  ),
  FigSuggestion(
    name: 'UP017',
    description: 'Datetime-timezone-utc'
  ),
  FigSuggestion(
    name: 'UP018',
    description: 'Native-literals'
  ),
  FigSuggestion(
    name: 'UP019',
    description: 'Typing-text-str-alias'
  ),
  FigSuggestion(
    name: 'UP020',
    description: 'Open-alias'
  ),
  FigSuggestion(
    name: 'UP021',
    description: 'Replace-universal-newlines'
  ),
  FigSuggestion(
    name: 'UP022',
    description: 'Replace-stdout-stderr'
  ),
  FigSuggestion(
    name: 'UP023',
    description: 'Deprecated-c-element-tree'
  ),
  FigSuggestion(
    name: 'UP024',
    description: 'Os-error-alias'
  ),
  FigSuggestion(
    name: 'UP025',
    description: 'Unicode-kind-prefix'
  ),
  FigSuggestion(
    name: 'UP026',
    description: 'Deprecated-mock-import'
  ),
  FigSuggestion(
    name: 'UP027',
    description: 'Unpacked-list-comprehension'
  ),
  FigSuggestion(
    name: 'UP028',
    description: 'Yield-in-for-loop'
  ),
  FigSuggestion(
    name: 'UP029',
    description: 'Unnecessary-builtin-import'
  ),
  FigSuggestion(
    name: 'UP030',
    description: 'Format-literals'
  ),
  FigSuggestion(
    name: 'UP031',
    description: 'Printf-string-formatting'
  ),
  FigSuggestion(
    name: 'UP032',
    description: 'F-string'
  ),
  FigSuggestion(
    name: 'UP033',
    description: 'Lru-cache-with-maxsize-none'
  ),
  FigSuggestion(
    name: 'UP034',
    description: 'Extraneous-parentheses'
  ),
  FigSuggestion(
    name: 'UP035',
    description: 'Deprecated-import'
  ),
  FigSuggestion(
    name: 'UP036',
    description: 'Outdated-version-block'
  ),
  FigSuggestion(
    name: 'UP037',
    description: 'Quoted-annotation'
  ),
  FigSuggestion(
    name: 'UP038',
    description: 'Non-pep604-isinstance'
  ),
  FigSuggestion(
    name: 'UP039',
    description: 'Unnecessary-class-parentheses'
  ),
  FigSuggestion(
    name: 'UP040',
    description: 'Non-pep695-type-alias'
  ),
  FigSuggestion(
    name: 'UP041',
    description: 'Timeout-error-alias'
  ),
  FigSuggestion(
    name: 'UP042',
    description: 'Replace-str-enum'
  ),
  FigSuggestion(
    name: 'UP043',
    description: 'Unnecessary-default-type-args'
  ),
  FigSuggestion(
    name: 'UP044',
    description: 'Non-pep646-unpack'
  ),
  FigSuggestion(
    name: 'YTT101',
    description: 'Sys-version-slice3'
  ),
  FigSuggestion(
    name: 'YTT102',
    description: 'Sys-version2'
  ),
  FigSuggestion(
    name: 'YTT103',
    description: 'Sys-version-cmp-str3'
  ),
  FigSuggestion(
    name: 'YTT201',
    description: 'Sys-version-info0-eq3'
  ),
  FigSuggestion(
    name: 'YTT202',
    description: 'Six-py3'
  ),
  FigSuggestion(
    name: 'YTT203',
    description: 'Sys-version-info1-cmp-int'
  ),
  FigSuggestion(
    name: 'YTT204',
    description: 'Sys-version-info-minor-cmp-int'
  ),
  FigSuggestion(
    name: 'YTT301',
    description: 'Sys-version0'
  ),
  FigSuggestion(
    name: 'YTT302',
    description: 'Sys-version-cmp-str10'
  ),
  FigSuggestion(
    name: 'YTT303',
    description: 'Sys-version-slice1'
  ),
  FigSuggestion(
    name: 'ANN001',
    description: 'Missing-type-function-argument'
  ),
  FigSuggestion(
    name: 'ANN002',
    description: 'Missing-type-args'
  ),
  FigSuggestion(
    name: 'ANN003',
    description: 'Missing-type-kwargs'
  ),
  FigSuggestion(
    name: 'ANN201',
    description: 'Missing-return-type-undocumented-public-function'
  ),
  FigSuggestion(
    name: 'ANN202',
    description: 'Missing-return-type-private-function'
  ),
  FigSuggestion(
    name: 'ANN204',
    description: 'Missing-return-type-special-method'
  ),
  FigSuggestion(
    name: 'ANN205',
    description: 'Missing-return-type-static-method'
  ),
  FigSuggestion(
    name: 'ANN206',
    description: 'Missing-return-type-class-method'
  ),
  FigSuggestion(
    name: 'ANN401',
    description: 'Any-type'
  ),
  FigSuggestion(
    name: 'ASYNC100',
    description: 'Cancel-scope-no-checkpoint'
  ),
  FigSuggestion(
    name: 'ASYNC105',
    description: 'Trio-sync-call'
  ),
  FigSuggestion(
    name: 'ASYNC109',
    description: 'Async-function-with-timeout'
  ),
  FigSuggestion(
    name: 'ASYNC110',
    description: 'Async-busy-wait'
  ),
  FigSuggestion(
    name: 'ASYNC115',
    description: 'Async-zero-sleep'
  ),
  FigSuggestion(
    name: 'ASYNC116',
    description: 'Long-sleep-not-forever'
  ),
  FigSuggestion(
    name: 'ASYNC210',
    description: 'Blocking-http-call-in-async-function'
  ),
  FigSuggestion(
    name: 'ASYNC220',
    description: 'Create-subprocess-in-async-function'
  ),
  FigSuggestion(
    name: 'ASYNC221',
    description: 'Run-process-in-async-function'
  ),
  FigSuggestion(
    name: 'ASYNC222',
    description: 'Wait-for-process-in-async-function'
  ),
  FigSuggestion(
    name: 'ASYNC230',
    description: 'Blocking-open-call-in-async-function'
  ),
  FigSuggestion(
    name: 'ASYNC251',
    description: 'Blocking-sleep-in-async-function'
  ),
  FigSuggestion(
    name: 'S101',
    description: 'Assert'
  ),
  FigSuggestion(
    name: 'S102',
    description: 'Exec-builtin'
  ),
  FigSuggestion(
    name: 'S103',
    description: 'Bad-file-permissions'
  ),
  FigSuggestion(
    name: 'S104',
    description: 'Hardcoded-bind-all-interfaces'
  ),
  FigSuggestion(
    name: 'S105',
    description: 'Hardcoded-password-string'
  ),
  FigSuggestion(
    name: 'S106',
    description: 'Hardcoded-password-func-arg'
  ),
  FigSuggestion(
    name: 'S107',
    description: 'Hardcoded-password-default'
  ),
  FigSuggestion(
    name: 'S108',
    description: 'Hardcoded-temp-file'
  ),
  FigSuggestion(
    name: 'S110',
    description: 'Try-except-pass'
  ),
  FigSuggestion(
    name: 'S112',
    description: 'Try-except-continue'
  ),
  FigSuggestion(
    name: 'S113',
    description: 'Request-without-timeout'
  ),
  FigSuggestion(
    name: 'S201',
    description: 'Flask-debug-true'
  ),
  FigSuggestion(
    name: 'S202',
    description: 'Tarfile-unsafe-members'
  ),
  FigSuggestion(
    name: 'S301',
    description: 'Suspicious-pickle-usage'
  ),
  FigSuggestion(
    name: 'S302',
    description: 'Suspicious-marshal-usage'
  ),
  FigSuggestion(
    name: 'S303',
    description: 'Suspicious-insecure-hash-usage'
  ),
  FigSuggestion(
    name: 'S304',
    description: 'Suspicious-insecure-cipher-usage'
  ),
  FigSuggestion(
    name: 'S305',
    description: 'Suspicious-insecure-cipher-mode-usage'
  ),
  FigSuggestion(
    name: 'S306',
    description: 'Suspicious-mktemp-usage'
  ),
  FigSuggestion(
    name: 'S307',
    description: 'Suspicious-eval-usage'
  ),
  FigSuggestion(
    name: 'S308',
    description: 'Suspicious-mark-safe-usage'
  ),
  FigSuggestion(
    name: 'S310',
    description: 'Suspicious-url-open-usage'
  ),
  FigSuggestion(
    name: 'S311',
    description: 'Suspicious-non-cryptographic-random-usage'
  ),
  FigSuggestion(
    name: 'S312',
    description: 'Suspicious-telnet-usage'
  ),
  FigSuggestion(
    name: 'S313',
    description: 'Suspicious-xmlc-element-tree-usage'
  ),
  FigSuggestion(
    name: 'S314',
    description: 'Suspicious-xml-element-tree-usage'
  ),
  FigSuggestion(
    name: 'S315',
    description: 'Suspicious-xml-expat-reader-usage'
  ),
  FigSuggestion(
    name: 'S316',
    description: 'Suspicious-xml-expat-builder-usage'
  ),
  FigSuggestion(
    name: 'S317',
    description: 'Suspicious-xml-sax-usage'
  ),
  FigSuggestion(
    name: 'S318',
    description: 'Suspicious-xml-mini-dom-usage'
  ),
  FigSuggestion(
    name: 'S319',
    description: 'Suspicious-xml-pull-dom-usage'
  ),
  FigSuggestion(
    name: 'S320',
    description: 'Suspicious-xmle-tree-usage'
  ),
  FigSuggestion(
    name: 'S321',
    description: 'Suspicious-ftp-lib-usage'
  ),
  FigSuggestion(
    name: 'S323',
    description: 'Suspicious-unverified-context-usage'
  ),
  FigSuggestion(
    name: 'S324',
    description: 'Hashlib-insecure-hash-function'
  ),
  FigSuggestion(
    name: 'S401',
    description: 'Suspicious-telnetlib-import'
  ),
  FigSuggestion(
    name: 'S402',
    description: 'Suspicious-ftplib-import'
  ),
  FigSuggestion(
    name: 'S403',
    description: 'Suspicious-pickle-import'
  ),
  FigSuggestion(
    name: 'S404',
    description: 'Suspicious-subprocess-import'
  ),
  FigSuggestion(
    name: 'S405',
    description: 'Suspicious-xml-etree-import'
  ),
  FigSuggestion(
    name: 'S406',
    description: 'Suspicious-xml-sax-import'
  ),
  FigSuggestion(
    name: 'S407',
    description: 'Suspicious-xml-expat-import'
  ),
  FigSuggestion(
    name: 'S408',
    description: 'Suspicious-xml-minidom-import'
  ),
  FigSuggestion(
    name: 'S409',
    description: 'Suspicious-xml-pulldom-import'
  ),
  FigSuggestion(
    name: 'S410',
    description: 'Suspicious-lxml-import'
  ),
  FigSuggestion(
    name: 'S411',
    description: 'Suspicious-xmlrpc-import'
  ),
  FigSuggestion(
    name: 'S412',
    description: 'Suspicious-httpoxy-import'
  ),
  FigSuggestion(
    name: 'S413',
    description: 'Suspicious-pycrypto-import'
  ),
  FigSuggestion(
    name: 'S415',
    description: 'Suspicious-pyghmi-import'
  ),
  FigSuggestion(
    name: 'S501',
    description: 'Request-with-no-cert-validation'
  ),
  FigSuggestion(
    name: 'S502',
    description: 'Ssl-insecure-version'
  ),
  FigSuggestion(
    name: 'S503',
    description: 'Ssl-with-bad-defaults'
  ),
  FigSuggestion(
    name: 'S504',
    description: 'Ssl-with-no-version'
  ),
  FigSuggestion(
    name: 'S505',
    description: 'Weak-cryptographic-key'
  ),
  FigSuggestion(
    name: 'S506',
    description: 'Unsafe-yaml-load'
  ),
  FigSuggestion(
    name: 'S507',
    description: 'Ssh-no-host-key-verification'
  ),
  FigSuggestion(
    name: 'S508',
    description: 'Snmp-insecure-version'
  ),
  FigSuggestion(
    name: 'S509',
    description: 'Snmp-weak-cryptography'
  ),
  FigSuggestion(
    name: 'S601',
    description: 'Paramiko-call'
  ),
  FigSuggestion(
    name: 'S602',
    description: 'Subprocess-popen-with-shell-equals-true'
  ),
  FigSuggestion(
    name: 'S603',
    description: 'Subprocess-without-shell-equals-true'
  ),
  FigSuggestion(
    name: 'S604',
    description: 'Call-with-shell-equals-true'
  ),
  FigSuggestion(
    name: 'S605',
    description: 'Start-process-with-a-shell'
  ),
  FigSuggestion(
    name: 'S606',
    description: 'Start-process-with-no-shell'
  ),
  FigSuggestion(
    name: 'S607',
    description: 'Start-process-with-partial-path'
  ),
  FigSuggestion(
    name: 'S608',
    description: 'Hardcoded-sql-expression'
  ),
  FigSuggestion(
    name: 'S609',
    description: 'Unix-command-wildcard-injection'
  ),
  FigSuggestion(
    name: 'S610',
    description: 'Django-extra'
  ),
  FigSuggestion(
    name: 'S611',
    description: 'Django-raw-sql'
  ),
  FigSuggestion(
    name: 'S612',
    description: 'Logging-config-insecure-listen'
  ),
  FigSuggestion(
    name: 'S701',
    description: 'Jinja2-autoescape-false'
  ),
  FigSuggestion(
    name: 'S702',
    description: 'Mako-templates'
  ),
  FigSuggestion(
    name: 'BLE001',
    description: 'Do not catch blind exception'
  ),
  FigSuggestion(
    name: 'B002',
    description: 'Unary-prefix-increment-decrement'
  ),
  FigSuggestion(
    name: 'B003',
    description: 'Assignment-to-os-environ'
  ),
  FigSuggestion(
    name: 'B004',
    description: 'Unreliable-callable-check'
  ),
  FigSuggestion(
    name: 'B005',
    description: 'Strip-with-multi-characters'
  ),
  FigSuggestion(
    name: 'B006',
    description: 'Mutable-argument-default'
  ),
  FigSuggestion(
    name: 'B007',
    description: 'Unused-loop-control-variable'
  ),
  FigSuggestion(
    name: 'B008',
    description: 'Function-call-in-default-argument'
  ),
  FigSuggestion(
    name: 'B009',
    description: 'Get-attr-with-constant'
  ),
  FigSuggestion(
    name: 'B010',
    description: 'Set-attr-with-constant'
  ),
  FigSuggestion(
    name: 'B011',
    description: 'Assert-false'
  ),
  FigSuggestion(
    name: 'B012',
    description: 'Jump-statement-in-finally'
  ),
  FigSuggestion(
    name: 'B013',
    description: 'Redundant-tuple-in-exception-handler'
  ),
  FigSuggestion(
    name: 'B014',
    description: 'Duplicate-handler-exception'
  ),
  FigSuggestion(
    name: 'B015',
    description: 'Useless-comparison'
  ),
  FigSuggestion(
    name: 'B016',
    description: 'Raise-literal'
  ),
  FigSuggestion(
    name: 'B017',
    description: 'Assert-raises-exception'
  ),
  FigSuggestion(
    name: 'B018',
    description: 'Useless-expression'
  ),
  FigSuggestion(
    name: 'B019',
    description: 'Cached-instance-method'
  ),
  FigSuggestion(
    name: 'B020',
    description: 'Loop-variable-overrides-iterator'
  ),
  FigSuggestion(
    name: 'B021',
    description: 'F-string-docstring'
  ),
  FigSuggestion(
    name: 'B022',
    description: 'Useless-contextlib-suppress'
  ),
  FigSuggestion(
    name: 'B023',
    description: 'Function-uses-loop-variable'
  ),
  FigSuggestion(
    name: 'B024',
    description: 'Abstract-base-class-without-abstract-method'
  ),
  FigSuggestion(
    name: 'B025',
    description: 'Duplicate-try-block-exception'
  ),
  FigSuggestion(
    name: 'B026',
    description: 'Star-arg-unpacking-after-keyword-arg'
  ),
  FigSuggestion(
    name: 'B027',
    description: 'Empty-method-without-abstract-decorator'
  ),
  FigSuggestion(
    name: 'B028',
    description: 'No-explicit-stacklevel'
  ),
  FigSuggestion(
    name: 'B029',
    description: 'Except-with-empty-tuple'
  ),
  FigSuggestion(
    name: 'B030',
    description: 'Except-with-non-exception-classes'
  ),
  FigSuggestion(
    name: 'B031',
    description: 'Reuse-of-groupby-generator'
  ),
  FigSuggestion(
    name: 'B032',
    description: 'Unintentional-type-annotation'
  ),
  FigSuggestion(
    name: 'B033',
    description: 'Duplicate-value'
  ),
  FigSuggestion(
    name: 'B034',
    description: 'Re-sub-positional-args'
  ),
  FigSuggestion(
    name: 'B035',
    description: 'Static-key-dict-comprehension'
  ),
  FigSuggestion(
    name: 'B039',
    description: 'Mutable-contextvar-default'
  ),
  FigSuggestion(
    name: 'B901',
    description: 'Return-in-generator'
  ),
  FigSuggestion(
    name: 'B904',
    description: 'Raise-without-from-inside-except'
  ),
  FigSuggestion(
    name: 'B905',
    description: 'Zip-without-explicit-strict'
  ),
  FigSuggestion(
    name: 'B909',
    description: 'Loop-iterator-mutation'
  ),
  FigSuggestion(
    name: 'FBT001',
    description: 'Boolean-typed positional argument in function definition'
  ),
  FigSuggestion(
    name: 'FBT002',
    description: 'Boolean default positional argument in function definition'
  ),
  FigSuggestion(
    name: 'FBT003',
    description: 'Boolean positional value in function call'
  ),
  FigSuggestion(
    name: 'A001',
    description: 'Builtin-variable-shadowing'
  ),
  FigSuggestion(
    name: 'A002',
    description: 'Builtin-argument-shadowing'
  ),
  FigSuggestion(
    name: 'A003',
    description: 'Builtin-attribute-shadowing'
  ),
  FigSuggestion(
    name: 'A004',
    description: 'Builtin-import-shadowing'
  ),
  FigSuggestion(
    name: 'A005',
    description: 'Builtin-module-shadowing'
  ),
  FigSuggestion(
    name: 'A006',
    description: 'Builtin-lambda-argument-shadowing'
  ),
  FigSuggestion(
    name: 'COM812',
    description: 'Missing-trailing-comma'
  ),
  FigSuggestion(
    name: 'COM818',
    description: 'Trailing-comma-on-bare-tuple'
  ),
  FigSuggestion(
    name: 'COM819',
    description: 'Prohibited-trailing-comma'
  ),
  FigSuggestion(
    name: 'CPY001',
    description: 'Missing-copyright-notice'
  ),
  FigSuggestion(
    name: 'C400',
    description: 'Unnecessary-generator-list'
  ),
  FigSuggestion(
    name: 'C401',
    description: 'Unnecessary-generator-set'
  ),
  FigSuggestion(
    name: 'C402',
    description: 'Unnecessary-generator-dict'
  ),
  FigSuggestion(
    name: 'C403',
    description: 'Unnecessary-list-comprehension-set'
  ),
  FigSuggestion(
    name: 'C404',
    description: 'Unnecessary-list-comprehension-dict'
  ),
  FigSuggestion(
    name: 'C405',
    description: 'Unnecessary-literal-set'
  ),
  FigSuggestion(
    name: 'C406',
    description: 'Unnecessary-literal-dict'
  ),
  FigSuggestion(
    name: 'C408',
    description: 'Unnecessary-collection-call'
  ),
  FigSuggestion(
    name: 'C409',
    description: 'Unnecessary-literal-within-tuple-call'
  ),
  FigSuggestion(
    name: 'C410',
    description: 'Unnecessary-literal-within-list-call'
  ),
  FigSuggestion(
    name: 'C411',
    description: 'Unnecessary-list-call'
  ),
  FigSuggestion(
    name: 'C413',
    description: 'Unnecessary-call-around-sorted'
  ),
  FigSuggestion(
    name: 'C414',
    description: 'Unnecessary-double-cast-or-process'
  ),
  FigSuggestion(
    name: 'C415',
    description: 'Unnecessary-subscript-reversal'
  ),
  FigSuggestion(
    name: 'C416',
    description: 'Unnecessary-comprehension'
  ),
  FigSuggestion(
    name: 'C417',
    description: 'Unnecessary-map'
  ),
  FigSuggestion(
    name: 'C418',
    description: 'Unnecessary-literal-within-dict-call'
  ),
  FigSuggestion(
    name: 'C419',
    description: 'Unnecessary-comprehension-in-call'
  ),
  FigSuggestion(
    name: 'C420',
    description: 'Unnecessary-dict-comprehension-for-iterable'
  ),
  FigSuggestion(
    name: 'DTZ001',
    description: 'Call-datetime-without-tzinfo'
  ),
  FigSuggestion(
    name: 'DTZ002',
    description: 'Call-datetime-today'
  ),
  FigSuggestion(
    name: 'DTZ003',
    description: 'Call-datetime-utcnow'
  ),
  FigSuggestion(
    name: 'DTZ004',
    description: 'Call-datetime-utcfromtimestamp'
  ),
  FigSuggestion(
    name: 'DTZ005',
    description: 'Call-datetime-now-without-tzinfo'
  ),
  FigSuggestion(
    name: 'DTZ006',
    description: 'Call-datetime-fromtimestamp'
  ),
  FigSuggestion(
    name: 'DTZ007',
    description: 'Call-datetime-strptime-without-zone'
  ),
  FigSuggestion(
    name: 'DTZ011',
    description: 'Call-date-today'
  ),
  FigSuggestion(
    name: 'DTZ012',
    description: 'Call-date-fromtimestamp'
  ),
  FigSuggestion(
    name: 'DTZ901',
    description: 'Datetime-min-max'
  ),
  FigSuggestion(
    name: 'DJ001',
    description: 'Django-nullable-model-string-field'
  ),
  FigSuggestion(
    name: 'DJ003',
    description: 'Django-locals-in-render-function'
  ),
  FigSuggestion(
    name: 'DJ006',
    description: 'Django-exclude-with-model-form'
  ),
  FigSuggestion(
    name: 'DJ007',
    description: 'Django-all-with-model-form'
  ),
  FigSuggestion(
    name: 'DJ008',
    description: 'Django-model-without-dunder-str'
  ),
  FigSuggestion(
    name: 'DJ012',
    description: 'Django-unordered-body-content-in-model'
  ),
  FigSuggestion(
    name: 'DJ013',
    description: 'Django-non-leading-receiver-decorator'
  ),
  FigSuggestion(
    name: 'EM101',
    description: 'Raw-string-in-exception'
  ),
  FigSuggestion(
    name: 'EM102',
    description: 'F-string-in-exception'
  ),
  FigSuggestion(
    name: 'EM103',
    description: 'Dot-format-in-exception'
  ),
  FigSuggestion(
    name: 'EXE001',
    description: 'Shebang-not-executable'
  ),
  FigSuggestion(
    name: 'EXE002',
    description: 'Shebang-missing-executable-file'
  ),
  FigSuggestion(
    name: 'EXE003',
    description: 'Shebang-missing-python'
  ),
  FigSuggestion(
    name: 'EXE004',
    description: 'Shebang-leading-whitespace'
  ),
  FigSuggestion(
    name: 'EXE005',
    description: 'Shebang-not-first-line'
  ),
  FigSuggestion(
    name: 'FA100',
    description: 'Future-rewritable-type-annotation'
  ),
  FigSuggestion(
    name: 'FA102',
    description: 'Future-required-type-annotation'
  ),
  FigSuggestion(
    name: 'ISC001',
    description: 'Single-line-implicit-string-concatenation'
  ),
  FigSuggestion(
    name: 'ISC002',
    description: 'Multi-line-implicit-string-concatenation'
  ),
  FigSuggestion(
    name: 'ISC003',
    description: 'Explicit-string-concatenation'
  ),
  FigSuggestion(
    name: 'ICN001',
    description: 'Unconventional-import-alias'
  ),
  FigSuggestion(
    name: 'ICN002',
    description: 'Banned-import-alias'
  ),
  FigSuggestion(
    name: 'ICN003',
    description: 'Banned-import-from'
  ),
  FigSuggestion(
    name: 'LOG001',
    description: 'Direct-logger-instantiation'
  ),
  FigSuggestion(
    name: 'LOG002',
    description: 'Invalid-get-logger-argument'
  ),
  FigSuggestion(
    name: 'LOG007',
    description: 'Exception-without-exc-info'
  ),
  FigSuggestion(
    name: 'LOG009',
    description: 'Undocumented-warn'
  ),
  FigSuggestion(
    name: 'LOG015',
    description: 'Root-logger-call'
  ),
  FigSuggestion(
    name: 'G001',
    description: 'Logging-string-format'
  ),
  FigSuggestion(
    name: 'G002',
    description: 'Logging-percent-format'
  ),
  FigSuggestion(
    name: 'G003',
    description: 'Logging-string-concat'
  ),
  FigSuggestion(
    name: 'G004',
    description: 'Logging-f-string'
  ),
  FigSuggestion(
    name: 'G010',
    description: 'Logging-warn'
  ),
  FigSuggestion(
    name: 'G101',
    description: 'Logging-extra-attr-clash'
  ),
  FigSuggestion(
    name: 'G201',
    description: 'Logging-exc-info'
  ),
  FigSuggestion(
    name: 'G202',
    description: 'Logging-redundant-exc-info'
  ),
  FigSuggestion(
    name: 'INP001',
    description: 'Implicit-namespace-package'
  ),
  FigSuggestion(
    name: 'PIE790',
    description: 'Unnecessary-placeholder'
  ),
  FigSuggestion(
    name: 'PIE794',
    description: 'Duplicate-class-field-definition'
  ),
  FigSuggestion(
    name: 'PIE796',
    description: 'Non-unique-enums'
  ),
  FigSuggestion(
    name: 'PIE800',
    description: 'Unnecessary-spread'
  ),
  FigSuggestion(
    name: 'PIE804',
    description: 'Unnecessary-dict-kwargs'
  ),
  FigSuggestion(
    name: 'PIE807',
    description: 'Reimplemented-container-builtin'
  ),
  FigSuggestion(
    name: 'PIE808',
    description: 'Unnecessary-range-start'
  ),
  FigSuggestion(
    name: 'PIE810',
    description: 'Multiple-starts-ends-with'
  ),
  FigSuggestion(
    name: 'T201',
    description: 'Print'
  ),
  FigSuggestion(
    name: 'T203',
    description: 'P-print'
  ),
  FigSuggestion(
    name: 'PYI001',
    description: 'Unprefixed-type-param'
  ),
  FigSuggestion(
    name: 'PYI002',
    description: 'Complex-if-statement-in-stub'
  ),
  FigSuggestion(
    name: 'PYI003',
    description: 'Unrecognized-version-info-check'
  ),
  FigSuggestion(
    name: 'PYI004',
    description: 'Patch-version-comparison'
  ),
  FigSuggestion(
    name: 'PYI005',
    description: 'Wrong-tuple-length-version-comparison'
  ),
  FigSuggestion(
    name: 'PYI006',
    description: 'Bad-version-info-comparison'
  ),
  FigSuggestion(
    name: 'PYI007',
    description: 'Unrecognized-platform-check'
  ),
  FigSuggestion(
    name: 'PYI008',
    description: 'Unrecognized-platform-name'
  ),
  FigSuggestion(
    name: 'PYI009',
    description: 'Pass-statement-stub-body'
  ),
  FigSuggestion(
    name: 'PYI010',
    description: 'Non-empty-stub-body'
  ),
  FigSuggestion(
    name: 'PYI011',
    description: 'Typed-argument-default-in-stub'
  ),
  FigSuggestion(
    name: 'PYI012',
    description: 'Pass-in-class-body'
  ),
  FigSuggestion(
    name: 'PYI013',
    description: 'Ellipsis-in-non-empty-class-body'
  ),
  FigSuggestion(
    name: 'PYI014',
    description: 'Argument-default-in-stub'
  ),
  FigSuggestion(
    name: 'PYI015',
    description: 'Assignment-default-in-stub'
  ),
  FigSuggestion(
    name: 'PYI016',
    description: 'Duplicate-union-member'
  ),
  FigSuggestion(
    name: 'PYI017',
    description: 'Complex-assignment-in-stub'
  ),
  FigSuggestion(
    name: 'PYI018',
    description: 'Unused-private-type-var'
  ),
  FigSuggestion(
    name: 'PYI019',
    description: 'Custom-type-var-return-type'
  ),
  FigSuggestion(
    name: 'PYI020',
    description: 'Quoted-annotation-in-stub'
  ),
  FigSuggestion(
    name: 'PYI021',
    description: 'Docstring-in-stub'
  ),
  FigSuggestion(
    name: 'PYI024',
    description: 'Collections-named-tuple'
  ),
  FigSuggestion(
    name: 'PYI025',
    description: 'Unaliased-collections-abc-set-import'
  ),
  FigSuggestion(
    name: 'PYI026',
    description: 'Type-alias-without-annotation'
  ),
  FigSuggestion(
    name: 'PYI029',
    description: 'Str-or-repr-defined-in-stub'
  ),
  FigSuggestion(
    name: 'PYI030',
    description: 'Unnecessary-literal-union'
  ),
  FigSuggestion(
    name: 'PYI032',
    description: 'Any-eq-ne-annotation'
  ),
  FigSuggestion(
    name: 'PYI033',
    description: 'Type-comment-in-stub'
  ),
  FigSuggestion(
    name: 'PYI034',
    description: 'Non-self-return-type'
  ),
  FigSuggestion(
    name: 'PYI035',
    description: 'Unassigned-special-variable-in-stub'
  ),
  FigSuggestion(
    name: 'PYI036',
    description: 'Bad-exit-annotation'
  ),
  FigSuggestion(
    name: 'PYI041',
    description: 'Redundant-numeric-union'
  ),
  FigSuggestion(
    name: 'PYI042',
    description: 'Snake-case-type-alias'
  ),
  FigSuggestion(
    name: 'PYI043',
    description: 'T-suffixed-type-alias'
  ),
  FigSuggestion(
    name: 'PYI044',
    description: 'Future-annotations-in-stub'
  ),
  FigSuggestion(
    name: 'PYI045',
    description: 'Iter-method-return-iterable'
  ),
  FigSuggestion(
    name: 'PYI046',
    description: 'Unused-private-protocol'
  ),
  FigSuggestion(
    name: 'PYI047',
    description: 'Unused-private-type-alias'
  ),
  FigSuggestion(
    name: 'PYI048',
    description: 'Stub-body-multiple-statements'
  ),
  FigSuggestion(
    name: 'PYI049',
    description: 'Unused-private-typed-dict'
  ),
  FigSuggestion(
    name: 'PYI050',
    description: 'No-return-argument-annotation-in-stub'
  ),
  FigSuggestion(
    name: 'PYI051',
    description: 'Redundant-literal-union'
  ),
  FigSuggestion(
    name: 'PYI052',
    description: 'Unannotated-assignment-in-stub'
  ),
  FigSuggestion(
    name: 'PYI053',
    description: 'String-or-bytes-too-long'
  ),
  FigSuggestion(
    name: 'PYI054',
    description: 'Numeric-literal-too-long'
  ),
  FigSuggestion(
    name: 'PYI055',
    description: 'Unnecessary-type-union'
  ),
  FigSuggestion(
    name: 'PYI056',
    description: 'Unsupported-method-call-on-all'
  ),
  FigSuggestion(
    name: 'PYI057',
    description: 'Byte-string-usage'
  ),
  FigSuggestion(
    name: 'PYI058',
    description: 'Generator-return-from-iter-method'
  ),
  FigSuggestion(
    name: 'PYI059',
    description: 'Generic-not-last-base-class'
  ),
  FigSuggestion(
    name: 'PYI061',
    description: 'Redundant-none-literal'
  ),
  FigSuggestion(
    name: 'PYI062',
    description: 'Duplicate-literal-member'
  ),
  FigSuggestion(
    name: 'PYI063',
    description: 'Pep484-style-positional-only-parameter'
  ),
  FigSuggestion(
    name: 'PYI064',
    description: 'Redundant-final-literal'
  ),
  FigSuggestion(
    name: 'PYI066',
    description: 'Bad-version-info-order'
  ),
  FigSuggestion(
    name: 'PT001',
    description: 'Pytest-fixture-incorrect-parentheses-style'
  ),
  FigSuggestion(
    name: 'PT002',
    description: 'Pytest-fixture-positional-args'
  ),
  FigSuggestion(
    name: 'PT003',
    description: 'Pytest-extraneous-scope-function'
  ),
  FigSuggestion(
    name: 'PT004',
    description: 'Pytest-missing-fixture-name-underscore'
  ),
  FigSuggestion(
    name: 'PT005',
    description: 'Pytest-incorrect-fixture-name-underscore'
  ),
  FigSuggestion(
    name: 'PT006',
    description: 'Pytest-parametrize-names-wrong-type'
  ),
  FigSuggestion(
    name: 'PT007',
    description: 'Pytest-parametrize-values-wrong-type'
  ),
  FigSuggestion(
    name: 'PT008',
    description: 'Pytest-patch-with-lambda'
  ),
  FigSuggestion(
    name: 'PT009',
    description: 'Pytest-unittest-assertion'
  ),
  FigSuggestion(
    name: 'PT010',
    description: 'Pytest-raises-without-exception'
  ),
  FigSuggestion(
    name: 'PT011',
    description: 'Pytest-raises-too-broad'
  ),
  FigSuggestion(
    name: 'PT012',
    description: 'Pytest-raises-with-multiple-statements'
  ),
  FigSuggestion(
    name: 'PT013',
    description: 'Pytest-incorrect-pytest-import'
  ),
  FigSuggestion(
    name: 'PT014',
    description: 'Pytest-duplicate-parametrize-test-cases'
  ),
  FigSuggestion(
    name: 'PT015',
    description: 'Pytest-assert-always-false'
  ),
  FigSuggestion(
    name: 'PT016',
    description: 'Pytest-fail-without-message'
  ),
  FigSuggestion(
    name: 'PT017',
    description: 'Pytest-assert-in-except'
  ),
  FigSuggestion(
    name: 'PT018',
    description: 'Pytest-composite-assertion'
  ),
  FigSuggestion(
    name: 'PT019',
    description: 'Pytest-fixture-param-without-value'
  ),
  FigSuggestion(
    name: 'PT020',
    description: 'Pytest-deprecated-yield-fixture'
  ),
  FigSuggestion(
    name: 'PT021',
    description: 'Pytest-fixture-finalizer-callback'
  ),
  FigSuggestion(
    name: 'PT022',
    description: 'Pytest-useless-yield-fixture'
  ),
  FigSuggestion(
    name: 'PT023',
    description: 'Pytest-incorrect-mark-parentheses-style'
  ),
  FigSuggestion(
    name: 'PT024',
    description: 'Pytest-unnecessary-asyncio-mark-on-fixture'
  ),
  FigSuggestion(
    name: 'PT025',
    description: 'Pytest-erroneous-use-fixtures-on-fixture'
  ),
  FigSuggestion(
    name: 'PT026',
    description: 'Pytest-use-fixtures-without-parameters'
  ),
  FigSuggestion(
    name: 'PT027',
    description: 'Pytest-unittest-raises-assertion'
  ),
  FigSuggestion(
    name: 'Q000',
    description: 'Bad-quotes-inline-string'
  ),
  FigSuggestion(
    name: 'Q001',
    description: 'Bad-quotes-multiline-string'
  ),
  FigSuggestion(
    name: 'Q002',
    description: 'Bad-quotes-docstring'
  ),
  FigSuggestion(
    name: 'Q003',
    description: 'Avoidable-escaped-quote'
  ),
  FigSuggestion(
    name: 'Q004',
    description: 'Unnecessary-escaped-quote'
  ),
  FigSuggestion(
    name: 'RSE102',
    description: 'Unnecessary-paren-on-raise-exception'
  ),
  FigSuggestion(
    name: 'RET501',
    description: 'Unnecessary-return-none'
  ),
  FigSuggestion(
    name: 'RET502',
    description: 'Implicit-return-value'
  ),
  FigSuggestion(
    name: 'RET503',
    description: 'Implicit-return'
  ),
  FigSuggestion(
    name: 'RET504',
    description: 'Unnecessary-assign'
  ),
  FigSuggestion(
    name: 'RET505',
    description: 'Superfluous-else-return'
  ),
  FigSuggestion(
    name: 'RET506',
    description: 'Superfluous-else-raise'
  ),
  FigSuggestion(
    name: 'RET507',
    description: 'Superfluous-else-continue'
  ),
  FigSuggestion(
    name: 'RET508',
    description: 'Superfluous-else-break'
  ),
  FigSuggestion(
    name: 'SLF001',
    description: 'Private-member-access'
  ),
  FigSuggestion(
    name: 'SLOT000',
    description: 'No-slots-in-str-subclass'
  ),
  FigSuggestion(
    name: 'SLOT001',
    description: 'No-slots-in-tuple-subclass'
  ),
  FigSuggestion(
    name: 'SLOT002',
    description: 'No-slots-in-namedtuple-subclass'
  ),
  FigSuggestion(
    name: 'SIM101',
    description: 'Duplicate-isinstance-call'
  ),
  FigSuggestion(
    name: 'SIM102',
    description: 'Collapsible-if'
  ),
  FigSuggestion(
    name: 'SIM103',
    description: 'Needless-bool'
  ),
  FigSuggestion(
    name: 'SIM105',
    description: 'Suppressible-exception'
  ),
  FigSuggestion(
    name: 'SIM107',
    description: 'Return-in-try-except-finally'
  ),
  FigSuggestion(
    name: 'SIM108',
    description: 'If-else-block-instead-of-if-exp'
  ),
  FigSuggestion(
    name: 'SIM109',
    description: 'Compare-with-tuple'
  ),
  FigSuggestion(
    name: 'SIM110',
    description: 'Reimplemented-builtin'
  ),
  FigSuggestion(
    name: 'SIM112',
    description: 'Uncapitalized-environment-variables'
  ),
  FigSuggestion(
    name: 'SIM113',
    description: 'Enumerate-for-loop'
  ),
  FigSuggestion(
    name: 'SIM114',
    description: 'If-with-same-arms'
  ),
  FigSuggestion(
    name: 'SIM115',
    description: 'Open-file-with-context-handler'
  ),
  FigSuggestion(
    name: 'SIM116',
    description: 'If-else-block-instead-of-dict-lookup'
  ),
  FigSuggestion(
    name: 'SIM117',
    description: 'Multiple-with-statements'
  ),
  FigSuggestion(
    name: 'SIM118',
    description: 'In-dict-keys'
  ),
  FigSuggestion(
    name: 'SIM201',
    description: 'Negate-equal-op'
  ),
  FigSuggestion(
    name: 'SIM202',
    description: 'Negate-not-equal-op'
  ),
  FigSuggestion(
    name: 'SIM208',
    description: 'Double-negation'
  ),
  FigSuggestion(
    name: 'SIM210',
    description: 'If-expr-with-true-false'
  ),
  FigSuggestion(
    name: 'SIM211',
    description: 'If-expr-with-false-true'
  ),
  FigSuggestion(
    name: 'SIM212',
    description: 'If-expr-with-twisted-arms'
  ),
  FigSuggestion(
    name: 'SIM220',
    description: 'Expr-and-not-expr'
  ),
  FigSuggestion(
    name: 'SIM221',
    description: 'Expr-or-not-expr'
  ),
  FigSuggestion(
    name: 'SIM222',
    description: 'Expr-or-true'
  ),
  FigSuggestion(
    name: 'SIM223',
    description: 'Expr-and-false'
  ),
  FigSuggestion(
    name: 'SIM300',
    description: 'Yoda-conditions'
  ),
  FigSuggestion(
    name: 'SIM401',
    description: 'If-else-block-instead-of-dict-get'
  ),
  FigSuggestion(
    name: 'SIM905',
    description: 'Split-static-string'
  ),
  FigSuggestion(
    name: 'SIM910',
    description: 'Dict-get-with-none-default'
  ),
  FigSuggestion(
    name: 'SIM911',
    description: 'Zip-dict-keys-and-values'
  ),
  FigSuggestion(
    name: 'TID251',
    description: 'Banned-api'
  ),
  FigSuggestion(
    name: 'TID252',
    description: 'Relative-imports'
  ),
  FigSuggestion(
    name: 'TID253',
    description: 'Banned-module-level-imports'
  ),
  FigSuggestion(
    name: 'TC001',
    description: 'Typing-only-first-party-import'
  ),
  FigSuggestion(
    name: 'TC002',
    description: 'Typing-only-third-party-import'
  ),
  FigSuggestion(
    name: 'TC003',
    description: 'Typing-only-standard-library-import'
  ),
  FigSuggestion(
    name: 'TC004',
    description: 'Runtime-import-in-type-checking-block'
  ),
  FigSuggestion(
    name: 'TC005',
    description: 'Empty-type-checking-block'
  ),
  FigSuggestion(
    name: 'TC006',
    description: 'Runtime-cast-value'
  ),
  FigSuggestion(
    name: 'TC007',
    description: 'Unquoted-type-alias'
  ),
  FigSuggestion(
    name: 'TC008',
    description: 'Quoted-type-alias'
  ),
  FigSuggestion(
    name: 'TC010',
    description: 'Runtime-string-union'
  ),
  FigSuggestion(
    name: 'INT001',
    description: 'F-string-in-get-text-func-call'
  ),
  FigSuggestion(
    name: 'INT002',
    description: 'Format-in-get-text-func-call'
  ),
  FigSuggestion(
    name: 'INT003',
    description: 'Printf-in-get-text-func-call'
  ),
  FigSuggestion(
    name: 'ARG001',
    description: 'Unused-function-argument'
  ),
  FigSuggestion(
    name: 'ARG002',
    description: 'Unused-method-argument'
  ),
  FigSuggestion(
    name: 'ARG003',
    description: 'Unused-class-method-argument'
  ),
  FigSuggestion(
    name: 'ARG004',
    description: 'Unused-static-method-argument'
  ),
  FigSuggestion(
    name: 'ARG005',
    description: 'Unused-lambda-argument'
  ),
  FigSuggestion(
    name: 'PTH100',
    description: 'Os-path-abspath'
  ),
  FigSuggestion(
    name: 'PTH101',
    description: 'Os-chmod'
  ),
  FigSuggestion(
    name: 'PTH102',
    description: 'Os-mkdir'
  ),
  FigSuggestion(
    name: 'PTH103',
    description: 'Os-makedirs'
  ),
  FigSuggestion(
    name: 'PTH104',
    description: 'Os-rename'
  ),
  FigSuggestion(
    name: 'PTH105',
    description: 'Os-replace'
  ),
  FigSuggestion(
    name: 'PTH106',
    description: 'Os-rmdir'
  ),
  FigSuggestion(
    name: 'PTH107',
    description: 'Os-remove'
  ),
  FigSuggestion(
    name: 'PTH108',
    description: 'Os-unlink'
  ),
  FigSuggestion(
    name: 'PTH109',
    description: 'Os-getcwd'
  ),
  FigSuggestion(
    name: 'PTH110',
    description: 'Os-path-exists'
  ),
  FigSuggestion(
    name: 'PTH111',
    description: 'Os-path-expanduser'
  ),
  FigSuggestion(
    name: 'PTH112',
    description: 'Os-path-isdir'
  ),
  FigSuggestion(
    name: 'PTH113',
    description: 'Os-path-isfile'
  ),
  FigSuggestion(
    name: 'PTH114',
    description: 'Os-path-islink'
  ),
  FigSuggestion(
    name: 'PTH115',
    description: 'Os-readlink'
  ),
  FigSuggestion(
    name: 'PTH116',
    description: 'Os-stat'
  ),
  FigSuggestion(
    name: 'PTH117',
    description: 'Os-path-isabs'
  ),
  FigSuggestion(
    name: 'PTH118',
    description: 'Os-path-join'
  ),
  FigSuggestion(
    name: 'PTH119',
    description: 'Os-path-basename'
  ),
  FigSuggestion(
    name: 'PTH120',
    description: 'Os-path-dirname'
  ),
  FigSuggestion(
    name: 'PTH121',
    description: 'Os-path-samefile'
  ),
  FigSuggestion(
    name: 'PTH122',
    description: 'Os-path-splitext'
  ),
  FigSuggestion(
    name: 'PTH123',
    description: 'Builtin-open'
  ),
  FigSuggestion(
    name: 'PTH124',
    description: 'Py-path'
  ),
  FigSuggestion(
    name: 'PTH201',
    description: 'Path-constructor-current-directory'
  ),
  FigSuggestion(
    name: 'PTH202',
    description: 'Os-path-getsize'
  ),
  FigSuggestion(
    name: 'PTH203',
    description: 'Os-path-getatime'
  ),
  FigSuggestion(
    name: 'PTH204',
    description: 'Os-path-getmtime'
  ),
  FigSuggestion(
    name: 'PTH205',
    description: 'Os-path-getctime'
  ),
  FigSuggestion(
    name: 'PTH206',
    description: 'Os-sep-split'
  ),
  FigSuggestion(
    name: 'PTH207',
    description: 'Glob'
  ),
  FigSuggestion(
    name: 'PTH208',
    description: 'Os-listdir'
  ),
  FigSuggestion(
    name: 'TD001',
    description: 'Invalid-todo-tag'
  ),
  FigSuggestion(
    name: 'TD002',
    description: 'Missing-todo-author'
  ),
  FigSuggestion(
    name: 'TD003',
    description: 'Missing-todo-link'
  ),
  FigSuggestion(
    name: 'TD004',
    description: 'Missing-todo-colon'
  ),
  FigSuggestion(
    name: 'TD005',
    description: 'Missing-todo-description'
  ),
  FigSuggestion(
    name: 'TD006',
    description: 'Invalid-todo-capitalization'
  ),
  FigSuggestion(
    name: 'TD007',
    description: 'Missing-space-after-todo-colon'
  ),
  FigSuggestion(
    name: 'FIX001',
    description: 'Line-contains-fixme'
  ),
  FigSuggestion(
    name: 'FIX002',
    description: 'Line-contains-todo'
  ),
  FigSuggestion(
    name: 'FIX003',
    description: 'Line-contains-xxx'
  ),
  FigSuggestion(
    name: 'FIX004',
    description: 'Line-contains-hack'
  ),
  FigSuggestion(
    name: 'ERA001',
    description: 'Commented-out-code'
  ),
  FigSuggestion(
    name: 'PD002',
    description: 'Pandas-use-of-inplace-argument'
  ),
  FigSuggestion(
    name: 'PD003',
    description: 'Pandas-use-of-dot-is-null'
  ),
  FigSuggestion(
    name: 'PD004',
    description: 'Pandas-use-of-dot-not-null'
  ),
  FigSuggestion(
    name: 'PD007',
    description: 'Pandas-use-of-dot-ix'
  ),
  FigSuggestion(
    name: 'PD008',
    description: 'Pandas-use-of-dot-at'
  ),
  FigSuggestion(
    name: 'PD009',
    description: 'Pandas-use-of-dot-iat'
  ),
  FigSuggestion(
    name: 'PD010',
    description: 'Pandas-use-of-dot-pivot-or-unstack'
  ),
  FigSuggestion(
    name: 'PD011',
    description: 'Pandas-use-of-dot-values'
  ),
  FigSuggestion(
    name: 'PD012',
    description: 'Pandas-use-of-dot-read-table'
  ),
  FigSuggestion(
    name: 'PD013',
    description: 'Pandas-use-of-dot-stack'
  ),
  FigSuggestion(
    name: 'PD015',
    description: 'Pandas-use-of-pd-merge'
  ),
  FigSuggestion(
    name: 'PD101',
    description: 'Pandas-nunique-constant-series-check'
  ),
  FigSuggestion(
    name: 'PD901',
    description: 'Pandas-df-variable-name'
  ),
  FigSuggestion(
    name: 'PGH001',
    description: 'Eval'
  ),
  FigSuggestion(
    name: 'PGH002',
    description: 'Deprecated-log-warn'
  ),
  FigSuggestion(
    name: 'PGH003',
    description: 'Blanket-type-ignore'
  ),
  FigSuggestion(
    name: 'PGH004',
    description: 'Blanket-noqa'
  ),
  FigSuggestion(
    name: 'PGH005',
    description: 'Invalid-mock-access'
  ),
  FigSuggestion(
    name: 'PLC0105',
    description: 'Type-name-incorrect-variance'
  ),
  FigSuggestion(
    name: 'PLC0131',
    description: 'Type-bivariance'
  ),
  FigSuggestion(
    name: 'PLC0132',
    description: 'Type-param-name-mismatch'
  ),
  FigSuggestion(
    name: 'PLC0205',
    description: 'Single-string-slots'
  ),
  FigSuggestion(
    name: 'PLC0206',
    description: 'Dict-index-missing-items'
  ),
  FigSuggestion(
    name: 'PLC0208',
    description: 'Iteration-over-set'
  ),
  FigSuggestion(
    name: 'PLC0414',
    description: 'Useless-import-alias'
  ),
  FigSuggestion(
    name: 'PLC0415',
    description: 'Import-outside-top-level'
  ),
  FigSuggestion(
    name: 'PLC1802',
    description: 'Len-test'
  ),
  FigSuggestion(
    name: 'PLC1901',
    description: 'Compare-to-empty-string'
  ),
  FigSuggestion(
    name: 'PLC2401',
    description: 'Non-ascii-name'
  ),
  FigSuggestion(
    name: 'PLC2403',
    description: 'Non-ascii-import-name'
  ),
  FigSuggestion(
    name: 'PLC2701',
    description: 'Import-private-name'
  ),
  FigSuggestion(
    name: 'PLC2801',
    description: 'Unnecessary-dunder-call'
  ),
  FigSuggestion(
    name: 'PLC3002',
    description: 'Unnecessary-direct-lambda-call'
  ),
  FigSuggestion(
    name: 'PLE0100',
    description: 'Yield-in-init'
  ),
  FigSuggestion(
    name: 'PLE0101',
    description: 'Return-in-init'
  ),
  FigSuggestion(
    name: 'PLE0115',
    description: 'Nonlocal-and-global'
  ),
  FigSuggestion(
    name: 'PLE0116',
    description: 'Continue-in-finally'
  ),
  FigSuggestion(
    name: 'PLE0117',
    description: 'Nonlocal-without-binding'
  ),
  FigSuggestion(
    name: 'PLE0118',
    description: 'Load-before-global-declaration'
  ),
  FigSuggestion(
    name: 'PLE0237',
    description: 'Non-slot-assignment'
  ),
  FigSuggestion(
    name: 'PLE0241',
    description: 'Duplicate-bases'
  ),
  FigSuggestion(
    name: 'PLE0302',
    description: 'Unexpected-special-method-signature'
  ),
  FigSuggestion(
    name: 'PLE0303',
    description: 'Invalid-length-return-type'
  ),
  FigSuggestion(
    name: 'PLE0304',
    description: 'Invalid-bool-return-type'
  ),
  FigSuggestion(
    name: 'PLE0305',
    description: 'Invalid-index-return-type'
  ),
  FigSuggestion(
    name: 'PLE0307',
    description: 'Invalid-str-return-type'
  ),
  FigSuggestion(
    name: 'PLE0308',
    description: 'Invalid-bytes-return-type'
  ),
  FigSuggestion(
    name: 'PLE0309',
    description: 'Invalid-hash-return-type'
  ),
  FigSuggestion(
    name: 'PLE0604',
    description: 'Invalid-all-object'
  ),
  FigSuggestion(
    name: 'PLE0605',
    description: 'Invalid-all-format'
  ),
  FigSuggestion(
    name: 'PLE0643',
    description: 'Potential-index-error'
  ),
  FigSuggestion(
    name: 'PLE0704',
    description: 'Misplaced-bare-raise'
  ),
  FigSuggestion(
    name: 'PLE1132',
    description: 'Repeated-keyword-argument'
  ),
  FigSuggestion(
    name: 'PLE1141',
    description: 'Dict-iter-missing-items'
  ),
  FigSuggestion(
    name: 'PLE1142',
    description: 'Await-outside-async'
  ),
  FigSuggestion(
    name: 'PLE1205',
    description: 'Logging-too-many-args'
  ),
  FigSuggestion(
    name: 'PLE1206',
    description: 'Logging-too-few-args'
  ),
  FigSuggestion(
    name: 'PLE1300',
    description: 'Bad-string-format-character'
  ),
  FigSuggestion(
    name: 'PLE1307',
    description: 'Bad-string-format-type'
  ),
  FigSuggestion(
    name: 'PLE1310',
    description: 'Bad-str-strip-call'
  ),
  FigSuggestion(
    name: 'PLE1507',
    description: 'Invalid-envvar-value'
  ),
  FigSuggestion(
    name: 'PLE1519',
    description: 'Singledispatch-method'
  ),
  FigSuggestion(
    name: 'PLE1520',
    description: 'Singledispatchmethod-function'
  ),
  FigSuggestion(
    name: 'PLE1700',
    description: 'Yield-from-in-async-function'
  ),
  FigSuggestion(
    name: 'PLE2502',
    description: 'Bidirectional-unicode'
  ),
  FigSuggestion(
    name: 'PLE2510',
    description: 'Invalid-character-backspace'
  ),
  FigSuggestion(
    name: 'PLE2512',
    description: 'Invalid-character-sub'
  ),
  FigSuggestion(
    name: 'PLE2513',
    description: 'Invalid-character-esc'
  ),
  FigSuggestion(
    name: 'PLE2514',
    description: 'Invalid-character-nul'
  ),
  FigSuggestion(
    name: 'PLE2515',
    description: 'Invalid-character-zero-width-space'
  ),
  FigSuggestion(
    name: 'PLE4703',
    description: 'Modified-iterating-set'
  ),
  FigSuggestion(
    name: 'PLR0124',
    description: 'Comparison-with-itself'
  ),
  FigSuggestion(
    name: 'PLR0133',
    description: 'Comparison-of-constant'
  ),
  FigSuggestion(
    name: 'PLR0202',
    description: 'No-classmethod-decorator'
  ),
  FigSuggestion(
    name: 'PLR0203',
    description: 'No-staticmethod-decorator'
  ),
  FigSuggestion(
    name: 'PLR0206',
    description: 'Property-with-parameters'
  ),
  FigSuggestion(
    name: 'PLR0402',
    description: 'Manual-from-import'
  ),
  FigSuggestion(
    name: 'PLR0904',
    description: 'Too-many-public-methods'
  ),
  FigSuggestion(
    name: 'PLR0911',
    description: 'Too-many-return-statements'
  ),
  FigSuggestion(
    name: 'PLR0912',
    description: 'Too-many-branches'
  ),
  FigSuggestion(
    name: 'PLR0913',
    description: 'Too-many-arguments'
  ),
  FigSuggestion(
    name: 'PLR0914',
    description: 'Too-many-locals'
  ),
  FigSuggestion(
    name: 'PLR0915',
    description: 'Too-many-statements'
  ),
  FigSuggestion(
    name: 'PLR0916',
    description: 'Too-many-boolean-expressions'
  ),
  FigSuggestion(
    name: 'PLR0917',
    description: 'Too-many-positional-arguments'
  ),
  FigSuggestion(
    name: 'PLR1701',
    description: 'Repeated-isinstance-calls'
  ),
  FigSuggestion(
    name: 'PLR1702',
    description: 'Too-many-nested-blocks'
  ),
  FigSuggestion(
    name: 'PLR1704',
    description: 'Redefined-argument-from-local'
  ),
  FigSuggestion(
    name: 'PLR1706',
    description: 'And-or-ternary'
  ),
  FigSuggestion(
    name: 'PLR1711',
    description: 'Useless-return'
  ),
  FigSuggestion(
    name: 'PLR1714',
    description: 'Repeated-equality-comparison'
  ),
  FigSuggestion(
    name: 'PLR1716',
    description: 'Boolean-chained-comparison'
  ),
  FigSuggestion(
    name: 'PLR1722',
    description: 'Sys-exit-alias'
  ),
  FigSuggestion(
    name: 'PLR1730',
    description: 'If-stmt-min-max'
  ),
  FigSuggestion(
    name: 'PLR1733',
    description: 'Unnecessary-dict-index-lookup'
  ),
  FigSuggestion(
    name: 'PLR1736',
    description: 'Unnecessary-list-index-lookup'
  ),
  FigSuggestion(
    name: 'PLR2004',
    description: 'Magic-value-comparison'
  ),
  FigSuggestion(
    name: 'PLR2044',
    description: 'Empty-comment'
  ),
  FigSuggestion(
    name: 'PLR5501',
    description: 'Collapsible-else-if'
  ),
  FigSuggestion(
    name: 'PLR6104',
    description: 'Non-augmented-assignment'
  ),
  FigSuggestion(
    name: 'PLR6201',
    description: 'Literal-membership'
  ),
  FigSuggestion(
    name: 'PLR6301',
    description: 'No-self-use'
  ),
  FigSuggestion(
    name: 'PLW0108',
    description: 'Unnecessary-lambda'
  ),
  FigSuggestion(
    name: 'PLW0120',
    description: 'Useless-else-on-loop'
  ),
  FigSuggestion(
    name: 'PLW0127',
    description: 'Self-assigning-variable'
  ),
  FigSuggestion(
    name: 'PLW0128',
    description: 'Redeclared-assigned-name'
  ),
  FigSuggestion(
    name: 'PLW0129',
    description: 'Assert-on-string-literal'
  ),
  FigSuggestion(
    name: 'PLW0131',
    description: 'Named-expr-without-context'
  ),
  FigSuggestion(
    name: 'PLW0133',
    description: 'Useless-exception-statement'
  ),
  FigSuggestion(
    name: 'PLW0177',
    description: 'Nan-comparison'
  ),
  FigSuggestion(
    name: 'PLW0211',
    description: 'Bad-staticmethod-argument'
  ),
  FigSuggestion(
    name: 'PLW0245',
    description: 'Super-without-brackets'
  ),
  FigSuggestion(
    name: 'PLW0406',
    description: 'Import-self'
  ),
  FigSuggestion(
    name: 'PLW0602',
    description: 'Global-variable-not-assigned'
  ),
  FigSuggestion(
    name: 'PLW0603',
    description: 'Global-statement'
  ),
  FigSuggestion(
    name: 'PLW0604',
    description: 'Global-at-module-level'
  ),
  FigSuggestion(
    name: 'PLW0642',
    description: 'Self-or-cls-assignment'
  ),
  FigSuggestion(
    name: 'PLW0711',
    description: 'Binary-op-exception'
  ),
  FigSuggestion(
    name: 'PLW1501',
    description: 'Bad-open-mode'
  ),
  FigSuggestion(
    name: 'PLW1507',
    description: 'Shallow-copy-environ'
  ),
  FigSuggestion(
    name: 'PLW1508',
    description: 'Invalid-envvar-default'
  ),
  FigSuggestion(
    name: 'PLW1509',
    description: 'Subprocess-popen-preexec-fn'
  ),
  FigSuggestion(
    name: 'PLW1510',
    description: 'Subprocess-run-without-check'
  ),
  FigSuggestion(
    name: 'PLW1514',
    description: 'Unspecified-encoding'
  ),
  FigSuggestion(
    name: 'PLW1641',
    description: 'Eq-without-hash'
  ),
  FigSuggestion(
    name: 'PLW2101',
    description: 'Useless-with-lock'
  ),
  FigSuggestion(
    name: 'PLW2901',
    description: 'Redefined-loop-name'
  ),
  FigSuggestion(
    name: 'PLW3201',
    description: 'Bad-dunder-method-name'
  ),
  FigSuggestion(
    name: 'PLW3301',
    description: 'Nested-min-max'
  ),
  FigSuggestion(
    name: 'TRY002',
    description: 'Raise-vanilla-class'
  ),
  FigSuggestion(
    name: 'TRY003',
    description: 'Raise-vanilla-args'
  ),
  FigSuggestion(
    name: 'TRY004',
    description: 'Type-check-without-type-error'
  ),
  FigSuggestion(
    name: 'TRY200',
    description: 'Reraise-no-cause'
  ),
  FigSuggestion(
    name: 'TRY201',
    description: 'Verbose-raise'
  ),
  FigSuggestion(
    name: 'TRY203',
    description: 'Useless-try-except'
  ),
  FigSuggestion(
    name: 'TRY300',
    description: 'Try-consider-else'
  ),
  FigSuggestion(
    name: 'TRY301',
    description: 'Raise-within-try'
  ),
  FigSuggestion(
    name: 'TRY400',
    description: 'Error-instead-of-exception'
  ),
  FigSuggestion(
    name: 'TRY401',
    description: 'Verbose-log-message'
  ),
  FigSuggestion(
    name: 'FLY002',
    description: 'Static-join-to-f-string'
  ),
  FigSuggestion(
    name: 'NPY001',
    description: 'Numpy-deprecated-type-alias'
  ),
  FigSuggestion(
    name: 'NPY002',
    description: 'Numpy-legacy-random'
  ),
  FigSuggestion(
    name: 'NPY003',
    description: 'Numpy-deprecated-function'
  ),
  FigSuggestion(
    name: 'NPY201',
    description: 'Numpy2-deprecation'
  ),
  FigSuggestion(
    name: 'FAST001',
    description: 'Fast-api-redundant-response-model'
  ),
  FigSuggestion(
    name: 'FAST002',
    description: 'Fast-api-non-annotated-dependency'
  ),
  FigSuggestion(
    name: 'FAST003',
    description: 'Fast-api-unused-path-parameter'
  ),
  FigSuggestion(
    name: 'AIR001',
    description: 'Airflow-variable-name-task-id-mismatch'
  ),
  FigSuggestion(
    name: 'AIR301',
    description: 'Airflow-dag-no-schedule-argument'
  ),
  FigSuggestion(
    name: 'AIR302',
    description: 'Airflow3-removal'
  ),
  FigSuggestion(
    name: 'PERF101',
    description: 'Unnecessary-list-cast'
  ),
  FigSuggestion(
    name: 'PERF102',
    description: 'Incorrect-dict-iterator'
  ),
  FigSuggestion(
    name: 'PERF203',
    description: 'Try-except-in-loop'
  ),
  FigSuggestion(
    name: 'PERF401',
    description: 'Manual-list-comprehension'
  ),
  FigSuggestion(
    name: 'PERF402',
    description: 'Manual-list-copy'
  ),
  FigSuggestion(
    name: 'PERF403',
    description: 'Manual-dict-comprehension'
  ),
  FigSuggestion(
    name: 'FURB101',
    description: 'Read-whole-file'
  ),
  FigSuggestion(
    name: 'FURB103',
    description: 'Write-whole-file'
  ),
  FigSuggestion(
    name: 'FURB105',
    description: 'Print-empty-string'
  ),
  FigSuggestion(
    name: 'FURB110',
    description: 'If-exp-instead-of-or-operator'
  ),
  FigSuggestion(
    name: 'FURB113',
    description: 'Repeated-append'
  ),
  FigSuggestion(
    name: 'FURB116',
    description: 'F-string-number-format'
  ),
  FigSuggestion(
    name: 'FURB118',
    description: 'Reimplemented-operator'
  ),
  FigSuggestion(
    name: 'FURB129',
    description: 'Readlines-in-for'
  ),
  FigSuggestion(
    name: 'FURB131',
    description: 'Delete-full-slice'
  ),
  FigSuggestion(
    name: 'FURB132',
    description: 'Check-and-remove-from-set'
  ),
  FigSuggestion(
    name: 'FURB136',
    description: 'If-expr-min-max'
  ),
  FigSuggestion(
    name: 'FURB140',
    description: 'Reimplemented-starmap'
  ),
  FigSuggestion(
    name: 'FURB142',
    description: 'For-loop-set-mutations'
  ),
  FigSuggestion(
    name: 'FURB145',
    description: 'Slice-copy'
  ),
  FigSuggestion(
    name: 'FURB148',
    description: 'Unnecessary-enumerate'
  ),
  FigSuggestion(
    name: 'FURB152',
    description: 'Math-constant'
  ),
  FigSuggestion(
    name: 'FURB154',
    description: 'Repeated-global'
  ),
  FigSuggestion(
    name: 'FURB156',
    description: 'Hardcoded-string-charset'
  ),
  FigSuggestion(
    name: 'FURB157',
    description: 'Verbose-decimal-constructor'
  ),
  FigSuggestion(
    name: 'FURB161',
    description: 'Bit-count'
  ),
  FigSuggestion(
    name: 'FURB163',
    description: 'Redundant-log-base'
  ),
  FigSuggestion(
    name: 'FURB164',
    description: 'Unnecessary-from-float'
  ),
  FigSuggestion(
    name: 'FURB166',
    description: 'Int-on-sliced-str'
  ),
  FigSuggestion(
    name: 'FURB167',
    description: 'Regex-flag-alias'
  ),
  FigSuggestion(
    name: 'FURB168',
    description: 'Isinstance-type-none'
  ),
  FigSuggestion(
    name: 'FURB169',
    description: 'Type-none-comparison'
  ),
  FigSuggestion(
    name: 'FURB171',
    description: 'Single-item-membership-test'
  ),
  FigSuggestion(
    name: 'FURB177',
    description: 'Implicit-cwd'
  ),
  FigSuggestion(
    name: 'FURB180',
    description: 'Meta-class-abc-meta'
  ),
  FigSuggestion(
    name: 'FURB181',
    description: 'Hashlib-digest-hex'
  ),
  FigSuggestion(
    name: 'FURB187',
    description: 'List-reverse-copy'
  ),
  FigSuggestion(
    name: 'FURB188',
    description: 'Slice-to-remove-prefix-or-suffix'
  ),
  FigSuggestion(
    name: 'FURB189',
    description: 'Subclass-builtin'
  ),
  FigSuggestion(
    name: 'FURB192',
    description: 'Sorted-min-max'
  ),
  FigSuggestion(
    name: 'DOC201',
    description: 'Docstring-missing-returns'
  ),
  FigSuggestion(
    name: 'DOC202',
    description: 'Docstring-extraneous-returns'
  ),
  FigSuggestion(
    name: 'DOC402',
    description: 'Docstring-missing-yields'
  ),
  FigSuggestion(
    name: 'DOC403',
    description: 'Docstring-extraneous-yields'
  ),
  FigSuggestion(
    name: 'DOC501',
    description: 'Docstring-missing-exception'
  ),
  FigSuggestion(
    name: 'DOC502',
    description: 'Docstring-extraneous-exception'
  ),
  FigSuggestion(
    name: 'RUF001',
    description: 'Ambiguous-unicode-character-string'
  ),
  FigSuggestion(
    name: 'RUF002',
    description: 'Ambiguous-unicode-character-docstring'
  ),
  FigSuggestion(
    name: 'RUF003',
    description: 'Ambiguous-unicode-character-comment'
  ),
  FigSuggestion(
    name: 'RUF005',
    description: 'Collection-literal-concatenation'
  ),
  FigSuggestion(
    name: 'RUF006',
    description: 'Asyncio-dangling-task'
  ),
  FigSuggestion(
    name: 'RUF007',
    description: 'Zip-instead-of-pairwise'
  ),
  FigSuggestion(
    name: 'RUF008',
    description: 'Mutable-dataclass-default'
  ),
  FigSuggestion(
    name: 'RUF009',
    description: 'Function-call-in-dataclass-default-argument'
  ),
  FigSuggestion(
    name: 'RUF010',
    description: 'Explicit-f-string-type-conversion'
  ),
  FigSuggestion(
    name: 'RUF011',
    description: 'Ruff-static-key-dict-comprehension'
  ),
  FigSuggestion(
    name: 'RUF012',
    description: 'Mutable-class-default'
  ),
  FigSuggestion(
    name: 'RUF013',
    description: 'Implicit-optional'
  ),
  FigSuggestion(
    name: 'RUF015',
    description: 'Unnecessary-iterable-allocation-for-first-element'
  ),
  FigSuggestion(
    name: 'RUF016',
    description: 'Invalid-index-type'
  ),
  FigSuggestion(
    name: 'RUF017',
    description: 'Quadratic-list-summation'
  ),
  FigSuggestion(
    name: 'RUF018',
    description: 'Assignment-in-assert'
  ),
  FigSuggestion(
    name: 'RUF019',
    description: 'Unnecessary-key-check'
  ),
  FigSuggestion(
    name: 'RUF020',
    description: 'Never-union'
  ),
  FigSuggestion(
    name: 'RUF021',
    description: 'Parenthesize-chained-operators'
  ),
  FigSuggestion(
    name: 'RUF022',
    description: 'Unsorted-dunder-all'
  ),
  FigSuggestion(
    name: 'RUF023',
    description: 'Unsorted-dunder-slots'
  ),
  FigSuggestion(
    name: 'RUF024',
    description: 'Mutable-fromkeys-value'
  ),
  FigSuggestion(
    name: 'RUF026',
    description: 'Default-factory-kwarg'
  ),
  FigSuggestion(
    name: 'RUF027',
    description: 'Missing-f-string-syntax'
  ),
  FigSuggestion(
    name: 'RUF028',
    description: 'Invalid-formatter-suppression-comment'
  ),
  FigSuggestion(
    name: 'RUF029',
    description: 'Unused-async'
  ),
  FigSuggestion(
    name: 'RUF030',
    description: 'Assert-with-print-message'
  ),
  FigSuggestion(
    name: 'RUF031',
    description: 'Incorrectly-parenthesized-tuple-in-subscript'
  ),
  FigSuggestion(
    name: 'RUF032',
    description: 'Decimal-from-float-literal'
  ),
  FigSuggestion(
    name: 'RUF033',
    description: 'Post-init-default'
  ),
  FigSuggestion(
    name: 'RUF034',
    description: 'Useless-if-else'
  ),
  FigSuggestion(
    name: 'RUF035',
    description: 'Unsafe-markup-use'
  ),
  FigSuggestion(
    name: 'RUF036',
    description: 'None-not-at-end-of-union'
  ),
  FigSuggestion(
    name: 'RUF038',
    description: 'Redundant-bool-literal'
  ),
  FigSuggestion(
    name: 'RUF039',
    description: 'Unraw-re-pattern'
  ),
  FigSuggestion(
    name: 'RUF040',
    description: 'Invalid-assert-message-literal-argument'
  ),
  FigSuggestion(
    name: 'RUF041',
    description: 'Unnecessary-nested-literal'
  ),
  FigSuggestion(
    name: 'RUF046',
    description: 'Unnecessary-cast-to-int'
  ),
  FigSuggestion(
    name: 'RUF048',
    description: 'Map-int-version-parsing'
  ),
  FigSuggestion(
    name: 'RUF052',
    description: 'Used-dummy-variable'
  ),
  FigSuggestion(
    name: 'RUF055',
    description: 'Unnecessary-regular-expression'
  ),
  FigSuggestion(
    name: 'RUF100',
    description: 'Unused-noqa'
  ),
  FigSuggestion(
    name: 'RUF101',
    description: 'Redirected-noqa'
  ),
  FigSuggestion(
    name: 'RUF200',
    description: 'Invalid-pyproject-toml'
  )
];

final List<FigSubcommand> subCommands = [

  Subcommand(
    name: 'check',
    description: 'Run Ruff on the given files or directories',
    options: checkOptions,
    args: [
      Arg(
      name: 'Path',
      template: 'filepaths',
      description: 'The path to use for the project/script',
      defaultValue: '.',
      isVariadic: true
    )
    ]
  ),
  Subcommand(
    name: 'rule',
    description: 'Explain a rule (or all rules)',
    args: [
      Arg(
      name: 'rule',
      description: 'Rule(s) to explain',
      suggestions: [

        ...rules,
        FigSuggestion(
          name: '--all',
          description: 'Explain all rules'
        )
      ]
    )
    ],
    options: [

      Option(
        name: '--all',
        description: 'Explain all rules'
      ),
      Option(
        name: '--output-format',
        description: 'Output format [default: text]',
        args: [
          Arg(
          name: 'output-format',
          suggestions: [

            FigSuggestion(name: 'text'),
            FigSuggestion(name: 'json')
          ]
        )
        ]
      )
    ]
  ),
  Subcommand(
    name: 'config',
    description: 'List or describe the available configuration options',
    options: [

      Option(
        name: '--output-format',
        description: 'Output format [default: text]',
        args: [
          Arg(
          name: 'output-format',
          suggestions: [

            FigSuggestion(name: 'text'),
            FigSuggestion(name: 'json')
          ]
        )
        ]
      )
    ]
  ),
  Subcommand(
    name: 'linter',
    description: 'List all supported upstream linters',
    options: [

      Option(
        name: '--output-format',
        description: 'Output format',
        args: [
          Arg(
          name: 'output-format',
          suggestions: [

            FigSuggestion(name: 'text'),
            FigSuggestion(name: 'json')
          ]
        )
        ]
      )
    ]
  ),
  Subcommand(
    name: 'clean',
    description: 'Clear any caches in the current directory and any subdirectories'
  ),
  Subcommand(
    name: 'format',
    description: 'Run the Ruff formatter on the given files or directories',
    options: formatOptions,
    args: [
      Arg(
      name: 'Path',
      template: 'filepaths',
      description: 'List of files or directories to format [default: .]',
      defaultValue: '.',
      isVariadic: true
    )
    ]
  ),
  Subcommand(
    name: 'server',
    description: 'Run the language server',
    options: [

      Option(
        name: '--preview',
        description: 'Enable preview mode. Use `--no-preview` to disable'
      ),
      Option(
        name: '--no-preview',
        description: 'Disable preview mode'
      )
    ]
  ),
  Subcommand(
    name: 'analyze',
    description: 'Run analysis over Python source code',
    subcommands: [

      Subcommand(
        name: 'graph',
        description: 'Generate a map of Python file dependencies or dependents',
        options: [

          Option(
            name: '--direction',
            description: 'The direction of the import map. By default, generates a dependency map, i.e., a map from file to files that it depends on. Use `--direction dependents` to generate a map from file to files that depend on it',
            args: [
              Arg(
              name: 'DIRECTION',
              suggestions: [

                FigSuggestion(name: 'dependencies'),
                FigSuggestion(name: 'dependents')
              ]
            )
            ]
          ),
          Option(
            name: '--detect-string-imports',
            description: 'Attempt to detect imports from string literals'
          ),
          Option(
            name: '--preview',
            description: 'Enable preview mode. Use `--no-preview` to disable'
          ),
          Option(
            name: '--no-preview',
            description: 'Disable preview mode'
          ),
          Option(
            name: '--target-version',
            description: 'The minimum Python version that should be supported',
            args: [
              Arg(
              name: 'TARGET_VERSION',
              suggestions: [

                FigSuggestion(name: 'py37'),
                FigSuggestion(name: 'py38'),
                FigSuggestion(name: 'py39'),
                FigSuggestion(name: 'py310'),
                FigSuggestion(name: 'py311'),
                FigSuggestion(name: 'py312'),
                FigSuggestion(name: 'py313')
              ]
            )
            ]
          )
        ],
        args: [
          Arg(
          name: 'Path',
          template: 'filepaths',
          description: 'The path to use for the project/script',
          defaultValue: '.',
          isVariadic: true
        )
        ]
      )
    ]
  ),
  Subcommand(
    name: 'version',
    description: 'Display Ruff\'s version',
    options: [

      Option(
        name: '--output-format',
        description: 'Output format',
        args: [
          Arg(
          name: 'output-format',
          suggestions: [

            FigSuggestion(name: 'text'),
            FigSuggestion(name: 'json')
          ]
        )
        ]
      )
    ]
  ),
  Subcommand(
    name: 'help',
    description: 'Print this message or the help of the given subcommand(s)'
  )
];

/// Completion spec for `ruff` CLI
final FigSpec ruffSpec = FigSpec(
  name: 'ruff',
  description: 'Ruff: An extremely fast Python linter',
  subcommands: subCommands
);
