// Auto-generated from TypeScript source: cosign.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cosign` CLI
final FigSpec cosignSpec = FigSpec(
  name: 'cosign',
  description: '',
  subcommands: [

    Subcommand(
      name: 'attach',
      description: 'Provides utilities for attaching artifacts to other artifacts in a registry',
      subcommands: [

        Subcommand(
          name: 'attestation',
          description: 'Attach attestation to the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--attestation',
              description: 'Path to the attestation envelope',
              args: [
                Arg(
                name: 'attestatio'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for attestation'
            )
          ]
        ),
        Subcommand(
          name: 'sbom',
          description: 'Attach sbom to the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: '--sbom',
              description: 'Path to the sbom, or {-} for stdin',
              args: [
                Arg(
                name: 'sbo'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Type of sbom (spdx|cyclonedx|syft)',
              args: [
                Arg(
                name: 'type',
                defaultValue: 'spd'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for sbom'
            )
          ]
        ),
        Subcommand(
          name: 'signature',
          description: 'Attach signatures to the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: '--payload',
              description: 'Path to the payload covered by the signature (if using another format)',
              args: [
                Arg(
                name: 'payloa'
              )
              ]
            ),
            Option(
              name: '--signature',
              description: 'The signature, path to the signature, or {-} for stdin',
              args: [
                Arg(
                name: 'signatur'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for signature'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for attach'
        )
      ]
    ),
    Subcommand(
      name: 'attest',
      description: 'Attest the supplied container image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Path to the x509 certificate to include in the Signature',
          args: [
            Arg(
            name: 'cer'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Skip warnings and confirmations'
        ),
        Option(
          name: '--fulcio-url',
          description: '[EXPERIMENTAL] address of sigstore PKI server',
          args: [
            Arg(
            name: 'fulcio-url',
            defaultValue: 'https://fulcio.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--identity-token',
          description: '[EXPERIMENTAL] identity token to use for certificate from fulcio',
          args: [
            Arg(
            name: 'identity-toke'
          )
          ]
        ),
        Option(
          name: '--insecure-skip-verify',
          description: '[EXPERIMENTAL] skip verifying fulcio published to the SCT (this should only be used for testing)'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the private key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--no-upload',
          description: 'Do not upload the generated attestation'
        ),
        Option(
          name: '--oidc-client-id',
          description: '[EXPERIMENTAL] OIDC client ID for application',
          args: [
            Arg(
            name: 'oidc-client-id',
            defaultValue: 'sigstor'
          )
          ]
        ),
        Option(
          name: '--oidc-client-secret',
          description: '[EXPERIMENTAL] OIDC client secret for application',
          args: [
            Arg(
            name: 'oidc-client-secre'
          )
          ]
        ),
        Option(
          name: '--oidc-issuer',
          description: '[EXPERIMENTAL] OIDC provider to be used to issue ID token',
          args: [
            Arg(
            name: 'oidc-issuer',
            defaultValue: 'https://oauth2.sigstore.dev/auth'
          )
          ]
        ),
        Option(
          name: '--predicate',
          description: 'Path to the predicate file',
          args: [
            Arg(
            name: 'predicat'
          )
          ]
        ),
        Option(
          name: ['--recursive', '-r'],
          description: 'If a multi-arch image is specified, additionally sign each discrete image'
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--replace',
          description: ''
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Specify a predicate type (slsaprovenance|link|spdx|vuln|custom) or an URI',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'custo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for attest'
        )
      ]
    ),
    Subcommand(
      name: 'clean',
      description: 'Remove all signatures from an image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Do not prompt for confirmation'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--type',
          description: 'A type of clean: <signature|attestation|sbom|all> (default: all)',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'al'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for clean'
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate completion script',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for completion'
        )
      ]
    ),
    Subcommand(
      name: 'copy',
      description: 'Copy the supplied container image and signatures',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Overwrite destination image(s), if necessary'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--sig-only',
          description: 'Only copy the image signature'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for copy'
        )
      ]
    ),
    Subcommand(
      name: 'dockerfile',
      description: 'Provides utilities for discovering images in and performing operations on Dockerfiles',
      subcommands: [

        Subcommand(
          name: 'verify',
          description: 'Verify a signature on the base image specified in the Dockerfile',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: ['--annotations', '-a'],
              description: 'Extra key=value pairs to sign',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--attachment',
              description: 'Related image attachment to sign (sbom), default none',
              args: [
                Arg(
                name: 'attachmen'
              )
              ]
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--base-image-only',
              description: 'Only verify the base image (the last FROM image in the Dockerfile)'
            ),
            Option(
              name: '--cert',
              description: 'Path to the public certificate',
              args: [
                Arg(
                name: 'cer'
              )
              ]
            ),
            Option(
              name: '--cert-email',
              description: 'The email expected in a valid Fulcio certificate',
              args: [
                Arg(
                name: 'cert-emai'
              )
              ]
            ),
            Option(
              name: '--cert-oidc-issuer',
              description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
              args: [
                Arg(
                name: 'cert-oidc-issue'
              )
              ]
            ),
            Option(
              name: '--check-claims',
              description: 'Whether to check the claims found'
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: '--key',
              description: 'Path to the public key file, KMS URI or Kubernetes Secret',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--local-image',
              description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format for the signing image information (json|text)',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'jso'
              )
              ]
            ),
            Option(
              name: '--rekor-url',
              description: '[EXPERIMENTAL] address of rekor STL server',
              args: [
                Arg(
                name: 'rekor-url',
                defaultValue: 'https://rekor.sigstore.dev'
              )
              ]
            ),
            Option(
              name: '--signature',
              description: 'Signature content or path or remote URL',
              args: [
                Arg(
                name: 'signatur'
              )
              ]
            ),
            Option(
              name: '--signature-digest-algorithm',
              description: 'Digest algorithm to use when processing a signature (sha224|sha256|sha384|sha512)',
              args: [
                Arg(
                name: 'signature-digest-algorithm',
                defaultValue: 'sha25'
              )
              ]
            ),
            Option(
              name: '--sk',
              description: 'Whether to use a hardware security key'
            ),
            Option(
              name: '--slot',
              description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for verify'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for dockerfile'
        )
      ]
    ),
    Subcommand(
      name: 'download',
      description: 'Provides utilities for downloading artifacts and attached artifacts in a registry',
      subcommands: [

        Subcommand(
          name: 'attestation',
          description: 'Download in-toto attestations from the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for attestation'
            )
          ]
        ),
        Subcommand(
          name: 'sbom',
          description: 'Download SBOMs from the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for sbom'
            )
          ]
        ),
        Subcommand(
          name: 'signature',
          description: 'Download signatures from the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for signature'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for download'
        )
      ]
    ),
    Subcommand(
      name: 'generate',
      description: 'Generates (unsigned) signature payloads from the supplied container image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: ['--annotations', '-a'],
          description: 'Extra key=value pairs to sign',
          args: [
            Arg(
            name: 'annotation'
          )
          ]
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for generate'
        )
      ]
    ),
    Subcommand(
      name: 'generate-key-pair',
      description: 'Generates a key-pair',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--kms',
          description: 'Create key pair in KMS service to use for signing',
          args: [
            Arg(
            name: 'km'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for generate-key-pair'
        )
      ]
    ),
    Subcommand(
      name: 'import-key-pair',
      description: 'Imports a PEM-encoded RSA or EC private key',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--key',
          description: 'Import key pair to use for signing',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for import-key-pair'
        )
      ]
    ),
    Subcommand(
      name: 'initialize',
      description: 'Initializes SigStore root to retrieve trusted certificate and key targets for verification',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--mirror',
          description: 'GCS bucket to a SigStore TUF repository or HTTP(S) base URL',
          args: [
            Arg(
            name: 'mirror',
            defaultValue: 'sigstore-tuf-roo'
          )
          ]
        ),
        Option(
          name: '--root',
          description: 'Path to trusted initial root. defaults to embedded root',
          args: [
            Arg(
            name: 'roo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for initialize'
        )
      ]
    ),
    Subcommand(
      name: 'load',
      description: 'Load a signed image on disk to a remote registry',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--dir',
          description: 'Path to directory where the signed image is stored on disk',
          args: [
            Arg(
            name: 'di'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for load'
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Log in to a registry',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--password', '-p'],
          description: 'Password',
          args: [
            Arg(
            name: 'passwor'
          )
          ]
        ),
        Option(
          name: '--password-stdin',
          description: 'Take the password from stdin'
        ),
        Option(
          name: ['--username', '-u'],
          description: 'Username',
          args: [
            Arg(
            name: 'usernam'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for login'
        )
      ]
    ),
    Subcommand(
      name: 'manifest',
      description: 'Provides utilities for discovering images in and performing operations on Kubernetes manifests',
      subcommands: [

        Subcommand(
          name: 'verify',
          description: 'Verify all signatures of images specified in the manifest',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: ['--annotations', '-a'],
              description: 'Extra key=value pairs to sign',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--attachment',
              description: 'Related image attachment to sign (sbom), default none',
              args: [
                Arg(
                name: 'attachmen'
              )
              ]
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--cert',
              description: 'Path to the public certificate',
              args: [
                Arg(
                name: 'cer'
              )
              ]
            ),
            Option(
              name: '--cert-email',
              description: 'The email expected in a valid Fulcio certificate',
              args: [
                Arg(
                name: 'cert-emai'
              )
              ]
            ),
            Option(
              name: '--cert-oidc-issuer',
              description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
              args: [
                Arg(
                name: 'cert-oidc-issue'
              )
              ]
            ),
            Option(
              name: '--check-claims',
              description: 'Whether to check the claims found'
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: '--key',
              description: 'Path to the public key file, KMS URI or Kubernetes Secret',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--local-image',
              description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format for the signing image information (json|text)',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'jso'
              )
              ]
            ),
            Option(
              name: '--rekor-url',
              description: '[EXPERIMENTAL] address of rekor STL server',
              args: [
                Arg(
                name: 'rekor-url',
                defaultValue: 'https://rekor.sigstore.dev'
              )
              ]
            ),
            Option(
              name: '--signature',
              description: 'Signature content or path or remote URL',
              args: [
                Arg(
                name: 'signatur'
              )
              ]
            ),
            Option(
              name: '--signature-digest-algorithm',
              description: 'Digest algorithm to use when processing a signature (sha224|sha256|sha384|sha512)',
              args: [
                Arg(
                name: 'signature-digest-algorithm',
                defaultValue: 'sha25'
              )
              ]
            ),
            Option(
              name: '--sk',
              description: 'Whether to use a hardware security key'
            ),
            Option(
              name: '--slot',
              description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
              args: [
                Arg(
                name: 'slo'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for verify'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for manifest'
        )
      ]
    ),
    Subcommand(
      name: 'piv-tool',
      description: 'This cosign was not built with piv-tool support!',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for piv-tool'
        )
      ]
    ),
    Subcommand(
      name: 'pkcs11-tool',
      description: 'This cosign was not built with pkcs11-tool support!',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for pkcs11-tool'
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      description: 'Subcommand to manage a keyless policy',
      subcommands: [

        Subcommand(
          name: 'init',
          description: 'Generate a new keyless policy',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--expires',
              description: 'Total expire duration in days',
              args: [
                Arg(
                name: 'expires',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--issuer',
              description: 'Trusted issuer to use for identity tokens, e.g. https://accounts.google.com',
              args: [
                Arg(
                name: 'issue'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--maintainers', '-m'],
              description: 'List of maintainers to add to the root policy',
              args: [
                Arg(
                name: 'maintainer'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Registry namespace that the root policy belongs to',
              args: [
                Arg(
                name: 'namespace',
                defaultValue: 'n'
              )
              ]
            ),
            Option(
              name: '--out',
              description: 'Output policy locally',
              args: [
                Arg(
                name: 'out',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--threshold',
              description: 'Threshold for root policy signers',
              args: [
                Arg(
                name: 'threshold',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for init'
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Sign a keyless policy',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--fulcio-url',
              description: '[EXPERIMENTAL] address of sigstore PKI server',
              args: [
                Arg(
                name: 'fulcio-url',
                defaultValue: 'https://fulcio.sigstore.dev'
              )
              ]
            ),
            Option(
              name: '--identity-token',
              description: '[EXPERIMENTAL] identity token to use for certificate from fulcio',
              args: [
                Arg(
                name: 'identity-toke'
              )
              ]
            ),
            Option(
              name: '--insecure-skip-verify',
              description: '[EXPERIMENTAL] skip verifying fulcio published to the SCT (this should only be used for testing)'
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: '--namespace',
              description: 'Registry namespace that the root policy belongs to',
              args: [
                Arg(
                name: 'namespace',
                defaultValue: 'n'
              )
              ]
            ),
            Option(
              name: '--oidc-client-id',
              description: '[EXPERIMENTAL] OIDC client ID for application',
              args: [
                Arg(
                name: 'oidc-client-id',
                defaultValue: 'sigstor'
              )
              ]
            ),
            Option(
              name: '--oidc-client-secret',
              description: '[EXPERIMENTAL] OIDC client secret for application',
              args: [
                Arg(
                name: 'oidc-client-secre'
              )
              ]
            ),
            Option(
              name: '--oidc-issuer',
              description: '[EXPERIMENTAL] OIDC provider to be used to issue ID token',
              args: [
                Arg(
                name: 'oidc-issuer',
                defaultValue: 'https://oauth2.sigstore.dev/auth'
              )
              ]
            ),
            Option(
              name: '--out',
              description: 'Output policy locally',
              args: [
                Arg(
                name: 'out',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--rekor-url',
              description: '[EXPERIMENTAL] address of rekor STL server',
              args: [
                Arg(
                name: 'rekor-url',
                defaultValue: 'https://rekor.sigstore.dev'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for sign'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for policy'
        )
      ]
    ),
    Subcommand(
      name: 'public-key',
      description: 'Gets a public key from the key-pair',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--key',
          description: 'Path to the private key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--outfile',
          description: 'Path to a payload file to use rather than generating one',
          args: [
            Arg(
            name: 'outfil'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for public-key'
        )
      ]
    ),
    Subcommand(
      name: 'save',
      description: 'Save the container image and associated signatures to disk at the specified directory',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--dir',
          description: 'Path to dir where the signed image should be stored on disk',
          args: [
            Arg(
            name: 'di'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for save'
        )
      ]
    ),
    Subcommand(
      name: 'sign',
      description: 'Sign the supplied container image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: ['--annotations', '-a'],
          description: 'Extra key=value pairs to sign',
          args: [
            Arg(
            name: 'annotation'
          )
          ]
        ),
        Option(
          name: '--attachment',
          description: 'Related image attachment to sign (sbom), default none',
          args: [
            Arg(
            name: 'attachmen'
          )
          ]
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Path to the x509 certificate to include in the Signature',
          args: [
            Arg(
            name: 'cer'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Skip warnings and confirmations'
        ),
        Option(
          name: '--fulcio-url',
          description: '[EXPERIMENTAL] address of sigstore PKI server',
          args: [
            Arg(
            name: 'fulcio-url',
            defaultValue: 'https://fulcio.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--identity-token',
          description: '[EXPERIMENTAL] identity token to use for certificate from fulcio',
          args: [
            Arg(
            name: 'identity-toke'
          )
          ]
        ),
        Option(
          name: '--insecure-skip-verify',
          description: '[EXPERIMENTAL] skip verifying fulcio published to the SCT (this should only be used for testing)'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the private key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--oidc-client-id',
          description: '[EXPERIMENTAL] OIDC client ID for application',
          args: [
            Arg(
            name: 'oidc-client-id',
            defaultValue: 'sigstor'
          )
          ]
        ),
        Option(
          name: '--oidc-client-secret',
          description: '[EXPERIMENTAL] OIDC client secret for application',
          args: [
            Arg(
            name: 'oidc-client-secre'
          )
          ]
        ),
        Option(
          name: '--oidc-issuer',
          description: '[EXPERIMENTAL] OIDC provider to be used to issue ID token',
          args: [
            Arg(
            name: 'oidc-issuer',
            defaultValue: 'https://oauth2.sigstore.dev/auth'
          )
          ]
        ),
        Option(
          name: '--output-certificate',
          description: 'Write the certificate to FILE',
          args: [
            Arg(
            name: 'output-certificat'
          )
          ]
        ),
        Option(
          name: '--output-signature',
          description: 'Write the signature to FILE',
          args: [
            Arg(
            name: 'output-signatur'
          )
          ]
        ),
        Option(
          name: '--payload',
          description: 'Path to a payload file to use rather than generating one',
          args: [
            Arg(
            name: 'payloa'
          )
          ]
        ),
        Option(
          name: ['--recursive', '-r'],
          description: 'If a multi-arch image is specified, additionally sign each discrete image'
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--upload',
          description: 'Whether to upload the signature'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for sign'
        )
      ]
    ),
    Subcommand(
      name: 'sign-blob',
      description: 'Sign the supplied blob, outputting the base64-encoded signature to stdout',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--b64',
          description: 'Whether to base64 encode the output'
        ),
        Option(
          name: '--bundle',
          description: 'Write everything required to verify the blob to a FILE',
          args: [
            Arg(
            name: 'bundl'
          )
          ]
        ),
        Option(
          name: '--fulcio-url',
          description: '[EXPERIMENTAL] address of sigstore PKI server',
          args: [
            Arg(
            name: 'fulcio-url',
            defaultValue: 'https://fulcio.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--identity-token',
          description: '[EXPERIMENTAL] identity token to use for certificate from fulcio',
          args: [
            Arg(
            name: 'identity-toke'
          )
          ]
        ),
        Option(
          name: '--insecure-skip-verify',
          description: '[EXPERIMENTAL] skip verifying fulcio published to the SCT (this should only be used for testing)'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the private key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--oidc-client-id',
          description: '[EXPERIMENTAL] OIDC client ID for application',
          args: [
            Arg(
            name: 'oidc-client-id',
            defaultValue: 'sigstor'
          )
          ]
        ),
        Option(
          name: '--oidc-client-secret',
          description: '[EXPERIMENTAL] OIDC client secret for application',
          args: [
            Arg(
            name: 'oidc-client-secre'
          )
          ]
        ),
        Option(
          name: '--oidc-issuer',
          description: '[EXPERIMENTAL] OIDC provider to be used to issue ID token',
          args: [
            Arg(
            name: 'oidc-issuer',
            defaultValue: 'https://oauth2.sigstore.dev/auth'
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'Write the signature to FILE',
          args: [
            Arg(
            name: 'outpu'
          )
          ]
        ),
        Option(
          name: '--output-certificate',
          description: 'Write the certificate to FILE',
          args: [
            Arg(
            name: 'output-certificat'
          )
          ]
        ),
        Option(
          name: '--output-signature',
          description: 'Write the signature to FILE',
          args: [
            Arg(
            name: 'output-signatur'
          )
          ]
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for sign-blob'
        )
      ]
    ),
    Subcommand(
      name: 'tree',
      description: 'Display supply chain security related artifacts for an image such as signatures, SBOMs and attestations',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for tree'
        )
      ]
    ),
    Subcommand(
      name: 'triangulate',
      description: 'Outputs the located cosign image reference. This is the location cosign stores the specified artifact type',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--type',
          description: 'Related attachment to triangulate (attestation|sbom|signature), default signature',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'signatur'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for triangulate'
        )
      ]
    ),
    Subcommand(
      name: 'upload',
      description: 'Provides utilities for uploading artifacts to a registry',
      subcommands: [

        Subcommand(
          name: 'blob',
          description: 'Upload one or more blobs to the supplied container image address',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: '--ct',
              description: 'Content type to set',
              args: [
                Arg(
                name: 'c'
              )
              ]
            ),
            Option(
              name: ['--files', '-f'],
              description: '<filepath>:[platform/arch]',
              args: [
                Arg(
                name: 'file'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for blob'
            )
          ]
        ),
        Subcommand(
          name: 'wasm',
          description: 'Upload a wasm module to the supplied container image reference',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: '--allow-insecure-registry',
              description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
            ),
            Option(
              name: '--attachment-tag-prefix',
              description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
              args: [
                Arg(
                name: 'attachment-tag-prefi'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Path to the wasm file to upload',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--k8s-keychain',
              description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for wasm'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for upload'
        )
      ]
    ),
    Subcommand(
      name: 'verify',
      description: 'Verify a signature on the supplied container image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: ['--annotations', '-a'],
          description: 'Extra key=value pairs to sign',
          args: [
            Arg(
            name: 'annotation'
          )
          ]
        ),
        Option(
          name: '--attachment',
          description: 'Related image attachment to sign (sbom), default none',
          args: [
            Arg(
            name: 'attachmen'
          )
          ]
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Path to the public certificate',
          args: [
            Arg(
            name: 'cer'
          )
          ]
        ),
        Option(
          name: '--cert-email',
          description: 'The email expected in a valid Fulcio certificate',
          args: [
            Arg(
            name: 'cert-emai'
          )
          ]
        ),
        Option(
          name: '--cert-oidc-issuer',
          description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
          args: [
            Arg(
            name: 'cert-oidc-issue'
          )
          ]
        ),
        Option(
          name: '--check-claims',
          description: 'Whether to check the claims found'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the public key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--local-image',
          description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format for the signing image information (json|text)',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'jso'
          )
          ]
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--signature',
          description: 'Signature content or path or remote URL',
          args: [
            Arg(
            name: 'signatur'
          )
          ]
        ),
        Option(
          name: '--signature-digest-algorithm',
          description: 'Digest algorithm to use when processing a signature (sha224|sha256|sha384|sha512)',
          args: [
            Arg(
            name: 'signature-digest-algorithm',
            defaultValue: 'sha25'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for verify'
        )
      ]
    ),
    Subcommand(
      name: 'verify-attestation',
      description: 'Verify an attestation on the supplied container image',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Path to the public certificate',
          args: [
            Arg(
            name: 'cer'
          )
          ]
        ),
        Option(
          name: '--cert-email',
          description: 'The email expected in a valid Fulcio certificate',
          args: [
            Arg(
            name: 'cert-emai'
          )
          ]
        ),
        Option(
          name: '--cert-oidc-issuer',
          description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
          args: [
            Arg(
            name: 'cert-oidc-issue'
          )
          ]
        ),
        Option(
          name: '--check-claims',
          description: 'Whether to check the claims found'
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the public key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--local-image',
          description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output format for the signing image information (json|text)',
          args: [
            Arg(
            name: 'output',
            defaultValue: 'jso'
          )
          ]
        ),
        Option(
          name: '--policy',
          description: 'Specify CUE or Rego files will be using for validation',
          args: [
            Arg(
            name: 'polic'
          )
          ]
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Specify a predicate type (slsaprovenance|link|spdx|vuln|custom) or an URI',
          args: [
            Arg(
            name: 'type',
            defaultValue: 'custo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for verify-attestation'
        )
      ]
    ),
    Subcommand(
      name: 'verify-blob',
      description: 'Verify a signature on the supplied blob',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--allow-insecure-registry',
          description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
        ),
        Option(
          name: '--attachment-tag-prefix',
          description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
          args: [
            Arg(
            name: 'attachment-tag-prefi'
          )
          ]
        ),
        Option(
          name: '--bundle',
          description: 'Path to bundle FILE',
          args: [
            Arg(
            name: 'bundl'
          )
          ]
        ),
        Option(
          name: '--cert',
          description: 'Path to the public certificate',
          args: [
            Arg(
            name: 'cer'
          )
          ]
        ),
        Option(
          name: '--cert-email',
          description: 'The email expected in a valid Fulcio certificate',
          args: [
            Arg(
            name: 'cert-emai'
          )
          ]
        ),
        Option(
          name: '--cert-oidc-issuer',
          description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
          args: [
            Arg(
            name: 'cert-oidc-issue'
          )
          ]
        ),
        Option(
          name: '--k8s-keychain',
          description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
        ),
        Option(
          name: '--key',
          description: 'Path to the public key file, KMS URI or Kubernetes Secret',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--rekor-url',
          description: '[EXPERIMENTAL] address of rekor STL server',
          args: [
            Arg(
            name: 'rekor-url',
            defaultValue: 'https://rekor.sigstore.de'
          )
          ]
        ),
        Option(
          name: '--signature',
          description: 'Signature content or path or remote URL',
          args: [
            Arg(
            name: 'signatur'
          )
          ]
        ),
        Option(
          name: '--sk',
          description: 'Whether to use a hardware security key'
        ),
        Option(
          name: '--slot',
          description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
          args: [
            Arg(
            name: 'slo'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for verify-blob'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Prints the version',
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: '--json',
          description: 'Print JSON instead of text'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for version'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'attach',
          description: 'Provides utilities for attaching artifacts to other artifacts in a registry',
          subcommands: [

            Subcommand(
              name: 'attestation',
              description: 'Attach attestation to the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--attestation',
                  description: 'Path to the attestation envelope',
                  args: [
                    Arg(
                    name: 'attestatio'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for attestation'
                )
              ]
            ),
            Subcommand(
              name: 'sbom',
              description: 'Attach sbom to the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: '--sbom',
                  description: 'Path to the sbom, or {-} for stdin',
                  args: [
                    Arg(
                    name: 'sbo'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'Type of sbom (spdx|cyclonedx|syft)',
                  args: [
                    Arg(
                    name: 'type',
                    defaultValue: 'spd'
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for sbom'
                )
              ]
            ),
            Subcommand(
              name: 'signature',
              description: 'Attach signatures to the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: '--payload',
                  description: 'Path to the payload covered by the signature (if using another format)',
                  args: [
                    Arg(
                    name: 'payloa'
                  )
                  ]
                ),
                Option(
                  name: '--signature',
                  description: 'The signature, path to the signature, or {-} for stdin',
                  args: [
                    Arg(
                    name: 'signatur'
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for signature'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'attest',
          description: 'Attest the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'clean',
          description: 'Remove all signatures from an image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate completion script',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'copy',
          description: 'Copy the supplied container image and signatures',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'dockerfile',
          description: 'Provides utilities for discovering images in and performing operations on Dockerfiles',
          subcommands: [

            Subcommand(
              name: 'verify',
              description: 'Verify a signature on the base image specified in the Dockerfile',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: ['--annotations', '-a'],
                  description: 'Extra key=value pairs to sign',
                  args: [
                    Arg(
                    name: 'annotation'
                  )
                  ]
                ),
                Option(
                  name: '--attachment',
                  description: 'Related image attachment to sign (sbom), default none',
                  args: [
                    Arg(
                    name: 'attachmen'
                  )
                  ]
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--base-image-only',
                  description: 'Only verify the base image (the last FROM image in the Dockerfile)'
                ),
                Option(
                  name: '--cert',
                  description: 'Path to the public certificate',
                  args: [
                    Arg(
                    name: 'cer'
                  )
                  ]
                ),
                Option(
                  name: '--cert-email',
                  description: 'The email expected in a valid Fulcio certificate',
                  args: [
                    Arg(
                    name: 'cert-emai'
                  )
                  ]
                ),
                Option(
                  name: '--cert-oidc-issuer',
                  description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
                  args: [
                    Arg(
                    name: 'cert-oidc-issue'
                  )
                  ]
                ),
                Option(
                  name: '--check-claims',
                  description: 'Whether to check the claims found'
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: '--key',
                  description: 'Path to the public key file, KMS URI or Kubernetes Secret',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--local-image',
                  description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
                ),
                Option(
                  name: ['--output', '-o'],
                  description: 'Output format for the signing image information (json|text)',
                  args: [
                    Arg(
                    name: 'output',
                    defaultValue: 'jso'
                  )
                  ]
                ),
                Option(
                  name: '--rekor-url',
                  description: '[EXPERIMENTAL] address of rekor STL server',
                  args: [
                    Arg(
                    name: 'rekor-url',
                    defaultValue: 'https://rekor.sigstore.dev'
                  )
                  ]
                ),
                Option(
                  name: '--signature',
                  description: 'Signature content or path or remote URL',
                  args: [
                    Arg(
                    name: 'signatur'
                  )
                  ]
                ),
                Option(
                  name: '--signature-digest-algorithm',
                  description: 'Digest algorithm to use when processing a signature (sha224|sha256|sha384|sha512)',
                  args: [
                    Arg(
                    name: 'signature-digest-algorithm',
                    defaultValue: 'sha256'
                  )
                  ]
                ),
                Option(
                  name: '--sk',
                  description: 'Whether to use a hardware security key'
                ),
                Option(
                  name: '--slot',
                  description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for verify'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Provides utilities for downloading artifacts and attached artifacts in a registry',
          subcommands: [

            Subcommand(
              name: 'attestation',
              description: 'Download in-toto attestations from the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for attestation'
                )
              ]
            ),
            Subcommand(
              name: 'sbom',
              description: 'Download SBOMs from the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for sbom'
                )
              ]
            ),
            Subcommand(
              name: 'signature',
              description: 'Download signatures from the supplied container image',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for signature'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'generate',
          description: 'Generates (unsigned) signature payloads from the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'generate-key-pair',
          description: 'Generates a key-pair',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'import-key-pair',
          description: 'Imports a PEM-encoded RSA or EC private key',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'initialize',
          description: 'Initializes SigStore root to retrieve trusted certificate and key targets for verification',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'load',
          description: 'Load a signed image on disk to a remote registry',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'login',
          description: 'Log in to a registry',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'manifest',
          description: 'Provides utilities for discovering images in and performing operations on Kubernetes manifests',
          subcommands: [

            Subcommand(
              name: 'verify',
              description: 'Verify all signatures of images specified in the manifest',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: ['--annotations', '-a'],
                  description: 'Extra key=value pairs to sign',
                  args: [
                    Arg(
                    name: 'annotation'
                  )
                  ]
                ),
                Option(
                  name: '--attachment',
                  description: 'Related image attachment to sign (sbom), default none',
                  args: [
                    Arg(
                    name: 'attachmen'
                  )
                  ]
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--cert',
                  description: 'Path to the public certificate',
                  args: [
                    Arg(
                    name: 'cer'
                  )
                  ]
                ),
                Option(
                  name: '--cert-email',
                  description: 'The email expected in a valid Fulcio certificate',
                  args: [
                    Arg(
                    name: 'cert-emai'
                  )
                  ]
                ),
                Option(
                  name: '--cert-oidc-issuer',
                  description: 'The OIDC issuer expected in a valid Fulcio certificate, e.g. https://token.actions.githubusercontent.com or https://oauth2.sigstore.dev/auth',
                  args: [
                    Arg(
                    name: 'cert-oidc-issue'
                  )
                  ]
                ),
                Option(
                  name: '--check-claims',
                  description: 'Whether to check the claims found'
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: '--key',
                  description: 'Path to the public key file, KMS URI or Kubernetes Secret',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: '--local-image',
                  description: 'Whether the specified image is a path to an image saved locally via \'cosign save\''
                ),
                Option(
                  name: ['--output', '-o'],
                  description: 'Output format for the signing image information (json|text)',
                  args: [
                    Arg(
                    name: 'output',
                    defaultValue: 'jso'
                  )
                  ]
                ),
                Option(
                  name: '--rekor-url',
                  description: '[EXPERIMENTAL] address of rekor STL server',
                  args: [
                    Arg(
                    name: 'rekor-url',
                    defaultValue: 'https://rekor.sigstore.dev'
                  )
                  ]
                ),
                Option(
                  name: '--signature',
                  description: 'Signature content or path or remote URL',
                  args: [
                    Arg(
                    name: 'signatur'
                  )
                  ]
                ),
                Option(
                  name: '--signature-digest-algorithm',
                  description: 'Digest algorithm to use when processing a signature (sha224|sha256|sha384|sha512)',
                  args: [
                    Arg(
                    name: 'signature-digest-algorithm',
                    defaultValue: 'sha256'
                  )
                  ]
                ),
                Option(
                  name: '--sk',
                  description: 'Whether to use a hardware security key'
                ),
                Option(
                  name: '--slot',
                  description: 'Security key slot to use for generated key (default: signature) (authentication|signature|card-authentication|key-management)',
                  args: [
                    Arg(
                    name: 'slo'
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for verify'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'piv-tool',
          description: 'This cosign was not built with piv-tool support!',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'pkcs11-tool',
          description: 'This cosign was not built with pkcs11-tool support!',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'policy',
          description: 'Subcommand to manage a keyless policy',
          subcommands: [

            Subcommand(
              name: 'init',
              description: 'Generate a new keyless policy',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--expires',
                  description: 'Total expire duration in days',
                  args: [
                    Arg(
                    name: 'expires',
                    defaultValue: ''
                  )
                  ]
                ),
                Option(
                  name: '--issuer',
                  description: 'Trusted issuer to use for identity tokens, e.g. https://accounts.google.com',
                  args: [
                    Arg(
                    name: 'issue'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--maintainers', '-m'],
                  description: 'List of maintainers to add to the root policy',
                  args: [
                    Arg(
                    name: 'maintainer'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Registry namespace that the root policy belongs to',
                  args: [
                    Arg(
                    name: 'namespace',
                    defaultValue: 'n'
                  )
                  ]
                ),
                Option(
                  name: '--out',
                  description: 'Output policy locally',
                  args: [
                    Arg(
                    name: 'out',
                    defaultValue: ''
                  )
                  ]
                ),
                Option(
                  name: '--threshold',
                  description: 'Threshold for root policy signers',
                  args: [
                    Arg(
                    name: 'threshold',
                    defaultValue: ''
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for init'
                )
              ]
            ),
            Subcommand(
              name: 'sign',
              description: 'Sign a keyless policy',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--fulcio-url',
                  description: '[EXPERIMENTAL] address of sigstore PKI server',
                  args: [
                    Arg(
                    name: 'fulcio-url',
                    defaultValue: 'https://fulcio.sigstore.dev'
                  )
                  ]
                ),
                Option(
                  name: '--identity-token',
                  description: '[EXPERIMENTAL] identity token to use for certificate from fulcio',
                  args: [
                    Arg(
                    name: 'identity-toke'
                  )
                  ]
                ),
                Option(
                  name: '--insecure-skip-verify',
                  description: '[EXPERIMENTAL] skip verifying fulcio published to the SCT (this should only be used for testing)'
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: '--namespace',
                  description: 'Registry namespace that the root policy belongs to',
                  args: [
                    Arg(
                    name: 'namespace',
                    defaultValue: 'n'
                  )
                  ]
                ),
                Option(
                  name: '--oidc-client-id',
                  description: '[EXPERIMENTAL] OIDC client ID for application',
                  args: [
                    Arg(
                    name: 'oidc-client-id',
                    defaultValue: 'sigstor'
                  )
                  ]
                ),
                Option(
                  name: '--oidc-client-secret',
                  description: '[EXPERIMENTAL] OIDC client secret for application',
                  args: [
                    Arg(
                    name: 'oidc-client-secre'
                  )
                  ]
                ),
                Option(
                  name: '--oidc-issuer',
                  description: '[EXPERIMENTAL] OIDC provider to be used to issue ID token',
                  args: [
                    Arg(
                    name: 'oidc-issuer',
                    defaultValue: 'https://oauth2.sigstore.dev/auth'
                  )
                  ]
                ),
                Option(
                  name: '--out',
                  description: 'Output policy locally',
                  args: [
                    Arg(
                    name: 'out',
                    defaultValue: ''
                  )
                  ]
                ),
                Option(
                  name: '--rekor-url',
                  description: '[EXPERIMENTAL] address of rekor STL server',
                  args: [
                    Arg(
                    name: 'rekor-url',
                    defaultValue: 'https://rekor.sigstore.dev'
                  )
                  ]
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for sign'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'public-key',
          description: 'Gets a public key from the key-pair',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'save',
          description: 'Save the container image and associated signatures to disk at the specified directory',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Sign the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'sign-blob',
          description: 'Sign the supplied blob, outputting the base64-encoded signature to stdout',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'tree',
          description: 'Display supply chain security related artifacts for an image such as signatures, SBOMs and attestations',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'triangulate',
          description: 'Outputs the located cosign image reference. This is the location cosign stores the specified artifact type',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Provides utilities for uploading artifacts to a registry',
          subcommands: [

            Subcommand(
              name: 'blob',
              description: 'Upload one or more blobs to the supplied container image address',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: '--ct',
                  description: 'Content type to set',
                  args: [
                    Arg(
                    name: 'c'
                  )
                  ]
                ),
                Option(
                  name: ['--files', '-f'],
                  description: '<filepath>:[platform/arch]',
                  args: [
                    Arg(
                    name: 'file'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for blob'
                )
              ]
            ),
            Subcommand(
              name: 'wasm',
              description: 'Upload a wasm module to the supplied container image reference',
              options: [

                Option(
                  name: '--output-file',
                  description: 'Log output to a file',
                  args: [
                    Arg(
                    name: 'output-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'Timeout for commands',
                  args: [
                    Arg(
                    name: 'timeout',
                    defaultValue: '3m0'
                  )
                  ]
                ),
                Option(
                  name: ['--verbose', '-d'],
                  description: 'Log debug output'
                ),
                Option(
                  name: '--allow-insecure-registry',
                  description: 'Whether to allow insecure connections to registries. Don\'t use this for anything but testing'
                ),
                Option(
                  name: '--attachment-tag-prefix',
                  description: 'Optional custom prefix to use for attached image tags. Attachment images are tagged as: `[AttachmentTagPrefix]sha256-[TargetImageDigest].[AttachmentName]`',
                  args: [
                    Arg(
                    name: 'attachment-tag-prefi'
                  )
                  ]
                ),
                Option(
                  name: ['--file', '-f'],
                  description: 'Path to the wasm file to upload',
                  args: [
                    Arg(
                    name: 'fil'
                  )
                  ]
                ),
                Option(
                  name: '--k8s-keychain',
                  description: 'Whether to use the kubernetes keychain instead of the default keychain (supports workload identity)'
                ),
                Option(
                  name: ['--help', '-h'],
                  description: 'Help for wasm'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify a signature on the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'verify-attestation',
          description: 'Verify an attestation on the supplied container image',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'verify-blob',
          description: 'Verify a signature on the supplied blob',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Prints the version',
          options: [

            Option(
              name: '--output-file',
              description: 'Log output to a file',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--timeout', '-t'],
              description: 'Timeout for commands',
              args: [
                Arg(
                name: 'timeout',
                defaultValue: '3m0'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-d'],
              description: 'Log debug output'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Help for version'
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--output-file',
          description: 'Log output to a file',
          args: [
            Arg(
            name: 'output-fil'
          )
          ]
        ),
        Option(
          name: ['--timeout', '-t'],
          description: 'Timeout for commands',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '3m0'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-d'],
          description: 'Log debug output'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for help'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--output-file',
      description: 'Log output to a file',
      args: [
        Arg(
        name: 'output-fil'
      )
      ]
    ),
    Option(
      name: ['--timeout', '-t'],
      description: 'Timeout for commands',
      args: [
        Arg(
        name: 'timeout',
        defaultValue: '3m0'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-d'],
      description: 'Log debug output'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Help for cosign'
    )
  ]
);
