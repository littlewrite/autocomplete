// Runtime-specific Fig fields used by the Dart completion implementation.
// Keep the upstream Fig schema untouched while allowing wrapper specs to opt
// into registry command-name suggestions explicitly.
declare namespace Fig {
  interface Arg {
    suggestCommands?: boolean;
  }
}
