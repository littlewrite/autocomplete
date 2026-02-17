// Auto-generated from TypeScript source: zipcloak.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `zipcloak` CLI
final FigSpec zipcloakSpec = FigSpec(
  name: 'zipcloak',
  description: 'Encrypt entries in a zipfile',
  args: [
    Arg(
    name: 'zipfile',
    description: 'Zipped file to encrypt entries into',
    template: ['filepaths']
  )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show a short help for zipcloak'
    ),
    Option(
      name: ['--decrypt', '-d'],
      description: 'Decrypt encrypted entries (copy if given wrong password)',
      args: [
        Arg(
        name: 'zipfile',
        description: 'Zipped file to decrypt entries of',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--license', '-L'],
      description: 'Show software license'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Show version information'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Quiet operation. Suppresses some informational messages'
    ),
    Option(
      name: ['--output-file', '-O'],
      description: 'Write output to new archive zipfile, leaving original archive as is',
      args: [
        Arg(
        name: 'zipfile',
        description: 'New zipfile that will be written to',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--temp-path', '-b'],
      description: 'Use the directory given by path for the temporary zip file',
      args: [
        Arg(
        name: 'directory',
        description: 'Directory for the temporary zip file',
        template: ['filepaths']
      )
      ]
    )
  ]
);
