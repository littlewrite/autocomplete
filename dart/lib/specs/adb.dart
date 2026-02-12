// Auto-generated from TypeScript source: adb.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `adb` CLI
final FigSpec adbSpec = FigSpec(
  name: 'adb',
  description: 'Android Debug Bridge',
  subcommands: [
    Subcommand(
      name: 'devices',
      description: 'List connected devices',
      options: [
        Option(
          name: '-l',
          description: 'Long output'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Show this help message'
    ),
    Subcommand(
      name: 'get-state',
      description: 'Print offline | bootloader | device'
    ),
    Subcommand(
      name: 'get-serialno',
      description: 'Print <serial-number>'
    ),
    Subcommand(
      name: 'get-devpath',
      description: 'Print <device-path>'
    ),
    Subcommand(
      name: 'remount',
      options: [
        Option(
          name: '-R',
          description: 'Reboot device'
        )
      ],
      description: 'Remount partitions read-write. if a reboot is required, -R will automatically reboot the device'
    ),
    Subcommand(
      name: 'jdwp',
      description: 'List pids of processes hosting a JDWP transport'
    ),
    Subcommand(
      name: 'root',
      description: 'Restart adbd with root permissions'
    ),
    Subcommand(
      name: 'unroot',
      description: 'Restart adbd without root permissions'
    ),
    Subcommand(
      name: 'usb',
      description: 'Restart adbd listening on USB'
    ),
    Subcommand(
      name: 'sideload',
      description: 'Sideload the given full OTA package',
      args: [
        Arg(
        name: 'OTAPACKAGE'
      )
      ]
    ),
    Subcommand(
      description: 'Ensure that there is a server running',
      name: 'start-server'
    ),
    Subcommand(
      description: 'Kill the server if it is running',
      name: 'kill-server'
    ),
    Subcommand(
      description: 'Kick connection from host side to force reconnect',
      name: 'reconnect',
      subcommands: [
        Subcommand(
          description: 'Kick connection from device side to force reconnect',
          name: 'device'
        ),
        Subcommand(
          description: 'Reset offline/unauthorized devices to force reconnect`',
          name: 'offline'
        )
      ]
    ),
    Subcommand(
      name: 'tcpip',
      description: 'Restart adbd listening on TCP on PORT',
      args: [
        Arg(
        name: 'PORT'
      )
      ]
    ),
    Subcommand(
      name: 'reboot',
      args: [
        Arg(
        isOptional: true,
        name: 'type',
        suggestions: [
          FigSuggestion(
            name: 'bootloader'
          ),
          FigSuggestion(
            name: 'recovery'
          ),
          FigSuggestion(
            name: 'sideload'
          ),
          FigSuggestion(
            name: 'sideload-auto-reboot'
          )
        ]
      )
      ],
      description: 'Reboot the device; defaults to booting system image but supports bootloader and recovery too. sideload reboots into recovery and automatically starts sideload mode, sideload-auto-reboot is the same but reboots after sideloading'
    ),
    Subcommand(
      name: 'disable-verity',
      description: 'Disable dm-verity checking on userdebug builds'
    ),
    Subcommand(
      name: 'enable-verity',
      description: 'Re-enable dm-verity checking on userdebug builds'
    ),
    Subcommand(
      name: 'wait-for-device',
      description: 'Wait for state=device'
    ),
    Subcommand(
      name: 'wait-for-recovery',
      description: 'Wait for state=recovery'
    ),
    Subcommand(
      name: 'wait-for-rescue',
      description: 'Wait for state=rescue'
    ),
    Subcommand(
      name: 'wait-for-sideload',
      description: 'Wait for state=sideload'
    ),
    Subcommand(
      name: 'wait-for-bootloader',
      description: 'Wait for state=bootloader'
    ),
    Subcommand(
      name: 'wait-for-disconnect',
      description: 'Wait for state=disconnect'
    ),
    Subcommand(
      name: 'wait-for-usb-device',
      description: 'Wait for usb in state=device'
    ),
    Subcommand(
      name: 'wait-for-usb-recovery',
      description: 'Wait for usb in state=recovery'
    ),
    Subcommand(
      name: 'wait-for-usb-rescue',
      description: 'Wait for usb in state=rescue'
    ),
    Subcommand(
      name: 'wait-for-usb-sideload',
      description: 'Wait for usb in state=sideload'
    ),
    Subcommand(
      name: 'wait-for-usb-bootloader',
      description: 'Wait for usb in state=bootloader'
    ),
    Subcommand(
      name: 'wait-for-usb-disconnect',
      description: 'Wait for usb in state=disconnect'
    ),
    Subcommand(
      name: 'wait-for-local-device',
      description: 'Wait for local in state=device'
    ),
    Subcommand(
      name: 'wait-for-local-recovery',
      description: 'Wait for local in state=recovery'
    ),
    Subcommand(
      name: 'wait-for-local-rescue',
      description: 'Wait for local in state=rescue'
    ),
    Subcommand(
      name: 'wait-for-local-sideload',
      description: 'Wait for local in state=sideload'
    ),
    Subcommand(
      name: 'wait-for-local-bootloader',
      description: 'Wait for local in state=bootloader'
    ),
    Subcommand(
      name: 'wait-for-local-disconnect',
      description: 'Wait for local in state=disconnect'
    ),
    Subcommand(
      name: 'wait-for-any-device',
      description: 'Wait for any in state=device'
    ),
    Subcommand(
      name: 'wait-for-any-recovery',
      description: 'Wait for any in state=recovery'
    ),
    Subcommand(
      name: 'wait-for-any-rescue',
      description: 'Wait for any in state=rescue'
    ),
    Subcommand(
      name: 'wait-for-any-sideload',
      description: 'Wait for any in state=sideload'
    ),
    Subcommand(
      name: 'wait-for-any-bootloader',
      description: 'Wait for any in state=bootloader'
    ),
    Subcommand(
      name: 'wait-for-any-disconnect',
      description: 'Wait for any in state=disconnect'
    ),
    Subcommand(
      name: 'keygen',
      description: 'Generate adb public/private key; private key stored in FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'logcat',
      description: 'Show device log (logcat --help for more)'
    ),
    Subcommand(
      name: 'version',
      description: 'Show version num'
    ),
    Subcommand(
      name: 'connect',
      description: 'Connect to a device via TCP/IP [default port=5555]',
      args: [
        Arg(
        name: 'HOST[:PORT]'
      )
      ]
    ),
    Subcommand(
      name: 'disconnect',
      description: 'Disconnect from given TCP/IP device [default port=5555], or all',
      args: [
        Arg(
        name: 'HOST[:PORT]',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Remove this app package from the device',
      options: [
        Option(
          name: '-k',
          description: 'Keep the data and cache directories'
        )
      ]
    ),
    Subcommand(
      name: 'bugreport',
      description: 'Write bugreport to given PATH [default=bugreport.zip];',
      args: [
        Arg(
        name: 'PATH',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'pair',
      description: 'Pair with a device for secure TCP/IP communication',
      args: [
        Arg(
          name: 'HOST[:PORT]'
        ),
        Arg(
          name: '[PAIRING CODE]',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'ppp',
      description: 'Run PPP over USB',
      args: [
        Arg(
          name: 'TTY'
        ),
        Arg(
          name: '[PARAMETER...]',
          isVariadic: true,
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'emu',
      description: 'Run emulator console command',
      args: [
        Arg(
        name: 'COMMAND'
      )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Push a single package to the device and install it',
      args: [
        Arg(
        name: 'PACKAGE',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'install-multiple',
      description: 'Push multiple APKs to the device for a single package and install them',
      args: [
        Arg(
        name: 'PACKAGE',
        template: 'filepaths',
        isVariadic: true
      )
      ],
      options: [
        Option(
          name: '-p',
          description: 'Partial application install (install-multiple only)'
        )
      ]
    ),
    Subcommand(
      name: 'install-multi-package',
      description: 'Push one or more packages to the device and install them atomically',
      args: [
        Arg(
        name: 'PACKAGE',
        template: 'filepaths',
        isVariadic: true
      )
      ],
      options: [
        Option(
          name: '-p',
          description: 'Partial application install (install-multiple only)'
        )
      ]
    ),
    Subcommand(
      name: 'shell',
      description: 'Run remote shell command (interactive shell if no command given)',
      options: [
        Option(
          name: '-e',
          description: 'Choose escape character, or `none` default \'~\''
        ),
        Option(
          name: '-n',
          description: 'Don\'t read from stdin'
        ),
        Option(
          name: '-T',
          description: 'Disable pty allocation'
        ),
        Option(
          name: '-t',
          description: 'Allocate a pty if on a tty'
        ),
        Option(
          name: '-tt',
          description: '-tt: force pty allocation'
        ),
        Option(
          name: '-x',
          description: 'Disable remote exit codes and stdout/stderr separation'
        )
      ],
      args: [
        Arg(
        isOptional: true,
        name: 'COMMANDS ...',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'mdns',
      description: 'Mdns utils',
      subcommands: [
        Subcommand(
          name: 'check',
          description: 'Check if mdns discovery is available'
        ),
        Subcommand(
          name: 'services',
          description: 'List all discovered services'
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Copy local files/directories to device',
      options: [
        Option(
          description: 'Only push files that are newer on the host than the device',
          name: '--sync'
        ),
        Option(
          description: 'Dry run: push files to device without storing to the filesystem',
          name: '-n'
        )
      ],
      args: [
        Arg(
          name: 'LOCAL',
          isVariadic: true,
          template: 'filepaths'
        ),
        Arg(
          name: 'REMOTE'
        )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Sync a local build from \$ANDROID_PRODUCT_OUT to the device (default all)',
      options: [
        Option(
          description: 'Dry run: push files to device without storing to the filesystem',
          name: '-n'
        ),
        Option(
          description: 'List files that would be copied, but don\'t copy them',
          name: '-l'
        )
      ],
      args: [
        Arg(
        isOptional: true,
        suggestions: [
          FigSuggestion(
            name: 'all'
          ),
          FigSuggestion(
            name: 'data'
          ),
          FigSuggestion(
            name: 'odm'
          ),
          FigSuggestion(
            name: 'oem'
          ),
          FigSuggestion(
            name: 'product'
          ),
          FigSuggestion(
            name: 'system'
          ),
          FigSuggestion(
            name: 'system_ext'
          ),
          FigSuggestion(
            name: 'vendor'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'pull',
      description: 'Copy files/dirs from device',
      options: [
        Option(
          description: 'Preserve file timestamp and mode',
          name: '-a'
        )
      ],
      args: [
        Arg(
          name: 'REMOTE',
          isVariadic: true,
          template: 'filepaths'
        ),
        Arg(
          name: 'LOCAL'
        )
      ]
    ),
    Subcommand(
      name: 'forward',
      description: 'Forward connection',
      options: [
        Option(
          name: '--list',
          description: 'List all forward socket connections'
        ),
        Option(
          name: '--remove',
          description: 'Remove specific forward socket connection',
          args: [
            Arg(
            name: 'LOCAL'
          )
          ]
        ),
        Option(
          name: '--remove-all',
          description: 'Remove all forward socket connections'
        ),
        Option(
          name: '--no-rebind',
          description: 'Reversal fails if the specified socket is already bound through a previous reverse command'
        )
      ],
      args: [
        Arg(
          name: 'LOCAL -> port|domain|device|pid'
        ),
        Arg(
          name: 'REMOTE -> port|domain|device|pid'
        )
      ]
    ),
    Subcommand(
      name: 'reverse',
      description: 'Reverse connection',
      options: [
        Option(
          name: '--list',
          description: 'List all reverse socket connections from device'
        ),
        Option(
          name: '--remove',
          description: 'Remove specific reverse socket connection',
          args: [
            Arg(
            name: 'REMOTE'
          )
          ]
        ),
        Option(
          name: '--remove-all',
          description: 'Remove all reverse socket connections from device'
        ),
        Option(
          name: '--no-rebind',
          description: 'Reversal fails if the specified socket is already bound through a previous reverse command'
        )
      ],
      args: [
        Arg(
          name: 'REMOTE -> port|domain|device|pid'
        ),
        Arg(
          name: 'LOCAL -> port|domain|device|pid'
        )
      ]
    )
  ],
  options: [
    Option(
      description: 'Listen on all network interfaces, not just localhost',
      name: '-a'
    ),
    Option(
      description: 'Use USB device (error if multiple devices connected)',
      name: '-d'
    ),
    Option(
      description: 'Use TCP/IP device (error if multiple TCP/IP devices available)',
      name: '-e'
    ),
    Option(
      description: 'Use device with given serial (overrides \$ANDROID_SERIAL)',
      name: '-s',
      args: [
        Arg(
        name: 'SERIAL'
      )
      ]
    ),
    Option(
      description: 'Use device with given transport id',
      name: '-t',
      args: [
        Arg(
        name: 'ID'
      )
      ]
    ),
    Option(
      description: 'Name of adb server host [default=localhost]',
      name: '-H',
      args: [
        Arg(
        name: 'host name'
      )
      ]
    ),
    Option(
      description: 'Port of adb server [default=5037]',
      name: '-P',
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Option(
      description: 'Listen on given socket for adb server [default=tcp:localhost:5037]',
      name: '-L',
      args: [
        Arg(
        name: 'socket'
      )
      ]
    )
  ]
);
