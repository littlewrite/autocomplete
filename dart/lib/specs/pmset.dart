// Auto-generated from TypeScript source: pmset.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pmset` CLI
final FigSpec pmsetSpec = FigSpec(
  name: 'pmset',
  description: 'Power management settings',
  subcommands: [
    Subcommand(
      name: '-g',
      description: 'GETTING',
      args: [
        Arg(
          isOptional: true,
          defaultValue: 'live',
          suggestions: [
            FigSuggestion(
              name: 'live',
              description: 'Display the settings currently in use. (default if no argument given)'
            ),
            FigSuggestion(
              name: 'custom',
              description: 'Display custom settings for all power sources'
            ),
            FigSuggestion(
              name: 'cap',
              description: 'Display which power management features the machine supports'
            ),
            FigSuggestion(
              name: 'sched',
              description: 'Display scheduled startup/wake and shutdown/sleep events'
            ),
            FigSuggestion(
              name: 'ups',
              description: 'Display UPS emergency thresholds'
            ),
            FigSuggestion(
              name: ['ps', 'batt'],
              description: 'Display status of batteries and UPSs'
            ),
            FigSuggestion(
              name: 'pslog',
              description: 'Display an ongoing log of power source (battery and UPS)state'
            ),
            FigSuggestion(
              name: 'rawlog',
              description: 'Display an ongoing log of battery state as read directly from battery'
            ),
            FigSuggestion(
              name: 'profiles',
              description: 'Display the settings associated with each Energy Saver profile. 10.5+'
            ),
            FigSuggestion(
              name: 'thermlog',
              description: 'Show a log of thermal notifications that affect CPU speed. Not available on all platforms'
            ),
            FigSuggestion(
              name: 'assertions',
              description: 'Display a summary of power assertions. 10.6+'
            ),
            FigSuggestion(
              name: 'assertionslog',
              description: 'Show a log of assertion creations and releases. 10.6+'
            ),
            FigSuggestion(
              name: 'activity',
              description: 'Display a summary of power state of Display wrangler and Disk Queue Manager.10.6+'
            ),
            FigSuggestion(
              name: 'activitylog',
              description: 'Show a log of power state changes to Display Wrangler and Disk Queue Manager. 10.6+'
            ),
            FigSuggestion(
              name: 'sysload',
              description: 'Display the "system load advisory" 10.6+'
            ),
            FigSuggestion(
              name: 'sysloadlog',
              description: 'Display an ongoing log of lives changes to the system load advisory. 10.6+'
            ),
            FigSuggestion(
              name: ['ac', 'adapter'],
              description: 'Display details about an attached AC power adapter'
            ),
            FigSuggestion(
              name: 'log',
              description: 'Display a history of sleeps, wakes, and other power management events'
            ),
            FigSuggestion(
              name: 'uuid',
              description: 'Display the currently active sleep/wake UUID'
            ),
            FigSuggestion(
              name: 'uuidlog',
              description: 'Display the currently active sleep/wake UUID, and prints a new UUID as they\'re set by the system'
            ),
            FigSuggestion(
              name: 'history',
              description: 'A debugging tool. Prints a timeline of system sleeplwake UUIDs'
            ),
            FigSuggestion(
              name: 'historydetailed',
              description: 'Prints driver-level timings for a sleep/wake. Pass a UUID as an argument'
            ),
            FigSuggestion(
              name: 'everything',
              description: 'Print output from every argument under the GETTING header 10.8+'
            )
          ]
        ),
        Arg(
          name: 'UUID',
          description: 'Used for historydetailed',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'schedule',
      description: 'For setting up one-time power events',
      options: [
        Option(
          name: 'cancel'
        )
      ],
      args: [
        Arg(
          name: 'type'
        ),
        Arg(
          name: 'date/time',
          description: '"MM/dd/yy HH:mm:ss" (in 24 hour format; must be in quotes)'
        )
      ]
    ),
    Subcommand(
      name: 'repeat',
      description: 'For setting up daily/weekly power on and power off events',
      subcommands: [
        Subcommand(
          name: 'cancel'
        )
      ],
      args: [
        Arg(
          name: 'type'
        ),
        Arg(
          name: 'weekdays',
          description: 'A subset of MTWRFSU ("M" and "MTWRF" are valid strings)'
        ),
        Arg(
          name: 'date/time',
          description: '"MM/dd/yy HH:mm:ss" (in 24 hour format; must be in quotes)'
        )
      ]
    )
  ],
  args: [
    Arg(
    description: 'Override settings and sleep now',
    isOptional: true,
    suggestions: [
      FigSuggestion(name: 'sleepnow'),
      FigSuggestion(name: 'noidle'),
      FigSuggestion(name: 'lock'),
      FigSuggestion(name: 'touch')
    ]
  )
  ],
  options: [
    Option(
      name: '-a',
      description: 'Settings for all',
      args: [
        Arg(
          name: 'setting'
        ),
        Arg(
          name: 'value'
        )
      ]
    ),
    Option(
      name: '-b',
      description: 'Settings for battery',
      args: [
        Arg(
          name: 'setting'
        ),
        Arg(
          name: 'value'
        )
      ]
    ),
    Option(
      name: '-c',
      description: 'Settings for charger',
      args: [
        Arg(
          name: 'setting'
        ),
        Arg(
          name: 'value'
        )
      ]
    ),
    Option(
      name: '-u',
      description: 'Settings for UPS',
      args: [
        Arg(
          name: 'setting'
        ),
        Arg(
          name: 'value'
        )
      ]
    )
  ]
);
