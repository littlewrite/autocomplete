// Auto-generated from TypeScript source: simctl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `simctl` CLI
final FigSpec simctlSpec = FigSpec(
  name: 'simctl',
  description: '',
  subcommands: [
    Subcommand(
      name: 'addmedia',
      description: 'Add photos, live photos, videos, or contacts to the library of a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'path',
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'boot',
      description: 'Boot a device or device pair',
      args: [
        Arg(
        name: 'device'
      )
      ],
      options: [
        Option(
          name: '--arch',
          description: 'Specify the architecture to use when booting the simulator (eg: \'arm64\' or \'x86_64\')',
          isRepeatable: true
        ),
        Option(
          name: '--disabledJob',
          description: 'Disables the given launchd job. Multiple jobs can be disabled by passing multiple flags',
          isRepeatable: true
        ),
        Option(
          name: '--enabledJob',
          description: 'Enables the given launchd job when it would normally be disabled. Multiple jobs can be enabled by passing multiple flags',
          isRepeatable: true
        )
      ]
    ),
    Subcommand(
      name: 'clone',
      description: 'Clone an existing device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'new name'
        ),
        Arg(
          name: 'destination device set',
          isVariadic: true
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new device',
      args: [
        Arg(
          name: 'name'
        ),
        Arg(
          name: 'device type id',
          description: 'A valid available device type. Find these by running \'xcrun simctl list devicetypes\'. Examples: (\'iPhone X\', \'com.apple.CoreSimulator.SimDeviceType.iPhone-X\')'
        ),
        Arg(
          name: 'runtime id',
          isVariadic: true,
          description: 'A valid and available runtime. Find these by running \'xcrun simctl list runtimes\'. If no runtime is specified the newest runtime compatible with the device type is chosen. Examples: (\'watchOS3\', \'watchOS3.2\', \'watchOS 3.2\', \'com.apple.CoreSimulator.SimRuntime.watchOS-3-2\', \'/Volumes/path/to/Runtimes/watchOS 3.2.simruntime\')'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete specified devices, unavailable devices, or all devices',
      args: [
        Arg(
          name: 'device',
          isVariadic: true
        ),
        Arg(
          name: 'unavailable',
          description: 'Specifying unavailable will delete devices that are not supported by the current Xcode SDK'
        ),
        Arg(
          name: 'all'
        )
      ]
    ),
    Subcommand(
      name: 'diagnose',
      description: 'Collect diagnostic information and logs',
      options: [
        Option(
          name: '-b',
          description: 'Do NOT show the resulting archive in a Finder window upon completion'
        ),
        Option(
          name: '-X',
          description: 'Run all diagnostics with no timeout. It ignores the --timeout value if it is specified',
          exclusiveOn: ['timeout']
        ),
        Option(
          name: '--timeout',
          description: 'Specify a duration (in seconds) to wait for the log collection before timeout'
        ),
        Option(
          name: '--output',
          description: 'Specify the output directory. If not provided the temporary directory is used'
        ),
        Option(
          name: '--no-archive',
          description: 'Do not create an archive, leave the collected files uncompressed'
        ),
        Option(
          name: '--all-logs',
          description: 'Include all device logs, even for non-booted devices'
        ),
        Option(
          name: '--data-containers',
          description: 'Include booted device(s) data directory. Warning: May include private information, app data containers, and increases the size of the archive! Default is NOT to collect the data container'
        ),
        Option(
          name: '--udid',
          description: 'Collect diagnostics only from the specified device. This option may be specified more than once to consider multiple devices. The --all-logs option causes all --udid options to be ignored',
          isRepeatable: true
        )
      ]
    ),
    Subcommand(
      name: 'erase',
      description: 'Erase a device\'s contents and settings',
      args: [
        Arg(
          name: 'device',
          isVariadic: true
        ),
        Arg(
          name: 'all',
          description: 'Specifying all will erase all existing devices'
        )
      ]
    ),
    Subcommand(
      name: 'get_app_container',
      description: 'Print the path of the installed app\'s container',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'app bundle identifier'
        ),
        Arg(
          name: 'container',
          description: 'Optionally specify the container. Defaults to app.\napp                 The .app bundle\ndata                The application\'s data container\ngroups              The App Group containers\n<group identifier>  A specific App Group container',
          isOptional: true,
          defaultValue: 'app',
          suggestions: [
            FigSuggestion(
              name: 'app',
              description: 'The .app bundle'
            ),
            FigSuggestion(
              name: 'data',
              description: 'The application\'s data container'
            ),
            FigSuggestion(
              name: 'groups',
              description: 'The App Group containers'
            ),
            FigSuggestion(
              name: '<group identifier>',
              description: 'A specific App Group container'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'getenv',
      description: 'Print an environment variable from a running device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'variable name'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Prints the usage for a given subcommand',
      loadSpec: 'simctl'
    ),
    Subcommand(
      name: 'icloud_sync',
      description: 'Trigger iCloud sync on a device',
      args: [
        Arg(
        name: 'device'
      )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Install an app on a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'path'
        )
      ]
    ),
    Subcommand(
      name: 'install_app_data',
      description: 'Install an xcappdata package to a device, replacing the current contents of the container',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'path to xcappdata package'
        )
      ]
    ),
    Subcommand(
      name: 'io',
      description: 'Set up a device IO operation',
      args: [
        Arg(
        name: 'device'
      )
      ],
      subcommands: [
        Subcommand(
          name: 'enumerate',
          description: 'Lists all available IO ports and descriptor states',
          options: [
            Option(
              name: '--poll',
              description: 'Poll after enumeration'
            )
          ]
        ),
        Subcommand(
          name: 'poll',
          description: 'Polls all available IO ports for events'
        ),
        Subcommand(
          name: 'recordVideo',
          description: 'Records the display to a QuickTime movie at the specified file or url',
          args: [
            Arg(
            name: 'file or url'
          )
          ],
          options: [
            Option(
              name: '--codec',
              description: 'Specifies the codec type: \'h264\' or \'hevc\'. Default is \'hevc\''
            ),
            Option(
              name: '--display',
              description: 'iOS: supports \'internal\' or \'external\'. Default is \'internal\'. tvOS: supports only \'external\' watchOS: supports only \'internal\''
            ),
            Option(
              name: '--mask',
              description: 'For non-rectangular displays, handle the mask by policy: ignored: The mask is ignored and the unmasked framebuffer is saved. alpha: Not supported, but retained for compatibility; the mask is rendered black. black: The mask is rendered black'
            ),
            Option(
              name: '--force',
              description: 'Force the output file to be written to, even if the file already exists'
            )
          ]
        ),
        Subcommand(
          name: 'screenshot',
          description: 'Saves a screenshot as a PNG to the specified file or url(use \'-\' for stdout)',
          args: [
            Arg(
            name: 'file or url'
          )
          ],
          options: [
            Option(
              name: '--type',
              description: 'Can be \'png\', \'tiff\', \'bmp\', \'gif\', \'jpeg\'. Default is png'
            ),
            Option(
              name: '--display',
              description: 'iOS: supports \'internal\' or \'external\'. Default is \'internal\'. tvOS: supports only \'external\' watchOS: supports only \'internal\'. You may also specify a port by UUID'
            ),
            Option(
              name: '--mask',
              description: 'For non-rectangular displays, handle the mask by policy: ignored: The mask is ignored and the unmasked framebuffer is saved. alpha: The mask is used as premultiplied alpha. black: The mask is rendered black'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'keychain',
      description: 'Manipulate a device\'s keychain',
      subcommands: [
        Subcommand(
          name: 'add-root-cert',
          description: 'Add a certificate to the trusted root store',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Subcommand(
          name: 'add-cert',
          description: 'Add a certificate to the keychain',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Reset the keychain'
        )
      ]
    ),
    Subcommand(
      name: 'launch',
      description: 'Launch an application by identifier on a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'app bundle identifier'
        ),
        Arg(
          name: 'argv',
          isVariadic: true
        )
      ],
      options: [
        Option(
          name: ['-w', '--wait-for-debugger']
        ),
        Option(
          name: '--console',
          description: 'Block and print the application\'s stdout and stderr to the current terminal. Signals received by simctl are passed through to the application. (Cannot be combined with --stdout or --stderr)',
          exclusiveOn: ['console-pty', 'stdout', 'stderr']
        ),
        Option(
          name: '--console-pty',
          description: 'Block and print the application\'s stdout and stderr to the current terminal via a PTY. Signals received by simctl are passed through to the application. (Cannot be combined with --stdout or --stderr)',
          exclusiveOn: ['console', 'stdout', 'stderr']
        ),
        Option(
          name: '--stdout',
          description: 'Redirect the application\'s standard output to a file',
          args: [
            Arg(
            name: 'path'
          )
          ],
          exclusiveOn: ['console', 'console-pty']
        ),
        Option(
          name: '--stderr',
          description: 'Redirect the application\'s standard error to a file',
          args: [
            Arg(
            name: 'path'
          )
          ],
          exclusiveOn: ['console', 'console-pty']
        ),
        Option(
          name: '--terminate-running-process',
          description: 'Terminate any running copy of the application. Note: Log output is often directed to stderr, not stdout'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List available devices, device types, runtimes, or device pairs',
      args: [
        Arg(
          name: 'type',
          suggestions: [
            FigSuggestion(name: 'devices'),
            FigSuggestion(name: 'deviceTypes'),
            FigSuggestion(name: 'runtimes'),
            FigSuggestion(name: 'pairs')
          ]
        ),
        Arg(
          name: 'search term',
          suggestions: [
            FigSuggestion(name: 'available')
          ]
        )
      ],
      options: [
        Option(
          name: ['-j', '--json'],
          description: 'Print as JSON'
        ),
        Option(
          name: ['-e', '--no-escape-slashes'],
          description: 'Encode slashes without escapes in JSON output'
        ),
        Option(
          name: '-v',
          description: 'More verbose output'
        )
      ]
    ),
    Subcommand(
      name: 'location',
      description: 'Control a device\'s simulated location',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'empty'
        )
      ],
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List available simulation scenarios'
        ),
        Subcommand(
          name: 'clear',
          description: 'Stop any running scenario and clear any simulated location'
        ),
        Subcommand(
          name: 'set',
          description: 'Set the location to a specific latitude and longitude',
          args: [
            Arg(
            name: 'lat,lon'
          )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Run a simulated location scenario (use the list action to get a list of scenarios)',
          args: [
            Arg(
            name: 'scenario'
          )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Set the location to a series of waypoints specified as \'lat,lon\' pairs, interpolating between them over time.\nAt least two waypoints are required. Use \'-\' to read waypoints from stdin, one waypoint per li\nSpeed specifies how quickly to move between waypoints in meters per second. If not specified 20m/s is us\nThe system will issue location updates along the path between each pair of waypoints. Use distance or interval to \ncontrol how often those updates are issued. Distance will issue an update every <meters> travelled without regard\nfor the time between updates. Interval will issue updates at fixed times without regard for how much\nthe location moves between updates.\nIf neither are specified an interval of 1.0 seconds is used. If both are specified the system picks on\nExample simulating a direct line between San Francisco and New York City, with updates every km:\nset --distance=1000 --speed=260 37.629538,-122.395733 40.628083,-73.768254',
          args: [
            Arg(
            name: 'lat,lon',
            isVariadic: true
          )
          ],
          options: [
            Option(
              name: 'speed'
            ),
            Option(
              name: 'distance'
            ),
            Option(
              name: 'interval'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logverbose',
      description: 'Enable or disable verbose logging for a device.\nNOTE: You may need to reboot the affected device before logging changes will be effective',
      args: [
        Arg(
          name: 'device',
          description: 'The device. If not provided all booted devices are affected'
        ),
        Arg(
          name: 'enable/disable',
          description: 'Enable or Disable verbose logging',
          suggestions: [
            FigSuggestion(name: 'enable'),
            FigSuggestion(name: 'disable')
          ]
        )
      ]
    ),
    Subcommand(
      name: 'openurl',
      description: 'Open a URL in a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'URL'
        )
      ]
    ),
    Subcommand(
      name: 'pair',
      description: 'Create a new watch and phone pair',
      args: [
        Arg(
          name: 'watch device'
        ),
        Arg(
          name: 'phone device'
        )
      ]
    ),
    Subcommand(
      name: 'pair_activate',
      description: 'Set a given pair as active',
      args: [
        Arg(
        name: 'pair'
      )
      ]
    ),
    Subcommand(
      name: 'pbcopy',
      description: 'Copy standard input onto the device pasteboard',
      args: [
        Arg(
        name: 'device of \'host\''
      )
      ],
      options: [
        Option(
          name: '-v'
        )
      ]
    ),
    Subcommand(
      name: 'pbpaste',
      description: 'Print the contents of the device\'s pasteboard to standard output',
      args: [
        Arg(
        name: 'device of \'host\''
      )
      ],
      options: [
        Option(
          name: '-v'
        )
      ]
    ),
    Subcommand(
      name: 'pbsync',
      description: 'Sync the pasteboard content from one pasteboard to another',
      args: [
        Arg(
          name: 'source device or \'host\''
        ),
        Arg(
          name: 'destination device or \'host\''
        )
      ],
      options: [
        Option(
          name: '-p',
          description: 'Causes simctl to use promise data for secondary types.  simctl will continue to run to provide that promise data until something else replaces it on the pasteboard'
        ),
        Option(
          name: '-v'
        )
      ]
    ),
    Subcommand(
      name: 'privacy',
      description: 'Grant, revoke, or reset privacy and permissions',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'action',
          description: '',
          suggestions: [
            FigSuggestion(name: 'grant'),
            FigSuggestion(name: 'revoke'),
            FigSuggestion(name: 'reset')
          ]
        ),
        Arg(
          name: 'service',
          description: '',
          suggestions: [
            FigSuggestion(name: 'all'),
            FigSuggestion(name: 'calendar'),
            FigSuggestion(name: 'contacts-limited'),
            FigSuggestion(name: 'contacts'),
            FigSuggestion(name: 'location'),
            FigSuggestion(name: 'location-always'),
            FigSuggestion(name: 'photos-add'),
            FigSuggestion(name: 'photos'),
            FigSuggestion(name: 'media-library'),
            FigSuggestion(name: 'microphone'),
            FigSuggestion(name: 'motion'),
            FigSuggestion(name: 'reminders'),
            FigSuggestion(name: 'siri')
          ]
        ),
        Arg(
          name: 'bundle identifier',
          description: 'The bundle identifier of the target application'
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Send a simulated push notification',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'bundle identifier',
          description: 'The bundle identifier of the target application If the payload file contains a \'Simulator Target Bundle\' top-level key this parameter may be omitted. If both are provided this argument will override the value from the payload'
        ),
        Arg(
          name: 'json file',
          description: 'Path to a JSON payload or \'-\' to read from stdin. The payload must:\n- Contain an object at the top level.\n- Contain an \'aps\' key with valid Apple Push Notification values.\n- Be 4096 bytes or less',
          suggestions: [
            FigSuggestion(name: '-')
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rename',
      description: 'Rename a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'name'
        )
      ]
    ),
    Subcommand(
      name: 'runtime',
      description: 'Perform operations on runtimes',
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Add a runtime disk image to the secure storage area. The image will be staged, verified, and mounted. When possible the image file will be cloned so no additional disk space will be used. If stdout is a terminal and a copy is required then progress will be reported',
          args: [
            Arg(
            name: 'path'
          )
          ],
          options: [
            Option(
              name: ['-m', '--move'],
              description: 'Remove the original file if the image is added successfully. If the image cannot be staged or the add fails the original is not removed'
            ),
            Option(
              name: ['-a', '--async'],
              description: 'Print the UUID of the new image then exit, do not wait on the results of the add operation'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a simulator runtime from the secure storage area. If runtime is a disk image any booted simulators are shutdown and the disk is unmounted first. Use the alias \'all\' to delete all images',
          args: [
            Arg(
            name: 'identifier'
          )
          ],
          options: [
            Option(
              name: ['-d', '--notUsedSinceDays'],
              description: 'Delete images not used within the past <days> days'
            ),
            Option(
              name: ['-n', '--dry-run'],
              description: 'Print what images would be deleted without actually deleting anything',
              exclusiveOn: ['identifier']
            )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Re-verify the signature of a given runtime',
          args: [
            Arg(
            name: 'identifier'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: '',
          options: [
            Option(
              name: '-v',
              description: 'Print more verbose output'
            ),
            Option(
              name: ['-j', '--json'],
              description: 'Print as JSON'
            )
          ]
        ),
        Subcommand(
          name: 'match list',
          description: 'List the SDK build to runtime build mapping rules for the selected Xcode. Preferred means the runtime was either bundled with Xcode, exactly matched your SDK version, or the downloadable index indicated a better match for your SDK Manual overrides using \'match set\' have the highest priority',
          options: [
            Option(
              name: '-v',
              description: 'Verbose mode. Includes the full preferred build map, user override map, and known SDK names'
            ),
            Option(
              name: ['-j', '--json'],
              description: 'Print as JSON'
            )
          ]
        ),
        Subcommand(
          name: 'match set',
          description: 'Override the SDK to runtime build mapping. This controls which build of a given runtime Xcode will prefer for building and running when using that SDK. This matters most often during Beta releases when there are multiple builds for a given OS version. If --sdkBuild is not specified it is assumed you mean the SDK build for the currently selected Xcode.\n\nNote: Remember this is about build numbers, not semantic versions. When using the iOS 16.0 SDK Xcwill always prefer an iOS 16.0 runtime. Matching policy controls what to do when there are multiiOS 16.0 runtimes availabeg if the iOS 16.0 SDK is 20A245 and the available runtimes are (20A248, 20A252, 20A254) which should Xcode use for building, SwiftUI Previews, and when launching iOS 16.0 Simulators? They are all iOS 16.0 runtimes so a policy must decide which one is selected',
          args: [
            Arg(
              name: 'sdk canonical name'
            ),
            Arg(
              name: 'runtime build'
            )
          ],
          options: [
            Option(
              name: '--default',
              description: 'Clear the override for the given SDK and revert to default behavior',
              exclusiveOn: ['runtime build']
            ),
            Option(
              name: '--sdkBuild',
              description: 'Explicitly specify the SDK build, eg for an Xcode other than the selected Xcode'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'shutdown',
      description: 'Shutdown a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'all',
          suggestions: [
            FigSuggestion(name: 'all')
          ]
        )
      ]
    ),
    Subcommand(
      name: 'spawn',
      description: 'Spawn a process by executing a given executable on a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'path to executable'
        ),
        Arg(
          name: 'argv',
          isVariadic: true
        )
      ],
      options: [
        Option(
          name: ['-w', '--wait-for-debugger']
        ),
        Option(
          name: ['-s', '--standalone']
        ),
        Option(
          name: ['-a', '--arch']
        )
      ]
    ),
    Subcommand(
      name: 'status_bar',
      description: 'Set or clear status bar overrides',
      args: [
        Arg(
        name: 'device'
      )
      ],
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List existing overrides'
        ),
        Subcommand(
          name: 'clear',
          description: 'Clear all existing status bar overrides'
        ),
        Subcommand(
          name: 'override',
          description: 'Set status bar override values, according to these flags. You may specify any combination of these flags (at least one is required)',
          options: [
            Option(
              name: '--time',
              description: 'Set the date or time to a fixed value. If the string is a valid ISO date string it will also set the date on relevant devices'
            ),
            Option(
              name: '--dataNetwork',
              description: 'If specified must be one of \'hide\', \'wifi\', \'3g\', \'4g\', \'lte\', \'lte-a\', \'lte+\', \'5g\', \'5g+\', \'5g-uwb\', or \'5g-uc\''
            ),
            Option(
              name: '--wifiMode',
              description: 'If specified must be one of \'searching\', \'failed\', or \'active\''
            ),
            Option(
              name: '--wifiBars',
              description: 'If specified must be 0-3'
            ),
            Option(
              name: '--cellularMode',
              description: 'If specified must be one of \'notSupported\', \'searching\', \'failed\', or \'active\''
            ),
            Option(
              name: '--cellularBars',
              description: 'If specified must be 0-4'
            ),
            Option(
              name: '--operatorName',
              description: 'Set the cellular operator/carrier name. Use \'\' for the empty string'
            ),
            Option(
              name: '--batteryState',
              description: 'If specified must be one of \'charging\', \'charged\', or \'discharging\''
            ),
            Option(
              name: '--batteryLevel',
              description: 'If specified must be 0-100'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'terminate',
      description: 'Terminate an application by identifier on a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'app bundle identifier'
        )
      ]
    ),
    Subcommand(
      name: 'ui',
      description: 'Get or Set UI options',
      args: [
        Arg(
        name: 'device'
      )
      ],
      subcommands: [
        Subcommand(
          name: 'appearance',
          description: 'When invoked without arguments prints the current user interface appearance style:\nlight\nThe Light appearance style.\ndark\nThe Dark appearance style.\nunsupported\nThe platform or runtime version do not support appearance styles.\nunknown\nThe current style is unknown or there was an error detecting it',
          additionalSuggestions: [
            FigSuggestion(name: 'light'),
            FigSuggestion(name: 'dark')
          ]
        ),
        Subcommand(
          name: 'increase_contrast',
          description: 'When invoked without arguments prints whether the Increase Contrast mode is currently enabled:\nenabled\nIncrease Contrast is enabled.\ndisabled\nIncrease Contrast is disabled.\nunsupported\nThe platform or runtime version do not support the Increase Contrast setting.\nunknown\nThe current setting is unknown or there was an error detecting it',
          additionalSuggestions: [
            FigSuggestion(name: 'enabled'),
            FigSuggestion(name: 'disabled')
          ]
        ),
        Subcommand(
          name: 'content_size',
          description: 'When invoked without arguments prints the current preferred content size category, from the following possible values:',
          additionalSuggestions: [
            FigSuggestion(name: 'extra-small'),
            FigSuggestion(name: 'small'),
            FigSuggestion(name: 'medium'),
            FigSuggestion(name: 'large'),
            FigSuggestion(name: 'extra-large'),
            FigSuggestion(name: 'extra-extra-large'),
            FigSuggestion(name: 'extra-extra-extra-large'),
            FigSuggestion(name: 'accessibility-medium'),
            FigSuggestion(name: 'accessibility-large'),
            FigSuggestion(name: 'accessibility-extra-large'),
            FigSuggestion(name: 'accessibility-extra-extra-large'),
            FigSuggestion(name: 'accessibility-extra-extra-extra-large'),
            FigSuggestion(name: 'unknown'),
            FigSuggestion(name: 'unsupported')
          ]
        )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstall an app from a device',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'app bundle identifier'
        )
      ]
    ),
    Subcommand(
      name: 'unpair',
      description: 'Unpair a watch and phone pair',
      args: [
        Arg(
        name: 'pair UUID'
      )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade a device to a newer runtime',
      args: [
        Arg(
          name: 'device'
        ),
        Arg(
          name: 'runtime id'
        )
      ]
    )
  ]
);
