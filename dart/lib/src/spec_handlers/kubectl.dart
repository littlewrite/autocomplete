// Hand-written dynamic handlers migrated from src/kubectl.ts.
//
// The materialized JSON references two dynamic generators, each with a
// `script` and a `postProcess`:
//   * `kubectl create job --from`      (cronjob resource names)
//   * `kubectl create rolebinding --role` (role resource names)
// Both share the same line-oriented post-processor that filters out
// connection / general errors.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const kubectlCreateJobFromScriptHandler =
    'manual.src_kubectl.spec.subcommands_15_.subcommands_6_.options_4_.args.generators.script';
const kubectlCreateJobFromPostProcessHandler =
    'manual.src_kubectl.spec.subcommands_15_.subcommands_6_.options_4_.args.generators.postprocess';
const kubectlCreateRolebindingRoleScriptHandler =
    'manual.src_kubectl.spec.subcommands_15_.subcommands_12_.options_6_.args.generators.script';
const kubectlCreateRolebindingRolePostProcessHandler =
    'manual.src_kubectl.spec.subcommands_15_.subcommands_12_.options_6_.args.generators.postprocess';

const _kubernetesIcon = 'fig://icon?type=kubernetes';

/// Markers that mean the kubectl command failed to reach the cluster.
const _connectedToClusterMarker = 'The connection to the server';
const _generalErrorMarker = 'error:';

bool _connectedToCluster(String out) =>
    out.contains(_connectedToClusterMarker);

bool _generalError(String out) => out.contains(_generalErrorMarker);

/// Shared `kubectl` post-processor: bail out on connection / general errors,
/// otherwise turn each output line into a suggestion named after that line.
List<FigSuggestion> _sharedPostProcess(String out, [List<String>? tokens]) {
  tokens;
  if (_connectedToCluster(out) || _generalError(out)) {
    return const [];
  }
  return out.split('\n').map((item) {
    return FigSuggestion(name: item, icon: _kubernetesIcon);
  }).toList();
}

/// `kubectl create job --from` script: list cronjobs by name.
List<String> _createJobFromScript(List<String> tokens) {
  tokens;
  return [
    'kubectl',
    'get',
    'cronjob',
    '-o',
    'custom-columns=:.metadata.name',
  ];
}

/// `kubectl create job --from` post-processor: shared processing, then prefix
/// every suggestion with `cronjob/` so the name reads as a resource ref.
List<FigSuggestion> _createJobFromPostProcess(String out,
    [List<String>? tokens]) {
  tokens;
  return _sharedPostProcess(out).map((item) {
    return FigSuggestion(
      name: 'cronjob/${item.nameSingle ?? ''}',
      icon: item.icon,
    );
  }).toList();
}

/// `kubectl create rolebinding --role` script: list roles by name.
List<String> _createRolebindingRoleScript(List<String> tokens) {
  tokens;
  return [
    'kubectl',
    'get',
    'roles',
    '-o',
    'custom-columns=:.metadata.name',
  ];
}

/// `kubectl create rolebinding --role` post-processor: the shared processor.
List<FigSuggestion> _createRolebindingRolePostProcess(String out,
    [List<String>? tokens]) {
  return _sharedPostProcess(out, tokens);
}

/// Registers the kubectl generators referenced by the shipped kubectl JSON.
void registerKubectlHandlers(JsonHandlerRegistry registry) {
  registry.registerScript(kubectlCreateJobFromScriptHandler, _createJobFromScript);
  registry.registerPostProcess(
      kubectlCreateJobFromPostProcessHandler, _createJobFromPostProcess);
  registry.registerScript(
      kubectlCreateRolebindingRoleScriptHandler, _createRolebindingRoleScript);
  registry.registerPostProcess(kubectlCreateRolebindingRolePostProcessHandler,
      _createRolebindingRolePostProcess);
}
