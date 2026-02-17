// Auto-generated from TypeScript source: cli-translator.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cli-translator` CLI
final FigSpec cliTranslatorSpec = FigSpec(
  name: 'cli-translator',
  description: 'Translate ARM template or REST API to CLI scripts',
  subcommands: [

    Subcommand(
      name: 'arm',
      description: 'Translate ARM template to CLI scripts(Currently only support Compute, Network and Storage)',
      subcommands: [

        Subcommand(
          name: 'translate',
          description: 'Translate ARM template to CLI scripts(Currently only support Compute, Network and Storage)',
          options: [

            Option(
              name: '--parameters',
              description: 'The local path or url of parameters.json file',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--template',
              description: 'The local path or url of template.json file',
              args: [
                Arg(
                name: 'templat'
              )
              ]
            ),
            Option(
              name: '--target-subscription',
              description: 'The target subscription id. If omit, the current subscription id will be used',
              args: [
                Arg(
                name: 'target-subscriptio'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
