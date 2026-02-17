// AI-generated from TypeScript source: m.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 生成磁盘列表
final FigGenerator generateDisks = FigGenerator(
  script: ['ls', '/dev'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((disk) => RegExp(r'/dev/disk\w').hasMatch(disk))
        .map((disk) => FigSuggestion(
              name: disk,
              icon: '💽',
              priority: 100,
            ))
        .toList();
  },
);

/// 生成卷列表
final FigGenerator generateVolumes = FigGenerator(
  script: ['ls', '/Volumes'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((volume) => volume != 'Macintosh HD')
        .map((volume) => FigSuggestion(
              name: '/Volumes/$volume',
              type: SuggestionType.file,
              priority: 100,
            ))
        .toList();
  },
);

/// 生成用户列表
final FigGenerator generateUsers = FigGenerator(
  script: ['bash', '-c', 'm user list | awk \'{ print \$1 }\''],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((user) => user.isNotEmpty)
        .map((user) => FigSuggestion(
              name: user,
              icon: '👤',
              hidden: user.startsWith('_'),
            ))
        .toList();
  },
);

/// 生成组列表
final FigGenerator generateGroups = FigGenerator(
  script: ['bash', '-c', 'm group list | awk \'{ print \$1 }\''],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((group) => group.isNotEmpty)
        .map((group) => FigSuggestion(
              name: group,
              icon: '👥',
              hidden: group.startsWith('_'),
            ))
        .toList();
  },
);

/// 生成网络位置列表
final FigGenerator generateNetworkLocations = FigGenerator(
  script: ['bash', '-c', 'm network location list | tail -n +2'],
  splitOn: '\n',
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((location) => location.trim().isNotEmpty)
        .map((location) => FigSuggestion(
              name: location.trim(),
              icon: '🌐',
            ))
        .toList();
  },
);

/// 生成服务列表
final FigGenerator generateServices = FigGenerator(
  script: ['bash', '-c', 'launchctl list | awk \'{ print \$3 }\''],
  splitOn: '\n',
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((service) => service.trim().isNotEmpty)
        .map((service) => FigSuggestion(
              name: service.trim(),
              description: 'Launchctl service',
              icon: '⚙️',
            ))
        .toList();
  },
);

/// 获取进程图标
String getPidIcon(String path) {
  final idx = path.indexOf('.app/');
  if (idx == -1) {
    return 'fig://icon?type=gear';
  }
  return 'fig://${path.substring(0, idx + 4)}';
}

/// 生成进程ID列表
final FigGenerator generatePids = FigGenerator(
  script: ['bash', '-c', 'ps axo pid,comm | sed 1d'],
  postProcess: (String result, [List<String>? tokens]) {
    return result
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final parts = line.trim().split(RegExp(r'\s+'));
          if (parts.length < 2) return null;

          final pid = parts[0];
          final path = parts[1];
          final name = path.split('/').last;

          return FigSuggestion(
            name: pid,
            description: path,
            displayName: '$pid ($name)',
            icon: getPidIcon(path),
          );
        })
        .where((suggestion) => suggestion != null)
        .cast<FigSuggestion>()
        .toList();
  },
);

/// 生成WiFi网络列表
final FigGenerator generateWifiNetworks = FigGenerator(
  script: [
    'bash',
    '-c',
    'networksetup -listallhardwareports | awk \'/Wi-Fi/{getline; print \$2}\' | xargs networksetup -listpreferredwirelessnetworks | tail -n +2',
  ],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .where((network) => network.trim().isNotEmpty)
        .map((network) => FigSuggestion(
              name: network.trim(),
              icon: '📶',
              description: 'WiFi Network',
            ))
        .toList();
  },
);

