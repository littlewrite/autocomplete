// Auto-generated from TypeScript source: tccutil.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> commands = [

  FigSuggestion(
    name: 'reset',
    description: 'Reset permissions'
  )
];

final List<FigSuggestion> services = [

  FigSuggestion(
    name: 'AppleEvents'
  ),
  FigSuggestion(
    name: 'BluetoothAlways',
    description: 'Use Bluetooth'
  ),
  FigSuggestion(
    name: 'Calendar',
    description: 'Access your calendar'
  ),
  FigSuggestion(
    name: 'Camera',
    description: 'Access the camera'
  ),
  FigSuggestion(
    name: 'ContactsFull',
    description: 'Access all of your contacts information'
  ),
  FigSuggestion(
    name: 'ContactsLimited',
    description: 'Access your contacts basic information'
  ),
  FigSuggestion(
    name: 'FileProviderDomain',
    description: 'Access files managed by indirect_object'
  ),
  FigSuggestion(
    name: 'FileProviderPresence',
    description: 'Allow the app to see when you are using files managed by it?'
  ),
  FigSuggestion(
    name: 'Location',
    description: 'Use your current location'
  ),
  FigSuggestion(
    name: 'MediaLibrary',
    description: 'Access Apple Music, your music and video activity, and your media library'
  ),
  FigSuggestion(
    name: 'Microphone',
    description: 'Access the microphone'
  ),
  FigSuggestion(
    name: 'Motion',
    description: 'Access Your Motion & Fitness Activity'
  ),
  FigSuggestion(
    name: 'Photos',
    description: 'Access Your Photo'
  ),
  FigSuggestion(
    name: 'PhotosAdd',
    description: 'Add to your Photo'
  ),
  FigSuggestion(
    name: 'Prototype3Rights',
    description: 'Authorization to Test Service Proto3Right'
  ),
  FigSuggestion(
    name: 'Prototype4Rights',
    description: 'Authorization to Test Service Proto4Right'
  ),
  FigSuggestion(
    name: 'Reminders',
    description: 'Access your reminders'
  ),
  FigSuggestion(
    name: 'ScreenCapture',
    description: 'Capture the contents of the system display'
  ),
  FigSuggestion(
    name: 'Siri',
    description: 'Use app with Siri'
  ),
  FigSuggestion(
    name: 'SpeechRecognition',
    description: 'Access Speech Recognition'
  ),
  FigSuggestion(
    name: 'SystemPolicyDesktopFolder',
    description: 'Access files in your Desktop folder'
  ),
  FigSuggestion(
    name: 'SystemPolicyDeveloperFiles',
    description: 'Access a file used in Software Development'
  ),
  FigSuggestion(
    name: 'SystemPolicyDocumentsFolder',
    description: 'Access files in your Documents folder'
  ),
  FigSuggestion(
    name: 'SystemPolicyDownloadsFolder',
    description: 'Access files in your Downloads folder'
  ),
  FigSuggestion(
    name: 'SystemPolicyNetworkVolumes',
    description: 'Access files on a network volume'
  ),
  FigSuggestion(
    name: 'SystemPolicyRemovableVolumes',
    description: 'Access files on a removable volume'
  ),
  FigSuggestion(
    name: 'SystemPolicySysAdminFiles',
    description: 'Administer your computer'
  ),
  FigSuggestion(
    name: 'Willow',
    description: 'Access your Home data'
  ),
  FigSuggestion(
    name: 'SystemPolicyAllFiles',
    description: 'Full Disk Acces'
  ),
  FigSuggestion(
    name: 'Accessibility',
    description: 'Allows app to control your compute'
  ),
  FigSuggestion(
    name: 'PostEvent',
    description: 'Allows to send keystroke'
  ),
  FigSuggestion(
    name: 'ListenEvent',
    description: 'Allow monitoring input from your keyboard'
  ),
  FigSuggestion(
    name: 'DeveloperTool',
    description: 'Allow app to run software that doesn\'t meet the system\'s security policy'
  )
];

/// Completion spec for `tccutil` CLI
final FigSpec tccutilSpec = FigSpec(
  name: 'tccutil',
  description: 'Manage the privacy database',
  args: [

    Arg(
      name: 'command',
      suggestions: commands
    ),
    Arg(
      name: 'service',
      suggestions: services
    ),
    Arg(
      name: 'bundle id',
      isOptional: true
    )
  ]
);
