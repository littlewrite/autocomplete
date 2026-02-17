// Auto-generated from TypeScript source: codesign.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `codesign` CLI
final FigSpec codesignSpec = FigSpec(
  name: 'codesign',
  description: 'Create and manipulate code signatures',
  options: [

    Option(
      name: '--all-architectures',
      description: 'When verifying a code signature on code that has a universal (\'fat\') Mach-O binary, separately verify each architecture contained. This is the default unless overridden with the -a (--architecture) option'
    ),
    Option(
      name: ['-a', '--architecture'],
      description: 'When verifying or displaying signatures, explicitly select the Mach-O architecture given',
      args: [
        Arg(
        name: 'architecture'
      )
      ]
    ),
    Option(
      name: '--bundle-version',
      description: 'When handling versioned bundles such as frameworks, explicitly specify the version to operate on',
      args: [
        Arg(
        name: 'version-string'
      )
      ]
    ),
    Option(
      name: ['-d', '--display'],
      description: 'Display information about the code at the path(s) given'
    ),
    Option(
      name: ['-D', '--detached'],
      description: 'When signing, designates that a detached signature should be written to the specified file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--deep',
      description: 'When signing a bundle, specifies that nested code content such as helpers, frameworks, and plug-ins, should be recursively signed in turn. Beware that all signing options you specify will apply, in turn, to such nested content'
    ),
    Option(
      name: '--detached-database',
      description: 'When signing, specifies that a detached signature should be generated as with the --detached option, but that the resulting signature should be written into a system database, from where it is made automatically available whenever apparently unsigned code is validated on the system'
    ),
    Option(
      name: ['-f', '--force'],
      description: 'When signing, causes codesign to replace any existing signature on the path(s) given'
    ),
    Option(
      name: ['-h', '--hosting'],
      description: 'Constructs and prints the hosting chain of a running program'
    ),
    Option(
      name: ['-i', '--identifier'],
      description: 'During signing, explicitly specify the unique identifier string that is embedded in code signatures',
      args: [
        Arg(
        name: 'identifier'
      )
      ]
    ),
    Option(
      name: ['-o', '--options'],
      description: 'During signing, specifies a set of option flags to be embedded in the code signature',
      args: [
        Arg(
        name: 'version-string'
      )
      ]
    ),
    Option(
      name: ['-P', '--pagesize'],
      description: 'Indicates the granularity of code signing. Pagesize must be a power of two',
      args: [
        Arg(
        name: 'size'
      )
      ]
    ),
    Option(
      name: ['-r', '--requirements'],
      description: 'During signing, indicates that internal requirements should be embedded in the code path(s) as specified',
      args: [
        Arg(
        name: 'requirements'
      )
      ]
    ),
    Option(
      name: ['-R', '--test-requirement'],
      description: 'During verification, indicates that the path(s) given should be verified against the code requirement specified',
      args: [
        Arg(
        name: 'requirement'
      )
      ]
    ),
    Option(
      name: ['-s', '--sign'],
      description: 'Sign the code at the path(s) given using this identity',
      args: [
        Arg(
        name: 'identity'
      )
      ]
    ),
    Option(
      name: ['-v', '--verify'],
      description: 'Requests verification of code signatures'
    ),
    Option(
      name: '--continue',
      description: 'Instructs codesign to continue processing path arguments even if processing one fails'
    ),
    Option(
      name: '--dryrun',
      description: 'During signing, performs almost all signing operations, but does not actually write the result anywhere'
    ),
    Option(
      name: '--entitlements',
      description: 'When signing, take the file at the given path and embed its contents in the signature as entitlement data',
      args: [
        Arg(
        name: 'path'
      )
      ]
    ),
    Option(
      name: '--extract-certificates',
      description: 'When displaying a signature, extract the certificates in the embedded certificate chain and write them to individual files',
      args: [
        Arg(
        name: 'prefix'
      )
      ]
    ),
    Option(
      name: '--file-list',
      description: 'When signing or displaying a signature, codesign writes to the given path a list of files that may have been modified as part of the signing process',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--ignore-resources',
      description: 'During static validation, do not validate the contents of the code\'s resources'
    ),
    Option(
      name: '--keychain',
      description: 'During signing, only search for the signing identity in the keychain file specified',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--prefix',
      description: 'If no explicit unique identifier is specified (using the -i option), and if the implicitly generated identifier does not contain any dot (.) characters, then the given string is prefixed to the identifier before use',
      args: [
        Arg(
        name: 'prefix'
      )
      ]
    ),
    Option(
      name: '--preserve-metadata=list',
      description: 'When re-signing code that is already signed, reuse some information from the old signature'
    ),
    Option(
      name: '--resource-rules',
      args: [
        Arg(
        name: 'file'
      )
      ],
      description: 'During signing, this option overrides the default rules for identifying and collecting bundle resources and nested code to be sealed into the signature'
    ),
    Option(
      name: '--timestamp',
      description: 'During signing, requests that a timestamp authority server be contacted to authenticate the time of signing',
      args: [
        Arg(
        name: 'URL',
        isOptional: true
      )
      ]
    )
  ]
);
