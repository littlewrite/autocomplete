// AI-generated from TypeScript source: elixir.ts
// Generated at: 2026-02-18

import 'package:autocomplete/src/generators.dart';
import 'package:autocomplete/src/spec.dart';

/// Completion spec for `elixir` CLI
final elixirSpec =
    FigSpec(name: 'elixir', description: 'Elixir Language', args: [
  Arg(
      name: 'file',
      description: '.exs file',
      generators: filepaths(FilepathsOptions(
          extensions: ['exs'], editFileSuggestions: {'priority': 76}))),
  Arg(name: 'data', isOptional: true)
], options: [
  Option(
      name: ['-e', '--eval'],
      description: 'Evaluates the given command',
      isRepeatable: true,
      args: [Arg(name: 'EXPRESSION')]),
  Option(name: ['-h', '--help'], description: 'Prints this message and exits'),
  Option(
      name: '-r',
      description: 'Requires the given files/patterns',
      args: [Arg(name: 'FILE', template: 'filepaths')]),
  Option(
      name: '-S',
      description: 'Finds and executes the given script in \$PATH',
      args: [Arg(name: 'SCRIPT')]),
  Option(
      name: '-pr',
      description: 'Requires the given files/patterns in parallel',
      isRepeatable: true,
      args: [Arg(name: 'FILE', template: 'filepaths')]),
  Option(
      name: '-pa',
      description: 'Prepends the given path to Erlang code path',
      isRepeatable: true,
      args: [Arg(name: 'PATH', template: 'filepaths')]),
  Option(
      name: '-pz',
      description: 'Appends the given path to Erlang code path',
      isRepeatable: true,
      args: [Arg(name: 'PATH', template: 'filepaths')]),
  Option(
      name: ['-v', '--version'],
      description: 'Prints Elixir version and exits'),
  Option(
      name: '--app',
      description: 'Starts the given app and its dependencies',
      isRepeatable: true,
      args: [Arg(name: 'APP')]),
  Option(
      name: '--erl',
      description: 'Switches to be passed down to Erlang',
      isRepeatable: true,
      args: [Arg(name: 'SWITCHES')]),
  Option(
      name: '--logger-otp-reports',
      description: 'Enables or disables OTP reporting',
      args: [Arg(name: 'BOOL')]),
  Option(
      name: '--logger-sasl-reports',
      description: 'Enables or disables SASL reporting',
      args: [Arg(name: 'BOOL')]),
  Option(
      name: '--no-halt',
      description: 'Does not halt the Erlang VM after execution'),
  Option(
      name: '--werl',
      description: 'Uses Erlang\'s Windows shell GUI (Windows only)'),
  Option(
      name: '--cookie',
      description: 'Sets a cookie for this distributed node',
      args: [Arg(name: 'COOKIE')]),
  Option(name: '--hidden', description: 'Makes a hidden node'),
  Option(
      name: '--name',
      description: 'Makes and assigns a name to the distributed node',
      args: [Arg(name: 'NAME')]),
  Option(
      name: '--rpc-eval',
      description: 'Evaluates the given command on the given remote node',
      isRepeatable: true,
      args: [Arg(name: 'NODE'), Arg(name: 'COMMAND')]),
  Option(
      name: '--sname',
      description: 'Makes and assigns a short name to the distributed node',
      args: [Arg(name: 'NAME')]),
  Option(
      name: '--boot',
      description: 'Uses the given FILE.boot to start the system',
      args: [Arg(name: 'FILE', template: 'filepaths')]),
  Option(
      name: '--boot-var',
      description: 'Makes \$VAR available as VALUE to FILE.boot',
      isRepeatable: true,
      args: [Arg(name: 'VAR'), Arg(name: 'VALUE')]),
  Option(
      name: '--erl-config',
      description: 'Loads configuration in FILE.config written in Erlang',
      isRepeatable: true,
      args: [Arg(name: 'FILE')]),
  Option(
      name: '--pipe-to',
      description: 'Starts the Erlang VM as a named PIPEDIR and LOGDIR',
      args: [Arg(name: 'PIPEDIR'), Arg(name: 'LOGDIR')]),
  Option(
      name: '--vm-args',
      description: 'Passes the contents in file as arguments to the VM',
      args: [Arg(name: 'FILE', template: 'filepaths')])
]);
