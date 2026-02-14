// AI-generated from TypeScript source: scc.ts
import 'package:autocomplete/src/spec.dart';

class SccLanguages {
  final Map<String, String> extensions;
  final List<String> languages;
  SccLanguages(this.extensions, this.languages);
}

SccLanguages processSccLanguages(String out) {
  final extensions = <String, String>{};
  final languages = <String>[];

  // Regex: ^(.*) \((.*)\)$ per line
  final regex = RegExp(r'^(.*) \((.*)\)$', multiLine: true);
  final matches = regex.allMatches(out);

  for (final match in matches) {
    final language = match.group(1)!;
    languages.add(language);
    final extStr = match.group(2)!;
    final extensionMatches = extStr.split(',');
    for (final extension in extensionMatches) {
      extensions[extension] = language;
    }
  }
  return SccLanguages(extensions, languages);
}

int getDriveKB(int year) {
  return 1024 - (year - 1984) * 4;
}

final driveKB = getDriveKB(DateTime.now().year);

final List<FigSuggestion> suggestOutputFormats = [
  FigSuggestion(name: 'tabular', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'wide', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'json', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'csv', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'csv-stream', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'cloc-yaml', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'html', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'html-table', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'sql', icon: 'fig://icon?type=string'),
  FigSuggestion(name: 'sql-insert', icon: 'fig://icon?type=string'),
];

