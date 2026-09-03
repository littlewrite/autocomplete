// Hand-written dynamic handlers migrated from src/ssh-keygen.ts.
//
// The exported JSON keeps every function-valued `exclusiveOn` as a handler
// reference (kind `function`) under `options[<index>].exclusiveOn`. Each source
// callback computes the option list that is exclusive with that option by
// filtering `allOptions`, e.g. for `-A`:
//   exclusiveOn: allOptions.filter((option) => option !== "-a" && option !== "-f")
//
// Each handler returns the remaining exclusive option set. The values are
// constant for this command, so the JSON parser resolves them synchronously.

import 'package:autocomplete/src/json_spec.dart';

const sshKeygenExclusiveOn0 =
    'manual.src_ssh-keygen.spec.options_0_.exclusiveon';
const sshKeygenExclusiveOn2 =
    'manual.src_ssh-keygen.spec.options_2_.exclusiveon';
const sshKeygenExclusiveOn5 =
    'manual.src_ssh-keygen.spec.options_5_.exclusiveon';
const sshKeygenExclusiveOn8 =
    'manual.src_ssh-keygen.spec.options_8_.exclusiveon';
const sshKeygenExclusiveOn9 =
    'manual.src_ssh-keygen.spec.options_9_.exclusiveon';
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
/// exclusive option set.
List<String> _exclusiveOptions(Set<String> excluded) {
  return _allOptions.where((option) => !excluded.contains(option)).toList();
}

/// Registers the ssh-keygen `exclusiveOn` handlers referenced by the shipped
/// ssh-keygen JSON.
void registerSshKeygenHandlers(JsonHandlerRegistry registry) {
  // -A
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn0, () => _exclusiveOptions({'-a', '-f'}));
  // -B
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn2, () => _exclusiveOptions({'-f'}));
  // -c
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn5, () => _exclusiveOptions({'-a', '-C', '-f', '-P'}));
  // -e
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn8, () => _exclusiveOptions({'-f', '-m'}));
  // -F
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn9, () => _exclusiveOptions({'-l', '-v', '-f'}));
  // -H
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn12, () => _exclusiveOptions({'-f'}));
  // -I
  registry.registerExclusiveOn(sshKeygenExclusiveOn14,
      () => _exclusiveOptions({'-s', '-h', '-U', '-D'}));
  // -i
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn15, () => _exclusiveOptions({'-f', '-m'}));
  // -K
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn16, () => _exclusiveOptions({'-a', '-w'}));
  // -k
  registry.registerExclusiveOn(sshKeygenExclusiveOn17,
      () => _exclusiveOptions({'-f', '-u', '-s', '-z'}));
  // -L
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn18, () => _exclusiveOptions({'-f'}));
  // -l
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn19, () => _exclusiveOptions({'-v', '-E', '-f'}));
  // -M
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn20, () => _exclusiveOptions({'-f', '-O'}));
  // -p
  registry.registerExclusiveOn(sshKeygenExclusiveOn26,
      () => _exclusiveOptions({'-a', '-f', '-m', '-N'}));
  // -Q
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn27, () => _exclusiveOptions({'-l', '-f'}));
  // -R
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn29, () => _exclusiveOptions({'-f'}));
  // -r
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn30, () => _exclusiveOptions({'-g', '-f'}));
  // -Y
  registry.registerExclusiveOn(sshKeygenExclusiveOn38,
      () => _exclusiveOptions({'-s', '-f', '-n', '-r'}));
  // -y
  registry.registerExclusiveOn(
      sshKeygenExclusiveOn39, () => _exclusiveOptions({'-f'}));
}
