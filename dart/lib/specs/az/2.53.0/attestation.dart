// Auto-generated from TypeScript source: attestation.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `attestation` CLI
final FigSpec attestationSpec = FigSpec(
  name: 'attestation',
  description: 'Manage Microsoft Azure Attestation (MAA)',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Creates a new Attestation Provider instance',
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
          name: ['--name', '-n'],
          description: 'Name of the attestation service instance',
          args: [
            Arg(
            name: 'nam'
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
          name: '--certs-input-path',
          description: 'Space-separated file paths to PEM/DER files containing certificates',
          args: [
            Arg(
            name: 'certs-input-pat'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete Attestation Service',
      options: [

        Option(
          name: '--id',
          description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the attestation service instance',
          args: [
            Arg(
            name: 'nam'
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'get-default-by-location',
      description: 'Get the default provider by location',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'Location. (eg: "West US")',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Returns a list of attestation providers in a subscription',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-default',
      description: 'Get the default provider'
    ),
    Subcommand(
      name: 'show',
      description: 'Get the status of Attestation Provider',
      options: [

        Option(
          name: '--id',
          description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the attestation service instance',
          args: [
            Arg(
            name: 'nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Updates the Attestation Provider',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the attestation service instance',
          args: [
            Arg(
            name: 'nam'
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
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      description: 'Manage policies',
      subcommands: [

        Subcommand(
          name: 'reset',
          description: 'Resets the attestation policy for the specified tenant and reverts to the default policy',
          options: [

            Option(
              name: '--attestation-type',
              description: 'Type of the attestation',
              args: [
                Arg(
                name: 'attestation-type',
                suggestions: [

                  FigSuggestion(name: 'SGX-IntelSDK'),
                  FigSuggestion(name: 'SGX-OpenEnclaveSDK'),
                  FigSuggestion(name: 'TPM')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--policy-jws',
              description: 'JSON Web Signature with an empty policy document',
              args: [
                Arg(
                name: 'policy-jw'
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
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Sets the policy for a given kind of attestation type',
          options: [

            Option(
              name: '--attestation-type',
              description: 'Type of the attestation',
              args: [
                Arg(
                name: 'attestation-type',
                suggestions: [

                  FigSuggestion(name: 'SGX-IntelSDK'),
                  FigSuggestion(name: 'SGX-OpenEnclaveSDK'),
                  FigSuggestion(name: 'TPM')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--new-attestation-policy',
              description: 'Content of the new attestation policy (Text or JWT)',
              args: [
                Arg(
                name: 'new-attestation-polic'
              )
              ]
            ),
            Option(
              name: ['--new-attestation-policy-file', '-f'],
              description: 'File name of the new attestation policy',
              args: [
                Arg(
                name: 'new-attestation-policy-fil'
              )
              ]
            ),
            Option(
              name: '--policy-format',
              description: 'Specifies the format for the policy, either Text or JWT (JSON Web Token)',
              args: [
                Arg(
                name: 'policy-format',
                suggestions: [

                  FigSuggestion(name: 'JWT'),
                  FigSuggestion(name: 'Text')
                ]
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Retrieves the current policy for a given kind of attestation type',
          options: [

            Option(
              name: '--attestation-type',
              description: 'Type of the attestation',
              args: [
                Arg(
                name: 'attestation-type',
                suggestions: [

                  FigSuggestion(name: 'SGX-IntelSDK'),
                  FigSuggestion(name: 'SGX-OpenEnclaveSDK'),
                  FigSuggestion(name: 'TPM')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'signer',
      description: 'Manage signers',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Adds a new attestation policy certificate to the set of policy management certificates',
          options: [

            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
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
              name: '--signer',
              description: 'The policy certificate to add. An RFC7519 JSON Web Token containing a claim named "maa-policyCertificate" whose value is an RFC7517 JSON Web Key which specifies a new key to update. The RFC7519 JWT must be signed with one of the existing signing certificates',
              args: [
                Arg(
                name: 'signe'
              )
              ]
            ),
            Option(
              name: ['--signer-file', '-f'],
              description: 'File name of the signer. (--signer and --signer-file/-f are mutually exclusive.)',
              args: [
                Arg(
                name: 'signer-fil'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieves the set of certificates used to express policy for the current tenant',
          options: [

            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Removes the specified policy management certificate',
          options: [

            Option(
              name: '--id',
              description: 'Resource ID of the provider. Please omit --resource-group/-g or --name/-n if you have already specified --id',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the attestation provider',
              args: [
                Arg(
                name: 'nam'
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
              name: '--signer',
              description: 'The policy certificate to remove. An RFC7519 JSON Web Token containing a claim named "maa-policyCertificate" whose value is an RFC7517 JSON Web Key which specifies a new key to update. The RFC7519 JWT must be signed with one of the existing signing certificates',
              args: [
                Arg(
                name: 'signe'
              )
              ]
            ),
            Option(
              name: ['--signer-file', '-f'],
              description: 'File name of the signer. (--signer and --signer-file/-f are mutually exclusive.)',
              args: [
                Arg(
                name: 'signer-fil'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
