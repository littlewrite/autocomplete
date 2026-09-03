// Hand-written dynamic handlers migrated from src/dotnet/dotnet-tool.ts.
//
// The `dotnet tool run`, `uninstall`, and `update` subcommands share
// `toolListGenerator`, whose `trigger` is `() => true` (re-run `dotnet tool
// list` on every token change). The shipped tool JSON keeps only the trigger
// handler references, so each registers a trigger that always returns true.

import 'package:autocomplete/src/json_spec.dart';

/// `toolListGenerator.trigger` from src/dotnet/dotnet-tool.ts, bound to the
/// `run` subcommand's `command` arg.
const dotnetToolRunTriggerHandler =
    'manual.src_dotnet_dotnet-tool.spec.subcommands_3_.args.generators.trigger';

/// Same trigger bound to the `uninstall` subcommand's `package` arg.
const dotnetToolUninstallTriggerHandler =
    'manual.src_dotnet_dotnet-tool.spec.subcommands_5_.args.generators.trigger';

/// Same trigger bound to the `update` subcommand's `package` arg.
const dotnetToolUpdateTriggerHandler =
    'manual.src_dotnet_dotnet-tool.spec.subcommands_6_.args.generators.trigger';

/// Stable definition-level ID used by the namespaced dotnet-tool JSON export.
const dotnetToolDefinitionTriggerHandler =
    'manual.src_dotnet_dotnet-tool.definition.toollistgenerator.trigger';

/// `trigger: () => true` from `toolListGenerator`.
bool _toolListTrigger(String newToken, String oldToken) => true;

/// Registers the dynamic trigger handlers referenced by the shipped tool JSON.
void registerDotnetToolHandlers(JsonHandlerRegistry registry) {
  registry.registerTrigger(dotnetToolRunTriggerHandler, _toolListTrigger);
  registry.registerTrigger(dotnetToolUninstallTriggerHandler, _toolListTrigger);
  registry.registerTrigger(dotnetToolUpdateTriggerHandler, _toolListTrigger);
  registry.registerTrigger(
      dotnetToolDefinitionTriggerHandler, _toolListTrigger);
}
