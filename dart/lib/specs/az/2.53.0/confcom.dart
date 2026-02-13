// Auto-generated from TypeScript source: confcom.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `confcom` CLI
final FigSpec confcomSpec = FigSpec(
  name: 'confcom',
  description: 'Commands to generate security policies for confidential containers in Azure',
  subcommands: [

    Subcommand(
      name: 'acipolicygen',
      description: 'Create a Confidential Container Security Policy',
      options: [

        Option(
          name: ['--approve-wildcards', '-y'],
          description: 'When enabled, all prompts for using wildcards in environment variables are automatically approved'
        ),
        Option(
          name: '--debug-mode',
          description: 'When enabled, the generated security policy adds the ability to use /bin/sh or /bin/bash to debug the container. It also enabled stdio access, ability to dump stack traces, and enables runtime logging. It is recommended to only use this option for debugging purposes'
        ),
        Option(
          name: ['--diff', '-d'],
          description: 'When combined with an input ARM Template, verifies the policy present in the ARM Template under "ccePolicy" and the containers within the ARM Template are compatible. If they are incompatible, a list of reasons is given and the exit status code will be 2'
        ),
        Option(
          name: '--disable-stdio',
          description: 'When enabled, the containers in the container group do not have access to stdio'
        ),
        Option(
          name: '--image',
          description: 'Input image name',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--infrastructure-svn',
          description: 'Minimum Allowed Software Version Number for Infrastructure Fragment',
          args: [
            Arg(
            name: 'infrastructure-sv'
          )
          ]
        ),
        Option(
          name: ['--input', '-i'],
          description: 'Input JSON config file',
          args: [
            Arg(
            name: 'inpu'
          )
          ]
        ),
        Option(
          name: '--outraw',
          description: 'Output policy in clear text compact JSON instead of default base64 format'
        ),
        Option(
          name: '--outraw-pretty-print',
          description: 'Output policy in clear text and pretty print format'
        ),
        Option(
          name: ['--parameters', '-p'],
          description: 'Input parameters file to optionally accompany an ARM Template',
          args: [
            Arg(
            name: 'parameter'
          )
          ]
        ),
        Option(
          name: '--print-existing-policy',
          description: 'When enabled, the existing security policy that is present in the ARM Template is printed to the command line, and no new security policy is generated'
        ),
        Option(
          name: '--print-policy',
          description: 'When enabled, the generated security policy is printed to the command line instead of injected into the input ARM Template'
        ),
        Option(
          name: ['--save-to-file', '-s'],
          description: 'Save output policy to given file path',
          args: [
            Arg(
            name: 'save-to-fil'
          )
          ]
        ),
        Option(
          name: '--tar',
          description: 'Path to either a tarball containing image layers or a JSON file containing paths to tarballs of image layers',
          args: [
            Arg(
            name: 'ta'
          )
          ]
        ),
        Option(
          name: ['--template-file', '-a'],
          description: 'Input ARM Template file',
          args: [
            Arg(
            name: 'template-fil'
          )
          ]
        ),
        Option(
          name: ['--validate-sidecar', '-v'],
          description: 'Validate that the image used to generate the CCE Policy for a sidecar container will be allowed by its generated policy'
        )
      ]
    )
  ]
);
