// Auto-generated from TypeScript source: su.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `su` CLI
final FigSpec suSpec = FigSpec(
  name: 'su',
  description: '',
  options: [
    Option(
      name: '-f',
      description: 'If the invoked shell is csh(1), this option prevents it from reading the .cshrc file'
    ),
    Option(
      name: '-l',
      description: 'Simulate a full login.  The environment is discarded except for  HOME, SHELL, PATH, TERM, and USER. HOME and SHELL are modified as above.  USER is set to the target login.  PATH is set to   ``/bin:/usr/bin\'\'.  TERM is imported from your current environment.  The invoked shell is the target login\'s, and su willchange directory to the target login\'s home directory'
    ),
    Option(
      name: '-',
      description: '(no letter) The same as -l'
    ),
    Option(
      name: '-m',
      description: 'Leave the environment unmodified.  The invoked shell is your login shell, and no directory changes are made.  As a security precaution, if the target user\'s shell is a non-standard shell (as defined by getusershell(3)) and the caller\'s real uid is non-zero, su will fail'
    )
  ],
  args: [
    Arg(
      name: 'login',
      isOptional: true
    ),
    Arg(
      name: 'ARGS',
      isOptional: true
    )
  ]
);