final List<String> timezones = [
  "Africa/Abidjan",
  "Africa/Accra",
  "Africa/Addis_Ababa",
  "Africa/Algiers",
  "Africa/Asmara",
  "Africa/Bamako",
  "Africa/Bangui",
  "Africa/Banjul",
  "Africa/Bissau",
  "Africa/Blantyre",
  "Africa/Brazzaville",
  "Africa/Bujumbura",
  "Africa/Cairo",
  "Africa/Casablanca",
  "Africa/Ceuta",
  "Africa/Conakry",
  "Africa/Dakar",
  "Africa/Dar_es_Salaam",
  "Africa/Djibouti",
  "Africa/Douala",
  "Africa/El_Aaiun",
  "Africa/Freetown",
  "Africa/Gaborone",
  "Africa/Harare",
  "Africa/Johannesburg",
  "Africa/Juba",
  "Africa/Kampala",
  "Africa/Khartoum",
  "Africa/Kigali",
  "Africa/Kinshasa",
  "Africa/Lagos",
  "Africa/Libreville",
  "Africa/Lome",
  "Africa/Luanda",
  "Africa/Lubumbashi",
  "Africa/Lusaka",
  "Africa/Malabo",
  "Africa/Maputo",
  "Africa/Maseru",
  "Africa/Mbabane",
  "Africa/Mogadishu",
  "Africa/Monrovia",
  "Africa/Nairobi",
  "Africa/Ndjamena",
  "Africa/Niamey",
  "Africa/Nouakchott",
  "Africa/Ouagadougou",
  "Africa/Porto-Novo",
  "Africa/Sao_Tome",
  "Africa/Tripoli",
  "Africa/Tunis",
  "Africa/Windhoek",
  "America/Adak",
  "America/Anchorage",
  "America/Anguilla",
  "America/Antigua",
  "America/Araguaina",
  "America/Argentina/Buenos_Aires",
  "America/Argentina/Catamarca",
  "America/Argentina/Cordoba",
  "America/Argentina/Jujuy",
  "America/Argentina/La_Rioja",
  "America/Argentina/Mendoza",
  "America/Argentina/Rio_Gallegos",
  "America/Argentina/Salta",
  "America/Argentina/San_Juan",
  "America/Argentina/San_Luis",
  "America/Argentina/Tucuman",
  "America/Argentina/Ushuaia",
  "America/Aruba",
  "America/Asuncion",
  "America/Atikokan",
  "America/Bahia",
  "America/Bahia_Banderas",
  "America/Barbados",
  "America/Belem",
  "America/Belize",
  "America/Blanc-Sablon",
  "America/Boa_Vista",
  "America/Bogota",
  "America/Boise",
  "America/Cambridge_Bay",
  "America/Campo_Grande",
  "America/Cancun",
  "America/Caracas",
  "America/Cayenne",
  "America/Cayman",
  "America/Chicago",
  "America/Chihuahua",
  "America/Costa_Rica",
  "America/Creston",
  "America/Cuiaba",
  "America/Curacao",
  "America/Danmarkshavn",
  "America/Dawson",
  "America/Dawson_Creek",
  "America/Denver",
  "America/Detroit",
  "America/Dominica",
  "America/Edmonton",
  "America/Eirunepe",
  "America/El_Salvador",
  "America/Fort_Nelson",
  "America/Fortaleza",
  "America/Glace_Bay",
  "America/Godthab",
  "America/Goose_Bay",
  "America/Grand_Turk",
  "America/Grenada",
  "America/Guadeloupe",
  "America/Guatemala",
  "America/Guayaquil",
  "America/Guyana",
  "America/Halifax",
  "America/Havana",
  "America/Hermosillo",
  "America/Indiana/Indianapolis",
  "America/Indiana/Knox",
  "America/Indiana/Marengo",
  "America/Indiana/Petersburg",
  "America/Indiana/Tell_City",
  "America/Indiana/Vevay",
  "America/Indiana/Vincennes",
  "America/Indiana/Winamac",
  "America/Inuvik",
  "America/Iqaluit",
  "America/Jamaica",
  "America/Juneau",
  "America/Kentucky/Louisville",
  "America/Kentucky/Monticello",
  "America/Kralendijk",
  "America/La_Paz",
  "America/Lima",
  "America/Los_Angeles",
  "America/Lower_Princes",
  "America/Maceio",
  "America/Managua",
  "America/Manaus",
  "America/Marigot",
  "America/Martinique",
  "America/Matamoros",
  "America/Mazatlan",
  "America/Menominee",
  "America/Merida",
  "America/Metlakatla",
  "America/Mexico_City",
  "America/Miquelon",
  "America/Moncton",
  "America/Monterrey",
  "America/Montevideo",
  "America/Montreal",
  "America/Montserrat",
  "America/Nassau",
  "America/New_York",
  "America/Nipigon",
  "America/Nome",
  "America/Noronha",
  "America/North_Dakota/Beulah",
  "America/North_Dakota/Center",
  "America/North_Dakota/New_Salem",
  "America/Nuuk",
  "America/Ojinaga",
  "America/Panama",
  "America/Pangnirtung",
  "America/Paramaribo",
  "America/Phoenix",
  "America/Port-au-Prince",
  "America/Port_of_Spain",
  "America/Porto_Velho",
  "America/Puerto_Rico",
  "America/Punta_Arenas",
  "America/Rainy_River",
  "America/Rankin_Inlet",
  "America/Recife",
  "America/Regina",
  "America/Resolute",
  "America/Rio_Branco",
  "America/Santa_Isabel",
  "America/Santarem",
  "America/Santiago",
  "America/Santo_Domingo",
  "America/Sao_Paulo",
  "America/Scoresbysund",
  "America/Shiprock",
  "America/Sitka",
  "America/St_Barthelemy",
  "America/St_Johns",
  "America/St_Kitts",
  "America/St_Lucia",
  "America/St_Thomas",
  "America/St_Vincent",
  "America/Swift_Current",
  "America/Tegucigalpa",
  "America/Thule",
  "America/Thunder_Bay",
  "America/Tijuana",
  "America/Toronto",
  "America/Tortola",
  "America/Vancouver",
  "America/Whitehorse",
  "America/Winnipeg",
  "America/Yakutat",
  "America/Yellowknife",
  "Antarctica/Casey",
  "Antarctica/Davis",
  "Antarctica/DumontDUrville",
  "Antarctica/Macquarie",
  "Antarctica/Mawson",
  "Antarctica/McMurdo",
  "Antarctica/Palmer",
  "Antarctica/Rothera",
  "Antarctica/South_Pole",
  "Antarctica/Syowa",
  "Antarctica/Troll",
  "Antarctica/Vostok",
  "Arctic/Longyearbyen",
  "Asia/Aden",
  "Asia/Almaty",
  "Asia/Amman",
  "Asia/Anadyr",
  "Asia/Aqtau",
  "Asia/Aqtobe",
  "Asia/Ashgabat",
  "Asia/Atyrau",
  "Asia/Baghdad",
  "Asia/Bahrain",
  "Asia/Baku",
  "Asia/Bangkok",
  "Asia/Barnaul",
  "Asia/Beirut",
  "Asia/Bishkek",
  "Asia/Brunei",
  "Asia/Calcutta",
  "Asia/Chita",
  "Asia/Choibalsan",
  "Asia/Chongqing",
  "Asia/Colombo",
  "Asia/Damascus",
  "Asia/Dhaka",
  "Asia/Dili",
  "Asia/Dubai",
  "Asia/Dushanbe",
  "Asia/Famagusta",
  "Asia/Gaza",
  "Asia/Harbin",
  "Asia/Hebron",
  "Asia/Ho_Chi_Minh",
  "Asia/Hong_Kong",
  "Asia/Hovd",
  "Asia/Irkutsk",
  "Asia/Jakarta",
  "Asia/Jayapura",
  "Asia/Jerusalem",
  "Asia/Kabul",
  "Asia/Kamchatka",
  "Asia/Karachi",
  "Asia/Kashgar",
  "Asia/Kathmandu",
  "Asia/Katmandu",
  "Asia/Khandyga",
  "Asia/Krasnoyarsk",
  "Asia/Kuala_Lumpur",
  "Asia/Kuching",
  "Asia/Kuwait",
  "Asia/Macau",
  "Asia/Magadan",
  "Asia/Makassar",
  "Asia/Manila",
  "Asia/Muscat",
  "Asia/Nicosia",
  "Asia/Novokuznetsk",
  "Asia/Novosibirsk",
  "Asia/Omsk",
  "Asia/Oral",
  "Asia/Phnom_Penh",
  "Asia/Pontianak",
  "Asia/Pyongyang",
  "Asia/Qatar",
  "Asia/Qostanay",
  "Asia/Qyzylorda",
  "Asia/Rangoon",
  "Asia/Riyadh",
  "Asia/Sakhalin",
  "Asia/Samarkand",
  "Asia/Seoul",
  "Asia/Shanghai",
  "Asia/Singapore",
  "Asia/Srednekolymsk",
  "Asia/Taipei",
  "Asia/Tashkent",
  "Asia/Tbilisi",
  "Asia/Tehran",
  "Asia/Thimphu",
  "Asia/Tokyo",
  "Asia/Tomsk",
  "Asia/Ulaanbaatar",
  "Asia/Urumqi",
  "Asia/Ust-Nera",
  "Asia/Vientiane",
  "Asia/Vladivostok",
  "Asia/Yakutsk",
  "Asia/Yangon",
  "Asia/Yekaterinburg",
  "Asia/Yerevan",
  "Atlantic/Azores",
  "Atlantic/Bermuda",
  "Atlantic/Canary",
  "Atlantic/Cape_Verde",
  "Atlantic/Faroe",
  "Atlantic/Madeira",
  "Atlantic/Reykjavik",
  "Atlantic/South_Georgia",
  "Atlantic/St_Helena",
  "Atlantic/Stanley",
  "Australia/Adelaide",
  "Australia/Brisbane",
  "Australia/Broken_Hill",
  "Australia/Currie",
  "Australia/Darwin",
  "Australia/Eucla",
  "Australia/Hobart",
  "Australia/Lindeman",
  "Australia/Lord_Howe",
  "Australia/Melbourne",
  "Australia/Perth",
  "Australia/Sydney",
  "Europe/Amsterdam",
  "Europe/Andorra",
  "Europe/Astrakhan",
  "Europe/Athens",
  "Europe/Belgrade",
  "Europe/Berlin",
  "Europe/Bratislava",
  "Europe/Brussels",
  "Europe/Bucharest",
  "Europe/Budapest",
  "Europe/Busingen",
  "Europe/Chisinau",
  "Europe/Copenhagen",
  "Europe/Dublin",
  "Europe/Gibraltar",
  "Europe/Guernsey",
  "Europe/Helsinki",
  "Europe/Isle_of_Man",
  "Europe/Istanbul",
  "Europe/Jersey",
  "Europe/Kaliningrad",
  "Europe/Kiev",
  "Europe/Kirov",
  "Europe/Kyiv",
  "Europe/Lisbon",
  "Europe/Ljubljana",
  "Europe/London",
  "Europe/Luxembourg",
  "Europe/Madrid",
  "Europe/Malta",
  "Europe/Mariehamn",
  "Europe/Minsk",
  "Europe/Monaco",
  "Europe/Moscow",
  "Europe/Oslo",
  "Europe/Paris",
  "Europe/Podgorica",
  "Europe/Prague",
  "Europe/Riga",
  "Europe/Rome",
  "Europe/Samara",
  "Europe/San_Marino",
  "Europe/Sarajevo",
  "Europe/Saratov",
  "Europe/Simferopol",
  "Europe/Skopje",
  "Europe/Sofia",
  "Europe/Stockholm",
  "Europe/Tallinn",
  "Europe/Tirane",
  "Europe/Ulyanovsk",
  "Europe/Uzhgorod",
  "Europe/Vaduz",
  "Europe/Vatican",
  "Europe/Vienna",
  "Europe/Vilnius",
  "Europe/Volgograd",
  "Europe/Warsaw",
  "Europe/Zagreb",
  "Europe/Zaporozhye",
  "Europe/Zurich",
  "GMT",
  "Indian/Antananarivo",
  "Indian/Chagos",
  "Indian/Christmas",
  "Indian/Cocos",
  "Indian/Comoro",
  "Indian/Kerguelen",
  "Indian/Mahe",
  "Indian/Maldives",
  "Indian/Mauritius",
  "Indian/Mayotte",
  "Indian/Reunion",
  "Pacific/Apia",
  "Pacific/Auckland",
  "Pacific/Bougainville",
  "Pacific/Chatham",
  "Pacific/Chuuk",
  "Pacific/Easter",
  "Pacific/Efate",
  "Pacific/Enderbury",
  "Pacific/Fakaofo",
  "Pacific/Fiji",
  "Pacific/Funafuti",
  "Pacific/Galapagos",
  "Pacific/Gambier",
  "Pacific/Guadalcanal",
  "Pacific/Guam",
  "Pacific/Honolulu",
  "Pacific/Johnston",
  "Pacific/Kanton",
  "Pacific/Kiritimati",
  "Pacific/Kosrae",
  "Pacific/Kwajalein",
  "Pacific/Majuro",
  "Pacific/Marquesas",
  "Pacific/Midway",
  "Pacific/Nauru",
  "Pacific/Niue",
  "Pacific/Norfolk",
  "Pacific/Noumea",
  "Pacific/Pago_Pago",
  "Pacific/Palau",
  "Pacific/Pitcairn",
  "Pacific/Pohnpei",
  "Pacific/Ponape",
  "Pacific/Port_Moresby",
  "Pacific/Rarotonga",
  "Pacific/Saipan",
  "Pacific/Tahiti",
  "Pacific/Tarawa",
  "Pacific/Tongatapu",
  "Pacific/Truk",
  "Pacific/Wake",
  "Pacific/Wallis",
];

