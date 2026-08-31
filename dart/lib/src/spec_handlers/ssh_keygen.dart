// Hand-written dynamic handlers migrated from src/ssh-keygen.ts.
//
// The exported JSON keeps every function-valued `exclusiveOn` as a handler
// reference (kind `function`) under `options[<index>].exclusiveOn`. Each source
// callback computes the option list that is exclusive with that option by
// filtering `allOptions`, e.g. for `-A`:
//   exclusiveOn: allOptions.filter((option) => option !== "-a" && option !== "-f")
//
// The runtime has no dedicated `exclusiveOn` registration, so these are exposed
// as custom handlers (the generic "dynamic list of suggestions" handler). Each
// returns the remaining exclusive option set as suggestions; the callback
// arguments (tokens/executeCommand/context) are unused because the computed set
// is constant for this command.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const sshKeygenExclusiveOn0 = 'manual.src_ssh-keygen.spec.options_0_.exclusiveon';
const sshKeygenExclusiveOn2 = 'manual.src_ssh-keygen.spec.options_2_.exclusiveon';
const sshKeygenExclusiveOn5 = 'manual.src_ssh-keygen.spec.options_5_.exclusiveon';
const sshKeygenExclusiveOn8 = 'manual.src_ssh-keygen.spec.options_8_.exclusiveon';
const sshKeygenExclusiveOn9 = 'manual.src_ssh-keygen.spec.options_9_.exclusiveon';
const sshKeygenExclusiveOn12 =
    'manual.src_ssh-keygen.spec.options_12_.exclusiveon';
const sshKeygenExclusiveOn14 =
    'manual.src_ssh-keygen.spec.options_14_.exclusiveon';
const sshKeygenExclusiveOn15 =
    'manual.src_ssh-keygen.spec.options_15_.exclusiveon';
const sshKeygenExclusiveOn16 =
    'manual.src_ssh-keygen.spec.options_16_.exclusiveon';
const sshKeygenExclusiveOn17 =
    'manual.src_ssh-keygen.spec.options_17_.exclusiveon';
const sshKeygenExclusiveOn18 =
    'manual.src_ssh-keygen.spec.options_18_.exclusiveon';
const sshKeygenExclusiveOn19 =
    'manual.src_ssh-keygen.spec.options_19_.exclusiveon';
const sshKeygenExclusiveOn20 =
    'manual.src_ssh-keygen.spec.options_20_.exclusiveon';
const sshKeygenExclusiveOn26 =
    'manual.src_ssh-keygen.spec.options_26_.exclusiveon';
const sshKeygenExclusiveOn27 =
    'manual.src_ssh-keygen.spec.options_27_.exclusiveon';
const sshKeygenExclusiveOn29 =
    'manual.src_ssh-keygen.spec.options_29_.exclusiveon';
const sshKeygenExclusiveOn30 =
    'manual.src_ssh-keygen.spec.options_30_.exclusiveon';
const sshKeygenExclusiveOn38 =
    'manual.src_ssh-keygen.spec.options_38_.exclusiveon';
const sshKeygenExclusiveOn39 =
    'manual.src_ssh-keygen.spec.options_39_.exclusiveon';

/// Every option name in declaration order (the exported `allOptions` array).
const _allOptions = <String>[
  '-A',
  '-a',
  '-B',
  '-b',
  '-C',
  '-c',
  '-D',
  '-E',
  '-e',
  '-F',
  '-f',
  '-g',
  '-H',
  '-h',
  '-I',
  '-i',
  '-K',
  '-k',
  '-L',
  '-l',
  '-M',
  '-m',
  '-N',
  '-n',
  '-O',
  '-P',
  '-p',
  '-Q',
  '-q',
  '-R',
  '-r',
  '-s',
  '-t',
  '-U',
  '-u',
  '-V',
  '-v',
  '-w',
  '-Y',
  '-y',
  '-Z',
  '-z',
];

/// `allOptions.filter((option) => !excluded.contains(option))`, exposed as the
/// exclusive option set. The option names are returned as suggestions so the
/// result can flow through the generic custom-handler runtime path.
Future<List<FigSuggestion>> _exclusiveOptions(Set<String> excluded) async {
  return _allOptions
      .where((option) => !excluded.contains(option))
      .map((option) => FigSuggestion(name: option))
      .toList();
}

/// Registers the ssh-keygen `exclusiveOn` handlers referenced by the shipped
/// ssh-keygen JSON.
void registerSshKeygenHandlers(JsonHandlerRegistry registry) {
  // -A
  registry.registerCustom(
      sshKeygenExclusiveOn0,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-a', '-f'}));
  // -B
  registry.registerCustom(sshKeygenExclusiveOn2,
      (tokens, executeCommand, context) => _exclusiveOptions({'-f'}));
  // -c
  registry.registerCustom(
      sshKeygenExclusiveOn5,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-a', '-C', '-f', '-P'}));
  // -e
  registry.registerCustom(
      sshKeygenExclusiveOn8,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-f', '-m'}));
  // -F
  registry.registerCustom(
      sshKeygenExclusiveOn9,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-l', '-v', '-f'}));
  // -H
  registry.registerCustom(sshKeygenExclusiveOn12,
      (tokens, executeCommand, context) => _exclusiveOptions({'-f'}));
  // -I
  registry.registerCustom(
      sshKeygenExclusiveOn14,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-s', '-h', '-U', '-D'}));
  // -i
  registry.registerCustom(
      sshKeygenExclusiveOn15,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-f', '-m'}));
  // -K
  registry.registerCustom(
      sshKeygenExclusiveOn16,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-a', '-w'}));
  // -k
  registry.registerCustom(
      sshKeygenExclusiveOn17,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-f', '-u', '-s', '-z'}));
  // -L
  registry.registerCustom(sshKeygenExclusiveOn18,
      (tokens, executeCommand, context) => _exclusiveOptions({'-f'}));
  // -l
  registry.registerCustom(
      sshKeygenExclusiveOn19,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-v', '-E', '-f'}));
  // -M
  registry.registerCustom(
      sshKeygenExclusiveOn20,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-f', '-O'}));
  // -p
  registry.registerCustom(
      sshKeygenExclusiveOn26,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-a', '-f', '-m', '-N'}));
  // -Q
  registry.registerCustom(
      sshKeygenExclusiveOn27,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-l', '-f'}));
  // -R
  registry.registerCustom(sshKeygenExclusiveOn29,
      (tokens, executeCommand, context) => _exclusiveOptions({'-f'}));
  // -r
  registry.registerCustom(
      sshKeygenExclusiveOn30,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-g', '-f'}));
  // -Y
  registry.registerCustom(
      sshKeygenExclusiveOn38,
      (tokens, executeCommand, context) =>
          _exclusiveOptions({'-s', '-f', '-n', '-r'}));
  // -y
  registry.registerCustom(sshKeygenExclusiveOn39,
      (tokens, executeCommand, context) => _exclusiveOptions({'-f'}));
}
