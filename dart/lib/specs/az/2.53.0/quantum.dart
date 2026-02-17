// Auto-generated from TypeScript source: quantum.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `quantum` CLI
final FigSpec quantumSpec = FigSpec(
  name: 'quantum',
  description: 'Manage Azure Quantum Workspaces and submit jobs to Azure Quantum Providers',
  subcommands: [

    Subcommand(
      name: 'execute',
      description: 'Submit a job to run on Azure Quantum, and waits for the result',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
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
          name: ['--target-id', '-t'],
          description: 'Execution engine for quantum computing jobs. When a workspace is configured with a set of providers, they each enable one or more targets. You can configure the default target using az quantum target set',
          args: [
            Arg(
            name: 'target-i'
          )
          ]
        ),
        Option(
          name: ['--workspace-name', '-w'],
          description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
          args: [
            Arg(
            name: 'workspace-nam'
          )
          ]
        ),
        Option(
          name: '--entry-point',
          description: 'The entry point for the QIR program or circuit. Required for QIR. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'entry-poin'
          )
          ]
        ),
        Option(
          name: '--job-input-file',
          description: 'The location of the input file to submit. Required for QIR, QIO, and pass-through jobs. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'job-input-fil'
          )
          ]
        ),
        Option(
          name: '--job-input-format',
          description: 'The format of the file to submit. Omit this parameter on Q# jobs',
          args: [
            Arg(
            name: 'job-input-forma'
          )
          ]
        ),
        Option(
          name: '--job-name',
          description: 'A friendly name to give to this run of the program',
          args: [
            Arg(
            name: 'job-nam'
          )
          ]
        ),
        Option(
          name: '--job-output-format',
          description: 'The expected job output format. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'job-output-forma'
          )
          ]
        ),
        Option(
          name: '--job-params',
          description: 'Job parameters passed to the target as a list of key=value pairs, json string, or @{file} with json content',
          args: [
            Arg(
            name: 'job-param'
          )
          ]
        ),
        Option(
          name: '--no-build',
          description: 'If specified, the Q# program is not built before submitting'
        ),
        Option(
          name: '--project',
          description: 'The location of the Q# project to submit. Defaults to current folder',
          args: [
            Arg(
            name: 'projec'
          )
          ]
        ),
        Option(
          name: '--shots',
          description: 'The number of times to run the Q# program on the given target',
          args: [
            Arg(
            name: 'shot'
          )
          ]
        ),
        Option(
          name: '--storage',
          description: 'If specified, the ConnectionString of an Azure Storage is used to store job data and results',
          args: [
            Arg(
            name: 'storag'
          )
          ]
        ),
        Option(
          name: '--target-capability',
          description: 'Target-capability parameter passed to the compiler',
          args: [
            Arg(
            name: 'target-capabilit'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<PROGRAM_ARGS>',
        description: 'List of arguments expected by the Q# operation specified as --name=value after --',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Equivalent to az quantum execute',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
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
          name: ['--target-id', '-t'],
          description: 'Execution engine for quantum computing jobs. When a workspace is configured with a set of providers, they each enable one or more targets. You can configure the default target using az quantum target set',
          args: [
            Arg(
            name: 'target-i'
          )
          ]
        ),
        Option(
          name: ['--workspace-name', '-w'],
          description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
          args: [
            Arg(
            name: 'workspace-nam'
          )
          ]
        ),
        Option(
          name: '--entry-point',
          description: 'The entry point for the QIR program or circuit. Required for QIR. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'entry-poin'
          )
          ]
        ),
        Option(
          name: '--job-input-file',
          description: 'The location of the input file to submit. Required for QIR, QIO, and pass-through jobs. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'job-input-fil'
          )
          ]
        ),
        Option(
          name: '--job-input-format',
          description: 'The format of the file to submit. Omit this parameter on Q# jobs',
          args: [
            Arg(
            name: 'job-input-forma'
          )
          ]
        ),
        Option(
          name: '--job-name',
          description: 'A friendly name to give to this run of the program',
          args: [
            Arg(
            name: 'job-nam'
          )
          ]
        ),
        Option(
          name: '--job-output-format',
          description: 'The expected job output format. Ignored on Q# jobs',
          args: [
            Arg(
            name: 'job-output-forma'
          )
          ]
        ),
        Option(
          name: '--job-params',
          description: 'Job parameters passed to the target as a list of key=value pairs, json string, or @{file} with json content',
          args: [
            Arg(
            name: 'job-param'
          )
          ]
        ),
        Option(
          name: '--no-build',
          description: 'If specified, the Q# program is not built before submitting'
        ),
        Option(
          name: '--project',
          description: 'The location of the Q# project to submit. Defaults to current folder',
          args: [
            Arg(
            name: 'projec'
          )
          ]
        ),
        Option(
          name: '--shots',
          description: 'The number of times to run the Q# program on the given target',
          args: [
            Arg(
            name: 'shot'
          )
          ]
        ),
        Option(
          name: '--storage',
          description: 'If specified, the ConnectionString of an Azure Storage is used to store job data and results',
          args: [
            Arg(
            name: 'storag'
          )
          ]
        ),
        Option(
          name: '--target-capability',
          description: 'Target-capability parameter passed to the compiler',
          args: [
            Arg(
            name: 'target-capabilit'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<PROGRAM_ARGS>',
        description: 'List of arguments expected by the Q# operation specified as --name=value after --',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'job',
      description: 'Manage jobs for Azure Quantum',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Request to cancel a job on Azure Quantum if it hasn\'t completed',
          options: [

            Option(
              name: ['--job-id', '-j'],
              description: 'Job unique identifier in GUID format',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get the list of jobs in a Quantum Workspace',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'output',
          description: 'Get the results of running a Q# job',
          options: [

            Option(
              name: ['--job-id', '-j'],
              description: 'Job unique identifier in GUID format',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--item',
              description: 'The item index in a batching job',
              args: [
                Arg(
                name: 'ite'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the job\'s status and details',
          options: [

            Option(
              name: ['--job-id', '-j'],
              description: 'Job unique identifier in GUID format',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'submit',
          description: 'Submit a program or circuit to run on Azure Quantum',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--target-id', '-t'],
              description: 'Execution engine for quantum computing jobs. When a workspace is configured with a set of providers, they each enable one or more targets. You can configure the default target using az quantum target set',
              args: [
                Arg(
                name: 'target-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--entry-point',
              description: 'The entry point for the QIR program or circuit. Required for QIR. Ignored on Q# jobs',
              args: [
                Arg(
                name: 'entry-poin'
              )
              ]
            ),
            Option(
              name: '--job-input-file',
              description: 'The location of the input file to submit. Required for QIR, QIO, and pass-through jobs. Ignored on Q# jobs',
              args: [
                Arg(
                name: 'job-input-fil'
              )
              ]
            ),
            Option(
              name: '--job-input-format',
              description: 'The format of the file to submit. Omit this parameter on Q# jobs',
              args: [
                Arg(
                name: 'job-input-forma'
              )
              ]
            ),
            Option(
              name: '--job-name',
              description: 'A friendly name to give to this run of the program',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: '--job-output-format',
              description: 'The expected job output format. Ignored on Q# jobs',
              args: [
                Arg(
                name: 'job-output-forma'
              )
              ]
            ),
            Option(
              name: '--job-params',
              description: 'Job parameters passed to the target as a list of key=value pairs, json string, or @{file} with json content',
              args: [
                Arg(
                name: 'job-param'
              )
              ]
            ),
            Option(
              name: '--no-build',
              description: 'If specified, the Q# program is not built before submitting'
            ),
            Option(
              name: '--project',
              description: 'The location of the Q# project to submit. Defaults to current folder',
              args: [
                Arg(
                name: 'projec'
              )
              ]
            ),
            Option(
              name: '--shots',
              description: 'The number of times to run the Q# program on the given target',
              args: [
                Arg(
                name: 'shot'
              )
              ]
            ),
            Option(
              name: '--storage',
              description: 'If specified, the ConnectionString of an Azure Storage is used to store job data and results',
              args: [
                Arg(
                name: 'storag'
              )
              ]
            ),
            Option(
              name: '--target-capability',
              description: 'Target-capability parameter passed to the compiler',
              args: [
                Arg(
                name: 'target-capabilit'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<PROGRAM_ARGS>',
            description: 'List of arguments expected by the Q# operation specified as --name=value after --',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until the job finishes running',
          options: [

            Option(
              name: ['--job-id', '-j'],
              description: 'Job unique identifier in GUID format',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--max-poll-wait-secs',
              description: 'Poll time in seconds to query Azure Quantum for results of the corresponding job',
              args: [
                Arg(
                name: 'max-poll-wait-sec'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'offerings',
      description: 'Manage provider offerings for Azure Quantum',
      subcommands: [

        Subcommand(
          name: 'accept-terms',
          description: 'Accept the terms of a provider and SKU combination to enable it for workspace creation',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--provider-id', '-p'],
              description: 'Identifier of an Azure Quantum provider',
              args: [
                Arg(
                name: 'provider-i'
              )
              ]
            ),
            Option(
              name: ['--sku', '-k'],
              description: 'Identify a plan or SKU offered by an Azure Quantum provider',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get the list of all provider offerings available on the given location',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--autoadd-only',
              description: 'If specified, only the plans flagged "autoAdd" are displayed'
            )
          ]
        ),
        Subcommand(
          name: 'show-terms',
          description: 'Show the terms of a provider and SKU combination including license URL and acceptance status',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--provider-id', '-p'],
              description: 'Identifier of an Azure Quantum provider',
              args: [
                Arg(
                name: 'provider-i'
              )
              ]
            ),
            Option(
              name: ['--sku', '-k'],
              description: 'Identify a plan or SKU offered by an Azure Quantum provider',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'target',
      description: 'Manage targets for Azure Quantum workspaces',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear the default target-id'
        ),
        Subcommand(
          name: 'list',
          description: 'Get the list of providers and their targets in an Azure Quantum workspace',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Select the default target to use when submitting jobs to Azure Quantum',
          options: [

            Option(
              name: ['--target-id', '-t'],
              description: 'Execution engine for quantum computing jobs. When a workspace is configured with a set of providers, they each enable one or more targets. You can configure the default target using az quantum target set',
              args: [
                Arg(
                name: 'target-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the Target ID of the current default target to use when submitting jobs to Azure Quantum',
          options: [

            Option(
              name: ['--target-id', '-t'],
              description: 'Execution engine for quantum computing jobs. When a workspace is configured with a set of providers, they each enable one or more targets. You can configure the default target using az quantum target set',
              args: [
                Arg(
                name: 'target-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Manage Azure Quantum workspaces',
      subcommands: [

        Subcommand(
          name: 'clear',
          description: 'Clear the default Azure Quantum workspace'
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new Azure Quantum workspace',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--storage-account', '-a'],
              description: 'Name of the storage account to be used by a quantum workspace',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--auto-accept',
              description: 'If specified, provider terms are accepted without an interactive Y/N prompt'
            ),
            Option(
              name: ['--provider-sku-list', '-r'],
              description: 'Comma separated list of Provider/SKU pairs. Separate the Provider and SKU with a slash. Enclose the entire list in quotes. Values from az quantum offerings list -l <location> -o table',
              args: [
                Arg(
                name: 'provider-sku-lis'
              )
              ]
            ),
            Option(
              name: '--skip-autoadd',
              description: 'If specified, the plans that offer free credits will not automatically be added'
            ),
            Option(
              name: '--skip-role-assignment',
              description: 'Skip the role assignment step for the quantum workspace in the storage account'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the given (or current) Azure Quantum workspace',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get the list of Azure Quantum workspaces available',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--tag',
              description: 'Show only quantum workspaces that have associated the specified tag',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'quotas',
          description: 'List the quotas for the given (or current) Azure Quantum workspace',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Select a default Azure Quantum workspace for future commands',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of the given (or current) Azure Quantum workspace',
          options: [

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
              name: ['--workspace-name', '-w'],
              description: 'Name of the Quantum Workspace. You can configure the default workspace using az quantum workspace set',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