// 创建时区建议列表
final List<FigSuggestion> timezoneSuggestions = timezones
    .map((name) => FigSuggestion(
          name: name,
          icon: '🕑',
          description: 'Timezone',
        ))
    .toList();

/// Completion spec for `m` CLI
final FigSpec mSpec =
    FigSpec(name: 'm', description: 'Swiss Army Knife for macOS', subcommands: [
  Subcommand(name: 'airdrop', description: 'Manage AirDrop', subcommands: [
    Subcommand(name: 'status', description: 'Show AirDrop status'),
    Subcommand(name: 'on', description: 'Enable AirDrop'),
    Subcommand(name: 'enable', description: 'Enable AirDrop'),
    Subcommand(name: 'off', description: 'Disable AirDrop'),
    Subcommand(name: 'disable', description: 'Disable AirDrop'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'appearance',
      description: 'Manage appearance',
      subcommands: [
        Subcommand(name: 'darkmode', description: 'Manage dark mode', args: [
          Arg(
              name: 'status',
              description: 'Whether to use dark versions of interface elements',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
        Subcommand(
            name: 'transparency',
            description: 'Manage transparency',
            args: [
              Arg(
                  name: 'status',
                  description:
                      'Whether to allow the OS to make certain elements semi-transparent',
                  suggestions: [
                    FigSuggestion(name: 'YES'),
                    FigSuggestion(name: 'NO')
                  ])
            ]),
        Subcommand(
            name: 'antialiasthreshold',
            description: 'Manage antialiasing threshold',
            args: [
              Arg(
                  name: 'threshold',
                  description:
                      'The threshold above which antialiasing is turned on')
            ]),
        Subcommand(
            name: 'sidebariconsize',
            description: 'Manage sidebar icon size',
            args: [
              Arg(
                  name: 'size',
                  description:
                      'The size of the icons in various window sidebars',
                  suggestions: [
                    FigSuggestion(name: 'small'),
                    FigSuggestion(name: 'medium'),
                    FigSuggestion(name: 'large')
                  ])
            ]),
        Subcommand(name: 'maincolor', description: 'Manage main color', args: [
          Arg(
              name: 'color',
              description:
                  'The color used for the majority of the interface elements',
              suggestions: [
                FigSuggestion(name: 'blue'),
                FigSuggestion(name: 'graphite')
              ])
        ]),
        Subcommand(
            name: 'highlightcolor',
            description: 'Manage highlight color',
            args: [
              Arg(
                  name: 'color',
                  description: 'The color used for highlights',
                  suggestions: [
                    FigSuggestion(name: 'graphite'),
                    FigSuggestion(name: 'cayenne'),
                    FigSuggestion(name: 'asparagus'),
                    FigSuggestion(name: 'clover'),
                    FigSuggestion(name: 'teal'),
                    FigSuggestion(name: 'midnight'),
                    FigSuggestion(name: 'plum'),
                    FigSuggestion(name: 'tin'),
                    FigSuggestion(name: 'nickel'),
                    FigSuggestion(name: 'mocha'),
                    FigSuggestion(name: 'fern'),
                    FigSuggestion(name: 'moss'),
                    FigSuggestion(name: 'ocean'),
                    FigSuggestion(name: 'eggplant'),
                    FigSuggestion(name: 'maroon'),
                    FigSuggestion(name: 'steel'),
                    FigSuggestion(name: 'aluminum'),
                    FigSuggestion(name: 'maraschino'),
                    FigSuggestion(name: 'lemon'),
                    FigSuggestion(name: 'spring'),
                    FigSuggestion(name: 'turquoise'),
                    FigSuggestion(name: 'blueberry'),
                    FigSuggestion(name: 'magenta'),
                    FigSuggestion(name: 'iron'),
                    FigSuggestion(name: 'magnesium'),
                    FigSuggestion(name: 'tangerine'),
                    FigSuggestion(name: 'lime'),
                    FigSuggestion(name: 'seafoam'),
                    FigSuggestion(name: 'aqua'),
                    FigSuggestion(name: 'grape'),
                    FigSuggestion(name: 'strawberry'),
                    FigSuggestion(name: 'tungsten'),
                    FigSuggestion(name: 'silver'),
                    FigSuggestion(name: 'salmon'),
                    FigSuggestion(name: 'banana'),
                    FigSuggestion(name: 'flora'),
                    FigSuggestion(name: 'ice'),
                    FigSuggestion(name: 'orchid'),
                    FigSuggestion(name: 'bubblegum'),
                    FigSuggestion(name: 'lead'),
                    FigSuggestion(name: 'mercery'),
                    FigSuggestion(name: 'cantaloupe'),
                    FigSuggestion(name: 'honeydew'),
                    FigSuggestion(name: 'spindrift'),
                    FigSuggestion(name: 'sky'),
                    FigSuggestion(name: 'lavender'),
                    FigSuggestion(name: 'carnation'),
                    FigSuggestion(name: 'licorice'),
                    FigSuggestion(name: 'snow')
                  ])
            ]),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(name: 'battery', description: 'Manage battery', subcommands: [
    Subcommand(name: 'status', description: 'Show battery status'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'bluetooth', description: 'Manage Bluetooth', subcommands: [
    Subcommand(name: 'status', description: 'Show bluetooth status'),
    Subcommand(name: 'on', description: 'Enable bluetooth'),
    Subcommand(name: 'enable', description: 'Enable bluetooth'),
    Subcommand(name: 'off', description: 'Disable bluetooth'),
    Subcommand(name: 'disable', description: 'Disable bluetooth'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'dir', description: 'Manage directories', subcommands: [
    Subcommand(
        name: 'tree',
        description: 'Show tree view of folders in the current path',
        args: [
          Arg(
              name: 'path',
              description: 'Path to show tree view of folders',
              isOptional: true,
              template: 'folders')
        ]),
    Subcommand(name: 'delete', description: 'Delete folders', subcommands: [
      Subcommand(
          name: 'empty',
          description: 'Delete empty folders recursively in the current path',
          args: [
            Arg(
                name: 'path',
                description: 'Path to delete empty folders',
                isOptional: true,
                template: 'folders')
          ]),
      Subcommand(
          name: 'dsfiles',
          description: 'Delete .DS_Store files recursively in the current path',
          args: [
            Arg(
                name: 'path',
                description:
                    'Delete .DS_Store files recursively in a specific path',
                isOptional: true,
                template: 'folders')
          ])
    ]),
    Subcommand(
        name: 'dsfiles',
        description: 'Manage .DS_Store files',
        subcommands: [
          Subcommand(
              name: 'on', description: 'Restore generation of .DS_Store'),
          Subcommand(
              name: 'off', description: 'Prohibit generation of .DS_Store')
        ]),
    Subcommand(
        name: 'size',
        description: 'Calculate current folder size',
        args: [
          Arg(
              name: 'path',
              description: 'Path to calculate folder size',
              isOptional: true,
              template: 'folders')
        ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'disk', description: 'Manage disks', subcommands: [
    Subcommand(
        name: ['ls', 'list'],
        description: 'List disk partitions',
        args: [
          Arg(
              name: 'path',
              description: 'Path to the disk file',
              isOptional: true,
              generators: [Generator(template: 'filepaths'), generateDisks])
        ]),
    Subcommand(name: 'info', description: 'Show disk information', args: [
      Arg(
          name: 'path',
          description: 'Path to show disk information',
          generators: [Generator(template: 'filepaths'), generateDisks])
    ]),
    Subcommand(name: 'ejectall', description: 'Eject all mountable volumes'),
    Subcommand(name: 'verify', description: 'Verify disk', subcommands: [
      Subcommand(name: 'volume', description: 'Verify volume', args: [
        Arg(
            name: 'path',
            description: 'Path to verify volume',
            generators: [Generator(template: 'filepaths'), generateVolumes])
      ]),
      Subcommand(name: 'disk', description: 'Verify disk', args: [
        Arg(
            name: 'path',
            description: 'Path to verify disk',
            generators: [Generator(template: 'filepaths'), generateDisks])
      ])
    ]),
    Subcommand(name: 'repair', description: 'Repair disk', subcommands: [
      Subcommand(name: 'volume', description: 'Repair volume', args: [
        Arg(
            name: 'path',
            description: 'Path to repair volume',
            generators: [Generator(template: 'filepaths'), generateVolumes])
      ]),
      Subcommand(name: 'disk', description: 'Repair disk', args: [
        Arg(
            name: 'path',
            description: 'Path to repair disk',
            generators: [Generator(template: 'filepaths'), generateDisks])
      ])
    ]),
    Subcommand(name: 'format', description: 'Format disk', subcommands: [
      Subcommand(
          name: 'MS-DOS',
          description: 'Format the entire disk with a windows format (MS-DOS)',
          args: [
            Arg(name: 'name', description: 'Name of the volume'),
            Arg(
                name: 'path',
                description: 'Path to format the entire disk',
                generators: [Generator(template: 'filepaths'), generateDisks])
          ]),
      Subcommand(
          name: 'volume',
          description: 'Format the volume with a windows format (MS-DOS)',
          args: [
            Arg(name: 'name', description: 'Name of the volume'),
            Arg(
                name: 'path',
                description: 'Path to format the volume',
                generators: [Generator(template: 'filepaths'), generateVolumes])
          ])
    ]),
    Subcommand(name: 'reformat', description: 'Reformat a volume', args: [
      Arg(
          name: 'path',
          description: 'Path to reformat a volume',
          generators: [Generator(template: 'filepaths'), generateVolumes])
    ]),
    Subcommand(name: 'rename', description: 'Rename a volume', args: [
      Arg(
          name: 'currentName',
          description: 'Current name of the volume',
          generators: [Generator(template: 'filepaths'), generateVolumes]),
      Arg(name: 'newName', description: 'New name of the volume')
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'display', description: 'Manage displays', subcommands: [
    Subcommand(name: 'status', description: 'Show display status'),
    Subcommand(name: 'help', description: 'Show usage'),
    Subcommand(name: 'up', description: 'Turn up the brightness'),
    Subcommand(name: 'down', description: 'Turn down the brightness')
  ]),
  Subcommand(name: 'dns', description: 'Manage dns', subcommands: [
    Subcommand(name: 'flush', description: 'Flush local DNS cache'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'dock', description: 'Manage dock', subcommands: [
    Subcommand(
        name: 'showdelay',
        description:
            'Changes how long the Dock takes to show up when auto-hide is enabled',
        args: [Arg(name: 'seconds', description: 'Seconds to show delay')]),
    Subcommand(
        name: 'autohide',
        description: 'Enable or disable Dock\'s auto hide feature',
        args: [
          Arg(
              name: 'YES/NO',
              description: 'YES/NO to enable/disable Dock\'s auto hide feature',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(
        name: 'autohidedelay',
        description:
            'Changes how long it takes to detect you want to show up the dock',
        args: [
          Arg(name: 'seconds', description: 'Seconds to auto hide delay')
        ]),
    Subcommand(
        name: 'magnification',
        description: 'Turn magnification on or off',
        args: [
          Arg(
              name: 'YES/NO',
              description: 'YES/NO to turn magnification on or off',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(name: 'position', description: 'Change Dock\'s position', args: [
      Arg(
          name: 'position',
          description: 'Position to change Dock\'s position',
          suggestions: [
            FigSuggestion(name: 'BOTTOM'),
            FigSuggestion(name: 'LEFT'),
            FigSuggestion(name: 'RIGHT')
          ])
    ]),
    Subcommand(
        name: 'addblankspace',
        description: 'Add a blank space (separator) to the Dock'),
    Subcommand(
        name: 'addrecentitems',
        description: 'Add a stack containg your recent items to the Dock'),
    Subcommand(name: 'prune', description: 'Remove all items from dock'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'finder', description: 'Manage finder', subcommands: [
    Subcommand(
        name: 'showhiddenfiles',
        description: 'Show hidden files Status',
        args: [
          Arg(
              name: 'YES/NO',
              description: 'YES/NO to show hidden files',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(
        name: 'showextensions',
        description: 'Show all file extensions Status',
        args: [
          Arg(
              name: 'YES/NO',
              description: 'YES/NO to show all file extensions',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(
        name: 'showdesktop',
        description: 'Show the desktop Status',
        args: [
          Arg(
              name: 'YES/NO',
              description: 'YES/NO to show the desktop',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(
        name: 'showpath',
        description:
            'Show the current opened folder path on the top bar of the Finder window',
        args: [
          Arg(
              name: 'YES/NO',
              description:
                  'YES/NO to show the current opened folder path on the top bar of the Finder window',
              suggestions: [
                FigSuggestion(name: 'YES'),
                FigSuggestion(name: 'NO')
              ])
        ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'firewall', description: 'Manage firewall', subcommands: [
    Subcommand(name: 'status', description: 'Show status'),
    Subcommand(name: 'enable', description: 'Enable firewall'),
    Subcommand(name: 'disable', description: 'Disable firewall'),
    Subcommand(
        name: 'list', description: 'List applications handled by firewall'),
    Subcommand(name: 'add', description: 'Add app to firewall', args: [
      Arg(
          name: 'path',
          description: 'Path of the app to add to firewall',
          template: 'filepaths')
    ]),
    Subcommand(name: 'remove', description: 'Remove app from firewall', args: [
      Arg(name: 'path', description: 'Path of the app to remove from firewall')
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'flightmode',
      description: 'Manage flight mode',
      subcommands: [
        Subcommand(name: 'off', description: 'Turn flight mode off'),
        Subcommand(name: 'on', description: 'Turn flight mode on'),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(
      name: 'gatekeeper',
      description: 'Manage gatekeeper',
      subcommands: [
        Subcommand(name: 'status', description: 'Show status'),
        Subcommand(name: 'enable', description: 'Enable gatekeeper', args: [
          Arg(name: 'rule', description: 'Rule to enable', isOptional: true)
        ]),
        Subcommand(name: 'disable', description: 'Disable gatekeeper', args: [
          Arg(name: 'rule', description: 'Rule to disable', isOptional: true)
        ]),
        Subcommand(name: 'list', description: 'List rules'),
        Subcommand(
            name: 'create',
            description: 'Create a rule for the application',
            args: [
              Arg(name: 'RULENAME', description: 'Name of the rule'),
              Arg(name: '/path/to/program', description: 'Path to the program')
            ]),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(name: 'group', description: 'Manage groups', subcommands: [
    Subcommand(name: 'list', description: 'List groups'),
    Subcommand(
        name: 'info',
        description: 'Get group information',
        args: [Arg(name: 'group', description: 'Group to get information')]),
    Subcommand(name: 'adduser', description: 'Add user to group', args: [
      Arg(
          name: 'user',
          description: 'User to add to group',
          generators: generateUsers),
      Arg(
          name: 'group',
          description: 'Group to add user to',
          generators: generateGroups)
    ]),
    Subcommand(
        name: 'removeuser',
        description: 'Remove user from group',
        args: [
          Arg(
              name: 'user',
              description: 'User to remove from group',
              generators: generateUsers),
          Arg(
              name: 'group',
              description: 'Group to remove user from',
              generators: generateGroups)
        ]),
    Subcommand(
        name: 'ismember',
        description: 'Check if user is a member of group',
        args: [
          Arg(
              name: 'user',
              description: 'User to check membership',
              generators: generateUsers),
          Arg(
              name: 'group',
              description: 'Group to check membership',
              generators: generateGroups)
        ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'hostname', description: 'Manage hostname', subcommands: [
    Subcommand(name: 'newhostname', description: 'Set new hostname'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'info', description: 'Show system information'),
  Subcommand(name: 'help', description: 'Show help'),
  Subcommand(name: 'itunes', description: 'Manage iTunes', subcommands: [
    Subcommand(name: 'status', description: 'Show status'),
    Subcommand(name: 'play', description: 'Play track'),
    Subcommand(name: 'pause', description: 'Pause track'),
    Subcommand(name: 'next', description: 'Play next track'),
    Subcommand(name: 'prev', description: 'Play previous track'),
    Subcommand(name: 'mute', description: 'Mute iTunes'),
    Subcommand(name: 'unmute', description: 'Unmute iTunes'),
    Subcommand(name: 'vol', description: 'Volume', args: [
      Arg(
          name: 'up/down/#',
          description: 'Up/Down/Number',
          suggestions: [FigSuggestion(name: 'up'), FigSuggestion(name: 'down')],
          isOptional: true)
    ]),
    Subcommand(name: 'stop', description: 'Stop track'),
    Subcommand(name: 'quit', description: 'Quit iTunes'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'localhost', description: 'Manage localhost', subcommands: [
    Subcommand(
        name: ['ls', 'list'], description: 'List current records in localhost'),
    Subcommand(
        name: 'add',
        description: 'Add a new host to the localhost file',
        args: [
          Arg(name: 'IP', description: 'IP of the host'),
          Arg(name: 'HOSTNAME', description: 'Hostname of the host')
        ]),
    Subcommand(
        name: 'remove',
        description: 'Remove a host from the localhost file',
        args: [Arg(name: 'HOSTNAME', description: 'Hostname of the host')]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'lock', description: 'Lock session'),
  Subcommand(name: 'network', description: 'Manage network', subcommands: [
    Subcommand(name: ['ls', 'list'], description: 'List network interfaces'),
    Subcommand(name: 'location', description: 'Manage location', subcommands: [
      Subcommand(name: ['ls', 'list'], description: 'List locations'),
      Subcommand(
          name: 'create',
          description: 'Create a location',
          args: [Arg(name: 'name', description: 'Name of the location')]),
      Subcommand(name: 'delete', description: 'Delete a location', args: [
        Arg(
            name: 'name',
            description: 'Name of the location',
            generators: generateNetworkLocations)
      ]),
      Subcommand(
          name: 'switch',
          description: 'Switch location',
          args: [Arg(name: 'name', description: 'Name of the location')])
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'nosleep', description: 'Manage no sleep', subcommands: [
    Subcommand(name: 'until', description: 'No sleep until', subcommands: [
      Subcommand(
          name: 'pid',
          description: 'No sleep until process id ends',
          args: [
            Arg(
                name: 'pid',
                description: 'Process id',
                generators: generatePids)
          ])
    ], args: [
      Arg(name: 'time or script', template: 'filepaths')
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'notification',
      description: 'Manage notification',
      subcommands: [
        Subcommand(
            name: 'showcenter',
            description: 'Show notification center',
            args: [
              Arg(
                  name: 'YES/NO',
                  description: 'Enable/Disable notification center',
                  suggestions: [
                    FigSuggestion(name: 'YES'),
                    FigSuggestion(name: 'NO')
                  ],
                  isOptional: true)
            ]),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(name: 'ntp', description: 'Manage ntp', subcommands: [
    Subcommand(
        name: 'status', description: 'Status of the network time service'),
    Subcommand(name: 'enable', description: 'Enable clock to use network time'),
    Subcommand(
        name: 'disable', description: 'Disable clock to use network time'),
    Subcommand(
        name: 'set',
        description: 'Set network time server',
        args: [Arg(name: 'hostname', description: 'Network time server')]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'printer', description: 'Manage printer', subcommands: [
    Subcommand(name: 'settings', description: 'Printer settings'),
    Subcommand(name: 'name', description: 'Display printer names on system'),
    Subcommand(
        name: 'queue', description: 'Display items in printer queue on system'),
    Subcommand(name: 'drivers', description: 'Display all printer drivers'),
    Subcommand(name: 'web', description: 'Enable and show web interface'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'restart',
      description: 'Restart computer (needs confirmation)',
      subcommands: [
        Subcommand(
            name: ['-f', '--force'],
            description: 'Restart computer (without confirmation)'),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(name: 'safeboot', description: 'Manage safe boot', subcommands: [
    Subcommand(name: 'status', description: 'Get the boot args'),
    Subcommand(name: 'enable', description: 'Enable safe boot'),
    Subcommand(name: 'disable', description: 'Disable safeboot'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'screensaver',
      description: 'Manage screensaver',
      subcommands: [
        Subcommand(name: 'status', description: 'Get the current status'),
        Subcommand(
            name: 'askforpassword',
            description: 'Get password requirement to unlock',
            args: [
              Arg(
                  name: 'YES/NO',
                  description: 'Enable/Disable password requirement to unlock',
                  suggestions: [
                    FigSuggestion(name: 'YES'),
                    FigSuggestion(name: 'NO')
                  ],
                  isOptional: true)
            ]),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(name: 'service', description: 'Manage service', subcommands: [
    Subcommand(name: '--status-all', description: 'List all services'),
    Subcommand(
        name: ['--ls', '--list'],
        description: 'List all services',
        args: [
          Arg(name: 'service', description: 'Service name', isOptional: true)
        ]),
    Subcommand(name: 'start', description: 'Start a service', args: [
      Arg(
          name: 'service',
          description: 'Service name',
          generators: generateServices)
    ]),
    Subcommand(name: 'stop', description: 'Stop a service', args: [
      Arg(
          name: 'service',
          description: 'Service name',
          generators: generateServices)
    ]),
    Subcommand(name: 'load', description: 'Load a service', args: [
      Arg(
          name: 'service',
          description: 'Service name',
          generators: generateServices)
    ]),
    Subcommand(name: 'unload', description: 'Unload a service', args: [
      Arg(
          name: 'service',
          description: 'Service name',
          generators: generateServices)
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(
      name: 'shutdown',
      description: 'Shutdown computer (needs confirmation)',
      subcommands: [
        Subcommand(
            name: '-f',
            description: 'Shutdown computer (without confirmation)'),
        Subcommand(name: 'help', description: 'Show help')
      ]),
  Subcommand(
      name: 'sleep',
      description: 'Put computer to sleep',
      subcommands: [Subcommand(name: 'help', description: 'Show help')]),
  Subcommand(
      name: 'timezone',
      description: 'Get current timezone',
      subcommands: [
        Subcommand(
            name: ['ls', 'list'], description: 'List available timezones'),
        Subcommand(name: 'set', description: 'Set timezone', args: [
          Arg(
            name: 'timezone',
            description: 'Timezone',
            suggestions: timezoneSuggestions,
          )
        ]),
        Subcommand(
          name: 'help',
          description: 'Show help',
        )
      ]),
  Subcommand(name: 'touchbar', description: 'Manage touchbar', subcommands: [
    Subcommand(name: 'reset', description: 'Reset touchbar'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'trash', description: 'Manage trash', subcommands: [
    Subcommand(name: 'status', description: 'Get trash info'),
    Subcommand(name: 'clean', description: 'Clean trash'),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'user', description: 'Manage user', subcommands: [
    Subcommand(name: ['ls', 'list'], description: 'List all users'),
    Subcommand(name: 'info', description: 'Get user info', args: [
      Arg(name: 'username', description: 'Username', generators: generateUsers)
    ]),
    Subcommand(name: 'create', description: 'Create a new user'),
    Subcommand(name: 'delete', description: 'Delete a user', args: [
      Arg(name: 'username', description: 'Username', generators: generateUsers)
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'volume', description: 'Manage volume level', subcommands: [
    Subcommand(name: 'mute', description: 'Set mute'),
    Subcommand(name: 'unmute', description: 'Unset mute'),
    Subcommand(name: 'ismute', description: 'Check the volume status'),
    Subcommand(name: 'up', description: 'Increase the volume by 6.25'),
    Subcommand(name: 'down', description: 'Decrease the volume by 6.25'),
    Subcommand(name: 'help', description: 'Show help')
  ], args: [
    Arg(name: 'volume', description: 'Volume level up/down/(+/-)number')
  ]),
  Subcommand(name: 'vpn', description: 'Manage VPN connections', subcommands: [
    Subcommand(name: ['ls', 'list'], description: 'List VPN connections'),
    Subcommand(name: 'start', description: 'Start a VPN connection', args: [
      Arg(name: 'VPN', description: 'VPN connection name', isOptional: true),
      Arg(name: 'USER', description: 'VPN connection user', isOptional: true),
      Arg(
          name: 'PASS',
          description: 'VPN connection password',
          isOptional: true),
      Arg(
          name: 'SECRET',
          description: 'VPN connection secret',
          isOptional: true)
    ]),
    Subcommand(name: 'stop', description: 'Stop a VPN connection', args: [
      Arg(name: 'VPN', description: 'VPN connection name', isOptional: true)
    ]),
    Subcommand(
        name: 'status',
        description: 'Get the status of a VPN connection',
        args: [
          Arg(name: 'VPN', description: 'VPN connection name', isOptional: true)
        ]),
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'wallpaper', description: 'Change wallpaper', args: [
    Arg(
        name: 'image',
        description: 'Path to the wallpaper',
        template: 'filepaths')
  ], subcommands: [
    Subcommand(name: 'help', description: 'Show help')
  ]),
  Subcommand(name: 'wifi', description: 'Manage wifi', subcommands: [
    Subcommand(name: 'status', description: 'Get wifi status'),
    Subcommand(name: 'scan', description: 'Scan wifi'),
    Subcommand(
        name: 'showpassword',
        description: 'Show wifi network password',
        args: [
          Arg(
              name: 'ESSID',
              description: 'ESSID',
              isOptional: true,
              generators: generateWifiNetworks)
        ]),
    Subcommand(name: ['ls', 'list'], description: 'List known wifi networks'),
    Subcommand(name: 'forget', description: 'Forget a wifi network', args: [
      Arg(name: 'ESSID', description: 'ESSID', generators: generateWifiNetworks)
    ]),
    Subcommand(name: 'history', description: 'Wifi connection history'),
    Subcommand(name: 'off', description: 'Turn off your wifi'),
    Subcommand(name: 'on', description: 'Turn on your wifi'),
    Subcommand(name: 'connect', description: 'Join a wifi network', args: [
      Arg(name: 'ESSID', description: 'ESSID'),
      Arg(name: 'PASSWORD', description: 'Password', isOptional: true)
    ]),
    Subcommand(name: 'help', description: 'Show help')
  ])
], options: [
  Option(name: '--update', description: 'Update m-cli to the latest version'),
  Option(name: '--uninstall', description: 'Uninstall m-cli')
]);
