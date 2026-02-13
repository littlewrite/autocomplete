// Auto-generated from TypeScript source: palera1n.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `palera1n` CLI
final FigSpec palera1nSpec = FigSpec(
  name: 'palera1n',
  description: 'Jailbreaking tool for iOS/iPadOS 15.x-16.x arm64',
  options: [

    Option(
      name: '--version',
      description: 'Print version'
    ),
    Option(
      name: '--force-revert',
      description: 'Remove jailbreak'
    ),
    Option(
      name: ['--setup-partial-fakefs', '-B'],
      description: 'Setup partial fakefs'
    ),
    Option(
      name: ['--setup-fakefs', '-c'],
      description: 'Setup fakefs'
    ),
    Option(
      name: ['--demote', '-d'],
      description: 'Demote'
    ),
    Option(
      name: ['--dfuhelper', '-D'],
      description: 'Exit after entering DFU'
    ),
    Option(
      name: ['--boot-args', '-e'],
      description: 'XNU boot arguments',
      args: [
        Arg(
        name: 'BOOT_ARGUMENT'
      )
      ]
    ),
    Option(
      name: ['--enter-recovery', '-E'],
      description: 'Enter recovery mode'
    ),
    Option(
      name: ['--fakefs', '-f'],
      description: 'Boot fakefs'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for palera1n'
    ),
    Option(
      name: ['--override-checkra1n', '-i'],
      description: 'Override checkra1n',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--override-pongo', '-k'],
      description: 'Override Pongo image',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--override-kpf', '-K'],
      description: 'Override kernel patchfinder',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--rootless', '-l'],
      description: 'Boot rootless. This is the default'
    ),
    Option(
      name: ['--jbinit-log-to-file', '-L'],
      description: 'Make jbinit log to /cores/jbinit.log (can be read from sandbox while jailbroken)'
    ),
    Option(
      name: ['--exit-recovery', '-n'],
      description: 'Exit recovery mode'
    ),
    Option(
      name: ['--device-info', '-I'],
      description: 'Print info about the connected device'
    ),
    Option(
      name: ['--override-overlay', '-o'],
      description: 'Override overlay',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--pongo-shell', '-p'],
      description: 'Boots to PongoOS shell'
    ),
    Option(
      name: ['--pongo-full', '-P'],
      description: 'Boots to a PongoOS shell with default images already uploaded'
    ),
    Option(
      name: ['--override-ramdisk', '-r'],
      description: 'Override ramdisk',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--reboot-device', '-R'],
      description: 'Reboot connected device in normal mode'
    ),
    Option(
      name: ['--safe-mode', '-s'],
      description: 'Enter safe mode'
    ),
    Option(
      name: ['--no-colors', '-S'],
      description: 'Disable colors on the command line'
    ),
    Option(
      name: ['--debug-logging', '-v'],
      description: 'Enable debug logging. This option can be repeated for extra verbosity'
    ),
    Option(
      name: ['--verbose-boot', '-V'],
      description: 'Verbose boot'
    )
  ]
);
