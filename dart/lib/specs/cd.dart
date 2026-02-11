// cd: Change the shell working directory. Mirrors src/cd.ts.

import '../src/spec.dart';

/// Completion spec for `cd`. Uses template "folders" (folders only) and static suggestions -, ~.
const FigSpec cdSpec = FigSpec(
  name: 'cd',
  description: 'Change the shell working directory',
  args: FigArg(
    name: 'directory',
    filterStrategy: FilterStrategy.fuzzy,
    template: 'folders',
    suggestions: [
      FigSuggestion(name: '-', description: 'Switch to the last used folder', hidden: true),
      FigSuggestion(name: '~', description: 'Switch to the home directory', hidden: true),
    ],
  ),
);
