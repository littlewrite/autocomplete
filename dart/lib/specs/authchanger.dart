// Auto-generated from TypeScript source: authchanger.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `authchanger` CLI
final FigSpec authchangerSpec = FigSpec(
  name: 'authchanger',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  description: 'Authchanger is a utility included with Jamf Connect to help you manage the authorization database used by macOS to determine how the login process progresses',
  options: [

    Option(
      name: ['-help', '-h'],
      description: 'Show help for authchanger'
    ),
    Option(
      name: '-version',
      description: 'Prints the version number'
    ),
    Option(
      name: '-print',
      description: 'Prints the current list of authorization mechanisms'
    ),
    Option(
      name: '-debug',
      description: 'Does a dry run of the changes and prints out what would have happened'
    ),
    Option(
      name: '-reset',
      description: 'Resets the login screen to the factory settings'
    ),
    Option(
      name: '-demobilize',
      description: 'Sets up Jamf Connect Login to only demobilze accounts'
    ),
    Option(
      name: '-notify',
      description: 'Adds the DEP Notify addition to the corresponding -AD, or -Setup argument'
    ),
    Option(
      name: '-setup',
      description: 'Adds the DEP Notify addition to the corresponding -AD, or -Setup argument'
    ),
    Option(
      name: '-jamfconnect',
      description: 'Enables Jamf Connect 2.0 login mechanisms'
    ),
    Option(
      name: '-verbose',
      description: 'Enables verbose logging'
    ),
    Option(
      name: '-prelogin',
      description: 'Mechs to be used before the actual UI is shown'
    ),
    Option(
      name: '-preauth',
      description: 'Mechs to be used between the login UI and actual authentication'
    ),
    Option(
      name: '-postauth',
      description: 'Mechs to be used after system authentication'
    ),
    Option(
      name: '-customrule',
      description: 'Allows the printout of any authorizationDB rule as well as setting of that rule to any custom mechanism(s)'
    ),
    Option(
      name: '-sysprefs',
      description: 'Enables Azure authentication for the Network Preference Pane'
    ),
    Option(
      name: '-sysprefsreset',
      description: 'Removes Azure authentication for the Network Preference Pane'
    ),
    Option(
      name: '-defaultjcright',
      description: 'Adds the mechanism to be used with the sudosaml binary'
    )
  ]
);