final FigSpec sccSpec = FigSpec(
  name: 'scc',
  description:
      'Sloc, Cloc and Code. Count lines of code in a directory with complexity estimation',
  options: [
    FigOption(
      name: ['--avg-wage'],
      description: 'Average salary value used for COCOMO calculations',
      args: [
        FigArg(
          name: 'int',
          defaultValue: '56286',
        ),
      ],
    ),
    FigOption(
      name: ['--binary'],
      description: 'Disable binary file detection',
    ),
    FigOption(
      name: ['--by-file'],
      description: 'Display output for every file',
    ),
    FigOption(
      name: ['--ci'],
      description: 'Enable CI output settings where stdout is ASCII',
    ),
    FigOption(
      name: ['--cocomo-project-type'],
      description:
          'Change the COCOMO model type (allows custom models, eg. "name,1,1,1,1")',
      args: [
        FigArg(
          name: 'string',
          defaultValue: 'organic',
          suggestions: [
            FigSuggestion(name: 'organic', icon: 'fig://icon?type=string'),
            FigSuggestion(
                name: 'semi-detached', icon: 'fig://icon?type=string'),
            FigSuggestion(name: 'embedded', icon: 'fig://icon?type=string'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--count-as'],
      description:
          'Count a file extension as a language (comma-separated key:value list, eg. jst:js,tpl:Markdown)',
      args: [
        FigArg(
          name: 'string',
          // Approximating keyValueList logic
          generators: [
            FigGenerator(
              script: ['scc', '--language'],
              postProcess: (String out, [List<String>? tokens]) {
                final sccLangs = processSccLanguages(out);
                // Simple logic: suggest extensions
                // A full implementation would check tokens for ':' to suggest languages
                return sccLangs.extensions.entries.map((e) {
                  return FigSuggestion(
                    name: e.key,
                    description: e.value,
                    icon: 'fig://icon?type=string',
                    insertValue: '${e.key}:',
                  );
                }).toList();
              },
            ),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--debug'],
      description: 'Enable debug output',
    ),
    FigOption(
      name: ['--exclude-dir'],
      description: 'Directories to exclude',
      args: [
        FigArg(
          name: 'strings',
          template: 'folders',
          getQueryTerm: ',',
        ),
      ],
    ),
    FigOption(
      name: ['--file-gc-count'],
      description: 'Number of files to parse before turning the GC on',
      args: [
        FigArg(
          name: 'int',
          defaultValue: '10000',
        ),
      ],
    ),
    FigOption(
      name: ['-f', '--format'],
      description: 'Set output format',
      args: [
        FigArg(
          name: 'string',
          defaultValue: 'tabular',
          suggestions: suggestOutputFormats,
        ),
      ],
    ),
    FigOption(
      name: ['--format-multi'],
      description:
          'Multiple outputs with different formats (comma-separated key:value list, eg. tabular:stdout,csv:scc.csv)',
      args: [
        FigArg(
          name: 'string',
          // Approximating keyValueList for formats
          suggestions: suggestOutputFormats.map((s) {
            return FigSuggestion(
              name: s.name,
              description: s.description,
              icon: s.icon,
              insertValue: '${s.name}:',
            );
          }).toList(),
        ),
      ],
    ),
    FigOption(
      name: ['--gen'],
      description: 'Identify generated files',
    ),
    FigOption(
      name: ['--generated-markers'],
      description:
          'Identify generated files by the presence of a string (comma-separated list)',
      args: [
        FigArg(
          name: 'strings',
          defaultValue: 'do not edit,<auto-generated />',
        ),
      ],
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Help for scc',
    ),
    FigOption(
      name: ['-i', '--include-ext'],
      description: 'Limit to these file extensions (comma-separated list)',
      args: [
        FigArg(
          name: 'strings',
          getQueryTerm: ',',
          // Dynamic suggestion of extensions not implemented
        ),
      ],
    ),
    FigOption(
      name: ['--include-symlinks'],
      description: 'Count symbolic links',
    ),
    FigOption(
      name: ['-l', '--languages'],
      description: 'Print supported languages and extensions',
    ),
    FigOption(
      name: ['--large-byte-count'],
      description:
          'Number of bytes a file can contain before being removed by the GC',
      args: [
        FigArg(
          name: 'int',
          defaultValue: '1000000',
        ),
      ],
    ),
    FigOption(
      name: ['--large-line-count'],
      description:
          'Number of lines a file can contain before being removed by the GC',
      args: [
        FigArg(
          name: 'int',
          defaultValue: '40000',
        ),
      ],
    ),
    FigOption(
      name: ['--min'],
      description: 'Identify minified files',
    ),
    FigOption(
      name: ['--min-gen'],
      description: 'Identify minified or generated files',
    ),
    FigOption(
      name: ['--min-gen-line-length'],
      description:
          'Number of bytes per average line for file to be considered minified or generated',
      args: [
        FigArg(
          name: 'int',
          defaultValue: '255',
        ),
      ],
    ),
    FigOption(
      name: ['-M', '--not-match'],
      description: 'Ignore files and directories matching regular expression',
      args: [
        FigArg(
          name: 'regex',
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--output'],
      description: 'Output filename (default stdout)',
      args: [
        FigArg(
          name: 'string',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--remap-all'],
      description: 'Inspect every file and remap by checking for a string',
      args: [
        FigArg(
          name: 'string',
          suggestions: [
            FigSuggestion(name: 'shebang'),
            FigSuggestion(name: 'vim-modeline'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--remap-unknown'],
      description:
          'Inspect files without a known extension and remap by checking for a string',
      args: [
        FigArg(
          name: 'string',
          suggestions: [
            FigSuggestion(name: 'shebang'),
            FigSuggestion(name: 'vim-modeline'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--size-unit'],
      description: 'Set size unit',
      args: [
        FigArg(
          name: 'string',
          defaultValue: 'si',
          suggestions: [
            FigSuggestion(name: 'si', description: '1000 bytes = 1 KB'),
            FigSuggestion(name: 'binary', description: '1024 bytes = 1 KiB'),
            FigSuggestion(name: 'mixed'),
            FigSuggestion(name: 'xkcd-kb', description: '1000 bytes = 1 KiB'),
            FigSuggestion(name: 'xkcd-kB', description: '1024 bytes = 1 KB'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--sloccount-format'],
      description: 'Format output as sloccount',
    ),
    FigOption(
      name: ['--sort'],
      description: 'Column to sort by',
      args: [
        FigArg(
          name: 'column',
          defaultValue: 'files',
          suggestions: [
            FigSuggestion(name: 'files'),
            FigSuggestion(name: 'name'),
            FigSuggestion(name: 'lines'),
            FigSuggestion(name: 'blanks'),
            FigSuggestion(name: 'code'),
            FigSuggestion(name: 'comments'),
            FigSuggestion(name: 'complexity'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--sql-project'],
      description: 'Use the supplied name for the project when generating SQL',
      args: [
        FigArg(
          name: 'string',
        ),
      ],
    ),
    FigOption(
      name: ['--trace'],
      description:
          'Enable trace output (not recommended when processing large files)',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Verbose output',
    ),
    FigOption(
      name: ['--version'],
      description: 'Print version',
    ),
    FigOption(
      name: ['-w', '--wide'],
      description: 'Wider output with additional statistics',
    ),
  ],
);
